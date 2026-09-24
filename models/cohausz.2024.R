# https://educationaldatamining.org/edm2024/proceedings/2024.EDM-tutorials.130/index.html


# Illustrative DAGs

cohausz.2024.fig2a <- '
digraph {

// Model
context="This is an illustrative model is a chain structure with Study Time being a mediator.";
source="Cohausz, L. (2025). Why the Future of AIED is Causal: Arguments for Creating a Tradition Based on Causal Thinking. In A. I. Cristea, E. Walker, Y. Lu, O. C. Santos, & S. Isotani (Eds.), Artificial Intelligence in Education. Posters and Late Breaking Results, Workshops and Tutorials, Industry and Innovation Tracks, Practitioners, Doctoral Consortium, Blue Sky, and WideAIED (pp. 17–31). Springer Nature Switzerland. https://doi.org/10.1007/978-3-031-99261-2_2";
doi="https://doi.org/10.1007/978-3-031-99261-2_2";
tags="illustrative"

// Nodes
M [label="Motivation", description="The motivation of the student to study."]
ST [label="Study time", description="The amount of time the student spends studying."]
G [label="Grade", description="The academic grade of the student."]

// Edges
M -> ST;
ST -> G;
}
'


cohausz.2024.fig2b <- '
digraph {

// Model
context="This is an illustrative model of a collider structure, with Reading Skill being the collider.";

source="Cohausz, L. (2025). Why the Future of AIED is Causal: Arguments for Creating a Tradition Based on Causal Thinking. In A. I. Cristea, E. Walker, Y. Lu, O. C. Santos, & S. Isotani (Eds.), Artificial Intelligence in Education. Posters and Late Breaking Results, Workshops and Tutorials, Industry and Innovation Tracks, Practitioners, Doctoral Consortium, Blue Sky, and WideAIED (pp. 17–31). Springer Nature Switzerland. https://doi.org/10.1007/978-3-031-99261-2_2";

doi="https://doi.org/10.1007/978-3-031-99261-2_2";

tags="illustrative"

// Nodes
MT [label="Mother tongue", description="The first language spoken by the student."]
A [label="Age", description="The age of the student."]
RS [label="Reading Skill", description="The reading skill of the student."]

// Edges
A -> RS;
MT -> RS;
}
'


cohausz.2024.fig2c <- '
digraph {

// Model
context="This is an illustrative model showing a fork structure, with Age being a confounder.";

source="Cohausz, L. (2025). Why the Future of AIED is Causal: Arguments for Creating a Tradition Based on Causal Thinking. In A. I. Cristea, E. Walker, Y. Lu, O. C. Santos, & S. Isotani (Eds.), Artificial Intelligence in Education. Posters and Late Breaking Results, Workshops and Tutorials, Industry and Innovation Tracks, Practitioners, Doctoral Consortium, Blue Sky, and WideAIED (pp. 17–31). Springer Nature Switzerland. https://doi.org/10.1007/978-3-031-99261-2_2";

doi="https://doi.org/10.1007/978-3-031-99261-2_2";

tags="illustrative"

// Nodes
H [label="Height", description="The height of the student."]
A [label="Age", description="The age of the student."]
RS [label="Reading Skill", description="The reading skill of the student."]

// Edges
A -> RS;
A -> H;
}
'


cohausz.2024.fig3 <- '
digraph {
node [style = filled, fillcolor = white]

// Model
context="An example showing feature selection. We aim to predict the reading skills of elementary school children. In [this] example, math skills and motivation will be discarded because they contain no extra information not present in the reading experience. If regular correlationbased approaches were chosen, it is likely that the other variables would also be included – despite them not providing a real benefit. Moreover, we will automatically generate actionable insights by including only causally relevant features.";

source="Cohausz, L. (2025). Why the Future of AIED is Causal: Arguments for Creating a Tradition Based on Causal Thinking. In A. I. Cristea, E. Walker, Y. Lu, O. C. Santos, & S. Isotani (Eds.), Artificial Intelligence in Education. Posters and Late Breaking Results, Workshops and Tutorials, Industry and Innovation Tracks, Practitioners, Doctoral Consortium, Blue Sky, and WideAIED (pp. 17–31). Springer Nature Switzerland. https://doi.org/10.1007/978-3-031-99261-2_2";

doi="https://doi.org/10.1007/978-3-031-99261-2_2";

tags="illustrative"

// Nodes
MS [label="Math Skill", description="The skill in mathematics of the student.", 
fillcolor = grey70]
M [label="Age", description="The general motivation to study of the student.", 
fillcolor = grey70]
RE [label="Reading Experience", description = "The amount of reading experience of the student."]
RS [label="Reading Skill", description="The reading skill of the student."]

// Edges
M -> MS;
M -> RE;
RE -> RS;
}
'

