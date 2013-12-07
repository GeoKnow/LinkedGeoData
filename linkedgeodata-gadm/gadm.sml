Prefix spatial: <http://geovocab.org/spatial#>

Prefix o: <http://gadm.geovocab.org/ontology#>
Prefix r: <http://gadm.geovocab.org/id/> .



Create View gadm As
  Construct {
    ?s
      a spatial:Feature ;
      a gadm:AdministrativeRegion ;

      gadm:type_0 ?type_0 ;
      gadm:name_0 ?name_0 ;

      gadm:type_0 ?type_0 ;
      gadm:name_0 ?name_0 ;

      gadm:type_0 ?type_0 ;
      gadm:name_0 ?name_0 ;

      gadm:type_0 ?type_0 ;
      gadm:name_0 ?name_0 ;

      gadm:type_0 ?type_0 ;
      gadm:name_0 ?name_0 ;
      .
  }
  With
    ?type_1 = uri(
    ?s = uri(r:, '0_', ?g_id)
  From
    lgd_gadm



