Prefix spy:<http://aksw.org/sparqlify/>
Prefix ogc:<http://www.opengis.net/ont/geosparql#>

Prefix xsd:<http://www.w3.org/2001/XMLSchema#>
Prefix rdf:<http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs:<http://www.w3.org/2000/01/rdf-schema#>
Prefix owl:<http://www.w3.org/2002/07/owl#>


//Prefix lgd:<http://linkedgeodata.org/triplify/>
Prefix lgdneo:<http://linkedgeodata.org/ne/ontology/>
Prefix lgdne:<http://linkedgeodata.org/ne/resource/>
Prefix lgdnegeom:<http://linkedgeodata.org/ne/geometry/>

Prefix spatial:<http://geovocab.org/spatial#>
Prefix geom:<http://geovocab.org/geometry#>
Prefix skos:<http://www.w3.org/2004/02/skos/core#>

Set defaultGraph = "http://linkedgeodata.org/ne/"


Create View all_countries As
    Construct {
        ?c  a lgdneo:Country ;
            rdfs:label ?l .
    }
    With
        ?c = uri(lgdne:, 'country/', ?adm0_a3)
        ?l = plainLiteral(?admin)
    From
        [[ SELECT DISTINCT adm0_a3, admin FROM ne_10m_admin_1_states_provinces ]]


Create View german_states_general_info As
    Construct {
        ?state  a ?type ;
                lgdneo:iso-3166-2 ?iso_2 ;
                lgdneo:iso-3166-alpha-2 ?isoa2 ;
                lgdneo:adm1_cod_1 ?adm1c ;
                rdfs:label ?label ;
                skos:altLabel ?alabl ;
                skos:altLabel ?abbrv ;
                lgdneo:country ?cntry ;
                ogc:hasGeometry ?geom .
        ?geom ogc:asWKT ?wkt .
    }
    With
        ?type  = uri(lgdneo:, ?type_en)
        ?state = uri(lgdne:, 'state', ?objectid_1)
        ?adm1c = uri(lgdne:, 'adm1_cod_1/', ?adm1_cod_1)
        ?iso_2 = uri(lgdne:, 'iso-3166-2/', ?iso_3166_2)
        ?isoa2 = uri(lgdne:, 'iso-3166-alpha-2/', ?iso_a2)
        ?label = plainLiteral(?name)
        ?alabl = plainLiteral(?name_alt)
        ?abbrv = plainLiteral(?postal)
        ?cntry = uri(lgdne:, 'country/', ?adm0_a3)
        ?geom = uri(lgdnegeom:, 'state', ?objectid_1)
        ?wkt  = typedLiteral(?geom, ogc:wktLiteral)
    From
        [[
            SELECT
                objectid_1,
                adm1_cod_1,
                iso_3166_2,
                iso_a2,
                name,
                name_alt,
                type_en,
                postal,
                adm0_a3,
                geom
            FROM
                ne_10m_admin_1_states_provinces
        ]]
//            WHERE iso_a2='DE'

