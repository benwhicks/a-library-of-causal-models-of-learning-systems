# The Learning System Causal Model Library

A place to collect and share causal models of learning systems. The focus here is (initially) on Graphical Causal Models (GCMs), including causal Directed Acyclic Graphs (DAGs)

> The models here should be treated as works in progress, created within a particular context. Learning is messy complex, and there are multiple (valid) ways to represent the same system.

There are not many models of learning systems out there, but those that are publically available we can try and collect here, pointing to the paper they are from.

(add license info here - when sorted out)

## Using this library

### The DOT language, and key metadata

The language used to save diagrams in tools like [DAGitty](https://dagitty.net/learn/index.html) and the related R Packages is called the [DOT language](https://graphviz.org/doc/info/lang.html). It is highly customisable but not everything needs to be included to share what is meaningful for a causal model. More importantly there are things that we *should* include that are not the default in some tools, such as in DAGitty, below:

```
dag {
A [selected,pos="-2.200,-1.520"]
B [pos="1.400,-1.460"]
D [outcome,pos="1.400,1.621"]
E [exposure,pos="-2.200,1.597"]
Z [adjusted,pos="-0.300,-0.082"]
A -> E
A -> Z [pos="-0.791,-1.045"]
B -> D
B -> Z [pos="0.680,-0.496"]
E -> D
}
```

Note that DAGitty includes details about *outcome* and *exposure*, which are useful but specific to the research question, not to the causal model. Moreover, there are key features that we should include so that these models are more readily transferable to other contexts, such as:

- An outline of the **Model Context**: what system is trying to be modelled, in what circumstances?
- A **Node Description** of each node, ideally in some detail. If we say "Student Knowledge" what is it exactly?
- A **DOI** if the model appeared in a paper, or
- **URL** if there is a relevant online source of the model to refer to.
- ...anything else? This list is still in draft - aiming for a minimally sufficient list of compulsory graph meta-data and perhaps some optional extras.

### Tools for drawing models

- [DAGitty](https://dagitty.net/dags.html)
- [Loopy v2](https://efa.unisa.edu.au/Loopy/) ([v3](https://github.com/benwhicks/loopy) in the works, or check out the [original](https://ncase.me/loopy/) by the brilliant Nicky Case)

### Tools for manipulation

...coming. I have lots of code, based on the `dagitty` and `tidygraph` R packages, but it needs some organising first. 

## Learning more

See [this list of resources](https://sites.google.com/view/lak26-workshop-gcm-for-la/further-reading). 
