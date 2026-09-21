library(shiny)
library(DiagrammeR)

source("R/parse_models.R")

model_library <- build_model_library()

build_choices <- function(lib) {
  by_file <- split(lib, vapply(lib, function(e) e$source_file, character(1)))
  by_file <- by_file[order(names(by_file))]
  lapply(by_file, function(entries) {
    ids <- vapply(entries, function(e) e$id, character(1))
    display <- vapply(entries, function(e) {
      if (isTRUE(e$is_stub)) paste0(e$id, " (coming soon)") else e$id
    }, character(1))
    setNames(ids, display)
  })
}

find_entry <- function(lib, id) {
  Find(function(e) identical(e$id, id), lib)
}

model_choices <- build_choices(model_library)

ui <- fluidPage(
  titlePanel("A Library of Causal Models of Learning Systems"),
  sidebarLayout(
    sidebarPanel(
      selectizeInput(
        "model_id", "Model",
        choices = model_choices,
        selected = model_choices[[1]][1],
        options = list(placeholder = "Search by paper or figure...")
      ),
      helpText("Grouped by source paper. Entries marked \"(coming soon)\" have a citation but no DOT graph yet.")
    ),
    mainPanel(
      uiOutput("model_view")
    )
  )
)

server <- function(input, output, session) {

  selected_entry <- reactive({
    req(input$model_id)
    find_entry(model_library, input$model_id)
  })

  output$model_view <- renderUI({
    entry <- selected_entry()
    if (is.null(entry)) return(NULL)

    if (isTRUE(entry$is_stub)) {
      return(tagList(
        h3(entry$id),
        tags$em("No model has been added for this paper yet."),
        h4("Citation / source"),
        tags$pre(style = "white-space: pre-wrap;", entry$citation)
      ))
    }

    attrs <- entry$graph_attrs
    tag_pills <- NULL
    if (!is.na(attrs$tags) && nzchar(attrs$tags)) {
      tag_values <- trimws(strsplit(attrs$tags, ",")[[1]])
      tag_pills <- tagList(lapply(tag_values, function(t) {
        tags$span(t, style = paste(
          "display: inline-block; padding: 2px 8px; margin-right: 4px;",
          "border-radius: 10px; background: #e0e0e0; font-size: 85%;"
        ))
      }))
    }

    link_target <- if (!is.na(attrs$doi) && nzchar(attrs$doi)) {
      attrs$doi
    } else if (!is.na(attrs$url) && nzchar(attrs$url)) {
      attrs$url
    } else {
      NA_character_
    }

    tagList(
      h3(entry$id),
      tags$p(tags$strong("Source: "), entry$source_file),
      if (!is.na(attrs$context) && nzchar(attrs$context)) tags$p(attrs$context),
      if (!is.null(tag_pills)) tags$p(tag_pills),
      if (!is.na(link_target)) tags$p(tags$a(href = link_target, target = "_blank", link_target)),
      grVizOutput("graph", height = "450px"),
      h4("Nodes"),
      tableOutput("node_table")
    )
  })

  output$graph <- renderGrViz({
    entry <- selected_entry()
    req(entry, !isTRUE(entry$is_stub))
    grViz(entry$dot)
  })

  output$node_table <- renderTable({
    entry <- selected_entry()
    req(entry, !isTRUE(entry$is_stub))
    entry$nodes
  })
}

shinyApp(ui, server)
