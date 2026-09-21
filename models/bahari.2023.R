# https://www.mdpi.com/2071-1050/15/21/15190

# Predicting the Intention to Use Learning Analytics for Academic Advising in Higher Education

bahari.2023.fig1 <- '
digraph {
    // Model
    context="This model is a merger of the UTAUT and IS Success models to understand the adoption of LA use. The conceptual model is used to inform a structural equation model. From the paper: `The study employed UTAUT as a theoretical framework to understand users’ intention to utilize LA dashboards...Additionally, the study integrated specific variables from the DeLone and McLean IS Success Model`.  For UTAUT see `Venkatesh, V.; Morris, M.G.; Davis, G.B.; Davis, F.D. User Acceptance of Information Technology: Toward a Unified View. MIS Q. 2003, 27, 425–478`; for IS Success see `Delone, W.H.; McLean, E.R. The DeLone and McLean Model of Information Systems Success: A Ten-Year Update. J. Manag. Inf. Syst. 2003, 19, 9–30.`";
    url="https://www.mdpi.com/2071-1050/15/21/15190";
    doi="https://doi.org/10.3390/su152115190";
    
    
    // Nodes
    PI [label="Personal innovativeness", description = "Personal innovativeness (PI) measures an individual’s openness to try out novel technologies and innovations."]
    PE [label="Performance expectancy", description = "The degree to which an individual believes that utilizing the system will assist them in achieving improvements in job performance."]
    EE [label="Effort expectancy", description = "The degree to which using the system is simple and uncomplicated."]
    SI [label="Social influence", description = "The extent to which an individual believes that significant others believe they should use the new system."]
    FC [label="Facilitating conditions", description = "The level of confidence an individual has in the existence of an organizational and technical infrastructure to support system usage."]
    IULA [label = "Intention to use LA", description = "Intention to use LA, the outcome for this model."]
    IQ [label="Information quality", description = "IQ assesses the information quality provided by the system."]
    SQ [label="System quality", description = "SQ evaluates the overall system attributes and capabilities. It refers to the extent of a system’s availability, speed of feedback, user-friendliness, and screen features (interface)—all indicators of its usability—influencing the user’s behavioral intentions to use the innovation"]
    
    
    // Edges
    edge [polarity = "+"]
    PI -> PE;
    PI -> EE;
    PI -> IULA;
    PE -> IULA;
    EE -> IULA;
    SI -> IULA;
    FC -> IULA;
    IQ -> IULA;
    SQ -> IULA;
}
'
