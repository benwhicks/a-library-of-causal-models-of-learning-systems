# Causal Inference and Bias in Learning Analytics
# A Primer on Pitfalls Using Directed Acyclic Graphs

# Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), 183-199. https://doi.org/10.18608/jla.2022.7577

# https://doi.org/10.18608/jla.2022.7577

weidlich.2022.fig2 <- '
digraph {

// Model
context="DAG representing the confounding situation between Study Behaviour and MOOC completion. `Because the researchers in this MOOC project are education researchers, they infer that self-regulated learning skills (SRL) may play a role in MOOC completion (Littlejohn et al., 2016; Moreno-Marcos et al., 2020). They hypothesize that SRL may be a confounder, a variable affecting what they expect to be the causal variable and the outcome, thereby introducing a spurious correlation between them.`"
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
SRL [label = "Self Regulated Learning skills", description="Self Regulated Learning skill of the student."]
SB [label = "Study Behaviour", description="How the student approaches their study."]
MC [label = "MOOC completion", description="Whether or not the student completes the MOOC."]

// Edges
SRL -> SB;
SRL -> MC;
SB -> MC;
}
'

weidlich.2022.fig3 <- '
digraph {

// Model
context="DAG representing the causal assumptions in a Learning Analytics Dashboard study. `[The researchers] hypothesize that SRL may play a confounding role, since research indicates that SRL affects both dashboard use (Jivet et al., 2020) and learning achievement (Zimmerman, 1990). Moreover, they hypothesize that SRL not only directly affects learning achievement, but is partly mediated by students’ study behaviour. The researchers now inspect the DAG shown in Figure 3 to assess if the desired causal effect is identified; that is, if all non-causal paths between IV and DV are blocked.`"
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
SRL [label = "Self Regulated Learning skills", description="Self Regulated Learning skill of the student."]
SB [label = "Study Behaviour", description="How the student approaches their study."]
DU [label = "Dashboard use", description="Whether or not the uses the dashboard."]
LA [label = "Learning Achievement", description="The learning achievement of the student."]

// Edges
SRL -> SB;
SRL -> DU;
SRL -> LA;
DU -> LA;
SB -> LA;

}
'

weidlich.2022.fig4 <- '
digraph {

// Model
context="DAG displaying the confounding situation of Arnold & Pistilli (2012),  making the causal effect unidentified without further control."
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
NC [label = "Number of Classes Taken", description="Number of classes that the student is taken where they could have used course signals, thus increasing the potential of exposure to the tool."]
CS [label = "Course Signals", description="The student use of the course signals support tool."]
SR [label = "Student Retention", description="Student remains in the course."]

// Edges
NC -> CS;
NC -> SR;
CS -> SR;
}
'

weidlich.2022.fig5 <- '
digraph {
node [shape=none]

// Model
context="Possible DAG for RQ1 and RQ2 of Beheshitha et al. (2016). AGO stands for achievement goal orientation variables and the box surrounding it indicates (statistical) control."
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
AGO [label = "AGO", description="Achievement goal orientation of the student.", shape=box]
VT [label = "Visualization Type", description="One of three different visualization types on student participation in online discussions."]
P [label = "Qaul/Quant of Student Posts", description="The quantity and quality of student posts."]

// Edges

AGO -> VT;
AGO -> P;
VT -> P;
}
'

weidlich.2022.fig6 <- '
digraph {
node [shape=none]

// Model
context="DAG representing possible causal structure of Beheshitha et al. (2016).  In this situation, visualization use is a collider. Visualization Use is preconditioned as the study was restricted to those that use the visualization."
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
AGO [label = "AGO", description="Achievement goal orientation of the student.", shape=box]
VT [label = "Visualization Type", description="One of three different visualization types on student participation in online discussions."]
VU [label = "Visualization Use", description="The student uses the visualization.", shape=box]
P [label = "Qaul/Quant of Student Posts", description="The quantity and quality of student posts."]

// Edges

AGO -> VU;
AGO -> P;
VT -> VU;
VU -> P;
}
'


weidlich.2022.fig7 <- '
digraph {
node [shape=none]

// Model
context="DAG representing possible causal structure of Gašević et al. (2016). Unobserved variables are hypothesized factors  determining ESAP inclusion as well as current student behaviour and student success, respectively. For purposes of this  example, potential additional, crossing arrows from the unobserved to the observed variables are excluded."
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
SB [label = "Student Behaviour", description="The learning behaviour of the student."]
SS [label = "Student Success", description="The success of the student, using their grades and pass/fail."]
ESAP [label = "ESAP", description="An initiative designed to enhance student retention.", shape=box]
U1 [label = "Teacher Engagement (unobserved 1)", description="How much the teacher is engaged."]
U2 [label = "Quality of Instructional Design (unobserved 2)", description=""]


// Edges
U1 -> SB;
U1 -> ESAP;
U2 -> SS;
U2 -> ESAP;

}
'


weidlich.2022.fig8 <- '
digraph {
node [shape=none]

// Model
context="DAG representing possible collider bias in Zhu et al. (2016)."
source="Weidlich, J., Gašević, D., & Drachsler, H. (2022). Causal Inference and Bias in Learning Analytics: A Primer on Pitfalls Using Directed Acyclic Graphs. Journal of Learning Analytics, 9(3), Article 3. https://doi.org/10.18608/jla.2022.7577"
doi="https://doi.org/10.18608/jla.2022.7577"
tags="derived-from-literature"

// Nodes
MOOC [label = "MOOC Attrition", description="Student who leave the MOOC.", shape=box]
LE [label = "Learning Engagement", description="Learning engagement, see Tseng et al. (2016); Joksimović et al. (2018)."]
SC [label = "Social Connectedness", description="Social connectedness, as in Galikyan et al. (2021); Wang et al. (2019)"]


// Edges
LE -> MOOC;
SC -> MOOC;

}
'
