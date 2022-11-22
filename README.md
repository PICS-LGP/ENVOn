# ENVOn - Ontology for 3D environment
ENVOn aims to capture the core notions and relations related to a 3D environment where a simulated manipulated task takes place, i.e., context, topology, and geometry of both the rigid bodies and the free space models. The proposed ontology reuses the concepts already defined in the multi-level environment model and other existing standards and ontologies related to the modelling of a manipulation environment, such as the geometries of CAD models defined in the STEP standard. We summarize the purpose and the scope of ENVOn below.

__Purpose__: To build an ontology for 3D environment integrating different level of abstraction (geometrical, topological, and contextual) to provide shared vocabulary to describe both free-space and rigid bodies virtually for enabling planning of robotic tasks (manipulation, navigation, localization) and to bridge the gap between task and motion planning as an environment model usable by both levels (low level - motion planning and high level - task planning).

__Scope__: The ontology will include different levels of abstraction (geometrical, topological, and contextual) for both rigid bodies and free space with rich semantic links among them. The ontology will be evaluated based on test scenarios from object manipulation under strong geometric constraints.

Figure 1 shows the general architecture of the proposed ontology with some key concepts and relations. A key objective of building ENVOn is to have a common vocabulary to be reused by different applications concerning manipulation tasks. The knowledge at each level should be easily extracted, updated, and reused by other domain ontologies. Therefore, we consider a modular architecture of the ontology model, where each level represents a module. In our design, three different modules are proposed:
-	The geometry description module groups the concepts and relations related to the geometries of the rigid bodies and the free space module. RB Geo Model consists of two possible geometric models (i.e., CSG and BREP) of rigid bodies (Rigid Body) based on CAD. 3D Space Geo Model concerns the cell decomposition (Cell decomposition 3D) of the free space model (3D free space). Area represents a bounded volume of the 3D free space.
- The topology description module describes places (Place) and borders (Border) identified in the 3D simulation environment. It also illustrates their connectivity by constructing a topological graph (TopoGraph).
-	The context description module provides the semantic description of rigid bodies (Rigid body), places, and borders. Such a kind of description includes the potential taxonomy (e.g., Container, Opening, Hole) and the related properties (Function, Color, Shape). We must note that this level of information heavily relies on the application (i.e., the manipulation task to be performed).

![The general architecture of ENVOn]([https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png](https://github.com/PICS-LGP/ENVOn/blob/main/Picture3.jpg) "The general architecture of ENVOn")

## Folder structure
- _3DEnvironmentKnowledgeModel.owl_ is the ENVOn ontology file encoded in OWL.
- _experiments_ folder contains SPARQL files which can be run on sample instances stored in 3DEnvironmentKnowledgeModel.owl
- _application_ folder contains application specific extensions of ENVOn ontology.

