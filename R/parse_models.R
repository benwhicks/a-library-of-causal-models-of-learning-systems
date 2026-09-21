# Discovers and parses the DOT-language causal models in models/*.R.
#
# Each model file defines one or more character-vector variables holding a
# Graphviz DOT string (see README.md for the metadata schema: model-level
# context/tags/doi and per-node label/description attributes, embedded as
# plain DOT attribute statements inside the string itself). Some files
# contain no DOT objects yet - just a citation comment - and are treated as
# "stub" entries.

discover_model_files <- function(dir = "models") {
  list.files(dir, pattern = "\\.R$", full.names = TRUE)
}

# Sources a model file in isolation and returns the named list of objects
# that look like DOT graph strings (a single character value containing
# "digraph"), so files can define any number of models under any variable
# naming scheme.
extract_dot_objects <- function(file_path) {
  env <- new.env()
  source(file_path, local = env)
  objs <- mget(ls(envir = env), envir = env)
  is_dot <- vapply(objs, function(x) {
    is.character(x) && length(x) == 1 && grepl("digraph", x, fixed = TRUE)
  }, logical(1))
  objs[is_dot]
}

# Extracts model-level attribute statements (context="..."; tags="...";
# doi="..."; url="...";) that appear as bare statements in the DOT string.
parse_graph_attrs <- function(dot_string) {
  fields <- c("context", "tags", "doi", "url")
  lines <- strsplit(dot_string, "\n")[[1]]
  result <- setNames(as.list(rep(NA_character_, length(fields))), fields)
  pattern <- "^\\s*(context|tags|doi|url)\\s*=\\s*\"([^\"]*)\"\\s*;?\\s*$"
  for (line in lines) {
    m <- regmatches(line, regexec(pattern, line))[[1]]
    if (length(m) == 3) {
      result[[m[2]]] <- m[3]
    }
  }
  result
}

# Extracts per-node [label="...", description="..."] attributes, ignoring
# the reserved DOT keywords used for default-attribute statements (e.g.
# `edge [type = "causal"]`, `node [style = filled]`).
parse_nodes <- function(dot_string) {
  reserved <- c("edge", "node", "graph", "digraph", "strict", "subgraph")
  node_pattern <- "(?m)^\\s*([A-Za-z_][A-Za-z0-9_]*)\\s*\\[([^\\]]*)\\]"
  matches <- gregexpr(node_pattern, dot_string, perl = TRUE)
  m <- regmatches(dot_string, matches)[[1]]

  ids <- character(0)
  labels <- character(0)
  descriptions <- character(0)

  for (stmt in m) {
    parts <- regmatches(stmt, regexec(node_pattern, stmt, perl = TRUE))[[1]]
    id <- parts[2]
    if (id %in% reserved) next
    attrs <- parts[3]

    label_m <- regmatches(attrs, regexec('label\\s*=\\s*"([^"]*)"', attrs))[[1]]
    desc_m <- regmatches(attrs, regexec('description\\s*=\\s*"([^"]*)"', attrs))[[1]]

    ids <- c(ids, id)
    labels <- c(labels, if (length(label_m) == 2) label_m[2] else NA_character_)
    descriptions <- c(descriptions, if (length(desc_m) == 2) desc_m[2] else NA_character_)
  }

  data.frame(id = ids, label = labels, description = descriptions,
             stringsAsFactors = FALSE)
}

# Reads the leading `#` comment block at the top of a model file - the only
# citation/source information for stub files, and a fallback for real ones.
read_citation_comment <- function(file_path) {
  lines <- readLines(file_path, warn = FALSE)
  comment_lines <- character(0)
  for (line in lines) {
    trimmed <- trimws(line)
    if (trimmed == "") next
    if (startsWith(trimmed, "#")) {
      comment_lines <- c(comment_lines, sub("^#\\s?", "", trimmed))
    } else {
      break
    }
  }
  paste(comment_lines, collapse = "\n")
}

# Builds the full model library: one entry per DOT object for files that
# have them, plus one stub entry for files that don't.
build_model_library <- function(dir = "models") {
  files <- discover_model_files(dir)
  entries <- list()

  for (file_path in files) {
    source_file <- basename(file_path)
    citation <- read_citation_comment(file_path)
    dot_objects <- extract_dot_objects(file_path)

    if (length(dot_objects) == 0) {
      entries[[length(entries) + 1]] <- list(
        id = tools::file_path_sans_ext(source_file),
        source_file = source_file,
        citation = citation,
        is_stub = TRUE
      )
    } else {
      for (obj_name in names(dot_objects)) {
        dot <- dot_objects[[obj_name]]
        entries[[length(entries) + 1]] <- list(
          id = obj_name,
          source_file = source_file,
          citation = citation,
          graph_attrs = parse_graph_attrs(dot),
          nodes = parse_nodes(dot),
          dot = dot,
          is_stub = FALSE
        )
      }
    }
  }

  entries
}
