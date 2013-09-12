/**
 * Sparqlification Mapping Language (SML) File
 * the United Nations Spatial Data Infrastructure (UN-SDI) Gazetteer
 *
 * TODOs
 *   - Second table not mapped yet
 *   - Which of the three names/codes to use as the primary link source?
 *
 *
 * Changelog
 * 
 *   0.1 (2013-09-12)
 *     - Initial version
 * 
 *
 *
 * 
 * @Author Claus Stadler
 * 
 */

Prefix ex: <http://example.org/>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix owl: <http://www.w3.org/2002/07/owl#>
Prefix dc: <http://purl.org/dc/elements/1.1/>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>

Prefix sml: <http://aksw.org/sparqlify/>


// Issues related to Sparqlify:
// TODO Allow view names to start with digits: 12160_Local_Government_Area_Structure
// TODO: Add support for xsd:gYear


Create View lgas1 As
  Construct {
    ?a
      a ex:State ;
      rdfs:label ?al ;
      dc:year "2011"^^xsd:int ;
      ex:code ?ac ;
      .
  }
  With
    ?a  = uri(ex:, 'state/2011/', ?STATE_CODE_2011, '-', sml:urlEncode(?STATE_NAME_2011))
    ?al = plainLiteral(?STATE_NAME_2011, 'en')
    ?ac = typedLiteral(?STATE_CODE_2011, xsd:decimal)
  From
    [[SELECT DISTINCT "STATE_NAME_2011", "STATE_CODE_2011" FROM "12160_Local_Government_Area_Structure"]]

Create View lgas2 As
  Construct {
    ?b
      a ex:State ;
      rdfs:label ?bl ;
      dc:year "2011"^^xsd:int ;
      ex:code ?bc ;
      .
  }
  With
    ?b  = uri(ex:, 'lga/2011/', ?LGA_CODE_2011, '-', sml:urlEncode(?LGA_NAME_2011))
    ?bl = plainLiteral(?LGA_NAME_2011, 'en')
    ?bc = typedLiteral(?LGA_CODE_2011, xsd:decimal)
  From
    [[SELECT DISTINCT "LGA_NAME_2011", "LGA_CODE_2011" FROM "12160_Local_Government_Area_Structure"]]


Create View lgas3 As
  Construct {
    ?c
      a ex:State ;
      rdfs:label ?cl ;
      dc:year "2011"^^xsd:int ;
      ex:code ?cc ;
      .
  }
  With
    ?c  = uri(ex:, 'sla/2011/', ?SLA_MAINCODE_2011, '-', sml:urlEncode(?SLA_NAME_2011))
    ?cl = plainLiteral(?SLA_NAME_2011, 'en')
    ?cc = typedLiteral(?SLA_MAINCODE_2011, xsd:decimal)
  From
    [[SELECT DISTINCT "SLA_NAME_2011", "SLA_MAINCODE_2011" FROM "12160_Local_Government_Area_Structure"]]


Create View lgdas_links_b As
  Construct {
    ?a owl:sameAs ?b
  }
  With
    ?a  = uri(ex:, 'state/2011/', ?STATE_CODE_2011, '-', sml:urlEncode(?STATE_NAME_2011))
    ?b  = uri(ex:, 'lga/2011/', ?LGA_CODE_2011, '-', sml:urlEncode(?LGA_NAME_2011))
  From
    [[SELECT DISTINCT "STATE_NAME_2011", "STATE_CODE_2011", "LGA_NAME_2011", "LGA_CODE_2011" FROM "12160_Local_Government_Area_Structure"]]


Create View lgdas_links_c As
  Construct {
    ?a owl:sameAs ?c
  }
  With
    ?a  = uri(ex:, 'state/2011/', ?STATE_CODE_2011, '-', sml:urlEncode(?STATE_NAME_2011))
    ?c  = uri(ex:, 'sla/2011/', ?SLA_MAINCODE_2011, '-', sml:urlEncode(?SLA_NAME_2011))
  From
    [[SELECT DISTINCT "STATE_NAME_2011", "STATE_CODE_2011", "SLA_NAME_2011", "SLA_MAINCODE_2011" FROM "12160_Local_Government_Area_Structure"]]


