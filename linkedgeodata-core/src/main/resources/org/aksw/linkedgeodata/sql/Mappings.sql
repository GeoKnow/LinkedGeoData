--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: lgd_map_datatype_k; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_datatype (k, datatype) FROM stdin;
recycling:scrap_metal	boolean
undefined	int
noexit	boolean
cables	int
cutting	boolean
tunnel	boolean
wheelchair	boolean
by_night	boolean
charge	boolean
verified	boolean
alternate	boolean
mooring	boolean
ref:fgkz	int
boat	boolean
dispensing	boolean
fuel:diesel	boolean
recycling:shoes	boolean
payment:electronic_purses	boolean
frequency	float
taxi	boolean
minspeed	int
payment:notes	boolean
ruins	boolean
fuel:HGV_diesel	boolean
recycling:cans	boolean
game:patrizier2:tuch	int
uic_ref	int
snowmobile	boolean
atm	boolean
level	boolean
family_spaces	int
recycling:glass	boolean
payment:coins	boolean
horse	boolean
park_ride	boolean
lit	boolean
permissive	boolean
osmarender:renderRef	boolean
oneway:bicycle	boolean
openGeoDB:loc_id	int
building	boolean
toilet	boolean
ele	float
step_count	int
fuel:octane_91	boolean
segregated	boolean
traffic_signals:sound	boolean
payment:bob	boolean
game:patrizier2:bier	int
gauge	int
osmarender:renderName	boolean
StrVz	int
lanes	int
recycling:green_waste	boolean
ncn	boolean
motorroad	boolean
opengeodb:lon	float
game:patrizier2:ziegel	int
asb	int
erected	int
TMC:cid_58:tabcd_1:NextLocationCode	int
payment:geldkarte	boolean
recycling:glass_bottles	boolean
fuel:GTL_diesel	boolean
payment:debit_cards	boolean
game:patrizier2:wolle	boolean
onkz	int
bench	boolean
maxweight	float
VzG	int
fenced	boolean
seats	int
tracks	int
opengeodb:lat	float
openGeoDB:layer	int
recycling:paper	boolean
fuel:octane_95	boolean
video	boolean
game:patrizier2:eisenwaren	int
fuel:octane_98	boolean
fuel:cng	boolean
bus	boolean
stars	int
backrest	boolean
public	boolean
oneway	boolean
blz	int
disused	boolean
maxwidth	int
game:patrizier2:eisenerz	boolean
bin	boolean
admin_level	int
unisex	boolean
recycling:batteries	boolean
recycling:paper_packaging	boolean
bridge	boolean
build	int
via	boolean
agricultural	boolean
rail	boolean
tactile_paving	boolean
fuel:lpg	boolean
tram	boolean
payment:geltkarte	boolean
fuel:octane_100	boolean
waterway:lock:height	int
maxspeed	int
payment:credit_cards	boolean
recycling:plastic	boolean
rcn	boolean
TMC:cid_58:tabcd_1:LCLversion	float
board_type	boolean
embankment	boolean
diaper	boolean
maxheight	float
maxlength	int
monument	boolean
openGeoDB:population	int
sms	boolean
population	int
ski	boolean
elevator	boolean
recycling:clothes	boolean
on	boolean
shelter	boolean
recycling:metal	boolean
layer	int
TMC:cid_58:tabcd_1:PrevLocationCode	int
payment:telephone_cards	boolean
TMC:cid_58:tabcd_1:LocationCode	int
produced	int
area	boolean
game:patrizier2:getreide	boolean
seasonal	boolean
recycling:garden_waste	boolean
de:amtlicher_gemeindeschluessel	int
openGeoDB:is_in_loc_id	int
openGeoDB:telephone_area_code	int
interner_access	boolean
bar	boolean
openGeoDB:community_identification_number	int
departures_board	boolean
\.



--
-- Data for Name: lgd_map_literal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_literal (k, property, language) FROM stdin;
castleType	http://linkedgeodata.org/ontology/castleType	
postal_code	http://linkedgeodata.org/ontology/postalCode	
post_code	http://linkedgeodata.org/ontology/postCode	
name	http://www.w3.org/2000/01/rdf-schema#label	
name:en	http://www.w3.org/2000/01/rdf-schema#label	en
name:ja	http://www.w3.org/2000/01/rdf-schema#label	ja
name:fr	http://www.w3.org/2000/01/rdf-schema#label	fr
name:ko_rm	http://www.w3.org/2000/01/rdf-schema#label	ko_rm
name:ar	http://www.w3.org/2000/01/rdf-schema#label	ar
name:de	http://www.w3.org/2000/01/rdf-schema#label	de
name:ru	http://www.w3.org/2000/01/rdf-schema#label	ru
name:sv	http://www.w3.org/2000/01/rdf-schema#label	sv
name:botanical	http://www.w3.org/2000/01/rdf-schema#label	botanical
name:zh	http://www.w3.org/2000/01/rdf-schema#label	zh
name:fi	http://www.w3.org/2000/01/rdf-schema#label	fi
name:be	http://www.w3.org/2000/01/rdf-schema#label	be
name:ka	http://www.w3.org/2000/01/rdf-schema#label	ka
name:ko	http://www.w3.org/2000/01/rdf-schema#label	ko
name:he	http://www.w3.org/2000/01/rdf-schema#label	he
name:nl	http://www.w3.org/2000/01/rdf-schema#label	nl
name:ga	http://www.w3.org/2000/01/rdf-schema#label	ga
name:ja_rm	http://www.w3.org/2000/01/rdf-schema#label	ja_rm
name:el	http://www.w3.org/2000/01/rdf-schema#label	el
name:it	http://www.w3.org/2000/01/rdf-schema#label	it
name:es	http://www.w3.org/2000/01/rdf-schema#label	es
name:zh_pinyin	http://www.w3.org/2000/01/rdf-schema#label	zh_pinyin
name:th	http://www.w3.org/2000/01/rdf-schema#label	th
name:sr	http://www.w3.org/2000/01/rdf-schema#label	sr
name:cy	http://www.w3.org/2000/01/rdf-schema#label	cy
name:uk	http://www.w3.org/2000/01/rdf-schema#label	uk
name:ca	http://www.w3.org/2000/01/rdf-schema#label	ca
name:hu	http://www.w3.org/2000/01/rdf-schema#label	hu
name:hsb	http://www.w3.org/2000/01/rdf-schema#label	hsb
name:fa	http://www.w3.org/2000/01/rdf-schema#label	fa
name:eu	http://www.w3.org/2000/01/rdf-schema#label	eu
name:br	http://www.w3.org/2000/01/rdf-schema#label	br
name:pl	http://www.w3.org/2000/01/rdf-schema#label	pl
name:hy	http://www.w3.org/2000/01/rdf-schema#label	hy
name:kn	http://www.w3.org/2000/01/rdf-schema#label	kn
name:sl	http://www.w3.org/2000/01/rdf-schema#label	sl
name:ro	http://www.w3.org/2000/01/rdf-schema#label	ro
name:sq	http://www.w3.org/2000/01/rdf-schema#label	sq
name:am	http://www.w3.org/2000/01/rdf-schema#label	am
name:fy	http://www.w3.org/2000/01/rdf-schema#label	fy
name:cs	http://www.w3.org/2000/01/rdf-schema#label	cs
name:gd	http://www.w3.org/2000/01/rdf-schema#label	gd
name:sk	http://www.w3.org/2000/01/rdf-schema#label	sk
name:af	http://www.w3.org/2000/01/rdf-schema#label	af
name:lb	http://www.w3.org/2000/01/rdf-schema#label	lb
name:ja_kana	http://www.w3.org/2000/01/rdf-schema#label	ja_kana
name:pt	http://www.w3.org/2000/01/rdf-schema#label	pt
name:hr	http://www.w3.org/2000/01/rdf-schema#label	hr
name:vi	http://www.w3.org/2000/01/rdf-schema#label	vi
name:tr	http://www.w3.org/2000/01/rdf-schema#label	tr
name:fur	http://www.w3.org/2000/01/rdf-schema#label	fur
name:bg	http://www.w3.org/2000/01/rdf-schema#label	bg
name:eo	http://www.w3.org/2000/01/rdf-schema#label	eo
name:lt	http://www.w3.org/2000/01/rdf-schema#label	lt
name:la	http://www.w3.org/2000/01/rdf-schema#label	la
name:kk	http://www.w3.org/2000/01/rdf-schema#label	kk
name:gsw	http://www.w3.org/2000/01/rdf-schema#label	gsw
name:et	http://www.w3.org/2000/01/rdf-schema#label	et
name:mn	http://www.w3.org/2000/01/rdf-schema#label	mn
name:ku	http://www.w3.org/2000/01/rdf-schema#label	ku
name:mk	http://www.w3.org/2000/01/rdf-schema#label	mk
name:lv	http://www.w3.org/2000/01/rdf-schema#label	lv
name:carnaval	http://www.w3.org/2000/01/rdf-schema#label	carnaval
name:hi	http://www.w3.org/2000/01/rdf-schema#label	hi
name:no	http://www.w3.org/2000/01/rdf-schema#label	no
name:gl	http://www.w3.org/2000/01/rdf-schema#label	gl
name:cv	http://www.w3.org/2000/01/rdf-schema#label	cv
name:is	http://www.w3.org/2000/01/rdf-schema#label	is
name:gcf	http://www.w3.org/2000/01/rdf-schema#label	gcf
name:mdf	http://www.w3.org/2000/01/rdf-schema#label	mdf
name:myv	http://www.w3.org/2000/01/rdf-schema#label	myv
name:da	http://www.w3.org/2000/01/rdf-schema#label	da
name:ast	http://www.w3.org/2000/01/rdf-schema#label	ast
name:az	http://www.w3.org/2000/01/rdf-schema#label	az
name:gv	http://www.w3.org/2000/01/rdf-schema#label	gv
name:ba	http://www.w3.org/2000/01/rdf-schema#label	ba
name:scn	http://www.w3.org/2000/01/rdf-schema#label	scn
name:dsb	http://www.w3.org/2000/01/rdf-schema#label	dsb
name:ur	http://www.w3.org/2000/01/rdf-schema#label	ur
name:oc	http://www.w3.org/2000/01/rdf-schema#label	oc
name:tt	http://www.w3.org/2000/01/rdf-schema#label	tt
name:zh_py	http://www.w3.org/2000/01/rdf-schema#label	zh_py
name:tg	http://www.w3.org/2000/01/rdf-schema#label	tg
name:en1	http://www.w3.org/2004/02/skos/core#altLabel	en
name:en2	http://www.w3.org/2004/02/skos/core#altLabel	en
name:en3	http://www.w3.org/2004/02/skos/core#altLabel	en
name:ar1	http://www.w3.org/2004/02/skos/core#altLabel	ar
name:he1	http://www.w3.org/2004/02/skos/core#altLabel	he
alt_name	http://www.w3.org/2004/02/skos/core#altLabel	
official_name	http://linkedgeodata.org/ontology/officialName	
int_name	http://linkedgeodata.org/ontology/internationalName	
nat_name	http://linkedgeodata.org/ontology/nationalName	
reg_name	http://linkedgeodata.org/ontology/regionalName	
loc_name	http://linkedgeodata.org/ontology/localName	
old_name	http://linkedgeodata.org/ontology/historicalName	
place_name	http://www.w3.org/2000/01/rdf-schema#label	
place_numbers	http://linkedgeodata.org/ontology/placeNumbers	
is_in	http://linkedgeodata.org/ontology/isIn	
note	http://linkedgeodata.org/ontology/note	
description	http://www.w3.org/1999/02/22-rdf-syntax-ns#comment	
phone	http://xmlns.com/foaf/0.1/phone	
fax	http://xmlns.com/foaf/0.1/fax	
created_by	http://linkedgeodata.org/ontology/createdBy	
attribution	http://linkedgeodata.org/ontology/attribution	
\.



--
-- Data for Name: lgd_map_resource_k; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_resource_k (k, property, object) FROM stdin;
highway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayThing
barrier	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BarrierThing
cycleway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayThing
waterway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayThing
railway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayThing
aeroway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AerowayThing
aerialway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AerialwayThing
public_transport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PublicTransportThing
power	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerThing
man_made	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeThing
leisure	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Leisure
amenity	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Amenity
office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Office
shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shop
craft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Craft
emergency	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencyThing
tourism	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TourismThing
historic	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricThing
landuse	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Landuse
military	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilitaryThing
natural	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalThing
route	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RouteThing
boundary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Boundary
sport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SportThing
abutters	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Abutters
place	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Place
lock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LockThing
building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Building
\.


--
-- Data for Name: lgd_map_resource_kv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_resource_kv (k, v, property, object) FROM stdin;
type	route	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Route
type	multipolygon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MultiPolygon
highway	motorway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Motorway
highway	motorway_link	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MotorwayLink
highway	trunk	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Trunk
highway	trunk_link	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrunkLink
highway	primary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PrimaryHighway
highway	primary_link	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayPrimaryLink
highway	secundary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SecundaryHighway
highway	secundary_link	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwaySecundaryLink
highway	tertiary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TertiaryHighway
highway	tertiary_link	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayTertiaryLink
highway	residential	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ResidentialHighway
highway	unclassified	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/UnclassifiedHighway
highway	road	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Road
highway	living_street	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LivingStreet
highway	service	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayService
highway	track	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Track
highway	pedestrian	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PedestrianUse
highway	raceway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Raceway
highway	services	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ServiceStation
highway	rest_area	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RestArea
highway	bus_guideway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BusGuideway
highway	path	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Path
highway	cycleway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cycleway
highway	footway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Footway
highway	bridleway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bridleway
highway	byway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Byway
highway	steps	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Steps
highway	mini_roundabout	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MiniRoundabout
highway	stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StopSign
highway	give_way	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GiveWaySign
highway	traffic_signals	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrafficSignals
highway	crossing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayCrossing
junction	roundabout	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Roundabout
highway	motorway_junction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MotorwayJunction
highway	ford	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayFord
highway	bus_stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BusStop
highway	turning_circle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TurningCircle
highway	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HighwayConstruction
highway	proposed	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ProposedHighway
highway	emergency_access_point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencyAccessPoint
highway	speed_camera	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SpeedCamera
highway	street_lamp	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StreetLamp
traffic_calming	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrafficCalming
traffic_calming	bump	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bump
traffic_calming	chicane	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chicane
traffic_calming	cushion	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cushion
traffic_calming	hump	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hump
traffic_calming	rumble_strip	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RumbleStrip
traffic_calming	table	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TableBump
traffic_calming	choker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Choker
service	parking_aisle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkingAisle
service	driveway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DriveWay
service	alley	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Alley
highway	passing_place	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PassingPlace
highway	passing_places	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PassingPlaces
winter_road	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WinterRoad
ice_road	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IceRoad
barrier	ditch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DitchBarrier
barrier	fence	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fence
barrier	hedge	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hedge
barrier	wall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wall
barrier	city_wall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CityWall
barrier	retaining_wall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RetainingWall
barrier	block	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Block
barrier	bollard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bollard
barrier	cattle_grid	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CattleGrid
barrier	cycle_barrier	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CycleBarrier
barrier	toll_booth	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TollBooth
barrier	entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Entrance
barrier	border_control	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BorderControl
barrier	gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gate
barrier	horse_stile	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HorseStile
barrier	kissing_gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/KissingGate
barrier	lift_gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LiftGate
barrier	sally_port	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SallyPort
barrier	stile	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stile
barrier	turnstile	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Turnstile
barrier	kent_carriage_gap	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/KentCarriageGap
barrier	chain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chain
cycleway	lane	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayLane
cycleway	track	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayTrack
cycleway	opposite_lane	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayOppositeLane
cycleway	opposite_track	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayOppositeTrack
cycleway	opposite	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CyclewayOpposite
tracktype	grade1	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackType1
tracktype	grade2	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackType2
tracktype	grade3	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackType3
tracktype	grade4	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackType4
tracktype	grade5	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackType5
waterway	stream	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stream
waterway	river	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/River
waterway	riverbank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Riverbank
waterway	canal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Canal
waterway	ditch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ditch
waterway	drain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Drain
waterway	dock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dock
waterway	lock_gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LockGate
waterway	turning_point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TurningPoint
waterway	boatyard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Boatyard
waterway	weir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Weir
waterway	dam	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dam
lock	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lock
tunnel	culvert	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TunnelCulvert
intermittent	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Intermittent
waterway	aqueduct	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Aqueduct
waterway	waterfall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Waterfall
waterway	biwak	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Biwak
waterway	depth	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Depth
waterway	drawbridge	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayDrawbridge
waterway	ford	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayFord
waterway	fuel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayFuel
waterway	harbour	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Harbour
waterway	lock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayLock
waterway	milestone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayMilestone
waterway	mineral_spring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MineralSpring
waterway	mooring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mooring
waterway	pumping_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayPumpingStation
waterway	rapids	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rapids
waterway	rock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayRock
waterway	sluice	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sluice
waterway	spring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwaySpring
waterway	water_point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterPoint
waterway	wreck	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterwayWreck
railway	rail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rail
railway	tram	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tramway
railway	light_rail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LightRail
railway	abandoned	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AbandonedRailway
railway	disused	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DisusedRailway
railway	subway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Subway
railway	preserved	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PreservedRailway
railway	narrow_gauge	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NarrowGauge
railway	miniature	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MiniatureRailway
railway	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayConstruction
railway	monorail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Monorail
railway	funicular	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FunicularRailway
railway	station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayStation
railway	halt	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayHalt
railway	tram_stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TramStop
railway	crossing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayCrossing
railway	level_crossing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LevelCrossing
railway	subway_entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SubwayEntrance
railway	turntable	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Turntable
railway	buffer_stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BufferStop
landuse	railway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayLanduse
railway	abandoned_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AbandonedStation
railway	bridge	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bridge
railway	disused_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DisusedStation
railway	historic_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricStation
railway	junction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayJunction
railway	milestone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayMilestone
railway	phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayPhone
railway	platform	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayPlatform
railway	signal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Signal
railway	station_entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StationEntrance
railway	stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayStop
railway	switch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwaySwitch
railway	track_halt	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrackHalt
railway	tram_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TramStation
railway	ventilation_shaft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VentilationShaft
railway	viaduct	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Viaduct
railway	Viva Blue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Viva+Blue
aeroway	aerodrome	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Airport
aeroway	terminal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirportTerminal
aeroway	helipad	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Helipad
aeroway	runway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Runway
aeroway	taxiway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirportTaxiway
aeroway	apron	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Apron
aeroway	gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirportGate
aeroway	windsock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Windsock
aeroway	airfield	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirportField
aeroway	heliport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Heliport
aeroway	holding_point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HoldingPoint
aeroway	landing_light	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LandingLight
aeroway	parking_position	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkingPosition
aeroway	reportingpoint	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Reportingpoint
aeroway	tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirportTower
aerialway	cable_car	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CableCar
aerialway	gondola	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gondola
aerialway	chair_lift	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ChairLift
aerialway	mixed_lift	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MixedLift
aerialway	drag_lift	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DragLift
aerialway	station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AerialwayStation
aerialway	pylon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pylon
aerialway	goods	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AerialwayGoods
public_transport	stop_position	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StopPosition
public_transport	platform	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Platform
public_transport	station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Station
power	tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerTower
power	pole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerPole
power	line	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerLine
power	minor_line	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerMinorLine
power	station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerStation
power	sub_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerSubStation
power	generator	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerGenerator
power	cable_distribution_cabinet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CableDistributionCabinet
power	box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerBox
power	circuit_breaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CircuitBreaker
power	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerConstruction
power	dismantled	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerDismantled
power	house_connection_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HouseConnectionBox
power	line_connection	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LineConnection
power	pylon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerPylon
power	switch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PowerSwitch
power	transformer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Transformer
man_made	adit	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Adit
man_made	beacon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Beacon
man_made	crane	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Crane
man_made	cutline	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cutline
man_made	flagpole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Flagpole
man_made	groyne	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Groyne
man_made	lighthouse	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lighthouse
man_made	mineshaft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mineshaft
man_made	monitoring_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MonitoringStation
man_made	petroleum_well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PetroleumWell
man_made	pier	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pier
man_made	pipeline	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pipeline
man_made	reservoir_covered	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CoveredReservoir
man_made	reservoir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Reservoir
man_made	surveillance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Surveillance
man_made	survey_point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SurveyPoint
man_made	tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tower
man_made	wastewater_plant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WastewaterPlant
man_made	watermill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Watermill
man_made	water_tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterTower
man_made	water_works	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterWorks
man_made	water_well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterWell
man_made	windmill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Windmill
man_made	works	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IndustrialProductionBuilding
man_made	antenna	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Antenna
man_made	barn	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeBarn
man_made	billboard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeBillboard
man_made	borderstone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Borderstone
man_made	bridge pier	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bridge+pier
man_made	building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeBuilding
man_made	buoy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeBuoy
man_made	cairn	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cairn
man_made	chimney	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chimney
man_made	communications_tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CommunicationsTower
man_made	communications_transponder	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CommunicationsTransponder
man_made	cross	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeCross
man_made	Downhill Terminal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Downhill+Terminal
man_made	environmental_hazard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EnvironmentalHazard
man_made	fire_hydrant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeFireHydrant
man_made	fixme	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeFixme
man_made	fountain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeFountain
man_made	gaging_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GagingStation
man_made	gasometer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gasometer
man_made	gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeGate
man_made	gazometer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gazometer
man_made	grouse_butt	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GrouseButt
man_made	hut	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeHut
man_made	lamp	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeLamp
man_made	lamp_post	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeLampPost
man_made	landmark	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Landmark
man_made	launch_pad	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LaunchPad
man_made	lettering	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lettering
man_made	lookout_tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LookoutTower
man_made	manhole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Manhole
man_made	mast	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mast
man_made	MDF	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MDF
man_made	mine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeMine
man_made	observatory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeObservatory
man_made	oil_platform	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OilPlatform
man_made	oven	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Oven
man_made	phone_mast	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PhoneMast
man_made	pipelinemarker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pipelinemarker
man_made	pipeline_marker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PipelineMarker
man_made	pole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadePole
man_made	pump	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pump
man_made	pumping_rig	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PumpingRig
man_made	pumping_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadePumpingStation
man_made	pumpjack	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pumpjack
man_made	rig	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rig
man_made	service_area_interface	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ServiceAreaInterface
man_made	serving_area_interface	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ServingAreaInterface
man_made	sheepfold	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sheepfold
man_made	sign	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeSign
man_made	silo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Silo
man_made	statue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeStatue
man_made	storage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeStorage
man_made	storage_tank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StorageTank
man_made	summit_cross	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SummitCross
man_made	tank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeTank
man_made	telephone_exchange	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TelephoneExchange
man_made	telescope	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Telescope
man_made	Uphill Terminal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Uphill+Terminal
man_made	videosurveillance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Videosurveillance
man_made	village_pump	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VillagePump
man_made	water_tank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterTank
man_made	well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ManMadeWell
man_made	well_water	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WellWater
man_made	wildlife_hide	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WildlifeHide
man_made	windpump	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Windpump
man_made	wolf_pit	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WolfPit
leisure	dog_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DogPark
leisure	sports_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SportsCentre
leisure	golf_course	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GolfCourse
leisure	stadium	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stadium
leisure	track	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Track
leisure	pitch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pitch
leisure	water_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterPark
leisure	marina	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Marina
leisure	slipway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Slipway
leisure	fishing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fishing
leisure	nature_reserve	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NatureReserve
leisure	park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Park
leisure	playground	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Playground
leisure	garden	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Garden
leisure	common	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Common
leisure	ice_rink	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IceRink
leisure	miniature_golf	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MiniatureGolf
leisure	dance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dance
leisure	swimming_pool	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SwimmingPool
leisure	bandstand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bandstand
leisure	beach	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Beach
leisure	beach_resort	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BeachResort
leisure	bingo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bingo
leisure	bird_hide	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BirdHide
leisure	casino	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Casino
leisure	club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Club
leisure	fitness_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FitnessCentre
leisure	fitness	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fitness
leisure	fitness trail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fitness+trail
leisure	gym	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gym
leisure	hackerspace	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hackerspace
leisure	hole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hole
leisure	horse_riding	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HorseRiding
leisure	hot_spring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HotSpring
leisure	music_venue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MusicVenue
leisure	park_bench	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkBench
leisure	point_of_interest	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PointOfInterest
leisure	sailing_club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SailingClub
leisure	sauna	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sauna
leisure	skate_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SkatePark
leisure	social_club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SocialClub
leisure	sport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sport
amenity	planetarium	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Planetarium
amenity	advertisement	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Advertisement
amenity	advertising	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Advertising
amenity	air_fill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AirFill
amenity	airplane	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Airplane
amenity	airport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Airport
amenity	alm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Alm
amenity	ambulance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ambulance
amenity	ambulance_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AmbulanceStation
amenity	animal_shelter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AnimalShelter
amenity	restaurant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Restaurant
amenity	food_court	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FoodCourt
amenity	fast_food	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FastFood
amenity	drinking_water	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DrinkingWater
amenity	bbq	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bbq
amenity	pub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pub
amenity	bar	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bar
amenity	cafe	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cafe
amenity	biergarten	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Biergarten
amenity	ice_cream	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IceCream
amenity	kindergarten	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Kindergarten
amenity	school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/School
amenity	college	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/College
amenity	library	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Library
amenity	university	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/University
amenity	ferry_terminal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FerryTerminal
amenity	bicycle_parking	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BicycleParking
amenity	bicycle_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BicycleRental
amenity	bus_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BusStation
amenity	car_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarRental
amenity	car_sharing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarSharing
amenity	car_wash	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarWash
amenity	fuel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FuelStation
amenity	grit_bin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GritBin
amenity	parking	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Parking
amenity	parking_space	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkingSpace
amenity	parking_entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkingEntrance
amenity	taxi	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Taxi
amenity	ev_charging	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EvCharging
amenity	atm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Atm
amenity	bank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bank
amenity	bureau_de_change	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BureauDeChange
amenity	pharmacy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pharmacy
amenity	hospital	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hospital
amenity	baby_hatch	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BabyHatch
amenity	dentist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dentist
amenity	doctors	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Doctors
amenity	nursing_home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NursingHome
amenity	social_facility	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SocialFacility
amenity	veterinary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Veterinary
amenity	arts_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArtsCentre
amenity	cinema	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cinema
amenity	community_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CommunityCentre
amenity	social_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SocialCentre
amenity	fountain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fountain
amenity	nightclub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Nightclub
amenity	stripclub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stripclub
amenity	studio	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Studio
amenity	theatre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Theatre
amenity	bench	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bench
amenity	brothel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Brothel
amenity	clock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clock
amenity	courthouse	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Courthouse
amenity	crematorium	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Crematorium
amenity	embassy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Embassy
amenity	fire_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireStation
amenity	grave_yard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GraveYard
amenity	hunting_stand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HuntingStand
amenity	marketplace	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Marketplace
amenity	place_of_worship	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PlaceOfWorship
amenity	police	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Police
amenity	post_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PostBox
amenity	post_office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PostOffice
amenity	prison	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Prison
amenity	public_building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PublicBuilding
amenity	recycling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RecyclingFacility
amenity	sauna	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sauna
amenity	shelter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shelter
amenity	telephone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Telephone
amenity	toilets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Toilets
amenity	townhall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Townhall
amenity	vending_maschine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VendingMaschine
amenity	waste_basket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteBasket
amenity	waste_disposal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteDisposal
amenity	watering_place	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WateringPlace
amenity	art_gallery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArtGallery
amenity	artwork	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Artwork
amenity	ATM	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ATM
amenity	Baisschool	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Baisschool
amenity	bakery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bakery
amenity	bandstand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bandstand
amenity	bank,atm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bank%2Catm
amenity	bank;atm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bank%3Batm
amenity	Bank	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bank
amenity	barbeque	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Barbeque
amenity	Barfusspfad	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Barfusspfad
amenity	bicycle_lockers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BicycleLockers
amenity	billboard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Billboard
amenity	boat_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BoatRental
amenity	border_control	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BorderControl
amenity	brewery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Brewery
amenity	Briefkasten	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Briefkasten
amenity	bts	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bts
amenity	building_entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingEntrance
amenity	building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Building
amenity	bus_stop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BusStop
amenity	camera	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Camera
amenity	campsite	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Campsite
amenity	care_home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CareHome
amenity	car_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarRepair
amenity	casino	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Casino
amenity	cemetery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cemetery
amenity	chapel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chapel
amenity	charity	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Charity
amenity	child_care	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ChildCare
amenity	chiropractor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chiropractor
amenity	church_hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ChurchHall
amenity	church	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Church
amenity	citymap_post	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CitymapPost
amenity	clinic	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clinic
amenity	club_house	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ClubHouse
amenity	club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Club
amenity	coffeeshop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CoffeeShop
amenity	commercial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Commercial
amenity	community_hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CommunityHall
amenity	company	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Company
amenity	concert_hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ConcertHall
amenity	conference_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ConferenceCentre
amenity	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Construction
amenity	consulate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Consulate
amenity	cross	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cross
amenity	customs	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Customs
amenity	daycare	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Daycare
amenity	dead_pub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DeadPub
amenity	derestricted speed limit	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Derestricted+speed+limit
amenity	disused_pub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DisusedPub
amenity	dive_center	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DiveCenter
amenity	doctor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Doctor
amenity	dog_bin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DogBin
amenity	dog_waste	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DogWaste
amenity	dormitory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dormitory
amenity	driving_school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DrivingSchool
amenity	elevator	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Elevator
amenity	emergency_phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencyPhone
amenity	emergency_telephone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencyTelephone
amenity	entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Entrance
amenity	factory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Factory
amenity	farm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Farm
amenity	fire_beater	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireBeater
amenity	fire_hydrant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireHydrant
amenity	fireplace	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fireplace
amenity	first_aid	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FirstAid
amenity	florist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Florist
amenity	foot_shower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FootShower
amenity	forester	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Forester
amenity	fraternity	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fraternity
amenity	fuel;car_wash	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fuel%3BcarWash
amenity	funeral_home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FuneralHome
amenity	gallery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gallery
amenity	gambling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gambling
amenity	garage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Garage
amenity	garbage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Garbage
amenity	goverment_building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GovermentBuilding
amenity	grave	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Grave
amenity	guidepost	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Guidepost
amenity	gym	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gym
amenity	hairdresser	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hairdresser
amenity	hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hall
amenity	health_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HealthCentre
amenity	heuriger	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Heuriger
amenity	hide	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hide
amenity	hospice	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hospice
amenity	hotel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hotel
amenity	hunting_blind	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HuntingBlind
amenity	hut	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hut
amenity	hydrant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hydrant
amenity	information	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Information
amenity	insurance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Insurance
amenity	internet_access	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/InternetAccess
amenity	internet_cafe	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/InternetCafe
amenity	internet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Internet
amenity	job_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/JobCentre
amenity	kneipp_water_cure	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/KneippWaterCure
amenity	lamp	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lamp
amenity	lamp_post	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LampPost
amenity	language_school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LanguageSchool
amenity	lawyer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lawyer
amenity	layby	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Layby
amenity	leisure_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Centre
amenity	leisure	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Amenity
amenity	licensed_club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LicensedClub
amenity	lifeboat_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LifeboatStation
amenity	life-buoy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Life-buoy
amenity	life_ring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LifeRing
amenity	litter_bin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LitterBin
amenity	market	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Market
amenity	massage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Massage
amenity	medical_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MedicalCentre
amenity	medical	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Medical
amenity	milestone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Milestone
amenity	milk_dispenser	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilkDispenser
amenity	mine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mine
amenity	monastery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Monastery
amenity	mortuary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mortuary
amenity	motorcycle_parking	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MotorcycleParking
amenity	mountain_rescue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MountainRescue
amenity	music_venue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MusicVenue
amenity	natural_shelter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalShelter
amenity	nest_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NestBox
amenity	notice	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Notice
amenity	nursery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Nursery
amenity	observatory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Observatory
amenity	office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Office
amenity	optometrist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Optometrist
amenity	other	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Other
amenity	parcel_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParcelBox
amenity	park_bench	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkBench
amenity	park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Park
amenity	parking;fuel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Parking%3Bfuel
amenity	parking_meter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParkingMeter
amenity	parking;restaurant;fuel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Parking%3Brestaurant%3Bfuel
amenity	phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Phone
amenity	physiotherapy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Physiotherapy
amenity	picknick	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Picknick
amenity	picnic table	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Picnic+table
amenity	picnic_table	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PicnicTable
amenity	pietra miliare FD	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pietra+miliare+FD
amenity	playground	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Playground
amenity	plumber	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plumber
amenity	preschool	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Preschool
amenity	public_market	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PublicMarket
amenity	reception_area	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ReceptionArea
amenity	red_cross	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RedCross
amenity	register_office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RegisterOffice
amenity	relay_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RelayBox
amenity	rescue_box	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RescueBox
amenity	rescue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rescue
amenity	rescue_service	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RescueService
amenity	residential_home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ResidentialHome
amenity	residential	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Residential
amenity	restaurant;pub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Restaurant%3Bpub
amenity	retail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Retail
amenity	retirement_home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RetirementHome
amenity	salon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Salon
amenity	scout_hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ScoutHall
amenity	scout_hut	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ScoutHut
amenity	seat	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Seat
amenity	seating,ornamental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Seating%2Cornamental
amenity	sento	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sento
amenity	service	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Service
amenity	services	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Services
amenity	sheltered_housing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShelteredHousing
amenity	shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shop
amenity	shopping	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shopping
amenity	shops	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shops
amenity	shower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shower
amenity	showers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Showers
amenity	signpost	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Signpost
amenity	ski_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SkiRental
amenity	ski_school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SkiSchool
amenity	snow_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SnowPark
amenity	social_club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SocialClub
amenity	social_services	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SocialServices
amenity	solarium	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Solarium
amenity	spa	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Spa
amenity	speed_enforcement	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SpeedEnforcement
amenity	speed_trap	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SpeedTrap
amenity	sport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sport
amenity	sports_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SportsCentre
amenity	statue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Statue
amenity	storage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Storage
amenity	street_lamp	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StreetLamp
amenity	street_light	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StreetLight
amenity	supermarket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Supermarket
amenity	surgery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Surgery
amenity	survey	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Survey
amenity	swimming_pool	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SwimmingPool
amenity	table	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Table
amenity	take_away	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TakeAway
amenity	tourist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tourist
amenity	trade	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Trade
amenity	traffic_light	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrafficLight
amenity	trash_bin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrashBin
amenity	trash_can	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrashCan
amenity	tricycle_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TricycleStation
amenity	vdsl-aru	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vdsl-aru
amenity	vehicle_inspection	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VehicleInspection
amenity	vending	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vending
amenity	vending machine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vending+machine
amenity	vending_machine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VendingMachine
amenity	vet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vet
amenity	vets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vets
amenity	video_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VideoRental
amenity	village_hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VillageHall
amenity	walking_bus	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WalkingBus
amenity	waste_basket;recycling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteBasket%3Brecycling
amenity	waste_bin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteBin
amenity	waste_bucket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteBucket
amenity	waste_container	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WasteContainer
amenity	waste	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Waste
amenity	water_fountain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterFountain
amenity	water	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Water
amenity	water_well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterWell
amenity	well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Well
amenity	whirlpool	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Whirlpool
amenity	wifi	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wifi
amenity	winery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Winery
amenity	wlan	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wlan
amenity	WLAN	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WLAN
amenity	youth_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/YouthCentre
amenity	youth_club	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/YouthClub
office	accountant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AccountantOffice
office	administrative	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AdministrativeOffice
office	architect	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArchitectOffice
office	camping	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CampingOffice
office	company	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CompanyOffice
office	educational_institution	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EducationalInstitutionOffice
office	employment_agency	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmploymentAgencyOffice
office	estate_agent	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EstateAgentOffice
office	government	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GovernmentOffice
office	insurance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/InsuranceOffice
office	it	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ItOffice
office	lawyer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LawyerOffice
office	newspaper	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NewspaperOffice
office	architect	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArchitectOffice
office	ngo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NgoOffice
office	quango	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/QuangoOffice
office	research	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ResearchOffice
office	telecommunication	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TelecommunicationOffice
office	travel_agent	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TravelAgentOffice
shop	alcohol	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AlcoholShop
shop	anime	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AnimeShop
shop	art	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArtShop
shop	baby_goods	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BabyGoodsShop
shop	bakery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bakery
shop	bathroom_furnishing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BathroomFurnishingShop
shop	beauty	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BeautyShop
shop	bed	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BedShop
shop	beverages	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BeverageMarket
shop	bicycle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BicycleShop
shop	books	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BookShop
shop	adult	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AdultShop
shop	agrarian	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Agrarian
shop	animal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AnimalShop
shop	animals	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AnimalsShop
shop	antique	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AntiqueShop
shop	antiques	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AntiquesShop
shop	antiquities	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AntiquitiesShop
shop	apparel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Apparel
shop	appliance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Appliance
shop	appliances	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Appliances
shop	art_gallery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArtGalleryShop
shop	art_supplies	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArtSupplies
shop	audiologist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Audiologist
shop	audio_video	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AudioVideoShop
shop	automotive	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AutomotiveShop
shop	auto_parts	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AutoPartsShop
shop	auto_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AutoRepair
shop	baby	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BabyShop
shop	bags	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BagsShop
shop	barber	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Barber
shop	bathroom	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bathroom
shop	beautician	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Beautician
shop	beauty_salon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BeautySalon
shop	betting	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Betting
shop	bookmaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BookmakerShop
shop	bookmakers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BookmakersShop
shop	books	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BooksShop
shop	boutique	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Boutique
shop	butcher	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Butcher
shop	butchers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Butchers
shop	camera	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CameraShop
shop	candy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CandyShop
shop	car;car_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Car%3BcarRepair
shop	car_dealer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarDealer
shop	cards	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CardsShop
shop	car	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarShop
shop	car_parts	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarParts
shop	carpenter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Carpenter
shop	carpet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Carpet
shop	carpets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Carpets
shop	car_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarRepairShop
shop	car_wash	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarWash
shop	catalogue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Catalogue
shop	cell_phones	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CellPhones
shop	ceramics	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ceramics
shop	chandler	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chandler
shop	charity	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CharityShop
shop	cheese	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cheese
shop	chemist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chemist
shop	chocolate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chocolate
shop	closed	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Closed
shop	clothes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clothes
shop	clothes: women	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clothes%3A+women
shop	clothes:women	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clothes%3Awomen
shop	clothing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clothing
shop	coffee	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CoffeeShop
shop	coffee_shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CoffeeShop
shop	communication	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Communication
shop	communications	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Communications
shop	computer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Computer
shop	condos	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Condos
shop	confectionery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Confectionery
shop	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ConstructionShop
shop	convenience	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Convenience
shop	copyshop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Copyshop
shop	cosmetics	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cosmetics
shop	craft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Craft
shop	crafts	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Crafts
shop	dairy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dairy
shop	decoration	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Decoration
shop	delicatessen	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Delicatessen
shop	deli	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Deli
shop	department_store	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DepartmentStore
shop	dept	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dept
shop	design	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Design
shop	discount	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Discount
shop	dive_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DiveCentre
shop	diy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Diy
shop	doityourself	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Doityourself
shop	dollar	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dollar
shop	driving_school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DrivingSchoolShop
shop	drugstore	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Drugstore
shop	dry_cleaning	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DryCleaning
shop	electrician	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Electrician
shop	electronics	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Electronics
shop	empty	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Empty
shop	estanco	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Estanco
shop	estate_agent	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EstateAgent
shop	fabric	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fabric
shop	fabrics	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fabrics
shop	fairtrade	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fairtrade
shop	farm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FarmShop
shop	farm_shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FarmShop
shop	fashion	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fashion
shop	financial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Financial
shop	fish	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fish
shop	fishing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FishingShop
shop	fishmonger	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fishmonger
shop	fitness	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FitnessShop
shop	fixme	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShopFixme
shop	FIXME	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShopFIXME
shop	flooring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Flooring
shop	florist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FloristShop
shop	flowers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Flowers
shop	folk_art	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FolkArt
shop	food	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Food
shop	foto	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Foto
shop	frozen_food	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FrozenFoodShop
shop	fruit	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fruit
shop	funeral_directors	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FuneralDirectors
shop	furniture	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Furniture
shop	gallery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GalleryShop
shop	gambling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GamblingShop
shop	games	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Games
shop	garage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GarageShop
shop	garden_center	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GardenCenter
shop	garden_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GardenCentre
shop	garden	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GardenShop
shop	general	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/General
shop	gift	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gift
shop	gifts	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gifts
shop	glass	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Glass
shop	glaziery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Glaziery
shop	goldsmith	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Goldsmith
shop	greengrocer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Greengrocer
shop	groceries	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Groceries
shop	grocery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Grocery
shop	gym	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GymShop
shop	haberdashery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Haberdashery
shop	hairdresser	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HairdresserShop
shop	hardware	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hardware
shop	health_and_beauty	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HealthAndBeauty
shop	health_food	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HealthFood
shop	health	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Health
shop	hearing_aid	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HearingAid
shop	hearing_aids	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HearingAids
shop	hifi	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hifi
shop	hobby	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hobby
shop	home	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Home
shop	home_improvement	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HomeImprovement
shop	household	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Household
shop	housewares	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Housewares
shop	ice_cream	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IceCreamShop
shop	insurance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Insurance
shop	interiors	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Interiors
shop	internet_cafe	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/InternetCafe
shop	jewelers	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Jewelers
shop	jewelry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Jewelry
shop	keys	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Keys
shop	kiosk	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Kiosk
shop	Kiosk	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Kiosk
shop	kitchen	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/KitchenShop
shop	laundry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Laundry
shop	leather	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Leather
shop	legal_services	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LegalServices
shop	lighting	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lighting
shop	lingerie	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lingerie
shop	locksmith	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Locksmith
shop	mall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mall
shop	market	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Market
shop	massage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MassageShop
shop	mattress	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mattress
shop	meat	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Meat
shop	minimarket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Minimarket
shop	misc	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Misc
shop	mobile	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mobile
shop	mobile_phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MobilePhone
shop	mobile_telephony	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MobileTelephony
shop	motorbike	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Motorbike
shop	motorcycle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Motorcycle
shop	motorcycle_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MotorcycleRepair
shop	musical_instruments	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MusicalInstruments
shop	music	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Music
shop	nail_salon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NailSalon
shop	nails	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Nails
shop	newsagent	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Newsagent
shop	newsstand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Newsstand
shop	no	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NotAShop
shop	office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OfficeShop
shop	office_supplies	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OfficeSupplies
shop	optician	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OpticianShop
shop	organic	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Organic
shop	other	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OtherShop
shop	outdoor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Outdoor
shop	outlet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Outlet
shop	painter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Painter
shop	paint	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Paint
shop	pastry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pastry
shop	patisserie	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Patisserie
shop	pawnshop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pawnshop
shop	payday_loans	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PaydayLoans
shop	perfume	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Perfume
shop	perfumery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Perfumery
shop	pet_food	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PetFood
shop	pet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pet
shop	pet_shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PetShop
shop	pets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pets
shop	pet_supplies	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PetSupplies
shop	pet_supply	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PetSupply
shop	pharmacy	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pharmacy
shop	phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PhoneShop
shop	photocopying	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Photocopying
shop	photo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Photo
shop	plumber	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plumber
shop	pottery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pottery
shop	printer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Printer
shop	printing	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Printing
shop	real_estate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RealEstate
shop	records	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Records
shop	salon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Salon
shop	scuba_diving	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ScubaDivingShop
shop	second_hand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SecondHand
shop	shipping	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shipping
shop	shoemaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shoemaker
shop	shoe_repair	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShoeRepair
shop	shoes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shoes
shop	shop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shop
shop	shopping_center	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShoppingCenter
shop	shopping_centre	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ShoppingCentre
shop	snacks	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Snacks
shop	solarium	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Solarium
shop	souvenir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Souvenir
shop	souvenirs	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Souvenirs
shop	sport	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SportShop
shop	sports	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sports
shop	stationary	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stationary
shop	stationery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stationery
shop	supermarket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Supermarket
shop	Supermarket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Supermarket
shop	sweets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sweets
shop	tailor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tailor
shop	take_away	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TakeAway
shop	tanning	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tanning
shop	tattoo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tattoo
shop	tax	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tax
shop	tea	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tea
shop	technology	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Technology
shop	telecom	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Telecom
shop	telecommunication	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Telecommunication
shop	telephone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TelephoneShop
shop	textiles	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Textiles
shop	thrift	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Thrift
shop	ticket	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ticket
shop	tickets	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tickets
shop	tobacco	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tobacco
shop	tobacconist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tobacconist
shop	tourist	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TouristShop
shop	toys	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Toys
shop	travel agency	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TravelAgency
shop	travel_agency	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TravelAgency
shop	trumpet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Trumpet
shop	tyres	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tyres
shop	undefined	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/UndefinedShop
shop	unknown	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/UnknownShop
shop	vacant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vacant
shop	variety	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Variety
shop	video_games	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VideoGames
shop	video	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Video
shop	video_rental	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VideoRental
shop	watches	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Watches
shop	water_refilling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaterRefilling
shop	whatever	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Whatever
shop	wholesale	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wholesale
shop	windows	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Windows
shop	wine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wine
shop	winery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WineryShop
shop	wood	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WoodShop
shop	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shop
shop	zoo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ZooShop
craft	agricultural_engines	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AgriculturalEnginesCraft
craft	basket_maker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BasketMaker
craft	beekeeper	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Beekeeper
craft	blacksmith	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Blacksmith
craft	brewery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Brewery
craft	boatbuilder	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Boatbuilder
craft	bookbinder	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bookbinder
craft	carpenter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Carpenter
craft	carpet_layer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CarpetLayer
craft	caterer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Catere
craft	clockmaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clockmaker
craft	confectionery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Confectionery
craft	dressmaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Dressmaker
craft	electrician	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Electrician
craft	gardener	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Gardener
craft	glaziery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Glaziery
craft	handicraft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Handicraft
craft	hvac	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hvac
craft	insulation	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Insulation
craft	jeweller	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Jeweller
craft	locksmith	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Locksmith
craft	key_cutter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/KeyCutter
craft	metal_construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MetalConstructionCraft
craft	optician	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/OpticianCraft
craft	painter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Painter
craft	parquet_layer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ParquetLayer
craft	photographer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Photographer
craft	photographic_laboratory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PhotographicLaboratory
craft	plasterer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plasterer
craft	plumber	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plumber
craft	pottery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pottery
craft	rigger	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rigger
craft	roofer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Roofer
craft	saddler	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Saddler
craft	sailmaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sailmaker
craft	sawmill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sawmill
craft	scaffolder	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Scaffolder
craft	sculptor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sculptor
craft	shoemaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shoemaker
craft	stand_builder	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StandBuilder
craft	stonemason	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stonemason
craft	sun_protection	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SunProtection
craft	sweep	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sweep
craft	tailor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tailor
craft	tiler	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tiler
craft	tinsmith	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tinsmith
craft	upholsterer	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Upholsterer
craft	watchmaker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Watchmaker
emergency	ambulance_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AmbulanceStation
emergency	fire_extinguisher	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireExtinguisher
emergency	fire_flapper	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireFlapper
emergency	fire_hose	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireHose
emergency	fire_hydrant	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FireHydrant
emergency	phone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencyPhone
emergency	ses_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SesStation
emergency	siren	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/EmergencySiren
tourism	alpine_hut	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AlpineHut
tourism	attraction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Attraction
tourism	artwork	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Artwork
tourism	bed_and_breakfast	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BedAndBreakfast
tourism	camp_site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CampSite
tourism	caravan_site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CaravanSite
tourism	chalet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Chalet
tourism	guest_house	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GuestHouse
tourism	hostel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hostel
tourism	hotel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hotel
tourism	information	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TourismInformation
tourism	motel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Motel
tourism	museum	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Museum
tourism	picnic_site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PicnicSite
tourism	theme_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ThemePark
tourism	viewpoint	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Viewpoint
tourism	zoo	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Zoo
tourism	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PointOfInterest
tourism	hanami	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hanami
building	temple	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Temple
building	cathedral	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cathedral
building	synagogue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Synagogue
building	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/UnclassifiedBuilding
building	apartments	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ApartmentBuilding
building	barn	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingBarn
building	building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingBuilding
building	bunker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingBunker
building	cabin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingCabin
building	chapel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingChapel
building	church	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingChurch
building	clubhouse	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Clubhouse
building	collapsed	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Collapsed
building	commercial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingCommercial
building	detached	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Detached
building	dormitory	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingDormitory
building	entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingEntrance
building	entry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Entry
building	farm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingFarm
building	flats	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Flats
building	fortress	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fortress
building	garage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingGarage
building	hall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingHall
building	hospital	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingHospital
building	house	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/House
building	hut	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingHut
building	kiosk	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingKiosk
building	monastery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingMonastery
building	no	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingNo
building	office	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingOffice
building	offices	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Offices
building	pavilion	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Pavilion
building	residential	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingResidential
building	retail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingRetail
building	school	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingSchool
building	shed	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shed
building	terrace	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Terrace
building	tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingTower
building	train_station	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrainStation
building	university	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingUniversity
building	unknown	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BuildingUnknown
building	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Building
historic	archaeological_site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ArchaeologicalSite
historic	battlefield 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Battlefield
historic	boundary_stone 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BoundaryStone
historic	castle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Castle
historic	fort	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fort
historic	memorial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Memorial
historic	monument	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Monument
historic	ruins	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ruins
historic	wayside_cross 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaysideCross
historic	wayside_shrine 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaysideShrine
historic	wreck 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wreck
historic	rune_stone 	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RuneStone
historic	abbey	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Abbey
historic	boundary_marker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BoundaryMarker
historic	bridge site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bridge+site
historic	building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricBuilding
historic	chapel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricChapel
historic	church	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricChurch
historic	city_gate	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CityGate
historic	fountain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricFountain
historic	Granattrichter	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Granattrichter
historic	heritage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Heritage
historic	house	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricHouse
historic	icon	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Icon
historic	industrial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricIndustrial
historic	lavoir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Lavoir
historic	manor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Manor
historic	marker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricMarker
historic	menhir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Menhir
historic	milestone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricMilestone
historic	mill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mill
historic	mine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricMine
historic	mine_shaft	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MineShaft
historic	monastery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricMonastery
historic	museum	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricMuseum
historic	palace	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Palace
historic	protected_building	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ProtectedBuilding
historic	saints_cross	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SaintsCross
historic	statue	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricStatue
historic	stone_circle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/StoneCircle
historic	tombstone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tombstone
historic	tower	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricTower
historic	tumulus	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tumulus
historic	UNESCO_world_heritage	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/UNESCOWorldHeritage
historic	wayside_chapel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/WaysideChapel
historic	well	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricWell
historic	yes	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HistoricPointOfInterest
landuse	allotments	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Allotments
landuse	basin	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Basin
landuse	brownfield	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Brownfield
landuse	cemetery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cemetery
landuse	commercial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CommercialLanduse
landuse	construction	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ConstructionLanduse
landuse	farm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Farm
landuse	farmland	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Farmland
landuse	farmyard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Farmyard
landuse	forest	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Forest
landuse	garages	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Garages
landuse	grass	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GrassLanduse
landuse	greenfield	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Greenfield
landuse	greenhouse_horticulture	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/GreenhouseHorticulture
landuse	industrial	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IndustrialLanduse
landuse	landfill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Landfill
landuse	meadow	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Meadow
landuse	military	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilitaryLanduse
landuse	orchard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Orchard
landuse	plant_nursery	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PlantNursery
landuse	quarry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Quarry
landuse	railway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayLanduse
landuse	recreation_ground	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RecreationGround
landuse	reservoir	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Reservoir
landuse	residential	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ResidentialLanduse
landuse	retail	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RetailLanduse
landuse	salt_pond	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SaltPond
landuse	village_green	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/VillageGreen
landuse	vineyard	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Vineyard
landuse	mine	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LanduseMine
landuse	mining	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mining
landuse	park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LandusePark
landuse	parking	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LanduseParking
landuse	resis	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Resis
landuse	thresing_floor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ThresingFloor
landuse	treerow	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Treerow
landuse	wood	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/LanduseWood
military	airfield	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilitaryAirport
military	bunker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilitaryBunker
military	barracks	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Barracks
military	danger_area	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DangerArea
military	range	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MilitaryRange
military	naval_base	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NavalBase
motorcar	agricultural	http://linkedgeodata.org/ontology/agricultural	http://linkedgeodata.org/ontology/motorcar_agricultural
motorcar	no	http://linkedgeodata.org/ontology/motorcar	http://linkedgeodata.org/ontology/motorcar_no
motorcar	private	http://linkedgeodata.org/ontology/motorcar	http://linkedgeodata.org/ontology/motorcar_private
motorcar	yes	http://linkedgeodata.org/ontology/motorcar	http://linkedgeodata.org/ontology/motorcar_yes
natural	coastline	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Coastline
natural	bay	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bay
natural	water	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Water
natural	spring	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Spring
natural	volcano	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Volcano
natural	peak	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Peak
natural	glacier	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Glacier
natural	bedrock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Bedrock
natural	scree	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Scree
natural	fell	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fell
natural	stone	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Stone
natural	sand	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sand
natural	grassland	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Grassland
natural	heath	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Heath
natural	scrub	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Scrub
natural	wood	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wood
natural	tree	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Tree
natural	wetland	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Wetland
natural	marsh	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Marsh
natural	mud	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mud
natural	cliff	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cliff
natural	cave_entrance	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CaveEntrance
natural	beach	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Beach
natural	bench	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalBench
natural	cape	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cape
natural	cave	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Cave
natural	channel	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Channel
natural	col	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Col
natural	crater	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Crater
natural	feature	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Feature
natural	fen	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fen
natural	fjord	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Fjord
natural	geyser	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Geyser
natural	headland	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Headland
natural	hill	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hill
natural	island	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Island
natural	land	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Land
natural	moor	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Moor
natural	mountain_pass	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MountainPass
natural	mushroom	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Mushroom
natural	peninsula	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Peninsula
natural	plain	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plain
natural	plateau	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Plateau
natural	point	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Point
natural	reef	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Reef
natural	ridge	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Ridge
natural	river	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalRiver
natural	rock	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalRock
natural	rocks	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Rocks
natural	sa	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sa
natural	sea	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Sea
natural	shoal	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Shoal
natural	strait	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Strait
natural	valley	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalValley
natural	waterfall	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NaturalWaterfall
natural	waterhole	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Waterhole
geological	palaeontological_site	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PalaeontologicalSite
geological	outcrop	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Outcrop
route	bicycle	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BicycleRoute
route	bus	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BusRoute
route	detour	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/DetourRoute
route	ferry	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/FerryRoute
route	hiking	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/HikingRoute
route	mtb	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MtbRoute
route	piste	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PisteRoute
route	railway	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RailwayRoute
route	road	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/RoadRoute
route	ski	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/SkiRoute
route	train	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TrainRoute
route	tram	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/TramRoute
boundary	administrative	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/AdministrativeBoundary
boundary	civil	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CivilBoundary
boundary	political	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/PoliticalBoundary
boundary	maritime	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/MaritimeBoundary
boundary	national_park	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NationalPark
boundary	protected_area	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ProtectedArea
boundary	city_limit	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/CityLimit
boundary	forest	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BoundaryForest
boundary	marker	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/BoundaryMarker
boundary	national_forest	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/NationalForest
boundary	protected_area	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/ProtectedArea
sport	9pin	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/NinePinBowling
sport	10pin	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/TenPinBowling
sport	american_football	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/AmericanFootball
sport	archery	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Archery
sport	athletics	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Athletics
sport	australian_football	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/AustralianFootball
sport	BASE	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/BASE
sport	badminton	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Badminton
sport	baseball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Baseball
sport	basketball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Basketball
sport	beachvolleyball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Beachvolleyball
sport	bmx	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Bmx
sport	boules	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Boules
sport	bowls	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Bowls
sport	cannadian_football	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/CannadianFootball
sport	canoe	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Canoe
sport	chess	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Chess
sport	climbing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Climbing
sport	cricket	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Cricket
sport	cricket_nets	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/CricketNets
sport	croquet	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Croquet
sport	cycling	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Cycling
sport	diving	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Diving
sport	dog_racing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/DogRacing
sport	fencing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Fencing
sport	equestrian	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Equestrian
sport	gaelic_games	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/GaelicGames
sport	golf	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Golf
sport	gymnastics	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Gymnastics
sport	hockey	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Hockey
sport	horseshoes	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/HorseShoes
sport	horse_racing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/HorseRacing
sport	ice_stock	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/IceStock
sport	karting	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Karting
sport	korfball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Korfball
sport	motor	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/MotorSport
sport	multi	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/MultiSports
sport	orienteering	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Orienteering
sport	paddle_tennis	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/PaddleTennis
sport	paragliding	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Paragliding
sport	free_flying	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/FreeFlying
sport	pelota	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Pelota
sport	racquet	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Racquet
sport	rowing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Rowing
sport	rugby_league	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/RugbyLeague
sport	rugby_union	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/RugbyUnion
sport	shooting	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Shooting
sport	skating	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/IceSkating
sport	skateboard	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Skateboarding
sport	skiing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Skiing
sport	soccer	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Soccer
sport	surfing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Surfing
sport	swimming	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Swimming
sport	table_tennis	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/TableTennis
sport	team_handball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/TeamHandball
sport	tennis	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Tennis
sport	toboggan	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Toboggan
sport	volleyball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Volleyball
sport	water_ski	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/WaterSki
sport	billard	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Billard
sport	billiard	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Billiard
sport	bowling	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Bowling
sport	boxing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Boxing
sport	curling	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Curling
sport	dancing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Dancing
sport	dog	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Dog
sport	dog_training	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/DogTraining
sport	equestrian	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Equestrian
sport	fitness	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/SportFitness
sport	football	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Football
sport	gaa	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Gaa
sport	gaelic_football;hurling	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/GaelicFootball%3Bhurling
sport	golf	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Golf
sport	gym	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/SportGym
sport	handball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Handball
sport	judo	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Judo
sport	model_aerodrome	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/ModelAerodrome
sport	multi	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Multi
sport	netball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Netball
sport	paintball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Paintball
sport	sailing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Sailing
sport	scuba_diving	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/SportScubaDiving
sport	snooker	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Snooker
sport	softball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Softball
sport	squash	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Squash
sport	via_ferrata	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/ViaFerrata
sport	volley ball	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Volley+ball
sport	water_sports	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/WaterSports
sport	windsurfing	http://linkedgeodata.org/ontology/featuresSport	http://linkedgeodata.org/ontology/Windsurfing
abutters	residential	http://linkedgeodata.org/ontology/featuresAbutters	http://linkedgeodata.org/ontology/ResidentialAbutters
abutters	retail	http://linkedgeodata.org/ontology/featuresAbutters	http://linkedgeodata.org/ontology/RetailAbutters
abutters	commercial	http://linkedgeodata.org/ontology/featuresAbutters	http://linkedgeodata.org/ontology/CommercialAbutters
abutters	industrial	http://linkedgeodata.org/ontology/featuresAbutters	http://linkedgeodata.org/ontology/IndustrialAbutters
abutters	mixed	http://linkedgeodata.org/ontology/featuresAbutters	http://linkedgeodata.org/ontology/MixedAbutters
place	continent	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Continent
place	country	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Country
place	state	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/State
place	region	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Region
place	county	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/County
place	city	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/City
place	town	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Town
place	village	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Village
place	hamlet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Hamlet
place	suburb	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Suburb
place	isolated_dwelling	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/IsolatedDwelling
place	locality	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Locality
place	island	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Island
place	farm	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Farm
place	islet	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Islet
place	municipality	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Municipality
place	subdivision	http://www.w3.org/1999/02/22-rdf-syntax-ns#type	http://linkedgeodata.org/ontology/Subdivision
wheelchair	limited	http://linkedgeodata.org/ontology/wheelchair	http://linkedgeodata.org/ontology/wheelchair_limited
wheelchair	no	http://linkedgeodata.org/ontology/wheelchair	http://linkedgeodata.org/ontology/wheelchair_no
wheelchair	unknown	http://linkedgeodata.org/ontology/wheelchair	http://linkedgeodata.org/ontology/wheelchair_unknown
wheelchair	yes	http://linkedgeodata.org/ontology/wheelchair	http://linkedgeodata.org/ontology/wheelchair_yes
\.


--
-- Data for Name: lgd_map_property; Type: TABLE DATA; Schema: public; Owner: postgres
--
COPY lgd_map_property (k, property) FROM stdin;
website	http://xmlns.com/foaf/0.1/homepage
image	http://xmlns.com/foaf/0.1/depiction
owl:sameAs:1	http://www.w3.org/2002/07/owl#sameAs
addr:postcode	http://linkedgeodata.org/ontology/addr/postcode
admin_level	http://linkedgeodata.org/ontology/adminLevel
agricultural	http://linkedgeodata.org/ontology/agricultural
alternate	http://linkedgeodata.org/ontology/alternate
area	http://linkedgeodata.org/ontology/area
asb	http://linkedgeodata.org/ontology/asb
atm	http://linkedgeodata.org/ontology/atm
backrest	http://linkedgeodata.org/ontology/backrest
bar	http://linkedgeodata.org/ontology/bar
bench	http://linkedgeodata.org/ontology/bench
bin	http://linkedgeodata.org/ontology/bin
blz	http://linkedgeodata.org/ontology/blz
board_type	http://linkedgeodata.org/ontology/boardType
boat	http://linkedgeodata.org/ontology/boat
bridge	http://linkedgeodata.org/ontology/bridge
build	http://linkedgeodata.org/ontology/build
building	http://linkedgeodata.org/ontology/building
bus	http://linkedgeodata.org/ontology/bus
by_night	http://linkedgeodata.org/ontology/byNight
cables	http://linkedgeodata.org/ontology/cables
charge	http://linkedgeodata.org/ontology/charge
cutting	http://linkedgeodata.org/ontology/cutting
de:amtlicher_gemeindeschluessel	http://linkedgeodata.org/ontology/de/amtlicherGemeindeschluessel
departures_board	http://linkedgeodata.org/ontology/departuresBoard
diaper	http://linkedgeodata.org/ontology/diaper
dispensing	http://linkedgeodata.org/ontology/dispensing
disused	http://linkedgeodata.org/ontology/disused
ele	http://linkedgeodata.org/ontology/ele
elevator	http://linkedgeodata.org/ontology/elevator
embankment	http://linkedgeodata.org/ontology/embankment
erected	http://linkedgeodata.org/ontology/erected
family_spaces	http://linkedgeodata.org/ontology/familySpaces
fenced	http://linkedgeodata.org/ontology/fenced
frequency	http://linkedgeodata.org/ontology/frequency
fuel:cng	http://linkedgeodata.org/ontology/fuel/cng
fuel:diesel	http://linkedgeodata.org/ontology/fuel_diesel
fuel:GTL_diesel	http://linkedgeodata.org/ontology/fuel/gtlDiesel
fuel:HGV_diesel	http://linkedgeodata.org/ontology/fuel/hgvDiesel
fuel:lpg	http://linkedgeodata.org/ontology/fuel/lpg
fuel:octane_100	http://linkedgeodata.org/ontology/fuel/octane_100
fuel:octane_91	http://linkedgeodata.org/ontology/fuel/octane_91
fuel:octane_95	http://linkedgeodata.org/ontology/fuel/octane_95
fuel:octane_98	http://linkedgeodata.org/ontology/fuel/octane_98
game:patrizier2:bier	http://linkedgeodata.org/ontology/game/patrizier2/bier
game:patrizier2:eisenerz	http://linkedgeodata.org/ontology/game/patrizier2/eisenerz
game:patrizier2:eisenwaren	http://linkedgeodata.org/ontology/game/patrizier2/eisenwaren
game:patrizier2:getreide	http://linkedgeodata.org/ontology/game/patrizier2/getreide
game:patrizier2:tuch	http://linkedgeodata.org/ontology/game/patrizier2/tuch
game:patrizier2:wolle	http://linkedgeodata.org/ontology/game/patrizier2/wolle
game:patrizier2:ziegel	http://linkedgeodata.org/ontology/game/patrizier2/ziegel
gauge	http://linkedgeodata.org/ontology/gauge
horse	http://linkedgeodata.org/ontology/horse
interner_access	http://linkedgeodata.org/ontology/internerAccess
lanes	http://linkedgeodata.org/ontology/lanes
layer	http://linkedgeodata.org/ontology/layer
level	http://linkedgeodata.org/ontology/level
lit	http://linkedgeodata.org/ontology/lit
maxheight	http://linkedgeodata.org/ontology/maxheight
maxlength	http://linkedgeodata.org/ontology/maxlength
maxspeed	http://linkedgeodata.org/ontology/maxspeed
maxweight	http://linkedgeodata.org/ontology/maxweight
maxwidth	http://linkedgeodata.org/ontology/maxwidth
minspeed	http://linkedgeodata.org/ontology/minspeed
monument	http://linkedgeodata.org/ontology/monument
mooring	http://linkedgeodata.org/ontology/mooring
motorroad	http://linkedgeodata.org/ontology/motorroad
ncn	http://linkedgeodata.org/ontology/ncn
noexit	http://linkedgeodata.org/ontology/noexit
oneway:bicycle	http://linkedgeodata.org/ontology/oneway/bicycle
oneway	http://linkedgeodata.org/ontology/oneway
on	http://linkedgeodata.org/ontology/on
onkz	http://linkedgeodata.org/ontology/onkz
openGeoDB:community_identification_number	http://linkedgeodata.org/ontology/openGeoDB/communityIdentificationNumber
openGeoDB:is_in_loc_id	http://linkedgeodata.org/ontology/openGeoDB/isInLocId
opengeodb:lat	http://linkedgeodata.org/ontology/opengeodb/lat
openGeoDB:layer	http://linkedgeodata.org/ontology/openGeoDB/layer
openGeoDB:loc_id	http://linkedgeodata.org/ontology/openGeoDB/locId
opengeodb:lon	http://linkedgeodata.org/ontology/opengeodb/lon
openGeoDB:population	http://linkedgeodata.org/ontology/openGeoDB/population
openGeoDB:telephone_area_code	http://linkedgeodata.org/ontology/openGeoDB/telephoneAreaCode
osmarender:renderName	http://linkedgeodata.org/ontology/osmarender/renderName
osmarender:renderRef	http://linkedgeodata.org/ontology/osmarender/renderRef
park_ride	http://linkedgeodata.org/ontology/parkRide
payment:bob	http://linkedgeodata.org/ontology/payment/bob
payment:coins	http://linkedgeodata.org/ontology/payment/coins
payment:credit_cards	http://linkedgeodata.org/ontology/payment/creditCcards
payment:debit_cards	http://linkedgeodata.org/ontology/payment/debitCards
payment:electronic_purses	http://linkedgeodata.org/ontology/payment/electronicPurses
payment:geldkarte	http://linkedgeodata.org/ontology/payment/geldkarte
payment:geltkarte	http://linkedgeodata.org/ontology/payment/geltkarte
payment:notes	http://linkedgeodata.org/ontology/payment/notes
payment:telephone_cards	http://linkedgeodata.org/ontology/payment/telephoneCards
permissive	http://linkedgeodata.org/ontology/permissive
population	http://linkedgeodata.org/ontology/population
produced	http://linkedgeodata.org/ontology/produced
public	http://linkedgeodata.org/ontology/public
rail	http://linkedgeodata.org/ontology/rail
rcn	http://linkedgeodata.org/ontology/rcn
recycling:batteries	http://linkedgeodata.org/ontology/recycling/batteries
recycling:cans	http://linkedgeodata.org/ontology/recycling/cans
recycling:clothes	http://linkedgeodata.org/ontology/recycling/clothes
recycling:garden_waste	http://linkedgeodata.org/ontology/recycling/gardenWaste
recycling:glass_bottles	http://linkedgeodata.org/ontology/recycling/glassBottles
recycling:glass	http://linkedgeodata.org/ontology/recycling/glass
recycling:green_waste	http://linkedgeodata.org/ontology/recycling/greenWaste
recycling:metal	http://linkedgeodata.org/ontology/recycling/metal
recycling:paper	http://linkedgeodata.org/ontology/recycling/paper
recycling:paper_packaging	http://linkedgeodata.org/ontology/recycling/paperPackaging
recycling:plastic	http://linkedgeodata.org/ontology/recycling/plastic
recycling:scrap_metal	http://linkedgeodata.org/ontology/recycling/scrapMetal
recycling:shoes	http://linkedgeodata.org/ontology/recycling/shoes
ref:fgkz	http://linkedgeodata.org/ontology/ref/fgkz
ruins	http://linkedgeodata.org/ontology/ruins
seasonal	http://linkedgeodata.org/ontology/seasonal
seats	http://linkedgeodata.org/ontology/seats
segregated	http://linkedgeodata.org/ontology/segregated
shelter	http://linkedgeodata.org/ontology/shelter
ski	http://linkedgeodata.org/ontology/ski
sms	http://linkedgeodata.org/ontology/sms
snowmobile	http://linkedgeodata.org/ontology/snowmobile
stars	http://linkedgeodata.org/ontology/stars
step_count	http://linkedgeodata.org/ontology/stepCount
StrVz	http://linkedgeodata.org/ontology/strVz
tactile_paving	http://linkedgeodata.org/ontology/tactilePaving
taxi	http://linkedgeodata.org/ontology/taxi
TMC:cid_58:tabcd_1:LCLversion	http://linkedgeodata.org/ontology/TMC/cid_58/tabcd_1/lclVersion
TMC:cid_58:tabcd_1:LocationCode	http://linkedgeodata.org/ontology/TMC/cid_58/tabcd_1/locationCode
TMC:cid_58:tabcd_1:NextLocationCode	http://linkedgeodata.org/ontology/TMC/cid_58/tabcd_1/nextLocationCode
TMC:cid_58:tabcd_1:PrevLocationCode	http://linkedgeodata.org/ontology/TMC/cid_58/tabcd_1/prevLocationCode
toilet	http://linkedgeodata.org/ontology/toilet
tracks	http://linkedgeodata.org/ontology/tracks
traffic_signals:sound	http://linkedgeodata.org/ontology/traffic_signals/sound
tram	http://linkedgeodata.org/ontology/tram
tunnel	http://linkedgeodata.org/ontology/tunnel
uic_ref	http://linkedgeodata.org/ontology/uic_ref
undefined	http://linkedgeodata.org/ontology/undefined
unisex	http://linkedgeodata.org/ontology/unisex
verified	http://linkedgeodata.org/ontology/verified
via	http://linkedgeodata.org/ontology/via
video	http://linkedgeodata.org/ontology/video
VzG	http://linkedgeodata.org/ontology/VzG
waterway:lock:height	http://linkedgeodata.org/ontology/waterway/lock/height
wheelchair	http://linkedgeodata.org/ontology/wheelchair
\.


--
-- Data for Name: lgd_map_resource_prefix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_resource_prefix (k, property, object_prefix, post_processing) FROM stdin;
email	http://xmlns.com/foaf/0.1/mbox	mailto:	none
wheelchair	http://linkedgeodata.org/ontology/wheelchair	http://linkedgeodata.org/ontology/	ucamelize&urlencode
religion	http://linkedgeodata.org/ontology/religion	http://linkedgeodata.org/ontology/	ucamelize&urlencode
direction	http://linkedgeodata.org/ontology/direction	http://linkedgeodata.org/ontology/	ucamelize&urlencode
surfaces	http://linkedgeodata.org/ontology/surfaces	http://linkedgeodata.org/ontology/	ucamelize&urlencode
denomination	http://linkedgeodata.org/ontology/denomination	http://linkedgeodata.org/ontology/	ucamelize&urlencode
denotation	http://linkedgeodata.org/ontology/denotation	http://linkedgeodata.org/ontology/	ucamelize&urlencode
wikipedia:de	http://linkedgeodata.org/ontology/wikipediaLink/de	http://de.wikipedia.org/wiki/	mediawikiTitle
wikipedia:en	http://linkedgeodata.org/ontology/wikipediaLink/en	http://en.wikipedia.org/wiki/	mediawikiTitle
wikipedia:es	http://linkedgeodata.org/ontology/wikipediaLink/es	http://es.wikipedia.org/wiki/	mediawikiTitle
wikipedia:fr	http://linkedgeodata.org/ontology/wikipediaLink/fr	http://fr.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ja	http://linkedgeodata.org/ontology/wikipediaLink/ja	http://ja.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ru	http://linkedgeodata.org/ontology/wikipediaLink/ru	http://ru.wikipedia.org/wiki/	mediawikiTitle
wikipedia:id	http://linkedgeodata.org/ontology/wikipediaLink/id	http://id.wikipedia.org/wiki/	mediawikiTitle
wikipedia:it	http://linkedgeodata.org/ontology/wikipediaLink/it	http://it.wikipedia.org/wiki/	mediawikiTitle
wikipedia:pt	http://linkedgeodata.org/ontology/wikipediaLink/pt	http://pt.wikipedia.org/wiki/	mediawikiTitle
wikipedia:pl	http://linkedgeodata.org/ontology/wikipediaLink/pl	http://pl.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sv	http://linkedgeodata.org/ontology/wikipediaLink/sv	http://sv.wikipedia.org/wiki/	mediawikiTitle
wikipedia:uk	http://linkedgeodata.org/ontology/wikipediaLink/uk	http://uk.wikipedia.org/wiki/	mediawikiTitle
wikipedia:nl	http://linkedgeodata.org/ontology/wikipediaLink/nl	http://nl.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ka	http://linkedgeodata.org/ontology/wikipediaLink/ka	http://ka.wikipedia.org/wiki/	mediawikiTitle
wikipedia:fi	http://linkedgeodata.org/ontology/wikipediaLink/fi	http://fi.wikipedia.org/wiki/	mediawikiTitle
wikipedia:cs	http://linkedgeodata.org/ontology/wikipediaLink/cs	http://cs.wikipedia.org/wiki/	mediawikiTitle
wikipedia:th	http://linkedgeodata.org/ontology/wikipediaLink/th	http://th.wikipedia.org/wiki/	mediawikiTitle
wikipedia:bg	http://linkedgeodata.org/ontology/wikipediaLink/bg	http://bg.wikipedia.org/wiki/	mediawikiTitle
wikipedia:lt	http://linkedgeodata.org/ontology/wikipediaLink/lt	http://lt.wikipedia.org/wiki/	mediawikiTitle
wikipedia:no	http://linkedgeodata.org/ontology/wikipediaLink/no	http://no.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ht	http://linkedgeodata.org/ontology/wikipediaLink/ht	http://ht.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ro	http://linkedgeodata.org/ontology/wikipediaLink/ro	http://ro.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ca	http://linkedgeodata.org/ontology/wikipediaLink/ca	http://ca.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ar	http://linkedgeodata.org/ontology/wikipediaLink/ar	http://ar.wikipedia.org/wiki/	mediawikiTitle
wikipedia:zh	http://linkedgeodata.org/ontology/wikipediaLink/zh	http://zh.wikipedia.org/wiki/	mediawikiTitle
wikipedia:eo	http://linkedgeodata.org/ontology/wikipediaLink/eo	http://eo.wikipedia.org/wiki/	mediawikiTitle
wikipedia:da	http://linkedgeodata.org/ontology/wikipediaLink/da	http://da.wikipedia.org/wiki/	mediawikiTitle
wikipedia:el	http://linkedgeodata.org/ontology/wikipediaLink/el	http://el.wikipedia.org/wiki/	mediawikiTitle
wikipedia:hr	http://linkedgeodata.org/ontology/wikipediaLink/hr	http://hr.wikipedia.org/wiki/	mediawikiTitle
wikipedia:tr	http://linkedgeodata.org/ontology/wikipediaLink/tr	http://tr.wikipedia.org/wiki/	mediawikiTitle
wikipedia:eu	http://linkedgeodata.org/ontology/wikipediaLink/eu	http://eu.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sq	http://linkedgeodata.org/ontology/wikipediaLink/sq	http://sq.wikipedia.org/wiki/	mediawikiTitle
wikipedia:he	http://linkedgeodata.org/ontology/wikipediaLink/he	http://he.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sk	http://linkedgeodata.org/ontology/wikipediaLink/sk	http://sk.wikipedia.org/wiki/	mediawikiTitle
wikipedia:hu	http://linkedgeodata.org/ontology/wikipediaLink/hu	http://hu.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sl	http://linkedgeodata.org/ontology/wikipediaLink/sl	http://sl.wikipedia.org/wiki/	mediawikiTitle
wikipedia:als	http://linkedgeodata.org/ontology/wikipediaLink/als	http://als.wikipedia.org/wiki/	mediawikiTitle
wikipedia:qu	http://linkedgeodata.org/ontology/wikipediaLink/qu	http://qu.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sr	http://linkedgeodata.org/ontology/wikipediaLink/sr	http://sr.wikipedia.org/wiki/	mediawikiTitle
wikipedia:cz	http://linkedgeodata.org/ontology/wikipediaLink/cz	http://cz.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ast	http://linkedgeodata.org/ontology/wikipediaLink/ast	http://ast.wikipedia.org/wiki/	mediawikiTitle
wikipedia:gv	http://linkedgeodata.org/ontology/wikipediaLink/gv	http://gv.wikipedia.org/wiki/	mediawikiTitle
wikipedia:et	http://linkedgeodata.org/ontology/wikipediaLink/et	http://et.wikipedia.org/wiki/	mediawikiTitle
wikipedia:lv	http://linkedgeodata.org/ontology/wikipediaLink/lv	http://lv.wikipedia.org/wiki/	mediawikiTitle
wikipedia:hsb	http://linkedgeodata.org/ontology/wikipediaLink/hsb	http://hsb.wikipedia.org/wiki/	mediawikiTitle
wikipedia:mk	http://linkedgeodata.org/ontology/wikipediaLink/mk	http://mk.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ab	http://linkedgeodata.org/ontology/wikipediaLink/ab	http://ab.wikipedia.org/wiki/	mediawikiTitle
wikipedia:nn	http://linkedgeodata.org/ontology/wikipediaLink/nn	http://nn.wikipedia.org/wiki/	mediawikiTitle
wikipedia:se	http://linkedgeodata.org/ontology/wikipediaLink/se	http://se.wikipedia.org/wiki/	mediawikiTitle
wikipedia:dk	http://linkedgeodata.org/ontology/wikipediaLink/dk	http://dk.wikipedia.org/wiki/	mediawikiTitle
wikipedia:so	http://linkedgeodata.org/ontology/wikipediaLink/so	http://so.wikipedia.org/wiki/	mediawikiTitle
wikipedia:vi	http://linkedgeodata.org/ontology/wikipediaLink/vi	http://vi.wikipedia.org/wiki/	mediawikiTitle
wikipedia:bs	http://linkedgeodata.org/ontology/wikipediaLink/bs	http://bs.wikipedia.org/wiki/	mediawikiTitle
wikipedia:be	http://linkedgeodata.org/ontology/wikipediaLink/be	http://be.wikipedia.org/wiki/	mediawikiTitle
wikipedia:jp	http://linkedgeodata.org/ontology/wikipediaLink/jp	http://jp.wikipedia.org/wiki/	mediawikiTitle
wikipedia:la	http://linkedgeodata.org/ontology/wikipediaLink/la	http://la.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sw	http://linkedgeodata.org/ontology/wikipediaLink/sw	http://sw.wikipedia.org/wiki/	mediawikiTitle
wikipedia:vo	http://linkedgeodata.org/ontology/wikipediaLink/vo	http://vo.wikipedia.org/wiki/	mediawikiTitle
wikipedia:af	http://linkedgeodata.org/ontology/wikipediaLink/af	http://af.wikipedia.org/wiki/	mediawikiTitle
wikipedia:lb	http://linkedgeodata.org/ontology/wikipediaLink/lb	http://lb.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ua	http://linkedgeodata.org/ontology/wikipediaLink/ua	http://ua.wikipedia.org/wiki/	mediawikiTitle
wikipedia:az	http://linkedgeodata.org/ontology/wikipediaLink/az	http://az.wikipedia.org/wiki/	mediawikiTitle
wikipedia:sco	http://linkedgeodata.org/ontology/wikipediaLink/sco	http://sco.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ko	http://linkedgeodata.org/ontology/wikipediaLink/ko	http://ko.wikipedia.org/wiki/	mediawikiTitle
wikipedia:simple	http://linkedgeodata.org/ontology/wikipediaLink/simple	http://simple.wikipedia.org/wiki/	mediawikiTitle
wikipedia:fa	http://linkedgeodata.org/ontology/wikipediaLink/fa	http://fa.wikipedia.org/wiki/	mediawikiTitle
wikipedia:war	http://linkedgeodata.org/ontology/wikipediaLink/war	http://war.wikipedia.org/wiki/	mediawikiTitle
wikipedia:ee	http://linkedgeodata.org/ontology/wikipediaLink/ee	http://ee.wikipedia.org/wiki/	mediawikiTitle
wikipedia:is	http://linkedgeodata.org/ontology/wikipediaLink/is	http://is.wikipedia.org/wiki/	mediawikiTitle
wikipedia:dsb	http://linkedgeodata.org/ontology/wikipediaLink/dsb	http://dsb.wikipedia.org/wiki/	mediawikiTitle
wikipedia:bar	http://linkedgeodata.org/ontology/wikipediaLink/bar	http://bar.wikipedia.org/wiki/	mediawikiTitle
\.


--
-- PostgreSQL database dump complete
--

