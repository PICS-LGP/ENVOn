PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX envm: <http://www.semanticweb.org/yingshen/ontologies/2018/11/3DEnvironmentKnowledgeModel#>

SELECT (?rb as ?manipulated_object) ?pointing_dir ?pd_x ?pd_y ?pd_z ?reference_frame
WHERE {
	?rb a envm:RigidBody;
	          envm:hasName "Pen1";
		envm:hasPointingDirection ?pointing_dir;
		envm:hasLocalReferenceFrame ?reference_frame.
	?pointing_dir a envm:Direction;
			  envm:hasRefDirection ?vector.
	?vector a envm:Vector3D;
				envm:x ?pd_x;
				envm:y ?pd_y;
				envm:z ?pd_z.
	?reference_frame a envm:3D_Cartesian_Coordinate_System.
}