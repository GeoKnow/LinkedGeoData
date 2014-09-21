
// Sparqlify supports using multiple mapping files using the -m file1 -m file2
// This file adds wikipedia resources
// Its a separate file because it relies on views that rely on the URL extension,
// which is not shipped as a package and needs to be compiled
// So it will not work out of the box


/**
 * Sparqlify configuration file for LinkedGeoData
 *
 * Triplify flavour
 *
 */

// Prefixes (these will also be used in the query responses)
Prefix spy:<http://aksw.org/sparqlify/>
Prefix owl:<http://www.w3.org/2002/07/owl#>
Prefix lgdm:<http://linkedgeodata.org/meta/>

Create View nodes_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:node, ?node_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT node_id, k, v FROM lgd_node_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]
  
Create View ways_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:way, ?way_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT way_id, k, v FROM lgd_way_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]

Create View relations_wiki_en As
  Construct {
    ?w a lgdm:WikiLink .
    ?w owl:sameAs ?l .
    ?l owl:sameAs ?d .
  }
  With
    ?w = uri('http://linkedgeodata.org/wp/', ?v)
    ?l = uri(lgd:relation, ?relation_id)
    ?d = uri('http://dbpedia.org/resource/', ?v)
  From
    [[SELECT relation_id, k, v FROM lgd_relation_tags_wiki WHERE k = 'wikipedia' OR k = 'wikipedia:en']]
  


		
/**
 * Copyright (C) 2009-2012, LinkedGeoData team at the MOLE research
 * group at AKSW / University of Leipzig
 *
 * This file is part of LinkedGeoData.
 *
 * LinkedGeoData is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * LinkedGeoData is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
 

