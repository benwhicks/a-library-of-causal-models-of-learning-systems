# The paper uses a variety of examples, three of which are related to education
# It is not stated where the evidence for each model is, they are simply used for 
# illustrative purposes

rohrer.2018.fig1 <- '
digraph {

// Model
context="This model is for illustation only, but describes a relationship involving education.";
doi="https://doi.org/10.1177/2515245917745629";

// Nodes
Int [label="Intelligence", description = "A persons natural or general level of intelligence"]
EA [label="Educational Attainment", description = "A persons natural or general level of intelligence"]
Inc [label="Income", description="A persons income"]

// Edges
Int -> Inc;
Int -> EA;
EA -> Inc;
}
'

rohrer.2018.fig2 <- '
digraph {

// Model
context="This model is for illustation only, but describes a relationship involving education.";
doi="https://doi.org/10.1177/2515245917745629";

// Nodes
G [label="Grades", description = "A persons grades over a long period of tie"]
Int [label="Intelligence", description = "A persons natural or general level of intelligence"]
EA [label="Educational Attainment", description = "A persons natural or general level of intelligence"]
Inc [label="Income", description="A persons income"]

// Edges
Int -> G;
Int -> Inc;
Int -> EA;
G -> EA;
EA -> Inc;
}
'

rohrer.2018.fig6 <- '
digraph {

// Model
context="This model is for illustation only, but describes a relationship involving education.";
doi="https://doi.org/10.1177/2515245917745629";

// Nodes
C_Int [label="Childhood Intelligence", description = "A persons natural or general level of intelligence at childhood"]
A_Int [label="Adult Intelligence", description = "A persons natural or general level of intelligence at adulthood"]
EA [label="Educational Attainment", description = "A persons natural or general level of intelligence"]
Inc [label="Income", description="A persons income"]
U [description="Unmeasured confounders"]

C_Int -> EA;
C_Int -> A_Int;
C_Int -> Inc;
A_Int -> Inc;
EA -> A_Int;
U -> Inc;
U -> A_Int;
}
'
