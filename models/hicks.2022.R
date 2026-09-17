# Hicks, B., Kitto, K., Payne, L., & Buckingham Shum, S. (2022). Thinking with causal models: A visual formalism for collaboratively crafting assumptions. _LAK22: 12th International Learning Analytics and Knowledge Conference_, 250–259. https://doi.org/10.1145/3506860.3506899
# Model not applied to data, but was part of an elicitation process

hicks.2022.fig10 <- '
digraph student_retention_DAG {
edge [style = solid]

// Model
context="This model is mainly for illustation, but was modelled by a domain expert working in the student retention field. It is a loose, generalised view of modelling the intervention with students at risk of drop out. The variables are very high-level abstractions, and the model has not been applied to data. The dashed edge in this model indicates uncertainty about the presence of that edge.";
doi="https://doi.org/10.1177/2515245917745629";


// Nodes
F [label="Fixed", description = "A students fixed attributes that they bring to their study, such as their prior learning, scoioeconomic advantage, race, gender, etc."]
M0 [label="Mutable_T0", description = "A students changeble attributes before the intervention (the T0), such as: study habits, knowledge, time available, financial situation, etc."]
M1 [label="Mutable_T0", description = "A students changeble attributes after the intervention (the T1), such as: study habits, knowledge, time available, financial situation, etc."]
I [label="Intervention", description="A binary variable of whether or not the student receives the intervention. In the case of this study it was a phone call or similar meeting with a study advisor, in response to them being identified as at risk of failing. "]
O [label="Outcome", description="The students end outcome. This could be pass / fail the coarse, or remain / drop-out of the coarse, depending on the aim of the intervention program."]

// Edges
F -> M0 ;
F -> I ;
I -> M1 ;
M0 -> M1 ;
M0 -> I [style = dashed];
M1 -> O ;
}
'
