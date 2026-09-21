# Lubke, Gehrke, Horst, Szepannek (2020) Why we should teach causal inference: Examples in linear regression with simulated data 
# Instructional models only - not used for educational research

lubke.2020.fig1 <- '
digraph chain {
// Model
context="Illustrative example of a chain / mediator pattern, where adjusting causes bias.";
tags = "illustrative";
# TODO: Review this
doi="https://doi-org/10.1080/10691898.2020.1752859";

// Nodes
X [label = "X", description = "Learning, the cause (or treatment) in this example."]
C [label = "C", description = "Knowing, the mediator in this example."]
Y [label = "Y", description = "Understanding, the effect (or outcome) in this example."]

// Edges
X -> C;
C -> Y;
}
'

lubke.2020.fig2 <- '
digraph fork {
// Model
context="Illustrative example of a fork / confounder pattern, where adjusting removes bias.";
tags = "illustrative";
# TODO: Review this
doi="https://doi-org/10.1080/10691898.2020.1752859";

// Nodes
X [label = "X", description = "Learning time, the cause (or treatment) in this example."]
C [label = "C", description = "Intelligence, the confounder in this example."]
Y [label = "Y", description = "Test score, the effect (or outcome) in this example."]

// Edges
X -> Y;
C -> Y;
C -> X;
}
'

lubke.2020.fig3 <- '
digraph collider {
// Model
context="Illustrative example of a collider pattern, where adjusting causes bias.";
tags = "illustrative";
# TODO: Review this
doi="https://doi-org/10.1080/10691898.2020.1752859";

// Nodes
X [label = "X", description = "Ability to network."]
C [label = "C", description = "Promotion, the collider in this example."]
Y [label = "Y", description = "Competence."]

// Edges
X -> C;
Y -> C;
}
'


lubke.2020.fig4 <- '
digraph {
// Model
context="Illustrative example of an randomised experiement.";
tags = "illustrative";
# TODO: Review this
doi="https://doi-org/10.1080/10691898.2020.1752859";

// Nodes
X [label = "X", description = "Learning time."]
C [label = "C", description = "Intellligence."]
Y [label = "Y", description = "Test score."]
E [label = "E", description = "Experimenter."]

// Edges
X -> Y;
C -> Y;
E -> X;
}
'


lubke.2020.fig5 <- '
digraph {
// Model
context="Illustrative example of mediation analysis DAG.";
tags = "illustrative";
# TODO: Review this
doi="https://doi-org/10.1080/10691898.2020.1752859";

// Nodes
X [label = "X", description = "Cause / Treatment"]
M [label = "M", description = "Mediator"]
Y [label = "Y", description = "Effect / Outcome"]

// Edges
X -> M;
X -> Y;
M -> Y;
}
'
