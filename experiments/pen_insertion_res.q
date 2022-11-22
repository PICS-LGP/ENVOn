PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX envm: <http://www.semanticweb.org/yingshen/ontologies/2018/11/3DEnvironmentKnowledgeModel#>

SELECT (COUNT(?rb) as ?number_of_result) 
WHERE {
	?rb_volume a envm:Cylinder;
		    	 envm:hasSweepingPlane ?rb_sweep.
	?rb_sweep a envm:CircularPlane3D;
		    envm:radius ?rbsp_size.
	?rb a envm:RigidBody;
		envm:hasName "Pen1";
		envm:hasStandardForm ?rb_volume.
	?place_volume a envm:Block;
			    envm:hasSweepingPlane ?place_sweep.
	?place_sweep a envm:Rectangle3D;
			 envm:diagonal ?placesp_size.
	?place a envm:Place;
		 envm:hasName "P2";
		 envm:hasStandardForm ?place_volume.
	FILTER (?rbsp_size <= 0.35355 * ?placesp_size)	
}