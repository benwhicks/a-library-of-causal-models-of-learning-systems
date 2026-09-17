# Need to find reference - Teacher performance
# Boerebach et al, 2013


# DAG A: TP causes RM-TS (a direct path). DAG B: TP causes the three types of role modeling (that is, the three role modeling types share a common cause, TP). DAG C: an ineligible cyclic path. DAG D: a bidirectional path. DAG E: RM-phy mediates the path from TP to RM-TS. DAG F: RM-phy is a collider variable between TP and RM-TS.

#  We included the main study variables teaching performance (TP) and the three role model types, teacher-supervisor (RM-TS), physician (RM-phy), and person (RM-per) in all DAGs. In addition, we included the covariates faculty’s sex (FS) and experience (FE), residents’ sex (RS) and residency year (RY), hospital (HO), and specialty (SP) in the DAGs. The relationship between these covariates, the predictor variable (TP), and the outcome variables (RM-TS, RM-phy and RM-per) were fixed in all DAGs (i.e. each of these covariates impacted both the exposure TP and the outcome role model types in all models; thus they were identified as confounders for the relationship between TP and the role model types)

boerebach.2013.fig1.DAG.A <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. TP causes RM-TS (a direct path)";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]

// Edges
TP -> RMTS;
}
'

boerebach.2013.fig1.DAG.B <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. DAG B: TP causes the three types of role modeling (that is, the three role modeling types share a common cause, TP)";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]
RMphy [label = "RM-phy", description = "Role model - physician"]
RMper [label = "RM-per", description = "Role model - person"]

// Edges
TP -> RMTS;
TP -> RMphy;
TP -> RMper;
}
'

boerebach.2013.fig1.DAG.C <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. DAG C: an ineligible cyclic path.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]
RMphy [label = "RM-phy", description = "Role model - physician"]
RMper [label = "RM-per", description = "Role model - person"]

// Edges
TP -> RMTS;
RMTS -> RMper;
RMper -> TP;
}
'

boerebach.2013.fig1.DAG.D <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. DAG D: a bidirectional path.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]
RMphy [label = "RM-phy", description = "Role model - physician"]
RMper [label = "RM-per", description = "Role model - person"]

// Edges
RMphy -> RMTS [dir = both, arrowtail = normal, arrowhead = normal];
}
'

boerebach.2013.fig1.DAG.E <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. DAG E: RM-phy mediates the path from TP to RM-TS.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]
RMphy [label = "RM-phy", description = "Role model - physician"]
RMper [label = "RM-per", description = "Role model - person"]

// Edges
TP -> RMphy
RMphy -> RMTS
}
'

boerebach.2013.fig1.DAG.F <- '
digraph {
// Model
context="Examples of directed acyclic graphs (DAGs) relating teaching performance and role model types. DAG F: RM-phy is a collider variable between TP and RM-TS.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Nodes
TP [label = "TP", description = "Teaching performance"]
RMTS [label = "RM-TS", description = "Role model - teacher supervisor"]
RMphy [label = "RM-phy", description = "Role model - physician"]
RMper [label = "RM-per", description = "Role model - person"]

// Edges
TP -> RMphy;
RMTS -> RMphy;
}
'



boerebach.2013.fig2 <- '
digraph {

// Model
context="DAG of the relationship between teaching performance and role modeling.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
edge [color=grey80]
node [style = filled, fillcolor = grey90]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
RS    [label = "RS", description = "Residents sex"]
RY    [label = "RY", description = "Residents year"]
FS    [label = "FS", description = "Facultys sex"]
FE    [label = "FS", description = "Facultys experience"]
HO    [label = "HO", description = "Hospital"]
SP    [label = "SP", description = "Specialty"]

// Edges
TP -> RMphy [color=grey30];
TP -> RMTS [color=grey30];
TP -> RMper [color=grey30];

RS -> TP
RS -> RMTS
RS -> RMphy
RS -> RMper

RY -> TP
RY -> RMTS
RY -> RMphy
RY -> RMper

FS -> TP
FS -> RMTS
FS -> RMphy
FS -> RMper

FE -> TP
FE -> RMTS
FE -> RMphy
FE -> RMper

HO -> TP
HO -> RMTS
HO -> RMphy
HO -> RMper

SP -> TP
SP -> RMTS
SP -> RMphy
SP -> RMper
}
'


boerebach.2013.fig3.DAG.1 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.2 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMphy -> RMper [dir = both, arrowtail = normal, arrowhead = normal];
RMphy -> RMTS [dir = both, arrowtail = normal, arrowhead = normal];
RMper -> RMTS [dir = both, arrowtail = normal, arrowhead = normal];

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.3 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMphy -> RMper;
RMphy -> RMTS;
RMTS -> RMper;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.4 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMphy -> RMper;
RMphy -> RMTS;
RMper -> RMTS;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.5 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMphy -> RMper;
RMTS -> RMphy;
RMTS -> RMper;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'

boerebach.2013.fig3.DAG.6 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMper -> RMphy;
RMTS -> RMphy;
RMTS -> RMper;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.7 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMper -> RMphy;
RMTS -> RMphy;
RMper -> RMTS;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'


boerebach.2013.fig3.DAG.8 <- '
digraph {

// Model
context="DAGs of the different causal relationships between teaching performance and the different role model types.";
doi="https://doi.org/10.1371/journal.pone.0069449.g001";

// Defaults
node [style = filled, fillcolor = grey90]
edge [dir = forward]

// Nodes
TP    [label = "TP", description = "Teaching performance", 
fillcolor = grey50]
RMTS  [label = "RM-TS", description = "Role model - teacher supervisor", 
fillcolor = grey70]
RMphy [label = "RM-phy", description = "Role model - physician", 
fillcolor = grey70]
RMper [label = "RM-per", description = "Role model - person", 
fillcolor = grey70]
Z    [label = "Z", description = "All covariates, namely: faculty’s sex and years of experience, residents’ sex and residency training year, hospital and specialty. (This collapsing of the covariates into one variable Z was only intended to make the DAGs more legible in this illustrative study; but we discourage doing so in actual applications.)"]

// Edges
TP -> RMphy;
TP -> RMTS;
TP -> RMper;
RMper -> RMphy;
RMphy -> RMTS;
RMper -> RMTS;

Z -> TP;
Z -> RMphy;
Z -> RMper;
Z -> RMTS;
}
'

