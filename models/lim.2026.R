# https://link.springer.com/article/10.1007/s44217-026-01219-0?fromPaywallRec=false

# IT mindfulness and AI literacy shape lifelong learning orientation through student engagement and learning agency in AI-enhanced online learning
# Thean Pheng Lim & Wee Chuan Teh 

# Lim, T.P., Teh, W.C. IT mindfulness and AI literacy shape lifelong learning orientation through student engagement and learning agency in AI-enhanced online learning. Discov Educ 5, 192 (2026). https://doi.org/10.1007/s44217-026-01219-0

# Abstract: This study examines how two digital competencies, IT mindfulness and AI literacy, shape students’ lifelong learning orientation in AI-enhanced online learning, and whether these effects are transmitted through student engagement and student learning agency. Using partial least squares structural equation modelling (PLS SEM) on survey data from 325 undergraduate and postgraduate students, we find that the direct effects of IT mindfulness and AI literacy on lifelong learning orientation are statistically significant, but with a weak effect. By contrast, indirect effects via the two mediators are substantially larger. Both student engagement and student learning agency mediate the relationships, with student learning agency exerting the stronger influence. The majority of each digital competency’s total effect is transmitted through these mediating pathways. The findings underscore the significance of indirect processes in transforming digital competencies into lasting learning orientations. Practically, AI-enhanced course design should cultivate not only technical competencies but also the behavioural, cognitive, emotional, collaborative, and social dimensions of engagement, alongside student learning agency, to unlock the full potential of these competencies for continuous, self-directed learning in technology-rich environments.

lim.2026.fig1 <- '
digraph {
node [shape = ellipse]
edge [style = solid]

// Model
context="This model is a proposed model which `examines how two digital competencies, IT mindfulness and AI literacy, shape students’ lifelong learning orientation in AI-enhanced online learning, and whether these effects are transmitted through student engagement and student learning agency. Using partial least squares structural equation modelling (PLS SEM) on survey data from 325 undergraduate and postgraduate students, we find that the direct effects of IT mindfulness and AI literacy on lifelong learning orientation are statistically significant, but with a weak effect. By contrast, indirect effects via the two mediators are substantially larger. Both student engagement and student learning agency mediate the relationships, with student learning agency exerting the stronger influence. The majority of each digital competency’s total effect is transmitted through these mediating pathways.`";
source="Lim, T.P., Teh, W.C. IT mindfulness and AI literacy shape lifelong learning orientation through student engagement and learning agency in AI-enhanced online learning. Discov Educ 5, 192 (2026). https://doi.org/10.1007/s44217-026-01219-0";
doi="https://doi.org/10.1007/s44217-026-01219-0";


// Nodes
LL [label="Lifelong learning", description="Lifelong learning"]
SLA [label="Student learning agency", description="Student learning agency"]
ITM [label="IT Mindfullness", description="IT Mindfullness"]
AIL [label="AI Literacy", description="AI Literacy"]

SE [label="Student engagement", description="Student engagement"]
bEng [label="Behavioural engagement", description="Behavioural engagement", shape = box]
cogEng [label="Cognitive engagement", description="Cognitive engagement", shape = box]
colEng [label="Collaborative engagement", description="Collaborative engagement", shape = box]
eEng [label="Emotional engagement", description="Emotional engagement", shape = box]
sEng [label="Social engagement", description="Social engagement", shape = box]

// Edges
bEng -> SE;
cogEng -> SE;
colEng -> SE;
eEng -> SE;
sEng -> SE;
SE -> LL;
AIL -> LL;
ITM -> LL;
SLA -> LL;
AIL -> SE;
ITM -> SE;
ITM -> SLA;
AIL -> SLA;

}
'
