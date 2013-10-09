/**
 * Sparqlification Mapping Language (SML) File
 * the United Nations Spatial Data Infrastructure (UN-SDI) Gazetteer
 *
 * TODOs
 *   - Second table not mapped yet
 *   - Which of the three names/codes to use as the primary link source?
 *
 *
 * Mapping status
 *
 *   Skipped:
 *     - s_featurecode (empty)
 *     - s_format (; related to gazeteerviewer)
 *     -
 *
 *
 *
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

Prefix sml: <http://aksw.org/sparqlify/>

Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix owl: <http://www.w3.org/2002/07/owl#>
Prefix dc: <http://purl.org/dc/elements/1.1/>
Prefix ogc: <http://www.opengis.net/ont/geosparql#>

Prefix ex: <http://example.org/>
Prefix skos: <http://www.w3.org/2004/02/skos/core#>


Create View s_gazetteer As
  Construct {
    ?s
      a ex:Gazetteer ;
      rdfs:label ?l ;
      rdfs:comment ?c ;
      ex:extent ?e ;
      ex:lowerCorner ?lc ;
      ex:upperCorner ?uc ;
      ex:entrycount ?ec ;
      ex:custodian ?cu ;
      ex:identifier ?i ;
      ex:status ?st ;
      ex:entries ?es ;
      ex:license ?li ;
      ex:publicationDate ?p ;
      ex:registrationDate ?r
// TODO harvestpoint
  }
  With
    ?s = uri(ex:, 'gazetteer', ?row_id)
    ?l = plainLiteral(?name)
    ?c = plainLiteral(?description)
    ?e = uri(?extent)
    ?lc = typedLiteral(?lowercorner, ogc:wktLiteral)
    ?uc = typedLiteral(?uppercorner, ogc:wktLiteral)
    ?ec = typedLiteral(?entrycount, xsd:int)
    ?cu = plainLiteral(?custodian)
    ?i = uri(?identifier)
    ?st = plainLiteral(?status)
    ?p = typedLiteral(?publicationdate, xsd:dateTime)
    ?r = typedLiteral(?registrationdate, xsd:dateTime)
    ?es = uri(ex:, 'gazetteerEntries', ?row_id)
    ?li = uri(ex:, 'license', ?licence)
  Constrain
    ?e prefix 'http://id.sirf.net/'
    ?i prefix 'http://id.sirf.net/'
  From
    [[SELECT * FROM demo_test.s_gazetteer]]


Create View s_license As
  Construct {
    ?s
      a ex:License ;
      rdfs:label ?l ;
      rdfs:comment ?c ;
      rdfs:seeAlso ?sa
  }
  With
    ?s = uri(ex:, 'license', ?row_id)
    ?l = plainLiteral(?name)
    ?c = plainLiteral(?content)
    ?sa = uri(?uri)
  From
    [[SELECT * FROM demo_test.s_licence]]


Create View s_gazetteerentryList As
  Construct {
//    ?el ?p ?e .
    ?el ex:entry ?e .
  }
  With
    ?el = uri(ex:, 'gazetteerEntries', ?gazetteer)
//    ?p = uri(rdf:, '_', ?row_id)
    ?e = uri(ex:, 'gazetteerEntry', ?row_id)
  From
    [[SELECT * FROM demo_test.s_gazetteerentry]]


Create View s_gazetteerentry As
  Construct {
    ?s
      a ex:GazetteerEntry ;
      ex:locationType ?lt ;
      ex:sourcelocType ?slt ;
      rdfs:comment ?c ;
      ex:sourceLink ?sl ;
      ex:position ?geo ;
      ex:identifier ?i ;
      ex:extent ?e
  }
  With
    ?s = uri(ex:, 'gazetteerEntry', ?row_id)
    ?lt = uri(?locationtype)
    ?slt = uri(?sourceloctype)
    ?c = plainLiteral(?description)
    ?sl = uri(?sourcelink)
    ?geo = typedLiteral(?position, ogc:wktLiteral)
    ?i = uri(?identifier)
    ?e = uri(?extent)
  Constrain
    ?lt prefix 'http://id.sirf.net/def/sitype/sirf/feature-categories/'
    ?slt prefix 'http://id.sirf.net/def/sitype/source/inasdi/toponymcode/'
    ?sl prefix 'http://unsdi.arrc.csiro.au/unsdi-gazetteer-id/ows'
    ?e prefix 'http://id.sirf.net/siset/UNGEGN/'
  From
    [[SELECT * FROM demo_test.s_gazetteerentry]]


/**
 *
 * Ideally the database should contain the language tags
 */
Create View officialLabel As
  Construct {
    ?s ex:officialLabel ?l
  }
  With
    ?s = uri(ex:, 'gazetteerEntry', ?gazetteer_entry)
    ?l = plainLiteral(?label)
  From
    [[SELECT * from demo_test.s_name WHERE status = 'Official']]

/**
 *  Unofficial labels become skos:altLabel s
 * TODO: Maybe rdfs:label should be preferably official label, but
 * fall back to altLabel if no former exists
 *
 */
Create View altLabel As
  Construct {
    ?s skos:altLabel ?l
  }
  With
    ?s = uri(ex:, 'gazetteerEntry', ?gazetteer_entry)
    ?l = plainLiteral(?label)
  From
    [[SELECT * from demo_test.s_name WHERE status != 'Official']]


Create View preferredLabel As
  Construct {
    ?s skos:preferredLabel ?l
  }
  With
    ?s = uri(ex:, 'gazetteerEntry', ?gazetteer_entry)
    ?l = plainLiteral(?label)
  From
    [[SELECT b.gazetteer_entry, b.label FROM demo_test.s_gazetteerentry a JOIN demo_test.s_name b ON (b.row_id = a.preferredname)]]
    // b.gazetteer_entry ?



