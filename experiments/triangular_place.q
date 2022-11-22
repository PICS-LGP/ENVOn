PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX envm: <http://www.semanticweb.org/yingshen/ontologies/2018/11/3DEnvironmentKnowledgeModel#>

SELECT ?place ?sweeping_plane ?sweeping_dir ?sd_x ?sd_y ?sd_z ?reference_frame
WHERE {
	?place a envm:Place;
		envm:hasName "P5";
		envm:hasStandardForm ?rb_volume;
		envm:hasLocalReferenceFrame ?reference_frame.
	?rb_volume a envm:TriangularPrism;
		envm:hasSweepingPlane ?sweeping_plane;
		envm:hasSweepingDir ?sweeping_dir.
	?reference_frame a envm:3D_Cartesian_Coordinate_System.
	?sweeping_dir a envm:Vector3D;
		envm:x ?sd_x;
		envm:y ?sd_y;
		envm:z ?sd_z.
}