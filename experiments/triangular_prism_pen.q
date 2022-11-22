PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX envm: <http://www.semanticweb.org/yingshen/ontologies/2018/11/3DEnvironmentKnowledgeModel#>

SELECT (?rb as ?manipulated_object) ?sweeping_surface ?sweeping_dir ?sweeping_dir_x ?sweeping_dir_y ?sweeping_dir_z ?sweeping_len ?reference_frame
WHERE {
	?rb a envm:RigidBody;
		envm:hasStandardForm ?rb_volume;
		envm:hasLocalReferenceFrame ?reference_frame.
	?rb_volume a envm:TriangularPrism;
		envm:hasSweepingPlane ?sweeping_surface;
		envm:hasSweepingDir ?sweeping_dir;
		envm:sweeping_length ?sweeping_len.
	?reference_frame a envm:3D_Cartesian_Coordinate_System.
	?sweeping_surface a envm:Triangle3D.
	?sweeping_dir a envm:Vector3D;
		envm:x ?sweeping_dir_x;
		envm:y ?sweeping_dir_y;
		envm:z ?sweeping_dir_z.
}