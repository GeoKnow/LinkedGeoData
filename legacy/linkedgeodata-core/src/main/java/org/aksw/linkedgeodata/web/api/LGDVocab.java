package org.aksw.linkedgeodata.web.api;

import java.awt.geom.RectangularShape;

import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;
import org.openstreetmap.osmosis.core.domain.v0_6.Entity;

public interface LGDVocab
{
    Resource getNodeClass();
    Resource getWayClass();


    String getBaseNS();
    String getResourceNS();
    //String getNode

    Property getHasNodesPred();
    Property getMemberOfWayPred();


    Property getUserIdPredicate();


    // NIR = Non-Information-Resource
    Resource createOSMNodeURI(long id);
    Resource createOSMWayURI(long id);
    Resource createOSMRelationURI(long id);

    Resource createNIRNodeURI(long id);
    Resource createNIRWayURI(long id);
    Resource createNIRRelationURI(long id);


    Resource createResource(Entity entity);

    String getOntologyNS();

    Resource getHasNodesResource(Long wayId);

    Resource wayToWayNode(Resource res);
    Resource wayNodeToWay(Resource res);
    Resource createContributorURI(int userId);

    Resource resourceForArea(RectangularShape shape);

    Entity createEntity(Resource res);
}
