PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX envm: <http://www.semanticweb.org/yingshen/ontologies/2018/11/3DEnvironmentKnowledgeModel#>

SELECT (COUNT(?rb) as ?number_of_result)
WHERE {
	?rb a envm:RigidBody;
		envm:hasName "O3";
		envm:hasStandardForm ?rb_volume;
		envm:hasLocalReferenceFrame ?reference_frame.
	?rb_volume envm:hasSweepingPlane ?rb_sweeping_plane.
	?rb_sweeping_plane a envm:Triangle3D;
		envm:diagonal ?rbsp_size.
	?place a envm:Place;
		envm:hasName "P5";
		envm:hasStandardForm ?place_volume;
		envm:hasLocalReferenceFrame ?reference_frame.
	?place_volume envm:hasSweepingPlane ?place_sweeping_plane.
	?reference_frame a envm:3D_Cartesian_Coordinate_System.
	?place_sweeping_plane a envm:Triangle3D;
		envm:diagonal ?placesp_size.
	FILTER(?rbsp_size  <=  ?placesp_size)
}