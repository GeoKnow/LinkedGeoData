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
-- Data for Name: lgd_map_label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lgd_map_label (k, v, language, label) FROM stdin;
amenity	airport	af	Lughawe
amenity	arts_centre	af	Kunssentrum
amenity	atm	af	OTM
amenity	auditorium	af	Ouditorium
amenity	bank	af	Bank
amenity	bar	af	Kroeg
amenity	bench	af	Bank
amenity	bicycle_parking	af	Fietsparkering
amenity	bicycle_rental	af	Fietsverhuring
amenity	brothel	af	Bordeel
amenity	bureau_de_change	af	Wisselkantoor
amenity	bus_station	af	Bushalte
amenity	cafe	af	Kafee
amenity	car_rental	af	Motorverhuring
amenity	car_wash	af	Karwas
amenity	casino	af	Casino
amenity	cinema	af	Bioskoop
amenity	clinic	af	Kliniek
amenity	club	af	Klub
amenity	college	af	Kollege
amenity	community_centre	af	Gemeenskap-sentrum
amenity	courthouse	af	Hof
amenity	crematorium	af	Krematorium
amenity	dentist	af	Tandarts
amenity	doctors	af	Dokters
amenity	dormitory	af	Studentehuis
amenity	drinking_water	af	Drinkwater
amenity	driving_school	af	Bestuurskool
amenity	embassy	af	Ambassade
amenity	emergency_phone	af	Noodtelefoon
amenity	fast_food	af	Wegneemetes
amenity	ferry_terminal	af	Veerterminaal
amenity	fire_hydrant	af	Brandkraan
amenity	fire_station	af	Brandweerstasie
amenity	fountain	af	Fontein
amenity	fuel	af	Brandstof
amenity	grave_yard	af	Begraafplaas
amenity	hall	af	Saal
amenity	health_centre	af	Gesondheidsentrum
amenity	hospital	af	Hospitaal
amenity	hotel	af	Hotel
amenity	hunting_stand	af	Jagtoring
amenity	ice_cream	af	Roomys
amenity	kindergarten	af	Kleuterskool
amenity	library	af	Biblioteek
amenity	market	af	Mark
amenity	marketplace	af	Markplein
amenity	nightclub	af	Nagklub
amenity	nursery	af	Kleuterskool
amenity	nursing_home	af	Verpleeghuis
amenity	office	af	Kantoor
amenity	park	af	Park
amenity	parking	af	Parkade
amenity	pharmacy	af	Apteek
amenity	place_of_worship	af	Plek van aanbidding
amenity	police	af	Polisie
amenity	post_box	af	Posbus
amenity	post_office	af	Poskantoor
amenity	preschool	af	Kleuterskool
amenity	prison	af	Tronk
amenity	pub	af	Kroeg
amenity	public_building	af	Openbare gebou
amenity	public_market	af	Openbare mark
amenity	reception_area	af	Ontvangsarea
amenity	recycling	af	Herwinningspunt
amenity	restaurant	af	Restaurant
amenity	retirement_home	af	Ouetehuis
amenity	sauna	af	Sauna
amenity	school	af	Skool
amenity	shelter	af	Skuiling
amenity	shop	af	Winkel
amenity	shopping	af	Inkopies
amenity	social_club	af	Sosiale klub
amenity	studio	af	Studio
amenity	supermarket	af	Supermark
amenity	taxi	af	Taxi
amenity	telephone	af	Openbare telefoon
amenity	theatre	af	Teater
amenity	toilets	af	Toilette
amenity	townhall	af	Stadsaal
amenity	university	af	Universiteit
amenity	veterinary	af	Veearts
amenity	waste_basket	af	Asblik
amenity	wifi	af	WiFi-toegang
amenity	youth_centre	af	Jeugsentrum
boundary	administrative	af	Administratiewe grens
building	apartments	af	Woonstelblok
building	block	af	Boublok
building	bunker	af	Bunker
building	chapel	af	Kapel
building	church	af	Kerk
building	city_hall	af	Stadsaal
building	commercial	af	Kommersiële-gebou
building	dormitory	af	Studentehuis
building	entrance	af	Ingang
building	faculty	af	Fakulteit-gebou
building	farm	af	Plaasgebou
building	flats	af	Woonstelle
building	garage	af	Garage
building	hall	af	Saal
building	hospital	af	Hospitaal-gebou
building	hotel	af	Hotel
building	house	af	Huis
building	industrial	af	Industriële gebou
building	office	af	Kantoorgebou
building	public	af	Openbare gebou
building	residential	af	Residensiële gebou
building	retail	af	Kleinhandel-gebou
building	school	af	Skoolgebou
building	shop	af	Winkel
building	stadium	af	Stadion
building	store	af	Winkel
building	terrace	af	Terras
building	tower	af	Toring
building	train_station	af	Spoorwegstasie
building	university	af	Universiteitsgebou
highway	bridleway	af	Ruiterpad
highway	bus_stop	af	Bushalte
highway	construction	af	Snelweg in aanbou
highway	cycleway	af	Fietspad
highway	distance_marker	af	Afstandsmerker
highway	emergency_access_point	af	Noodtoeganspunt
highway	footway	af	Voetpad
highway	gate	af	Hek
highway	motorway	af	Snelweg
highway	motorway_junction	af	Snelwegknooppunt
highway	path	af	Pad
highway	pedestrian	af	Voetpad
highway	platform	af	Platform
highway	primary	af	Primêre pad
highway	primary_link	af	Primêre pad
highway	raceway	af	Renbaan
highway	residential	af	Woonerf
highway	road	af	Pad
highway	secondary	af	Sekondêre pad
highway	secondary_link	af	Sekondêre pad
highway	service	af	Dienspad
highway	services	af	Snelweg Dienste
highway	steps	af	Trappe
highway	tertiary	af	Tersiêre pad
highway	track	af	Spoor
highway	trail	af	Wandelpad
highway	trunk	af	Trokpad
highway	trunk_link	af	Trokpad
highway	unclassified	af	Ongeklassifiseerde pad
highway	unsurfaced	af	Grondpad
historic	archaeological_site	af	Argeologiese vindplaas
historic	battlefield	af	Slagveld
historic	building	af	Gebou
historic	castle	af	Kasteel
historic	church	af	Kerk
historic	house	af	Huis
historic	icon	af	Ikoon
historic	manor	af	Landgoed
historic	memorial	af	Herdenkingsmonument
historic	mine	af	Myn
historic	monument	af	Monument
historic	museum	af	Museum
historic	ruins	af	Ruïnes
historic	tower	af	Toring
historic	wayside_cross	af	Kruis langs die pad
historic	wayside_shrine	af	Altaar langs die pad
historic	wreck	af	Wrak
landuse	cemetery	af	Begraafplaas
landuse	commercial	af	Kommersiële gebied
landuse	construction	af	Konstruksie
landuse	farm	af	Plaas
landuse	farmland	af	Plaasgrond
landuse	farmyard	af	Plaaswerf
landuse	forest	af	Woud
landuse	grass	af	Gras
landuse	industrial	af	Industriële gebied
landuse	landfill	af	Stortingsterrein
landuse	military	af	Militêre gebied
landuse	mine	af	Myn
landuse	mountain	af	Berg
landuse	nature_reserve	af	Natuurreservaat
landuse	park	af	Park
landuse	plaza	af	Plein
landuse	quarry	af	Steengroewe
landuse	railway	af	Spoor
landuse	reservoir	af	Reservoir
landuse	residential	af	Woongebied
landuse	retail	af	Kleinhandel
landuse	vineyard	af	Wingerd
landuse	wetland	af	Vleiland
landuse	wood	af	Bos
leisure	beach_resort	af	Strandoort
leisure	fishing	af	Visvangarea
leisure	garden	af	Tuin
leisure	golf_course	af	Gholfbaan
leisure	ice_rink	af	Ysbaan
leisure	marina	af	Marina
leisure	miniature_golf	af	Minigolf
leisure	nature_reserve	af	Natuurreservaat
leisure	park	af	Park
leisure	pitch	af	Sportveld
leisure	playground	af	Speelgrond
leisure	sports_centre	af	Sport-sentrum
leisure	stadium	af	Stadion
leisure	swimming_pool	af	Swembad
leisure	track	af	Atletiekbaan
leisure	water_park	af	Waterspeelpark
natural	bay	af	Baai
natural	beach	af	Strand
natural	cape	af	Kaap
natural	cave_entrance	af	Grotingang
natural	channel	af	Kanaal
natural	cliff	af	Kloof
natural	coastline	af	Kuslyn
natural	crater	af	Krater
natural	feature	af	Besienswaardigheid
natural	fjord	af	Fjord
natural	geyser	af	Geiser
natural	glacier	af	Gletser
natural	heath	af	Heide
natural	hill	af	Heuwel
natural	island	af	Eiland
natural	land	af	Land
natural	marsh	af	Moeras
natural	mud	af	Modder
natural	peak	af	Piek
natural	point	af	Punt
natural	reef	af	Rif
natural	ridge	af	Bergkam
natural	river	af	Rivier
natural	rock	af	Rotse
natural	scree	af	Puin
natural	scrub	af	Struikgewas
natural	shoal	af	Sandbank
natural	spring	af	Bron
natural	strait	af	Seestraat
natural	tree	af	Boom
natural	valley	af	Vallei
natural	volcano	af	Vulkaan
natural	water	af	Water
natural	wetland	af	Moeras
natural	wetlands	af	Moeras
natural	wood	af	Bos
place	airport	af	Lughawe
place	city	af	Stad
place	country	af	Land
place	county	af	Distrik
place	farm	af	Plaas
place	hamlet	af	Gehug
place	house	af	Huis
place	houses	af	Huise
place	island	af	Eiland
place	islet	af	Eilandjie
place	locality	af	Ligging
place	municipality	af	Munisipaliteit
place	postcode	af	Poskode
place	region	af	Streek
place	sea	af	See
place	state	af	Staat
place	subdivision	af	Deelgebied
place	suburb	af	Voorstad
place	town	af	Dorp
place	unincorporated_area	af	Geïnkorporeerde Ruimte
place	village	af	Dorp
railway	construction	af	Spoor in aanbou
railway	disused_station	af	Ongebruikte spoorwegstasie
railway	funicular	af	Kabelspoorweg
railway	halt	af	Treinhalte
railway	historic_station	af	Historiese spoorwegstasie
railway	junction	af	Spoorwegkruising
railway	level_crossing	af	Gelykvloerse kruising
railway	monorail	af	Monorail
railway	narrow_gauge	af	Smalspoor
railway	platform	af	Spoorweg-platform
railway	preserved	af	Historiese spoor
railway	station	af	Spoorwegstasie
railway	subway	af	Metrostasie
railway	subway_entrance	af	Metroingang
railway	switch	af	Spoogwegpunte
railway	tram_stop	af	Tramhalte
shop	apparel	af	Kledingwinkel
shop	art	af	Kunswinkel
shop	bakery	af	Bakkery
shop	beauty	af	Skoonheidssalon
shop	bicycle	af	Fietswinkel
shop	books	af	Boekwinkel
shop	butcher	af	Slagter
shop	car	af	Motorwinkel
shop	car_dealer	af	Motorhandelaar
shop	car_parts	af	Motoronderdele
shop	carpet	af	Mat-/tapytwinkel
shop	car_repair	af	Motorherstel
shop	charity	af	Liefdadigheidswinkel
shop	chemist	af	Apteek
shop	clothes	af	Klerewinkel
shop	computer	af	Rekenaarwinkel
shop	convenience	af	Gemakswinkel
shop	copyshop	af	Fotokopie-winkel
shop	cosmetics	af	Kosmetiesewinkel
shop	discount	af	Afslagwinkel
shop	doityourself	af	Doen-dit-self-winkel
shop	drugstore	af	Apteek
shop	dry_cleaning	af	Droogskoonmaker
shop	electronics	af	Elektronikawinkel
shop	farm	af	Plaaswinkel
shop	fashion	af	Modewinkel
shop	fish	af	Viswinkel
shop	florist	af	Bloemiste
shop	food	af	Koswinkel
shop	funeral_directors	af	Begrafnisondernemer
shop	furniture	af	Meubels
shop	gallery	af	Galery
shop	garden_centre	af	Kwekery/Tuinsentrum
shop	general	af	Algemene winkel
shop	gift	af	Geskenkwinkel
shop	grocery	af	Kruideniersware-winkel
shop	hairdresser	af	Haarkapper
shop	hardware	af	Hardwarewinkel
shop	hifi	af	Hi-fi
shop	insurance	af	Versekering
shop	jewelry	af	Juwelierswinkel
shop	kiosk	af	Kioskwinkel
shop	laundry	af	Wassery
shop	mall	af	Winkelsentrum
shop	market	af	Mark
shop	mobile_phone	af	Selfoonwinkel
shop	motorcycle	af	Motorfietswinkel
shop	music	af	Musiekwinkel
shop	newsagent	af	Nuusagent
shop	optician	af	Oogkundige
shop	organic	af	Organiese koswinkel
shop	outdoor	af	Buitelug-winkel
shop	pet	af	Dierewinkel
shop	photo	af	Fotowinkel
shop	salon	af	Skoonheidssalon
shop	shoes	af	Skoenwinkel
shop	shopping_centre	af	Winkelsentrum
shop	sports	af	Sportwinkel
shop	stationery	af	Skryfbehoeftes-winkel
shop	supermarket	af	Supermark
shop	toys	af	Speelgoedwinkel
shop	travel_agency	af	Reisburo
shop	video	af	Video-winkel
tourism	alpine_hut	af	Berghut
tourism	artwork	af	Kunswerk
tourism	attraction	af	Attraksie
tourism	bed_and_breakfast	af	Bed en Ontbyt
tourism	cabin	af	Hut
tourism	camp_site	af	Kampterrein
tourism	caravan_site	af	Karavaanpark
tourism	chalet	af	Chalet
tourism	guest_house	af	Gastehuis
tourism	hostel	af	Hotel
tourism	hotel	af	Hotel
tourism	information	af	Inligting
tourism	lean_to	af	Leer om
tourism	motel	af	Motel
tourism	museum	af	Museum
tourism	picnic_site	af	Piekniekplek
tourism	theme_park	af	Pretpark
tourism	valley	af	Vallei
tourism	viewpoint	af	Uitkykpunt
tourism	zoo	af	Dieretuin
waterway	boatyard	af	Skeepswerf
waterway	canal	af	Kanaal
waterway	connector	af	Waterverbinding
waterway	dam	af	Dam
waterway	ditch	af	Sloot
waterway	dock	af	Dokke
waterway	drain	af	Afvoerkanaal
waterway	lock	af	Sluis
waterway	lock_gate	af	Sluisdeur
waterway	mineral_spring	af	Minerale bron
waterway	rapids	af	Stroomversnelling
waterway	river	af	Rivier
waterway	riverbank	af	Rivierbedding
waterway	stream	af	Stroom
waterway	waterfall	af	Waterval
waterway	water_point	af	Waterpunt
amenity	airport	aln	Airoport
amenity	arts_centre	aln	Art Qendra
amenity	atm	aln	Bankomat
amenity	auditorium	aln	sallë muzikë
amenity	bank	aln	Banka
amenity	bar	aln	Bar
amenity	bench	aln	Stol
amenity	bicycle_parking	aln	parkimi për biçikleta
amenity	bicycle_rental	aln	biçikleta me qira
amenity	brothel	aln	Shtëpi publike
amenity	bureau_de_change	aln	Byroja Ndryshimi de
amenity	bus_station	aln	Stacioni i Autobusave
amenity	cafe	aln	Kafene
amenity	car_rental	aln	marrje makinë me qira
amenity	car_sharing	aln	Car Sharing/Ndarja e Automobil
amenity	car_wash	aln	Autolarje
amenity	casino	aln	Kazino
amenity	cinema	aln	Kinema
amenity	clinic	aln	Klinikë
amenity	club	aln	Klub
amenity	college	aln	Kolegj
amenity	community_centre	aln	ndërtimin e qendrës së komunitetit
amenity	courthouse	aln	Ndërtesë e gjyqit
amenity	crematorium	aln	Krematorium
amenity	dentist	aln	Mjeku i dhomve
amenity	doctors	aln	Mjekët
amenity	dormitory	aln	Konvikt
amenity	drinking_water	aln	Pirja e ujit
amenity	driving_school	aln	Auto shkollë
amenity	embassy	aln	Ambasada
amenity	emergency_phone	aln	Urgjencës Phone
amenity	fast_food	aln	Ushqim I shpejtë
amenity	ferry_terminal	aln	Terminali i Trageteve
amenity	fire_hydrant	aln	Zjarri hydrant
amenity	fire_station	aln	Zjarrëfiksat
amenity	fountain	aln	Burim
amenity	fuel	aln	Lëndë djegëse
amenity	grave_yard	aln	Varrezë
amenity	gym	aln	Qendra Kalitje fizike / palestër
amenity	hall	aln	Sallë
amenity	health_centre	aln	Qendër e Shëndetësore
amenity	hospital	aln	Spital
amenity	hotel	aln	Hotel
amenity	hunting_stand	aln	Gjuetia Stand
amenity	ice_cream	aln	Akullore
amenity	kindergarten	aln	Kopshti i fëmijëve
amenity	library	aln	Bibliotekë
amenity	market	aln	Treg
amenity	marketplace	aln	Treg
amenity	mountain_rescue	aln	jashtëzakonshme mal shpëtimit
amenity	nightclub	aln	Night Club
amenity	nursery	aln	Fidanishte
amenity	nursing_home	aln	shtëpi pleqsh
amenity	office	aln	Zyrë
amenity	park	aln	Park
amenity	parking	aln	Parking
amenity	pharmacy	aln	Barnatore
amenity	place_of_worship	aln	Vendi i Adhurimi
amenity	police	aln	Polici
amenity	post_box	aln	Postbox
amenity	post_office	aln	Zyra Postare
amenity	preschool	aln	Para-shkollor
amenity	prison	aln	Burg
amenity	pub	aln	Pijetore
amenity	public_building	aln	Publike Ndërtimi
amenity	public_market	aln	Tregu Publik
amenity	reception_area	aln	Zona e pritjes
amenity	recycling	aln	Pika riciklimit
amenity	restaurant	aln	Restorant
amenity	retirement_home	aln	Daljes në pension Home
amenity	sauna	aln	Saunë
amenity	school	aln	Shkoll
amenity	shelter	aln	Strehim
amenity	shop	aln	Shitore
amenity	shopping	aln	Pazar
amenity	social_club	aln	klub shoqërore
amenity	studio	aln	Studio
amenity	supermarket	aln	Supermarket
amenity	taxi	aln	Taxi
amenity	telephone	aln	Telefon Publik
amenity	theatre	aln	Teatër
amenity	toilets	aln	Tualet
amenity	townhall	aln	Godina kryesore e qytetit
amenity	university	aln	Universitet
amenity	vending_machine	aln	Automat me monedhë
amenity	veterinary	aln	Kirurgji Veterinare
amenity	village_hall	aln	Fshati Hall
amenity	waste_basket	aln	Mbeturinat Shporta
amenity	wifi	aln	WiFi Hyrje
amenity	youth_centre	aln	Qendër Rinore
boundary	administrative	aln	Administrative kufitare
building	apartments	aln	Apartament Blloku
building	block	aln	Ndërtimi Blloku
building	bunker	aln	Bunker
building	chapel	aln	Kishëz
building	church	aln	Kishë
building	city_hall	aln	Bashkia
building	commercial	aln	Komercial Ndërtimi
building	dormitory	aln	Konvikt
building	entrance	aln	Ndërtimi Hyrja
building	faculty	aln	Fakulteti Ndërtimi
building	farm	aln	Farm Ndërtimi
building	flats	aln	Banesa
building	garage	aln	Garazh
building	hall	aln	Sallë
building	hospital	aln	Spitali Ndërtimi
building	hotel	aln	Hotel
building	house	aln	Shpi
building	industrial	aln	ndërtesë industriale
building	office	aln	Zyra për ndërtim
building	public	aln	Publike Ndërtimi
building	residential	aln	godinë banimi
building	retail	aln	Shitje me pakicë për ndërtim
building	school	aln	Shkolla Ndërtimi
building	shop	aln	Shitore
building	stadium	aln	Stadium
building	store	aln	Dyqan
building	terrace	aln	Tarracë
building	tower	aln	Kullë
building	train_station	aln	Stacion hekurudhor
building	university	aln	Universiteti për ndërtim
highway	bridleway	aln	Rruge pa osfallt
highway	bus_guideway	aln	Lane udhëzoi Autobuseve
highway	bus_stop	aln	Stacion i autobusave
highway	byway	aln	Rruge ansore
highway	construction	aln	Highway nën ndërtim
highway	cycleway	aln	Rruge per biciklla
highway	distance_marker	aln	Largësia Marker
highway	emergency_access_point	aln	Pike Hyrje e urgjencës
highway	footway	aln	Rrugë e kambsorve
highway	ford	aln	Fiord
highway	gate	aln	Portë
highway	living_street	aln	rrugës ku njerëzit jetojnë
highway	minor	aln	rrugë të vogla
highway	motorway	aln	Autostradë
highway	motorway_junction	aln	Kryqzim per rruge te motorrave
highway	motorway_link	aln	rrugë autostradë
highway	path	aln	Rrugë
highway	pedestrian	aln	Rruge per kambsore
highway	platform	aln	Platformë
highway	primary	aln	Rrugor primar
highway	primary_link	aln	Rruge kryesore
highway	raceway	aln	Gara rrugën automobilave
highway	residential	aln	Banimi
highway	road	aln	Rrugë
highway	secondary	aln	Rruge dytesore
highway	secondary_link	aln	Rruge dytesore
highway	service	aln	Rruge sherbimi
highway	services	aln	Autostradë Sherbime
highway	steps	aln	Hapat
highway	stile	aln	Hekur
highway	tertiary	aln	Rruge tericiere
highway	track	aln	Udhë
highway	trail	aln	Shteg
highway	trunk	aln	rrugën kryesore
highway	trunk_link	aln	rrugën kryesore
highway	unclassified	aln	Paklasifikuara Road
highway	unsurfaced	aln	Rrugë pa sipërfaqe
historic	archaeological_site	aln	Arkeologjik Faqes
historic	battlefield	aln	Fushë beteje
historic	boundary_stone	aln	Kufitare Stone
historic	building	aln	Ndërtesë
historic	castle	aln	Kala
historic	church	aln	Kisha
historic	house	aln	Shpi
historic	icon	aln	Ikonë
historic	manor	aln	Pronë e madhe
historic	memorial	aln	Përkujtim
historic	mine	aln	Imi
historic	monument	aln	Monument
historic	museum	aln	Muze
historic	ruins	aln	Gërmadhe
historic	tower	aln	Kullë
historic	wayside_cross	aln	Buzë rruge Kryqi
historic	wayside_shrine	aln	Buzë rruge tempullin
historic	wreck	aln	Mbytet
landuse	allotments	aln	Ndarje
landuse	basin	aln	Pellgut
landuse	brownfield	aln	Brownfield Toka
landuse	cemetery	aln	Varrezë
landuse	commercial	aln	Zona Tregtare
landuse	conservation	aln	Ruajtjen e
landuse	construction	aln	Ndërtim
landuse	farm	aln	Fermë
landuse	farmland	aln	Bujqësore
landuse	farmyard	aln	Oborr ferme
landuse	forest	aln	Pyll
landuse	grass	aln	Bar
landuse	greenfield	aln	Greenfield Toka
landuse	industrial	aln	Zona Industriale
landuse	landfill	aln	Groposje
landuse	meadow	aln	Livadh
landuse	military	aln	Zonë Ushtarake
landuse	mine	aln	Imi
landuse	mountain	aln	Mal
landuse	nature_reserve	aln	Natyra Rezervat
landuse	park	aln	Park
landuse	piste	aln	Piste
landuse	plaza	aln	Shesh publik
landuse	quarry	aln	Gurore
landuse	railway	aln	Hekurudhor
landuse	recreation_ground	aln	Zbavitje Ground
landuse	reservoir	aln	Rezervuar
landuse	residential	aln	Zonë Rezidenciale
landuse	retail	aln	Me pakicë
landuse	village_green	aln	Fshati Green
landuse	vineyard	aln	Vresht
landuse	wetland	aln	Ligatinore
landuse	wood	aln	Druri
leisure	beach_resort	aln	hoteli në plazh
leisure	common	aln	Toke e njejte
leisure	fishing	aln	Zone peshkimi
leisure	garden	aln	Kopsht
leisure	golf_course	aln	Kurs golfi
leisure	ice_rink	aln	Patinazh
leisure	marina	aln	Marine
leisure	miniature_golf	aln	Miniaturë Golf
leisure	nature_reserve	aln	Rezervat natyror
leisure	park	aln	Park
leisure	pitch	aln	Fushe e sporteve
leisure	playground	aln	Shesh lojnash
leisure	recreation_ground	aln	Veni per zbavitje
leisure	slipway	aln	Mol
leisure	sports_centre	aln	Qendër Sportive
leisure	stadium	aln	Stadium
leisure	swimming_pool	aln	Bazen
leisure	track	aln	traka e vrapimit
leisure	water_park	aln	Park uji
natural	bay	aln	Gji
natural	beach	aln	Pllazh
natural	cape	aln	Kep
natural	cave_entrance	aln	Shpella Hyrja
natural	channel	aln	Kanal
natural	cliff	aln	Shkamb
natural	coastline	aln	Vijë e bregdetit
natural	crater	aln	Krater
natural	feature	aln	Veçuni
natural	fell	aln	Moqal
natural	fjord	aln	Fiord
natural	geyser	aln	Gejzer
natural	glacier	aln	Akullnajë
natural	heath	aln	Shkurre
natural	hill	aln	Koder
natural	island	aln	Ishull
natural	land	aln	Tokë
natural	marsh	aln	Knete
natural	moor	aln	Knete
natural	mud	aln	Baltë
natural	peak	aln	Majë
natural	point	aln	Pike
natural	reef	aln	shkambinj nënujore
natural	ridge	aln	Kreshtë
natural	river	aln	Lum
natural	rock	aln	Gur
natural	scree	aln	Rrëpirë me gurë të rrzum
natural	scrub	aln	Kaçubë
natural	shoal	aln	Cekt
natural	spring	aln	Pranverë
natural	strait	aln	Ngushticë
natural	tree	aln	Pemë
natural	valley	aln	Lugaje
natural	volcano	aln	Vullkan
natural	water	aln	Ujë
natural	wetland	aln	Lagunat
natural	wetlands	aln	Lagunat
natural	wood	aln	Dru
place	airport	aln	Aeroport
place	city	aln	Qyteti
place	country	aln	Veni
place	county	aln	Qark
place	farm	aln	Ferma
place	hamlet	aln	Katundth
place	house	aln	Shtepi
place	houses	aln	Shtepi
place	island	aln	Ishull
place	islet	aln	Ishull
place	locality	aln	Lokalitet
place	moor	aln	Knete
place	municipality	aln	Komuna
place	postcode	aln	Post kodi
place	region	aln	Regjioni
place	sea	aln	Deti
place	state	aln	Shteti
place	subdivision	aln	Nenndamje
place	suburb	aln	Periferi
place	town	aln	Veni
place	unincorporated_area	aln	Zone e painkorpuruar
place	village	aln	Fshati
railway	abandoned	aln	Braktisur hekurudhave
railway	construction	aln	Hekurudhave në ndërtim
railway	disused	aln	Hekurudhave papërdorur
railway	disused_station	aln	Stacioni hekurudhor Historike
railway	funicular	aln	Me litar hekurudhave
railway	halt	aln	Trajnimi Stop
railway	historic_station	aln	Stacioni hekurudhor Historike
railway	junction	aln	Hekurudhave kryqëzim
railway	level_crossing	aln	Kalim në nivel
railway	light_rail	aln	hekurudhor Lehta
railway	monorail	aln	Hekurudhë me një shinë
railway	narrow_gauge	aln	Hekurudhave ngushtë matës
railway	platform	aln	Platforma e hekurudhave
railway	preserved	aln	Ruhet hekurudhave
railway	spur	aln	Hekurudhave nxisë
railway	station	aln	Stacion hekurudhor
railway	subway	aln	Stacioni i metrosë
railway	subway_entrance	aln	Metro Hyrja
railway	switch	aln	Hekurudhave Pikët
railway	tram	aln	Tramvajëve
railway	tram_stop	aln	Tramvaj Stop
railway	yard	aln	depo stacioni hekurudhor
shop	alcohol	aln	kiosk
shop	apparel	aln	Veshmbathje Shop
shop	art	aln	Shitore e kafshëve
shop	bakery	aln	Dyqan buke
shop	beauty	aln	Bukuri Shop
shop	beverages	aln	Pijet Shop
shop	bicycle	aln	Biciklete Shop
shop	books	aln	Librari
shop	butcher	aln	Kasap
shop	car	aln	Shitore e Kerreve
shop	car_dealer	aln	shitje makine
shop	car_parts	aln	pjesë makinash
shop	carpet	aln	dyqan qilim
shop	car_repair	aln	riparimin e makinave
shop	charity	aln	Bamirësi Shop
shop	chemist	aln	Farmacist
shop	clothes	aln	Shitore e Teshave
shop	computer	aln	Shitore e kompjuterave
shop	confectionery	aln	Shop pasticerie
shop	convenience	aln	Komoditet Shitore
shop	copyshop	aln	Copy Shop
shop	cosmetics	aln	Kozmetikë Shop
shop	department_store	aln	Departamenti Shitore
shop	discount	aln	artikuj zbritje dyqan
shop	doityourself	aln	Për ta bërë vetë
shop	drugstore	aln	Farmaci
shop	dry_cleaning	aln	Pastrimi kimik
shop	electronics	aln	Elektronikë Shop
shop	estate_agent	aln	agjent immobile
shop	farm	aln	fermë dyqan
shop	fashion	aln	Moda Shop
shop	fish	aln	Shitore e Peshqve
shop	florist	aln	Luleshitës
shop	food	aln	Shitore Ushqimore
shop	funeral_directors	aln	drejtor funeral
shop	furniture	aln	Mobilje
shop	gallery	aln	Galeri
shop	garden_centre	aln	Kopshti Qendra
shop	general	aln	Përgjithshëm Shitore
shop	gift	aln	Shitore e Dhuratave
shop	greengrocer	aln	Shitës frutash
shop	grocery	aln	Dyqan ushqimore
shop	hairdresser	aln	Floktar
shop	hardware	aln	dyqan mjet
shop	hifi	aln	dyqan hi-fi
shop	insurance	aln	Sigurim
shop	jewelry	aln	Bizhuteri Shop
shop	kiosk	aln	kiosk
shop	laundry	aln	Lavanderi
shop	mall	aln	Shëtitore
shop	market	aln	Treg
shop	mobile_phone	aln	Shop Mobile Phone
shop	motorcycle	aln	Shitore e Motorrave
shop	music	aln	dyqan muzikë
shop	newsagent	aln	Stendë gazetash
shop	optician	aln	Syzabërës
shop	organic	aln	Organike dyqan Ushqim
shop	outdoor	aln	dyqan në natyrë
shop	pet	aln	Shitore e kafshëve
shop	photo	aln	dyqan fotografik
shop	salon	aln	Sallon
shop	shoes	aln	dyqan këpucësh
shop	shopping_centre	aln	Qendra tregtare
shop	sports	aln	Sport Dyqani
shop	stationery	aln	dyqan shkrimi
shop	supermarket	aln	Supermarket
shop	toys	aln	Shitore e Lojnave
shop	travel_agency	aln	Agjenci Turistike
shop	video	aln	dyqan video
shop	wine	aln	kiosk
tourism	alpine_hut	aln	Vikendice
tourism	artwork	aln	Puna artistike
tourism	attraction	aln	Qef
tourism	bed_and_breakfast	aln	Bujtin dhe Mengjes
tourism	cabin	aln	Kabine
tourism	camp_site	aln	Ven per kamping
tourism	caravan_site	aln	Karavan i faqes
tourism	chalet	aln	Shpi
tourism	guest_house	aln	Shpi e musafirve
tourism	hostel	aln	Bujtine
tourism	hotel	aln	Hotel
tourism	information	aln	Informacione
tourism	lean_to	aln	Strehore
tourism	motel	aln	Motel
tourism	museum	aln	Muze
tourism	picnic_site	aln	Vend per Piknik
tourism	theme_park	aln	Park i lojnave
tourism	valley	aln	Lugine
tourism	viewpoint	aln	Pike shikimi
tourism	zoo	aln	Kopsht Zoologjik
waterway	boatyard	aln	Kantier detar
waterway	canal	aln	Kanal
waterway	connector	aln	lidhës lumë i lundrueshëm
waterway	dam	aln	Pendë
waterway	derelict_canal	aln	Kanali i braktisur
waterway	ditch	aln	Hendek
waterway	dock	aln	Dok
waterway	drain	aln	Kullon
waterway	lock	aln	Bllokoj
waterway	lock_gate	aln	Mbylle Porta
waterway	mineral_spring	aln	ujë mineral burim
waterway	mooring	aln	Ankorim
waterway	rapids	aln	Pragje të lumit
waterway	river	aln	Lum
waterway	riverbank	aln	banka e lumit
waterway	stream	aln	Lumë
waterway	wadi	aln	luginë
waterway	waterfall	aln	Ujëvarë
waterway	water_point	aln	Pika e ujit
waterway	weir	aln	Pendë
amenity	airport	ar	مطار
amenity	arts_centre	ar	مركز فني/ثقافي
amenity	atm	ar	صراف آلي
amenity	auditorium	ar	قاعة محاضرات
amenity	bank	ar	مصرف
amenity	bar	ar	حانة
amenity	bench	ar	مقعد
amenity	bicycle_parking	ar	موقف دراجات
amenity	bicycle_rental	ar	تأجير دراجة
amenity	brothel	ar	بيت دعارة
amenity	bureau_de_change	ar	مكتب صرافة
amenity	bus_station	ar	محطة حافلات
amenity	cafe	ar	مقهى
amenity	car_rental	ar	تأجير سيارات
amenity	car_sharing	ar	مشاركة سيارات
amenity	car_wash	ar	غسيل سيارات
amenity	casino	ar	نادي قمار
amenity	cinema	ar	سينما
amenity	clinic	ar	عيادة
amenity	club	ar	نادي
amenity	college	ar	كلّية
amenity	community_centre	ar	مركز اجتماع
amenity	courthouse	ar	محكمة
amenity	crematorium	ar	محرقة جثث
amenity	dentist	ar	طبيب أسنان
amenity	doctors	ar	أطباء
amenity	dormitory	ar	عنبر نوم
amenity	drinking_water	ar	مياه عذبة
amenity	driving_school	ar	مدرسة تعليم قيادة
amenity	embassy	ar	سفارة
amenity	emergency_phone	ar	هاتف طوارئ
amenity	fast_food	ar	وجبات سريعة
amenity	ferry_terminal	ar	مرسى عبّارة
amenity	fire_hydrant	ar	مواد مكافحة حرائق
amenity	fire_station	ar	فوج إطفاء
amenity	fountain	ar	نافورة
amenity	fuel	ar	وقود
amenity	grave_yard	ar	مقبرة
amenity	gym	ar	مركز للرشاقة/الرياضة
amenity	hall	ar	قاعة
amenity	health_centre	ar	مركز صحي
amenity	hospital	ar	مستشفى
amenity	hotel	ar	فندق
amenity	hunting_stand	ar	مربط للصيد
amenity	ice_cream	ar	مثلجات
amenity	kindergarten	ar	حضانة أطفال
amenity	library	ar	مكتبة
amenity	market	ar	سوق
amenity	marketplace	ar	سوق
amenity	mountain_rescue	ar	للإنقاذ في الجبل
amenity	nightclub	ar	نادي ليلي
amenity	nursery	ar	رعاية تمريضية
amenity	nursing_home	ar	دار رعاية مسنين/معاقين
amenity	office	ar	مكتب
amenity	park	ar	منتزه
amenity	parking	ar	موقف سيارات
amenity	pharmacy	ar	صيدلية
amenity	place_of_worship	ar	معبد
amenity	police	ar	شرطة
amenity	post_box	ar	صندوق بريد
amenity	post_office	ar	مكتب بريد
amenity	preschool	ar	روضة أطفال
amenity	prison	ar	سجن
amenity	pub	ar	حانة
amenity	public_building	ar	مبنى عام
amenity	public_market	ar	سوق عمومي
amenity	reception_area	ar	منطقة استقبال
amenity	recycling	ar	نقطة إعادة تصنيع
amenity	restaurant	ar	مطعم
amenity	retirement_home	ar	بيت مسنين
amenity	sauna	ar	حمّام بخاري حار
amenity	school	ar	مدرسة
amenity	shelter	ar	ملجأ
amenity	shop	ar	متجر/دكان/حانوت
amenity	shopping	ar	التسوق
amenity	social_club	ar	نادي اجتماعي
amenity	studio	ar	ستوديو
amenity	supermarket	ar	سوبرماركت
amenity	taxi	ar	سيارة أجرة
amenity	telephone	ar	هاتف عمومي
amenity	theatre	ar	مسرح
amenity	toilets	ar	مراحيض
amenity	townhall	ar	مبنى بلدية
amenity	university	ar	جامعة
amenity	vending_machine	ar	آلة بيع
amenity	veterinary	ar	جراحة بيطرية
amenity	village_hall	ar	مبنى/دار القرية
amenity	waste_basket	ar	سلة نفايات
amenity	wifi	ar	نقطة اتصال لاسلكية واي فاي
amenity	youth_centre	ar	مركز نشاطات للشباب
boundary	administrative	ar	حدود إدارية
building	apartments	ar	مجموعة شقق
building	block	ar	مجمع مباني
building	bunker	ar	ملجأ محصن
building	chapel	ar	معبد/مصلى
building	church	ar	كنيسة
building	city_hall	ar	دار/قاعة البلدية
building	commercial	ar	مبنى تجاري
building	dormitory	ar	عنبر نوم
building	entrance	ar	مدخل مبنى
building	faculty	ar	مبنى كلية
building	farm	ar	مبنى مزرعة
building	flats	ar	شقق
building	garage	ar	مرآب
building	hall	ar	قاعة
building	hospital	ar	مبنى مستشفى
building	hotel	ar	فندق
building	house	ar	منزل
building	industrial	ar	مبنى صناعي
building	office	ar	مبنى مكتب
building	public	ar	مبنى عام
building	residential	ar	مبنى سكني
building	retail	ar	مبنى بيع بالمفرق
building	school	ar	مبنى مدرسة
building	shop	ar	متجر
building	stadium	ar	مدرج ألعاب رياضية
building	store	ar	مخزن
building	terrace	ar	صف منازل
building	tower	ar	برج
building	train_station	ar	محطة قطار
building	university	ar	مبنى جامعة
highway	bridleway	ar	مسلك خيول
highway	bus_guideway	ar	مسار خاص للحافلات
highway	bus_stop	ar	موقف حافلات
highway	byway	ar	طريق فرعي
highway	construction	ar	طريق سريع قيد الإنشاء
highway	cycleway	ar	مسار دراجات
highway	distance_marker	ar	إشارة مسافة
highway	emergency_access_point	ar	نقطة دخول طوارئ
highway	footway	ar	ممر للمشاة
highway	ford	ar	مخاضة
highway	gate	ar	بوّابة
highway	living_street	ar	شارع سكني
highway	minor	ar	طريق غير هام
highway	motorway	ar	طريق سريع
highway	motorway_junction	ar	تقاطع طرقات سريعة
highway	motorway_link	ar	طريق سريع
highway	path	ar	مسار
highway	pedestrian	ar	طريق للمشاة
highway	platform	ar	منصة
highway	primary	ar	طريق أولي
highway	primary_link	ar	طريق أولي
highway	raceway	ar	حلبة سباق
highway	residential	ar	طريق سكني
highway	road	ar	طريق
highway	secondary	ar	طريق ثانوي
highway	secondary_link	ar	طريق ثانوي
highway	service	ar	طريق خدمة
highway	services	ar	خدمات الطرق السريعة
highway	steps	ar	درج
highway	stile	ar	مرقى لعبور جدار
highway	tertiary	ar	طريق فرعي
highway	track	ar	مسار
highway	trail	ar	درب
highway	trunk	ar	طريق رئيسي
highway	trunk_link	ar	طريق رئيسي
highway	unclassified	ar	طريق غير مصنّف
highway	unsurfaced	ar	طريق غير معبد
historic	archaeological_site	ar	موقع أثري
historic	battlefield	ar	ساحة معركة
historic	boundary_stone	ar	حجر/صخرة تعليم حدود
historic	building	ar	مبنى
historic	castle	ar	قلعة
historic	church	ar	كنيسة
historic	house	ar	منزل
historic	icon	ar	أيقونة
historic	manor	ar	عزبة
historic	memorial	ar	نصب تذكاري
historic	mine	ar	منجم
historic	monument	ar	ضريح
historic	museum	ar	متحف
historic	ruins	ar	أطلال
historic	tower	ar	برج
historic	wayside_cross	ar	صليب تذكاري
historic	wayside_shrine	ar	مزار جانب طريق
historic	wreck	ar	حطام
landuse	allotments	ar	حصص سكنية
landuse	basin	ar	حوض
landuse	brownfield	ar	أرض مخلفات
landuse	cemetery	ar	مقبرة
landuse	commercial	ar	منطقة تجارية
landuse	conservation	ar	محمية طبيعية
landuse	construction	ar	ورشة بناء
landuse	farm	ar	مزرعة
landuse	farmland	ar	أرض زراعية
landuse	farmyard	ar	فناء مزرعة
landuse	forest	ar	غابة
landuse	grass	ar	عشب
landuse	greenfield	ar	حقول خضراء
landuse	industrial	ar	منطقة صناعية
landuse	landfill	ar	مكب نفايات
landuse	meadow	ar	مرج
landuse	military	ar	منطقة عسكرية
landuse	mine	ar	منجم
landuse	mountain	ar	جبل
landuse	nature_reserve	ar	محمية طبيعية
landuse	park	ar	منتزه
landuse	piste	ar	منطقة تزحلق
landuse	plaza	ar	ساحة
landuse	quarry	ar	كسّارة
landuse	railway	ar	سكة حديدية
landuse	recreation_ground	ar	ميدان ألعاب
landuse	reservoir	ar	خزان
landuse	residential	ar	منطقة سكنية
landuse	retail	ar	بيع بالمفرق
landuse	village_green	ar	أرض خضراء
landuse	vineyard	ar	كرم عنب
landuse	wetland	ar	أرض رطبة
landuse	wood	ar	حرج
leisure	beach_resort	ar	شاطئ منتجع
leisure	common	ar	أرض مشاع
leisure	fishing	ar	منطقة صيد سمك
leisure	garden	ar	حديقة
leisure	golf_course	ar	ملعب غولف
leisure	ice_rink	ar	حلبة تزلج على الجليد
leisure	marina	ar	مارينا
leisure	miniature_golf	ar	جولف مصغر
leisure	nature_reserve	ar	محمية طبيعية
leisure	park	ar	منتزه
leisure	pitch	ar	ملعب رياضي
leisure	playground	ar	ملعب
leisure	recreation_ground	ar	ميدان ألعاب
leisure	slipway	ar	مزلقة
leisure	sports_centre	ar	مركز رياضي
leisure	stadium	ar	مدرج ألعاب رياضية
leisure	swimming_pool	ar	بركة سباحة
leisure	track	ar	مضمار سباق
leisure	water_park	ar	منتزه ألعاب مائية
natural	bay	ar	خليج
natural	beach	ar	شاطئ
natural	cape	ar	رأس (أرض داخلة في البحر(
natural	cave_entrance	ar	مدخل كهف
natural	channel	ar	قناة
natural	cliff	ar	جرف
natural	coastline	ar	خط ساحلي
natural	crater	ar	فوهة بركان
natural	feature	ar	ميزة
natural	fell	ar	منحدر
natural	fjord	ar	مضيق بحري
natural	geyser	ar	نافورة ماء حار
natural	glacier	ar	نهر/بحر جليدي
natural	heath	ar	أرض بور
natural	hill	ar	تلة
natural	island	ar	جزيرة
natural	land	ar	أرض
natural	marsh	ar	سبخة
natural	moor	ar	أرض جرداء
natural	mud	ar	وحل
natural	peak	ar	ذروة
natural	point	ar	نقطة
natural	reef	ar	سلسلة صخور قرب سطح الماء
natural	ridge	ar	أرض مرتفعة
natural	river	ar	نهر
natural	rock	ar	صخرة
natural	scree	ar	أرض حصاة
natural	scrub	ar	أشجار منخفضة
natural	shoal	ar	مياه ضحلة
natural	spring	ar	نبع
natural	strait	ar	مضيق جبلي
natural	tree	ar	شجرة
natural	valley	ar	وادي
natural	volcano	ar	بركان
natural	water	ar	ماء
natural	wetland	ar	أرض رطبة
natural	wetlands	ar	أراضي رطبة
natural	wood	ar	حرج
place	airport	ar	مطار
place	city	ar	مدينة
place	country	ar	دولة
place	county	ar	مقاطعة
place	farm	ar	مزرعة
place	hamlet	ar	كفر
place	house	ar	منزل
place	houses	ar	منازل
place	island	ar	جزيرة
place	islet	ar	جزيرة صغيرة
place	locality	ar	محلة
place	moor	ar	أرض جرداء
place	municipality	ar	بلدية
place	postcode	ar	الرمز البريدي
place	region	ar	منطقة
place	sea	ar	بحر
place	state	ar	ولاية
place	subdivision	ar	التقسيم الفرعي
place	suburb	ar	ضاحية
place	town	ar	بلدة
place	unincorporated_area	ar	منطقة فردية
place	village	ar	قرية
railway	abandoned	ar	سكة حديد مهجورة
railway	construction	ar	سكة حديدية تحت الإنشاء
railway	disused	ar	سكة حديد مهجورة
railway	disused_station	ar	محطة سكة حديد مهجورة
railway	funicular	ar	سكة حديدية معلقة
railway	halt	ar	موقف قطار
railway	historic_station	ar	محطة سكة حديد تاريخية
railway	junction	ar	تقاطع سكك حديدية
railway	level_crossing	ar	تقاطع سكك حديدية
railway	light_rail	ar	قطار خفيف
railway	monorail	ar	قطار ذات سكة حديد واحدة
railway	narrow_gauge	ar	سكة حديد ضيقة
railway	platform	ar	رصيف محطة قطار
railway	preserved	ar	سكة حديدية تراثية
railway	spur	ar	خط تفرع سكة حديدية
railway	station	ar	محطة قطار
railway	subway	ar	محطة مترو الأنفاق
railway	subway_entrance	ar	مدخل مترو
railway	switch	ar	مبدل السكة الحديدية
railway	tram	ar	سكة ترام
railway	tram_stop	ar	موقف ترام
railway	yard	ar	فناء سكة حديد
shop	alcohol	ar	متجر كحول للبيع الخارجي
shop	apparel	ar	متجر ملابس
shop	art	ar	متجر فن
shop	bakery	ar	مخبز
shop	beauty	ar	صالون تجميل
shop	beverages	ar	متجر مشروبات
shop	bicycle	ar	متجر دراجات
shop	books	ar	متجر كتب
shop	butcher	ar	جزار
shop	car	ar	متجر سيارات
shop	car_dealer	ar	تاجر سيارات
shop	car_parts	ar	قطع غيار سيارات
shop	carpet	ar	معرض سجاد
shop	car_repair	ar	مرآب سيارات
shop	charity	ar	متجر جمعية خيرية
shop	chemist	ar	صيدلي
shop	clothes	ar	متجر ألبسة
shop	computer	ar	متجر كمبيوتر
shop	confectionery	ar	متجر الحلويات
shop	convenience	ar	متجر للأغراض اليومية
shop	copyshop	ar	محل تصوير مستندات
shop	cosmetics	ar	بائع مستحضرات تجميل
shop	department_store	ar	متجر متعدد الأقسام
shop	discount	ar	محل رخصة
shop	doityourself	ar	براعة منزلية
shop	drugstore	ar	صيدلية
shop	dry_cleaning	ar	تنظيف جاف
shop	electronics	ar	متجر إلكترونيات
shop	estate_agent	ar	وكيل عقاري
shop	farm	ar	متجر منتوجات زراعية
shop	fashion	ar	متجر أزياء
shop	fish	ar	متجر أسماك
shop	florist	ar	بائع زهور
shop	food	ar	دكان مأكولات
shop	funeral_directors	ar	وكلاء ترتيبات جنازة
shop	furniture	ar	أثاث
shop	gallery	ar	معرض
shop	garden_centre	ar	متجر للسلع الزراعية
shop	general	ar	متجر عام
shop	gift	ar	متجر هدايا
shop	greengrocer	ar	محل خضروات
shop	grocery	ar	بقالة
shop	hairdresser	ar	مزين/مصفف شعر
shop	hardware	ar	متجر عتاد
shop	hifi	ar	متجر هاي فاي
shop	insurance	ar	بوليصات تأمين
shop	jewelry	ar	متجر مجوهرات
shop	kiosk	ar	كشك
shop	laundry	ar	مصبغة
shop	mall	ar	مركز تسوق
shop	market	ar	سوق
shop	mobile_phone	ar	متجر هواتف محمولة
shop	motorcycle	ar	متجر دراجات نارية
shop	music	ar	متجر موسيقى
shop	newsagent	ar	وكالة أنباء
shop	optician	ar	نظاراتي
shop	organic	ar	متجر أغذية عضوية
shop	outdoor	ar	متجر للنشاطات الخارجية
shop	pet	ar	متجر حيوانات أليفة
shop	photo	ar	متجر صور
shop	salon	ar	صالون
shop	shoes	ar	متجر أحذية
shop	shopping_centre	ar	مركز التسوق
shop	sports	ar	متجر رياضة
shop	stationery	ar	محل قرطاسية
shop	supermarket	ar	سوبرماركت
shop	toys	ar	متجر ألعاب
shop	travel_agency	ar	وكالة سفر
shop	video	ar	متجر فيديو
shop	wine	ar	متجر نبيذ للبيع الخارجي
tourism	alpine_hut	ar	كوخ جبلي
tourism	artwork	ar	عمل فني
tourism	attraction	ar	معلم سياحي
tourism	bed_and_breakfast	ar	سرير وفطار
tourism	cabin	ar	حُجرة أو مقصورة
tourism	camp_site	ar	موقع تخييم
tourism	caravan_site	ar	موقع قافلة
tourism	chalet	ar	شاليه
tourism	guest_house	ar	بيت ضيافة
tourism	hostel	ar	سكن شباب
tourism	hotel	ar	فندق
tourism	information	ar	معلومات
tourism	lean_to	ar	كوخ منحدر
tourism	motel	ar	نُزل
tourism	museum	ar	متحف
tourism	picnic_site	ar	موقع بيك نيك
tourism	theme_park	ar	حديقة ملاهي
tourism	valley	ar	وادي
tourism	viewpoint	ar	موقع كاشف
tourism	zoo	ar	حديقة حيوانات
waterway	boatyard	ar	حوض سفن
waterway	canal	ar	قناة
waterway	connector	ar	قناة مائية
waterway	dam	ar	سدّ
waterway	derelict_canal	ar	قناة مهجورة
waterway	ditch	ar	خندق
waterway	dock	ar	مرسى
waterway	drain	ar	مسرب
waterway	lock	ar	قفل
waterway	lock_gate	ar	هويس
waterway	mineral_spring	ar	نبع مياه معدنية
waterway	mooring	ar	مرسى
waterway	rapids	ar	منحدرات نهرية
waterway	river	ar	نهر
waterway	riverbank	ar	ضفة نهر
waterway	stream	ar	جدول
waterway	wadi	ar	وادي
waterway	waterfall	ar	شلال
waterway	water_point	ar	نقطة ماء شفة
waterway	weir	ar	هدار (سدّ منخفض)
amenity	airport	arz	مطار
amenity	arts_centre	arz	مركز فني/ثقافي
amenity	atm	arz	صراف آلي
amenity	auditorium	arz	قاعه محاضرات
amenity	bank	arz	مصرف
amenity	bar	arz	حانة
amenity	bench	arz	مقعد
amenity	bicycle_parking	arz	موقف دراجات
amenity	bicycle_rental	arz	تأجير دراجة
amenity	brothel	arz	بيت دعارة
amenity	bureau_de_change	arz	مكتب صرافة
amenity	bus_station	arz	محطه حافلات
amenity	cafe	arz	مقهى
amenity	car_rental	arz	تأجير سيارات
amenity	car_sharing	arz	مشاركه سيارات
amenity	car_wash	arz	غسيل سيارات
amenity	casino	arz	نادى قمار
amenity	cinema	arz	سينما
amenity	clinic	arz	عيادة
amenity	club	arz	نادي
amenity	college	arz	كلّية
amenity	community_centre	arz	مركز اجتماع
amenity	courthouse	arz	محكمة
amenity	crematorium	arz	محرقه جثث
amenity	dentist	arz	طبيب أسنان
amenity	doctors	arz	أطباء
amenity	dormitory	arz	عنبر نوم
amenity	drinking_water	arz	مياه عذبة
amenity	driving_school	arz	مدرسه تعليم قيادة
amenity	embassy	arz	سفارة
amenity	emergency_phone	arz	هاتف طوارئ
amenity	fast_food	arz	وجبات سريعة
amenity	ferry_terminal	arz	مرسى عبّارة
amenity	fire_hydrant	arz	مواد مكافحه حرائق
amenity	fire_station	arz	فوج إطفاء
amenity	fountain	arz	نافورة
amenity	fuel	arz	وقود
amenity	grave_yard	arz	مقبرة
amenity	gym	arz	مركز للرشاقة/الرياضة
amenity	hall	arz	قاعة
amenity	health_centre	arz	مركز صحي
amenity	hospital	arz	مستشفى
amenity	hotel	arz	فندق
amenity	hunting_stand	arz	مربط للصيد
amenity	ice_cream	arz	مثلجات
amenity	kindergarten	arz	حضانه أطفال
amenity	library	arz	مكتبة
amenity	market	arz	سوق
amenity	marketplace	arz	سوق
amenity	mountain_rescue	arz	للإنقاذ فى الجبل
amenity	nightclub	arz	نادى ليلي
amenity	nursery	arz	رعايه تمريضية
amenity	nursing_home	arz	دار رعايه مسنين/معاقين
amenity	office	arz	مكتب
amenity	park	arz	منتزه
amenity	parking	arz	موقف سيارات
amenity	pharmacy	arz	صيدلية
amenity	place_of_worship	arz	معبد
amenity	police	arz	شرطة
amenity	post_box	arz	صندوق بريد
amenity	post_office	arz	مكتب بريد
amenity	preschool	arz	روضه أطفال
amenity	prison	arz	سجن
amenity	pub	arz	حانة
amenity	public_building	arz	مبنى عام
amenity	public_market	arz	سوق عمومي
amenity	reception_area	arz	منطقه استقبال
amenity	recycling	arz	نقطه إعاده تصنيع
amenity	restaurant	arz	مطعم
amenity	sauna	arz	حمّام بخارى حار
amenity	school	arz	مدرسة
amenity	shelter	arz	ملجأ
amenity	shop	arz	متجر/دكان/حانوت
amenity	shopping	arz	التسوق
amenity	social_club	arz	نادى اجتماعي
amenity	studio	arz	ستوديو
amenity	supermarket	arz	سوبرماركت
amenity	taxi	arz	سياره أجرة
amenity	telephone	arz	هاتف عمومي
amenity	theatre	arz	مسرح
amenity	toilets	arz	مراحيض
amenity	townhall	arz	مبنى بلدية
amenity	university	arz	جامعة
amenity	vending_machine	arz	آله بيع
amenity	veterinary	arz	جراحه بيطرية
amenity	waste_basket	arz	سله نفايات
amenity	wifi	arz	نقطه اتصال لاسلكيه واى فاي
amenity	youth_centre	arz	مركز نشاطات للشباب
boundary	administrative	arz	حدود إدارية
building	apartments	arz	مجموعه شقق
building	block	arz	مجمع مباني
building	bunker	arz	ملجأ محصن
building	chapel	arz	معبد/مصلى
building	church	arz	كنيسة
building	city_hall	arz	دار/قاعه البلدية
building	commercial	arz	مبنى تجاري
building	dormitory	arz	عنبر نوم
building	entrance	arz	مدخل مبنى
building	faculty	arz	مبنى كلية
building	farm	arz	مبنى مزرعة
building	flats	arz	شقق
building	garage	arz	مرآب
building	hall	arz	قاعة
building	hospital	arz	مبنى مستشفى
building	hotel	arz	فندق
building	house	arz	منزل
building	industrial	arz	مبنى صناعي
building	office	arz	مبنى مكتب
building	public	arz	مبنى عام
building	residential	arz	مبنى سكني
building	school	arz	مبنى مدرسة
building	shop	arz	متجر
building	stadium	arz	مدرج ألعاب رياضية
building	store	arz	مخزن
building	terrace	arz	صف منازل
building	tower	arz	برج
building	train_station	arz	محطه قطار
building	university	arz	مبنى جامعة
highway	bridleway	arz	مسلك خيول
highway	bus_stop	arz	موقف نزول/صعود من/إلى حافلات
highway	byway	arz	طريق فرعي
highway	construction	arz	طريق سريع قيد الإنشاء
highway	cycleway	arz	مسار دراجات
highway	distance_marker	arz	إشاره مسافة
highway	emergency_access_point	arz	نقطه دخول طوارئ
highway	footway	arz	ممر للمشاة
highway	gate	arz	بوّابة
highway	living_street	arz	شارع سكني
highway	minor	arz	طريق غير هام
highway	motorway	arz	طريق سريع
highway	motorway_junction	arz	تقاطع طرقات سريعة
highway	motorway_link	arz	طريق سريع
highway	path	arz	مسار
highway	pedestrian	arz	شارع أولوى للمشاة
highway	platform	arz	منصة
highway	primary	arz	طريق أولي
highway	primary_link	arz	طريق أولي
highway	raceway	arz	حلبه سباق
highway	residential	arz	طريق سكني
highway	road	arz	طريق
highway	secondary	arz	طريق ثانوي
highway	secondary_link	arz	طريق ثانوي
highway	service	arz	طريق خدمة
highway	services	arz	خدمات الطرق السريعة
highway	steps	arz	درج
highway	tertiary	arz	طريق فرعي
highway	track	arz	مسار
highway	trunk	arz	طريق رئيسي
highway	trunk_link	arz	طريق رئيسي
highway	unclassified	arz	طريق غير مصنّف
highway	unsurfaced	arz	طريق غير معبد
historic	archaeological_site	arz	موقع أثري
historic	battlefield	arz	ساحه معركة
historic	boundary_stone	arz	حجر/صخره تعليم حدود
historic	building	arz	مبنى
historic	castle	arz	قلعة
historic	church	arz	كنيسة
historic	house	arz	منزل
historic	icon	arz	أيقونة
historic	manor	arz	عزبة
historic	memorial	arz	نصب تذكاري
historic	mine	arz	منجم
historic	monument	arz	ضريح
historic	museum	arz	متحف
historic	ruins	arz	أطلال
historic	tower	arz	برج
historic	wayside_shrine	arz	مزار جانب طريق
historic	wreck	arz	حطام
landuse	allotments	arz	حصص سكنية
landuse	basin	arz	حوض
landuse	cemetery	arz	مقبرة
landuse	commercial	arz	منطقه تجارية
landuse	construction	arz	ورشه بناء
landuse	farm	arz	مزرعة
landuse	farmland	arz	أرض زراعية
landuse	farmyard	arz	فناء مزرعة
landuse	forest	arz	غابة
landuse	grass	arz	عشب
landuse	industrial	arz	منطقه صناعية
landuse	landfill	arz	مكب نفايات
landuse	meadow	arz	مرج
landuse	military	arz	منطقه عسكرية
landuse	mine	arz	منجم
landuse	mountain	arz	جبل
landuse	nature_reserve	arz	محميه طبيعية
landuse	park	arz	منتزه
landuse	plaza	arz	ساحة
landuse	quarry	arz	كسّارة
landuse	railway	arz	سكه حديدية
landuse	recreation_ground	arz	ميدان ألعاب
landuse	reservoir	arz	خزان
landuse	residential	arz	منطقه سكنية
landuse	retail	arz	بيع بالمفرق
landuse	vineyard	arz	كرم عنب
landuse	wetland	arz	أرض رطبة
landuse	wood	arz	حرج
leisure	beach_resort	arz	شاطئ منتجع
leisure	common	arz	أرض مشاع
leisure	fishing	arz	منطقه صيد سمك
leisure	garden	arz	حديقة
leisure	golf_course	arz	ملعب غولف
leisure	ice_rink	arz	حلبه تزلج على الجليد
leisure	marina	arz	مارينا
leisure	miniature_golf	arz	جولف مصغر
leisure	nature_reserve	arz	محميه طبيعية
leisure	park	arz	منتزه
leisure	pitch	arz	ملعب رياضي
leisure	playground	arz	ملعب
leisure	recreation_ground	arz	ميدان ألعاب
leisure	slipway	arz	مزلقة
leisure	sports_centre	arz	مركز رياضي
leisure	stadium	arz	مدرج ألعاب رياضية
leisure	swimming_pool	arz	بركه سباحة
leisure	track	arz	مضمار سباق
leisure	water_park	arz	منتزه ألعاب مائية
natural	bay	arz	خليج
natural	beach	arz	شاطئ
natural	cape	arz	رأس (أرض داخله فى البحر(
natural	cave_entrance	arz	مدخل كهف
natural	channel	arz	قناة
natural	cliff	arz	جرف
natural	coastline	arz	خط ساحلي
natural	crater	arz	فوهه بركان
natural	feature	arz	ميزة
natural	fell	arz	منحدر
natural	fjord	arz	مضيق بحري
natural	geyser	arz	نافوره ماء حار
natural	glacier	arz	نهر/بحر جليدي
natural	heath	arz	أرض بور
natural	hill	arz	تلة
natural	island	arz	جزيرة
natural	land	arz	أرض
natural	moor	arz	أرض جرداء
natural	mud	arz	وحل
natural	peak	arz	ذروة
natural	point	arz	نقطة
natural	reef	arz	سلسله صخور قرب سطح الماء
natural	river	arz	نهر
natural	rock	arz	صخرة
natural	scree	arz	أرض حصاة
natural	scrub	arz	أشجار منخفضة
natural	shoal	arz	مياه ضحلة
natural	spring	arz	نبع
natural	strait	arz	مضيق جبلي
natural	tree	arz	شجرة
natural	valley	arz	وادي
natural	volcano	arz	بركان
natural	water	arz	ماء
natural	wetland	arz	أرض رطبة
natural	wetlands	arz	أراضى رطبة
natural	wood	arz	حرج
place	airport	arz	مطار
place	city	arz	مدينة
place	country	arz	دولة
place	county	arz	مقاطعة
place	farm	arz	مزرعة
place	hamlet	arz	كفر
place	house	arz	منزل
place	houses	arz	منازل
place	island	arz	جزيرة
place	islet	arz	جزيره صغيرة
place	locality	arz	محلة
place	moor	arz	أرض جرداء
place	municipality	arz	بلدية
place	postcode	arz	الرمز البريدي
place	region	arz	منطقة
place	sea	arz	بحر
place	state	arz	ولاية
place	subdivision	arz	التقسيم الفرعي
place	suburb	arz	ضاحية
place	town	arz	بلدة
place	village	arz	قرية
railway	abandoned	arz	سكه حديد مهجورة
railway	construction	arz	سكه حديديه تحت الإنشاء
railway	disused	arz	سكه حديد مهجورة
railway	disused_station	arz	محطه سكه حديد مهجورة
railway	halt	arz	موقف قطار
railway	historic_station	arz	محطه سكه حديد تاريخية
railway	junction	arz	تقاطع سكك حديدية
railway	level_crossing	arz	تقاطع سكك حديدية
railway	monorail	arz	قطار ذات سكه حديد واحدة
railway	platform	arz	رصيف محطه قطار
railway	station	arz	محطه قطار
railway	subway	arz	محطه مترو الأنفاق
railway	subway_entrance	arz	مدخل مترو
railway	tram_stop	arz	موقف ترام
railway	yard	arz	فناء سكه حديد
shop	apparel	arz	متجر ملابس
shop	art	arz	متجر فن
shop	bakery	arz	مخبز
shop	beauty	arz	صالون تجميل
shop	beverages	arz	متجر مشروبات
shop	bicycle	arz	متجر دراجات
shop	books	arz	متجر كتب
shop	butcher	arz	جزار
shop	car	arz	متجر سيارات
shop	car_dealer	arz	تاجر سيارات
shop	car_parts	arz	قطع غيار سيارات
shop	carpet	arz	معرض سجاد
shop	car_repair	arz	مرآب سيارات
shop	charity	arz	متجر جمعيه خيرية
shop	chemist	arz	صيدلي
shop	clothes	arz	متجر ألبسة
shop	computer	arz	متجر كمبيوتر
shop	confectionery	arz	متجر الحلويات
shop	convenience	arz	متجر للأغراض اليومية
shop	cosmetics	arz	بائع مستحضرات تجميل
shop	department_store	arz	متجر متعدد الأقسام
shop	doityourself	arz	براعه منزلية
shop	drugstore	arz	صيدلية
shop	dry_cleaning	arz	تنظيف جاف
shop	electronics	arz	متجر إلكترونيات
shop	estate_agent	arz	وكيل عقاري
shop	farm	arz	متجر منتوجات زراعية
shop	fashion	arz	متجر أزياء
shop	fish	arz	متجر أسماك
shop	florist	arz	بائع زهور
shop	food	arz	دكان مأكولات
shop	funeral_directors	arz	وكلاء ترتيبات جنازة
shop	furniture	arz	أثاث
shop	gallery	arz	معرض
shop	general	arz	متجر عام
shop	gift	arz	متجر هدايا
shop	grocery	arz	بقالة
shop	hairdresser	arz	مزين/مصفف شعر
shop	hardware	arz	متجر عتاد
shop	insurance	arz	بوليسات تأمين
shop	jewelry	arz	متجر مجوهرات
shop	kiosk	arz	كشك
shop	laundry	arz	مصبغة
shop	mall	arz	مركز تسوق
shop	market	arz	سوق
shop	mobile_phone	arz	متجر هواتف محمولة
shop	motorcycle	arz	متجر دراجات نارية
shop	music	arz	متجر موسيقى
shop	newsagent	arz	وكاله أنباء
shop	optician	arz	نظاراتي
shop	organic	arz	متجر أغذيه عضوية
shop	outdoor	arz	متجر للنشاطات الخارجية
shop	pet	arz	متجر حيوانات أليفة
shop	photo	arz	متجر صور
shop	salon	arz	صالون
shop	shoes	arz	متجر أحذية
shop	shopping_centre	arz	مركز التسوق
shop	sports	arz	متجر رياضة
shop	stationery	arz	محل قرطاسية
shop	supermarket	arz	سوبرماركت
shop	toys	arz	متجر ألعاب
shop	travel_agency	arz	وكاله سفر
shop	video	arz	متجر فيديو
tourism	alpine_hut	arz	كوخ جبلي
tourism	artwork	arz	عمل فني
tourism	attraction	arz	معلم سياحي
tourism	bed_and_breakfast	arz	سرير وفطار
tourism	cabin	arz	حُجره أو مقصورة
tourism	camp_site	arz	موقع تخييم
tourism	caravan_site	arz	موقع قافلة
tourism	chalet	arz	شاليه
tourism	guest_house	arz	بيت ضيافة
tourism	hostel	arz	سكن شباب
tourism	hotel	arz	فندق
tourism	information	arz	معلومات
tourism	lean_to	arz	كوخ منحدر
tourism	motel	arz	نُزل
tourism	museum	arz	متحف
tourism	picnic_site	arz	موقع بيك نيك
tourism	theme_park	arz	حديقه ملاهي
tourism	valley	arz	وادي
tourism	viewpoint	arz	موقع كاشف
tourism	zoo	arz	حديقه حيوانات
waterway	boatyard	arz	حوض سفن
waterway	canal	arz	قناة
waterway	dam	arz	سدّ
waterway	ditch	arz	خندق
waterway	dock	arz	مرسى
waterway	drain	arz	مسرب
waterway	lock	arz	قفل
waterway	mineral_spring	arz	نبع مياه معدنية
waterway	rapids	arz	منحدرات نهرية
waterway	river	arz	نهر
waterway	riverbank	arz	ضفه نهر
waterway	stream	arz	جدول
waterway	wadi	arz	وادي
waterway	waterfall	arz	شلال
waterway	water_point	arz	نقطه ماء شفة
amenity	airport	ast	Aeropuertu
amenity	arts_centre	ast	Centru d'arte
amenity	atm	ast	Caxeru automáticu
amenity	auditorium	ast	Auditoriu
amenity	bank	ast	Bancu
amenity	bar	ast	Bar
amenity	bench	ast	Bancu
amenity	bicycle_parking	ast	Aparcaderu de bicicletes
amenity	bicycle_rental	ast	Alquiler de bicicletes
amenity	brothel	ast	Taburdiu
amenity	bureau_de_change	ast	Troquéu de moneda
amenity	bus_station	ast	Estación d'autobús
amenity	cafe	ast	Café
amenity	car_rental	ast	Alquiler de coches
amenity	car_sharing	ast	Compartir coche
amenity	car_wash	ast	Llaváu de coches
amenity	casino	ast	Casino
amenity	cinema	ast	Cine
amenity	clinic	ast	Clínica
amenity	club	ast	Club
amenity	college	ast	Colexu universitariu
amenity	community_centre	ast	Centru comunitariu
amenity	courthouse	ast	Xulgáu
amenity	crematorium	ast	Crematoriu
amenity	dentist	ast	Dentista
amenity	doctors	ast	Ambulatoriu
amenity	dormitory	ast	Dormitoriu
amenity	drinking_water	ast	Agua potable
amenity	driving_school	ast	Autoescuela
amenity	embassy	ast	Embaxada
amenity	emergency_phone	ast	Teléfonu d'emerxencia
amenity	fast_food	ast	Comida rápida
amenity	ferry_terminal	ast	Terminal de ferry
amenity	fire_hydrant	ast	Boca d'incendios
amenity	fire_station	ast	Bomberos
amenity	fountain	ast	Fonte
amenity	fuel	ast	Combustible
amenity	grave_yard	ast	Cementeriu
amenity	gym	ast	Ximnasiu / Fitness
amenity	hall	ast	Centru de reuniones
amenity	health_centre	ast	Centru de salú
amenity	hospital	ast	Hospital
amenity	hotel	ast	Hotel
amenity	hunting_stand	ast	Puestu de caza
amenity	ice_cream	ast	Xelaos
amenity	kindergarten	ast	Guardería
amenity	library	ast	Biblioteca
amenity	market	ast	Mercáu
amenity	marketplace	ast	Mercáu
amenity	mountain_rescue	ast	Salvamentu nel monte
amenity	nightclub	ast	Sala de fiestes
amenity	nursery	ast	Preescolar
amenity	nursing_home	ast	Residencia asistencial
amenity	office	ast	Oficina
amenity	park	ast	Parque
amenity	parking	ast	Aparcaderu
amenity	pharmacy	ast	Farmacia
amenity	place_of_worship	ast	Llugar de cultu
amenity	police	ast	Policía
amenity	post_box	ast	Buzón
amenity	post_office	ast	Oficina de correos
amenity	preschool	ast	Preescolar
amenity	prison	ast	Cárcel
amenity	pub	ast	Pub
amenity	public_building	ast	Edificiu públicu
amenity	public_market	ast	Mercáu públicu
amenity	reception_area	ast	Llugar de recepción
amenity	recycling	ast	Puntu llimpiu
amenity	restaurant	ast	Restaurán
amenity	retirement_home	ast	Residencia de mayores
amenity	sauna	ast	Sauna
amenity	school	ast	Escuela
amenity	shelter	ast	Abellugu
amenity	shop	ast	Tienda
amenity	shopping	ast	Compres
amenity	social_club	ast	Club social
amenity	studio	ast	Estudiu
amenity	supermarket	ast	Supermercáu
amenity	taxi	ast	Taxi
amenity	telephone	ast	Teléfonu públicu
amenity	theatre	ast	Teatru
amenity	toilets	ast	Servicios
amenity	townhall	ast	Casa conceyu
amenity	university	ast	Universidá
amenity	vending_machine	ast	Venta automática
amenity	veterinary	ast	Ciruxía veterinaria
amenity	village_hall	ast	Casa de la villa
amenity	waste_basket	ast	Papelera
amenity	wifi	ast	Accesu WiFi
amenity	youth_centre	ast	Centru de mocedá
boundary	administrative	ast	Llende alministrativa
building	apartments	ast	Bloque d'apartamentos
building	block	ast	Bloque de viviendes
building	bunker	ast	Bunker
building	chapel	ast	Capiella
building	church	ast	Ilesia
building	city_hall	ast	Casa del conceyu
building	commercial	ast	Edificiu comercial
building	dormitory	ast	Dormitoriu
building	entrance	ast	Accesu al edificiu
building	faculty	ast	Facultá
building	farm	ast	Casería
building	flats	ast	Pisos
building	garage	ast	Garaxe
building	hall	ast	Centru de reuniones
building	hospital	ast	Hospital
building	hotel	ast	Hotel
building	house	ast	Casa
building	industrial	ast	Edificiu industrial
building	office	ast	Edificiu d'oficines
building	public	ast	Edificiu públicu
building	residential	ast	Edificiu residencial
building	retail	ast	Edificiu comercial
building	school	ast	Edificiu escolar
building	shop	ast	Tienda
building	stadium	ast	Estadiu
building	store	ast	Almacén
building	terrace	ast	Terraza
building	tower	ast	Torre
building	train_station	ast	Estación de tren
building	university	ast	Edificiu universitariu
highway	bridleway	ast	Caleya
highway	bus_guideway	ast	Carril bus con guía
highway	bus_stop	ast	Parada d'autobús
highway	byway	ast	Camín
highway	construction	ast	Carretera en construcción
highway	cycleway	ast	Sienda ciclista
highway	distance_marker	ast	Marca de distancia
highway	emergency_access_point	ast	Puntu de llocalización d'emerxencia
highway	footway	ast	Sienda
highway	ford	ast	Vau
highway	gate	ast	Puerta
highway	living_street	ast	Cai residencial
highway	minor	ast	Carretera menor
highway	motorway	ast	Autopista
highway	motorway_junction	ast	Enllaz d'autopista
highway	motorway_link	ast	Autopista
highway	path	ast	Camín
highway	pedestrian	ast	Vía peatonal
highway	platform	ast	Andén
highway	primary	ast	Carretera primaria
highway	primary_link	ast	Enllaz de carretera primaria
highway	raceway	ast	Pista de carreres
highway	residential	ast	Residencial
highway	road	ast	Carretera
highway	secondary	ast	Carretera secundaria
highway	secondary_link	ast	Enllaz de carretera secundaria
highway	service	ast	Carretera de serviciu
highway	services	ast	Servicios n'autopista
highway	steps	ast	Escaleres
highway	stile	ast	Pasera de muries
highway	tertiary	ast	Carretera terciaria
highway	track	ast	Pista
highway	trail	ast	Camín
highway	trunk	ast	Carretera nacional
highway	trunk_link	ast	Enllaz de carretera nacional
highway	unclassified	ast	Carretera ensin clasificar
highway	unsurfaced	ast	Carretera ensin asfaltar
historic	archaeological_site	ast	Llugar arqueolóxicu
historic	battlefield	ast	Campu de batalla
historic	boundary_stone	ast	Finxu
historic	building	ast	Edificiu
historic	castle	ast	Castiellu
historic	church	ast	Ilesia
historic	house	ast	Casa
historic	icon	ast	Iconu
historic	manor	ast	Casona
historic	memorial	ast	Monumentu
historic	mine	ast	Mina
historic	monument	ast	Monumentu
historic	museum	ast	Muséu
historic	ruins	ast	Ruines
historic	tower	ast	Torre
historic	wayside_cross	ast	Cruceru
historic	wayside_shrine	ast	Ermita
historic	wreck	ast	Naufraxu
landuse	allotments	ast	Güertes recreatives
landuse	basin	ast	Conca
landuse	brownfield	ast	Terrén en derribu
landuse	cemetery	ast	Cementeriu
landuse	commercial	ast	Área comercial
landuse	conservation	ast	Conservación
landuse	construction	ast	Construcción
landuse	farm	ast	Casería
landuse	farmland	ast	Tierres de llabor
landuse	farmyard	ast	Corral
landuse	forest	ast	Área forestal
landuse	grass	ast	Yerba
landuse	greenfield	ast	Plan d'espansión
landuse	industrial	ast	Área industrial
landuse	landfill	ast	Vertederu
landuse	meadow	ast	Prau
landuse	military	ast	Área militar
landuse	mine	ast	Mina
landuse	mountain	ast	Monte
landuse	nature_reserve	ast	Reserva natural
landuse	park	ast	Parque
landuse	piste	ast	Pista
landuse	plaza	ast	Plaza
landuse	quarry	ast	Cantera
landuse	railway	ast	Ferrocarril
landuse	recreation_ground	ast	Campu recreativu
landuse	reservoir	ast	Banzáu
landuse	residential	ast	Área residencial
landuse	retail	ast	Área comercial
landuse	village_green	ast	Prau municipal
landuse	vineyard	ast	Viña
landuse	wetland	ast	Llamuerga
landuse	wood	ast	Viesca
leisure	beach_resort	ast	Turismu de playa
leisure	common	ast	Terrén común
leisure	fishing	ast	Área de pesca
leisure	garden	ast	Xardín
leisure	golf_course	ast	Campu de golf
leisure	ice_rink	ast	Pista de xelu
leisure	marina	ast	Puertu deportivu
leisure	miniature_golf	ast	Mini golf
leisure	nature_reserve	ast	Reserva natural
leisure	park	ast	Parque
leisure	pitch	ast	Campu deportivu
leisure	playground	ast	Xuegos infantiles
leisure	recreation_ground	ast	Campu recreativu
leisure	slipway	ast	Rampla de botadura
leisure	sports_centre	ast	Centru deportivu
leisure	stadium	ast	Estadiu
leisure	swimming_pool	ast	Piscina
leisure	track	ast	Pista de carreres
leisure	water_park	ast	Parque acuáticu
natural	bay	ast	Golfu
natural	beach	ast	Playa
natural	cape	ast	Cabu
natural	cave_entrance	ast	Boca de cueva
natural	channel	ast	Canal
natural	cliff	ast	Cantil
natural	coastline	ast	Llinia de costa
natural	crater	ast	Crater
natural	feature	ast	Carauterística
natural	fell	ast	Braña
natural	fjord	ast	Fiordu
natural	geyser	ast	Guéiser
natural	glacier	ast	Glaciar
natural	heath	ast	Berezal
natural	hill	ast	Llomba
natural	island	ast	Islla
natural	land	ast	Tierra
natural	marsh	ast	Llamuerga
natural	moor	ast	Amarradera
natural	mud	ast	Barru
natural	peak	ast	Picu
natural	point	ast	Puntu
natural	reef	ast	Petón
natural	ridge	ast	Cordal
natural	river	ast	Ríu
natural	rock	ast	Roca
natural	scree	ast	Llera
natural	scrub	ast	Cotollal
natural	shoal	ast	Baxu
natural	spring	ast	Fonte
natural	strait	ast	Estrechu
natural	tree	ast	Árbol
natural	valley	ast	Valle
natural	volcano	ast	Volcan
natural	water	ast	Agua
natural	wetland	ast	Llamuerga
natural	wetlands	ast	Llamuergues
natural	wood	ast	Viesca
place	airport	ast	Aeropuertu
place	city	ast	Ciudá
place	country	ast	País
place	county	ast	Condáu, conceyu
place	farm	ast	Casería
place	hamlet	ast	Aldea
place	house	ast	Casa
place	houses	ast	Cases
place	island	ast	Islla
place	islet	ast	Castru de mar
place	locality	ast	Llocalidá
place	moor	ast	Amarradera
place	municipality	ast	Conceyu
place	postcode	ast	Códigu postal
place	region	ast	Fastera, provincia
place	sea	ast	Mar
place	state	ast	Estáu, comunidá autónoma
place	subdivision	ast	Subdivisión
place	suburb	ast	Barriu
place	town	ast	Villa
place	unincorporated_area	ast	Área ensin conceyu
place	village	ast	Pueblu
railway	abandoned	ast	Ferrocarril abandonáu
railway	construction	ast	Ferrocarril en construcción
railway	disused	ast	Ferrocarril ensin usu
railway	disused_station	ast	Estación de ferrocarril ensin usu
railway	funicular	ast	Tren funicular
railway	halt	ast	Parada de tren
railway	historic_station	ast	Estación de ferrocarril históricu
railway	junction	ast	Disvíu de ferrocarril
railway	level_crossing	ast	Pasu a nivel
railway	light_rail	ast	Ferrocarril llixeru
railway	monorail	ast	Monorraíl
railway	narrow_gauge	ast	Ferrocarril de vía estrecha
railway	platform	ast	Andén de ferrocarril
railway	preserved	ast	Ferrocarril conserváu
railway	spur	ast	Apartaderu industrial
railway	station	ast	Estación de tren
railway	subway	ast	Estación de metro
railway	subway_entrance	ast	Entrada de metro
railway	switch	ast	Aguyes de ferrocarril
railway	tram	ast	Tranvía
railway	tram_stop	ast	Parada de tranvía
railway	yard	ast	Apartaderu de clasificación
shop	alcohol	ast	Venta de bébores
shop	apparel	ast	Boutique
shop	art	ast	Venta d'arte
shop	bakery	ast	Panadería
shop	beauty	ast	Cuidaos corporales
shop	beverages	ast	Venta de bébores
shop	bicycle	ast	Tienda de bicicletes
shop	books	ast	Llibrería
shop	butcher	ast	Carnicería
shop	car	ast	Automóvil
shop	car_dealer	ast	Concesionariu d'automóviles
shop	car_parts	ast	Repuestos d'automóvil
shop	carpet	ast	Alfombres
shop	car_repair	ast	Taller d'automóviles
shop	charity	ast	Rastru solidariu
shop	chemist	ast	Droguería
shop	clothes	ast	Tienda de ropa
shop	computer	ast	Tienda d'informática
shop	confectionery	ast	Confitería
shop	convenience	ast	Alimentación
shop	copyshop	ast	Copistería
shop	cosmetics	ast	Perfumería
shop	department_store	ast	Grandes almacenes
shop	discount	ast	Productos con descuentu
shop	doityourself	ast	Bricolax
shop	drugstore	ast	Droguería
shop	dry_cleaning	ast	Tintorería
shop	electronics	ast	Tienda d'electrónica
shop	estate_agent	ast	Axencia inmobiliaria
shop	farm	ast	Tienda de casería
shop	fashion	ast	Tienda de modes
shop	fish	ast	Pescaos
shop	florist	ast	Floristería
shop	food	ast	Comestibles
shop	funeral_directors	ast	Servicios funerarios
shop	furniture	ast	Muebles
shop	gallery	ast	Venta d'arte
shop	garden_centre	ast	Xardinería
shop	general	ast	Mercancía xeneral
shop	gift	ast	Tienda de regalos
shop	greengrocer	ast	Frutería
shop	grocery	ast	Frutería
shop	hairdresser	ast	Peluquería
shop	hardware	ast	Ferretería
shop	hifi	ast	Soníu
shop	insurance	ast	Seguros
shop	jewelry	ast	Xoyería
shop	kiosk	ast	Quioscu
shop	laundry	ast	Llavandería
shop	mall	ast	Centru comercial
shop	market	ast	Mercáu
shop	mobile_phone	ast	Tienda de telefonía móvil
shop	motorcycle	ast	Venta de motos
shop	music	ast	Discos
shop	newsagent	ast	Prensa
shop	optician	ast	Óptica
shop	organic	ast	Comida ecolóxica
shop	outdoor	ast	Aire llibre
shop	pet	ast	Paxarería
shop	photo	ast	Fotografía
shop	salon	ast	Cuidaos corporales
shop	shoes	ast	Zapatería
shop	shopping_centre	ast	Centru comercial
shop	sports	ast	Deportes
shop	stationery	ast	Papelería
shop	supermarket	ast	Supermercáu
shop	toys	ast	Xuguetería
shop	travel_agency	ast	Axencia de viaxes
shop	video	ast	Videu club
shop	wine	ast	Venta de bébores
tourism	alpine_hut	ast	Refuxu de montaña
tourism	artwork	ast	Obra d'arte
tourism	attraction	ast	Interés turísticu
tourism	bed_and_breakfast	ast	Cama y almuerzu (B&B)
tourism	cabin	ast	Cabaña
tourism	camp_site	ast	Camping
tourism	caravan_site	ast	Camping pa caravanes
tourism	chalet	ast	Xalé
tourism	guest_house	ast	Agospiamientu
tourism	hostel	ast	Albergue
tourism	hotel	ast	Hotel
tourism	information	ast	Información
tourism	lean_to	ast	Abrigu
tourism	motel	ast	Motel
tourism	museum	ast	Muséu
tourism	picnic_site	ast	Área recreativa
tourism	theme_park	ast	Parque temáticu
tourism	valley	ast	Valle
tourism	viewpoint	ast	Mirador
tourism	zoo	ast	Zoo
waterway	boatyard	ast	Astilleru
waterway	canal	ast	Canal
waterway	connector	ast	Regueru
waterway	dam	ast	Presa
waterway	derelict_canal	ast	Canal abandonáu
waterway	ditch	ast	Riega
waterway	dock	ast	Dársena
waterway	drain	ast	Desagüe
waterway	lock	ast	Esclusa
waterway	lock_gate	ast	Compuerta
waterway	mineral_spring	ast	Agua mineral
waterway	mooring	ast	Amarradera
waterway	rapids	ast	Rabión
waterway	river	ast	Ríu
waterway	riverbank	ast	Ribera'l ríu
waterway	stream	ast	Regatu
waterway	wadi	ast	Riera
waterway	waterfall	ast	Saltu d'agua
waterway	water_point	ast	Toma d'agua
waterway	weir	ast	Banzáu
amenity	atm	az	ATM
amenity	bank	az	Bank
amenity	bar	az	Bar
amenity	airport	be-tarask	Аэрапорт
amenity	arts_centre	be-tarask	Мастацкі цэнтар
amenity	atm	be-tarask	Банкамат
amenity	auditorium	be-tarask	Заля для канфэрэнцыяў
amenity	bank	be-tarask	Банк
amenity	bar	be-tarask	Бар
amenity	bench	be-tarask	Лаўка
amenity	bicycle_parking	be-tarask	Стаянка для ровараў
amenity	bicycle_rental	be-tarask	Пракат ровараў
amenity	brothel	be-tarask	Бардэль
amenity	bureau_de_change	be-tarask	Абмен валюты
amenity	bus_station	be-tarask	Аўтобусны прыпынак
amenity	cafe	be-tarask	Кавярня
amenity	car_rental	be-tarask	Арэнда аўтамабіляў
amenity	car_sharing	be-tarask	Кароткатэрміновая арэнда аўтамабіляў
amenity	car_wash	be-tarask	Аўтамабільная мыйка
amenity	casino	be-tarask	Казіно
amenity	cinema	be-tarask	Кінатэатар
amenity	clinic	be-tarask	Паліклініка
amenity	club	be-tarask	Клюб
amenity	college	be-tarask	Каледж
amenity	community_centre	be-tarask	Грамадзкі цэнтар
amenity	courthouse	be-tarask	Суд
amenity	crematorium	be-tarask	Крэматорый
amenity	dentist	be-tarask	Стаматалёгія
amenity	doctors	be-tarask	Дактары
amenity	dormitory	be-tarask	Інтэрнат
amenity	drinking_water	be-tarask	Пітная вада
amenity	driving_school	be-tarask	Аўташкола
amenity	embassy	be-tarask	Амбасада
amenity	emergency_phone	be-tarask	Тэлефон для экстранных выклікаў
amenity	fast_food	be-tarask	Забягайлаўка
amenity	ferry_terminal	be-tarask	Паромная станцыя
amenity	fire_hydrant	be-tarask	Пажарны гідрант
amenity	fire_station	be-tarask	Пажарны пастарунак
amenity	fountain	be-tarask	Фантан
amenity	fuel	be-tarask	Запраўка
amenity	grave_yard	be-tarask	Могілкі
amenity	gym	be-tarask	Фітнэс цэнтар /Трэнажорны зал
amenity	hall	be-tarask	Хол
amenity	health_centre	be-tarask	Цэнтар здароўя
amenity	hospital	be-tarask	Шпіталь
amenity	hotel	be-tarask	Гатэль
amenity	hunting_stand	be-tarask	Паляўнічая вежа
amenity	ice_cream	be-tarask	Марозіва
amenity	kindergarten	be-tarask	Дзіцячы садок
amenity	library	be-tarask	Бібліятэка
amenity	market	be-tarask	Рынак
amenity	marketplace	be-tarask	Рынкавая плошча
amenity	mountain_rescue	be-tarask	Горныя выратавальнікі
amenity	nightclub	be-tarask	Начны клюб
amenity	nursery	be-tarask	Дзіцячы пакой
amenity	nursing_home	be-tarask	Дом састарэлых
amenity	office	be-tarask	Офіс
amenity	park	be-tarask	Парк
amenity	parking	be-tarask	Стаянка
amenity	pharmacy	be-tarask	Аптэка
amenity	place_of_worship	be-tarask	Культавае збудаваньне
amenity	police	be-tarask	Паліцыя (Міліцыя)
amenity	post_box	be-tarask	Паштовая скрыня
amenity	post_office	be-tarask	Паштовае аддзяленьне
amenity	preschool	be-tarask	Дашкольная ўстанова
amenity	prison	be-tarask	Турма
amenity	pub	be-tarask	Шынок
amenity	public_building	be-tarask	Грамадзкі будынак
amenity	public_market	be-tarask	Кірмаш
amenity	reception_area	be-tarask	Прыёмная
amenity	recycling	be-tarask	Месца перапрацоўкі адыходаў
amenity	restaurant	be-tarask	Рэстаран
amenity	retirement_home	be-tarask	Дом састарэлых
amenity	sauna	be-tarask	Лазьня
amenity	school	be-tarask	Школа
amenity	shelter	be-tarask	Прытулак
amenity	shop	be-tarask	Крама
amenity	shopping	be-tarask	Гандлёвы цэнтар
amenity	social_club	be-tarask	Клюб па інтарэсах
amenity	studio	be-tarask	Студыя
amenity	supermarket	be-tarask	Супэрмаркет
amenity	taxi	be-tarask	Таксі
amenity	telephone	be-tarask	Тэлефон
amenity	theatre	be-tarask	Тэатар
amenity	toilets	be-tarask	Туалет
amenity	townhall	be-tarask	Ратуша
amenity	university	be-tarask	Унівэрсытэт
amenity	vending_machine	be-tarask	Гандлёвы аўтамат
amenity	veterinary	be-tarask	Вэтэрынарная клініка
amenity	village_hall	be-tarask	Кіраўніцтва вёскі
amenity	waste_basket	be-tarask	Сьметніца
amenity	wifi	be-tarask	Доступ да WiFi
amenity	youth_centre	be-tarask	Моладзевы цэнтар
boundary	administrative	be-tarask	Адміністрацыйная мяжа
building	apartments	be-tarask	Шматкватэрны дом
building	block	be-tarask	Квартал
building	bunker	be-tarask	Бункер
building	chapel	be-tarask	Капліца
building	church	be-tarask	Царква
building	city_hall	be-tarask	Мэрыя
building	commercial	be-tarask	Камэрцыйны будынак
building	dormitory	be-tarask	Інтэрнат
building	entrance	be-tarask	Уваход у будынак
building	faculty	be-tarask	Факультэцкі будынак
building	farm	be-tarask	Фэрма
building	flats	be-tarask	Кватэры
building	garage	be-tarask	Гараж
building	hall	be-tarask	Хол
building	hospital	be-tarask	Будынак шпіталю
building	hotel	be-tarask	Гатэль
building	house	be-tarask	Дом
building	industrial	be-tarask	Прамысловы будынак
building	office	be-tarask	Офісны будынак
building	public	be-tarask	Грамадзкі будынак
building	residential	be-tarask	Жылы будынак
building	retail	be-tarask	Будынак розьнічнага гандлю
building	school	be-tarask	Школа
building	shop	be-tarask	Крама
building	stadium	be-tarask	Стадыён
building	store	be-tarask	Сховішча
building	terrace	be-tarask	Шэраг жылых дамоў
building	tower	be-tarask	Вежа
building	train_station	be-tarask	Чыгуначная станцыя
building	university	be-tarask	Унівэрсытэт
highway	bridleway	be-tarask	Дарога для коней
highway	bus_guideway	be-tarask	Аўтобусная паласа
highway	bus_stop	be-tarask	Аўтобусны прыпынак
highway	byway	be-tarask	Завулак
highway	construction	be-tarask	Будаўніцтва дарогі
highway	cycleway	be-tarask	Роварная дарожка
highway	distance_marker	be-tarask	Кілямэтровы слуп
highway	emergency_access_point	be-tarask	Пункт хуткай дапамогі
highway	footway	be-tarask	Пешаходная сьцежка
highway	ford	be-tarask	Брод
highway	gate	be-tarask	Брама
highway	living_street	be-tarask	Жыльлёвая зона
highway	minor	be-tarask	Другасная дарога
highway	motorway	be-tarask	Аўтастрада
highway	motorway_junction	be-tarask	Скрыжаваньне аўтастрадаў
highway	motorway_link	be-tarask	Разьвязка аўтастрады
highway	path	be-tarask	Шлях
highway	pedestrian	be-tarask	Пешаходная дарожка
highway	platform	be-tarask	Плятформа
highway	primary	be-tarask	Галоўная дарога
highway	primary_link	be-tarask	Галоўная дарога
highway	raceway	be-tarask	Гоначная траса
highway	residential	be-tarask	Жылая вуліца
highway	road	be-tarask	Дарога
highway	secondary	be-tarask	Другасная дарога
highway	secondary_link	be-tarask	Другасная дарога
highway	service	be-tarask	Службовая дарога
highway	services	be-tarask	Прыдарожны сэрвіс
highway	steps	be-tarask	Прыступкі
highway	stile	be-tarask	Турнікет
highway	tertiary	be-tarask	Дарога раённага значэньня
highway	track	be-tarask	Грунтовая дарога
highway	trail	be-tarask	Сьцежка
highway	trunk	be-tarask	Шаша
highway	trunk_link	be-tarask	Шаша
highway	unclassified	be-tarask	Дарога раённага значэньня
highway	unsurfaced	be-tarask	Дарога без пакрыцьця
historic	archaeological_site	be-tarask	Археалягічныя раскопкі
historic	battlefield	be-tarask	Поле гістарычнай бойкі
historic	boundary_stone	be-tarask	Памежны камень
historic	building	be-tarask	Будынак
historic	castle	be-tarask	Замак
historic	church	be-tarask	Царква
historic	house	be-tarask	Дом
historic	icon	be-tarask	Ікона
historic	manor	be-tarask	Маёнтак
historic	memorial	be-tarask	Мэмарыял
historic	mine	be-tarask	Капальня
historic	monument	be-tarask	Помнік
historic	museum	be-tarask	Музэй
historic	ruins	be-tarask	Руіны
historic	tower	be-tarask	Вежа
historic	wayside_cross	be-tarask	Прыдарожны крыж
historic	wayside_shrine	be-tarask	Прыдарожная капліца
historic	wreck	be-tarask	Месца катастрофы
landuse	allotments	be-tarask	Агароды
landuse	basin	be-tarask	Басэйн
landuse	brownfield	be-tarask	Прамысловая забруджаная глеба
landuse	cemetery	be-tarask	Могілкі
landuse	commercial	be-tarask	Камэрцыйная тэрыторыя
landuse	conservation	be-tarask	Запаведнік
landuse	construction	be-tarask	Будаўніцтва
landuse	farm	be-tarask	Фэрма
landuse	farmland	be-tarask	Фэрма
landuse	farmyard	be-tarask	Гаспадарчае падвор’е
landuse	forest	be-tarask	Лес
landuse	grass	be-tarask	Трава
landuse	greenfield	be-tarask	Незасвоеная тэрыторыя
landuse	industrial	be-tarask	Прамысловая тэрыторыя
landuse	landfill	be-tarask	Сьметнік
landuse	meadow	be-tarask	Луг
landuse	military	be-tarask	Вайсковая тэрыторыя
landuse	mine	be-tarask	Капальня
landuse	mountain	be-tarask	Гара
landuse	nature_reserve	be-tarask	Запаведнік
landuse	park	be-tarask	Парк
landuse	piste	be-tarask	Лыжня
landuse	plaza	be-tarask	Рынкавая плошча
landuse	quarry	be-tarask	Кар’ер
landuse	railway	be-tarask	Чыгунка
landuse	recreation_ground	be-tarask	Зона адпачынку
landuse	reservoir	be-tarask	Вадасховішча
landuse	residential	be-tarask	Жылы раён
landuse	retail	be-tarask	Тэрыторыя дробнага гандлю
landuse	village_green	be-tarask	Гарадзкі парк
landuse	vineyard	be-tarask	Вінаграднік
landuse	wetland	be-tarask	Забалочаная зямля
landuse	wood	be-tarask	Лес
leisure	beach_resort	be-tarask	Пляжны курорт
leisure	common	be-tarask	Грамадзкая зямля
leisure	fishing	be-tarask	Месца для рыбнай лоўлі
leisure	garden	be-tarask	Сад
leisure	golf_course	be-tarask	Поле для гольфу
leisure	ice_rink	be-tarask	Коўзанка
leisure	marina	be-tarask	Прыстань для яхтаў
leisure	miniature_golf	be-tarask	Поле для мінігольфу
leisure	nature_reserve	be-tarask	Запаведнік
leisure	park	be-tarask	Парк
leisure	pitch	be-tarask	Спартыўная пляцоўка
leisure	playground	be-tarask	Дзіцячая пляцоўка
leisure	recreation_ground	be-tarask	Зона адпачынку
leisure	slipway	be-tarask	Элінг
leisure	sports_centre	be-tarask	Спартовы цэнтар
leisure	stadium	be-tarask	Стадыён
leisure	swimming_pool	be-tarask	Басэйн
leisure	track	be-tarask	Бегавая дарожка
leisure	water_park	be-tarask	Аквапарк
natural	bay	be-tarask	Затока
natural	beach	be-tarask	Пляж
natural	cape	be-tarask	Мыс
natural	cave_entrance	be-tarask	Уваход у пячору
natural	channel	be-tarask	Канал
natural	cliff	be-tarask	Абрыў
natural	coastline	be-tarask	Узьбярэжжа
natural	crater	be-tarask	Кратэр
natural	feature	be-tarask	Аб’ект
natural	fell	be-tarask	Узвышша
natural	fjord	be-tarask	Фіёрд
natural	geyser	be-tarask	Гейзэр
natural	glacier	be-tarask	Ледавік
natural	heath	be-tarask	Пусташ
natural	hill	be-tarask	Узгорак
natural	island	be-tarask	Выспа
natural	land	be-tarask	Зямля
natural	marsh	be-tarask	Балота
natural	moor	be-tarask	Тарфянік
natural	mud	be-tarask	Гразь
natural	peak	be-tarask	Вяршыня
natural	point	be-tarask	Пункт
natural	reef	be-tarask	Рыф
natural	ridge	be-tarask	Горны хрыбет
natural	river	be-tarask	Рака
natural	rock	be-tarask	Скала
natural	scree	be-tarask	Шчэбень
natural	scrub	be-tarask	Хмызьняк
natural	shoal	be-tarask	Плыткаводзьдзе
natural	spring	be-tarask	Крыніца
natural	strait	be-tarask	Пратока
natural	tree	be-tarask	Дрэва
natural	valley	be-tarask	Даліна
natural	volcano	be-tarask	Вулькан
natural	water	be-tarask	Вада
natural	wetland	be-tarask	Забалочаная зямля
natural	wetlands	be-tarask	Забалочаныя землі
natural	wood	be-tarask	Лес
place	airport	be-tarask	Аэрапорт
place	city	be-tarask	Горад
place	country	be-tarask	Краіна
place	county	be-tarask	Раён
place	farm	be-tarask	Фэрма
place	hamlet	be-tarask	Хутар
place	house	be-tarask	Дом
place	houses	be-tarask	Дамы
place	island	be-tarask	Выспа
place	islet	be-tarask	Выспачка
place	locality	be-tarask	Населены пункт
place	moor	be-tarask	Тарфянік
place	municipality	be-tarask	Муніцыпалітэт
place	postcode	be-tarask	Паштовы індэкс
place	region	be-tarask	Рэгіён
place	sea	be-tarask	Мора
place	state	be-tarask	Штат
place	subdivision	be-tarask	Падразьдзел
place	suburb	be-tarask	Прадмесьце
place	town	be-tarask	Горад
place	unincorporated_area	be-tarask	Загарадная зона
place	village	be-tarask	Вёска
railway	abandoned	be-tarask	Пакінутая чыгуначная лінія
railway	construction	be-tarask	Будаўніцтва чыгункі
railway	disused	be-tarask	Пакінутая чыгунка
railway	disused_station	be-tarask	Пакінутая чыгуначная станцыя
railway	funicular	be-tarask	Фунікулёр
railway	halt	be-tarask	Чыгуначны прыпынак
railway	historic_station	be-tarask	Гістарычная чыгуначная станцыя
railway	junction	be-tarask	Чыгуначны вузел
railway	level_crossing	be-tarask	Чыгуначны пераезд
railway	light_rail	be-tarask	Лінія для лёгкага чыгуначнага транспарту
railway	monorail	be-tarask	Манарэльс
railway	narrow_gauge	be-tarask	Вузкакалейка
railway	platform	be-tarask	Чыгуначная плятформа
railway	preserved	be-tarask	Закансэрваваная чыгуначная каляя
railway	spur	be-tarask	Чыгуначнае разгалінаваньне
railway	station	be-tarask	Чыгуначная станцыя
railway	subway	be-tarask	Станцыя мэтро
railway	subway_entrance	be-tarask	Уваход у мэтро
railway	switch	be-tarask	Чыгуначная стрэлка
railway	tram	be-tarask	Трамвайная каляя
railway	tram_stop	be-tarask	Трамвайны прыпынак
railway	yard	be-tarask	Чыгуначнае дэпо
shop	alcohol	be-tarask	Алькагольная крама
shop	apparel	be-tarask	Крама адзеньня
shop	art	be-tarask	Мастацкі салён
shop	bakery	be-tarask	Пякарня
shop	beauty	be-tarask	Салён прыгажосьці
shop	beverages	be-tarask	Крама напояў
shop	bicycle	be-tarask	Роварная крама
shop	books	be-tarask	Кніжная крама
shop	butcher	be-tarask	Мясная крама
shop	car	be-tarask	Аўтамабільны салён
shop	car_dealer	be-tarask	Аўтамабільны салён
shop	car_parts	be-tarask	Крама аўтамабільных запчастак
shop	carpet	be-tarask	Дывановая крама
shop	car_repair	be-tarask	Аўтамабільная майстэрня
shop	charity	be-tarask	Сэканд хэнд
shop	chemist	be-tarask	Крама бытавой хіміі
shop	clothes	be-tarask	Крама адзеньня
shop	computer	be-tarask	Кампутарная крама
shop	confectionery	be-tarask	Кандытарская
shop	convenience	be-tarask	Крама
shop	copyshop	be-tarask	Паслугі капіяваньня
shop	cosmetics	be-tarask	Касмэтычная крама
shop	department_store	be-tarask	Унівэрсальная крама
shop	discount	be-tarask	Крама тавараў са зьніжкамі
shop	doityourself	be-tarask	Зрабі сам
shop	drugstore	be-tarask	Аптэка
shop	dry_cleaning	be-tarask	Хімчыстка
shop	electronics	be-tarask	Крама электронікі
shop	estate_agent	be-tarask	Агенцтва нерухомасьці
shop	farm	be-tarask	Сельская крама
shop	fashion	be-tarask	Крама моднага адзеньня
shop	fish	be-tarask	Рыбная крама
shop	florist	be-tarask	Кветкавая крама
shop	food	be-tarask	Харчовая крама
shop	funeral_directors	be-tarask	Паслугі па пахаваньні
shop	furniture	be-tarask	Мэбля
shop	gallery	be-tarask	Галерэя
shop	garden_centre	be-tarask	Сад і агарод
shop	general	be-tarask	Унівэрсальная крама
shop	gift	be-tarask	Крама падарункаў
shop	greengrocer	be-tarask	Садавіна, гародніна
shop	grocery	be-tarask	Бакалея
shop	hairdresser	be-tarask	Цырульня
shop	hardware	be-tarask	Гаспадарчыя тавары
shop	hifi	be-tarask	Крама аўдыё/відэё тэхнікі
shop	insurance	be-tarask	Страхаваньне
shop	jewelry	be-tarask	Ювэлірная крама
shop	kiosk	be-tarask	Шапік
shop	laundry	be-tarask	Пральня
shop	mall	be-tarask	Гандлёвы цэнтар
shop	market	be-tarask	Рынак
shop	mobile_phone	be-tarask	Крама мабільных тэлефонаў
shop	motorcycle	be-tarask	Крама матацыклаў
shop	music	be-tarask	Музычная крама
shop	newsagent	be-tarask	Газэтны шапік
shop	optician	be-tarask	Оптыка
shop	organic	be-tarask	Харчовая крама
shop	outdoor	be-tarask	Выязны гандаль
shop	pet	be-tarask	Зоалягічная крама
shop	photo	be-tarask	Фотакрама
shop	salon	be-tarask	Салён
shop	shoes	be-tarask	Крама абутку
shop	shopping_centre	be-tarask	Гандлёвы цэнтар
shop	sports	be-tarask	Спартовая крама
shop	stationery	be-tarask	Канцтавары
shop	supermarket	be-tarask	Супэрмаркет
shop	toys	be-tarask	Крама цацак
shop	travel_agency	be-tarask	Турыстычнае агенцтва
shop	video	be-tarask	Відэакрама
shop	wine	be-tarask	Алькагольная крама
tourism	alpine_hut	be-tarask	Горная гасьцініца
tourism	artwork	be-tarask	Твор мастацтва
tourism	attraction	be-tarask	Славутасьць
tourism	bed_and_breakfast	be-tarask	Танная гасьцініца
tourism	cabin	be-tarask	Кабіна
tourism	camp_site	be-tarask	Кемпінг
tourism	caravan_site	be-tarask	Пляцоўка для трэйлераў
tourism	chalet	be-tarask	Шале
tourism	guest_house	be-tarask	Домік для гасьцей
tourism	hostel	be-tarask	Хостэл
tourism	hotel	be-tarask	Гатэль
tourism	information	be-tarask	Інфармацыя
tourism	lean_to	be-tarask	Навес
tourism	motel	be-tarask	Матэль
tourism	museum	be-tarask	Музэй
tourism	picnic_site	be-tarask	Месца для пікніка
tourism	theme_park	be-tarask	Атракцыёны
tourism	valley	be-tarask	Даліна
tourism	viewpoint	be-tarask	Аглядальная пляцоўка
tourism	zoo	be-tarask	Заапарк
waterway	boatyard	be-tarask	Майстэрня караблёў
waterway	canal	be-tarask	Канал
waterway	connector	be-tarask	Злучэньне водных шляхоў
waterway	dam	be-tarask	Дамба
waterway	derelict_canal	be-tarask	Пакінуты канал
waterway	ditch	be-tarask	Роў
waterway	dock	be-tarask	Док
waterway	drain	be-tarask	Дрэнажны канал
waterway	lock	be-tarask	Шлюз
waterway	lock_gate	be-tarask	Вароты шлюза
waterway	mineral_spring	be-tarask	Мінэральная крыніца
waterway	mooring	be-tarask	Якарная стаянка
waterway	rapids	be-tarask	Парогі
waterway	river	be-tarask	Рака
waterway	riverbank	be-tarask	Бераг ракі
waterway	stream	be-tarask	Струмень
waterway	wadi	be-tarask	Сухое рэчышча
waterway	waterfall	be-tarask	Вадаспад
waterway	water_point	be-tarask	Пункт водазабесьпячэньня
waterway	weir	be-tarask	Плаціна
amenity	airport	bn	বিমানবন্দর
amenity	bank	bn	ব্যাংক
amenity	brothel	bn	পতিতালয়
amenity	bus_station	bn	বাস স্টেশন
amenity	casino	bn	ক্যাসিনো
amenity	cinema	bn	সিনেমা
amenity	clinic	bn	ক্লিনিক
amenity	college	bn	কলেজ
amenity	community_centre	bn	কমিউনিটি সেন্টার
amenity	embassy	bn	দূতাবাস
amenity	grave_yard	bn	কবরস্থান
amenity	library	bn	পাঠাগার
amenity	park	bn	উদ্যান
amenity	pharmacy	bn	ঔষধালয়
amenity	post_box	bn	ডাকবাক্স
amenity	post_office	bn	ডাকঘর
amenity	airport	br	Aerborzh
amenity	arts_centre	br	Kreizenn arz
amenity	atm	br	Bilhedaouer
amenity	auditorium	br	Selaouva
amenity	bank	br	Ti-bank
amenity	bar	br	Tavarn
amenity	bench	br	Skaoñ
amenity	bicycle_parking	br	Parklec'h evit ar beloioù
amenity	bicycle_rental	br	Feurmiñ beloioù
amenity	brothel	br	Bordel
amenity	bureau_de_change	br	Burev eskemm
amenity	bus_station	br	Arsav bus
amenity	cafe	br	Kafedi
amenity	car_rental	br	Feurmiñ kirri
amenity	car_sharing	br	Leur genweturañ
amenity	car_wash	br	Gwalc'hiñ kirri
amenity	casino	br	Kazino
amenity	cinema	br	Sinema
amenity	clinic	br	Klinikenn
amenity	club	br	Klub
amenity	college	br	Skol-veur pe skol-uhel
amenity	community_centre	br	Sal liezimplij
amenity	courthouse	br	Lez-varn
amenity	crematorium	br	Krematoriom
amenity	dentist	br	Dentour
amenity	doctors	br	Mezeien
amenity	dormitory	br	Kouskva
amenity	drinking_water	br	Dour mat da evañ
amenity	driving_school	br	Skol bleinañ
amenity	embassy	br	Kannati
amenity	emergency_phone	br	Pellgomzer evit an trummadoù
amenity	fast_food	br	Fast Food
amenity	ferry_terminal	br	Porzh karrlistri
amenity	fire_hydrant	br	Dour evit an tan
amenity	fire_station	br	Kazarn pomperien
amenity	fountain	br	Feunteun
amenity	fuel	br	Trelosk
amenity	grave_yard	br	Bered
amenity	gym	br	Fitness/embregerezh-korf
amenity	hall	br	Sal
amenity	health_centre	br	Kreizenn yec'hed
amenity	hospital	br	Ospital
amenity	hotel	br	Leti
amenity	hunting_stand	br	Stand tennañ
amenity	ice_cream	br	Dienn skorn
amenity	kindergarten	br	Liorzh ar vugale
amenity	library	br	Levraoueg
amenity	market	br	Marc'had
amenity	marketplace	br	Marc'hallac'h
amenity	mountain_rescue	br	Sikourioù er menezioù
amenity	nightclub	br	Klub-noz
amenity	nursery	br	Spluseg
amenity	nursing_home	br	Ti yec'hed
amenity	office	br	Burev
amenity	park	br	Park
amenity	parking	br	Parklec'h
amenity	pharmacy	br	Apotikerezh
amenity	place_of_worship	br	Lec'h azeuliñ
amenity	police	br	Polis
amenity	post_box	br	Boest-lizheroù
amenity	post_office	br	Ti-post
amenity	preschool	br	Rakskol
amenity	prison	br	Toull-bac'h
amenity	pub	br	Tavarn
amenity	public_building	br	Savadur foran
amenity	public_market	br	Marc'had foran
amenity	reception_area	br	Takad degemer
amenity	recycling	br	Lec'h adaozañ
amenity	restaurant	br	Preti
amenity	retirement_home	br	Ti-retredidi
amenity	sauna	br	Saona
amenity	school	br	Skol
amenity	shelter	br	Gwasked
amenity	shop	br	Stal
amenity	shopping	br	Prenadennoù
amenity	social_club	br	Klub sokial
amenity	studio	br	Studio
amenity	supermarket	br	Gourmarc'had
amenity	taxi	br	Taksi
amenity	telephone	br	Pellgomzer foran
amenity	theatre	br	C'hoariva
amenity	toilets	br	Privezioù
amenity	townhall	br	Ti-kêr
amenity	university	br	Skol-veur
amenity	vending_machine	br	Ingaler emgefre
amenity	veterinary	br	Surjianerezh evit al loened
amenity	village_hall	br	Sal ar gumun
amenity	waste_basket	br	Pod-lastez
amenity	wifi	br	Moned WiFi
amenity	youth_centre	br	Kreizenn evit ar re yaouank
boundary	administrative	br	Bevennoù melestradurel
building	apartments	br	Kendi
building	block	br	Kendi
building	bunker	br	Bunker
building	chapel	br	Chapel
building	church	br	Iliz
building	city_hall	br	Ti-kêr
building	commercial	br	Savadur kenwerzhel
building	dormitory	br	Kouskva
building	entrance	br	Antre ar savadur
building	faculty	br	Kevrenn skol-veur
building	farm	br	Ti feurm
building	flats	br	Ranndioù
building	garage	br	Karrdi
building	hall	br	Sal
building	hospital	br	Savadur ospital
building	hotel	br	Leti
building	house	br	Ti
building	industrial	br	Savadur greantel
building	office	br	Savadur burevioù
building	public	br	Savadur foran
building	residential	br	Savadur annez
building	retail	br	Stal
building	school	br	Savadur skol
building	shop	br	Stal
building	stadium	br	Stad
building	store	br	Stal
building	terrace	br	Savenn
building	tower	br	Tour
building	train_station	br	Porzh-houarn
building	university	br	Savadur Skol-Veur
highway	bridleway	br	Hent evit ar varc'hegerien
highway	bus_guideway	br	Roudenn vus heñchet
highway	bus_stop	br	Arsav bus
highway	byway	br	Hent eil renk
highway	construction	br	Chanter gourhent
highway	cycleway	br	Roudenn divrodegoù
highway	distance_marker	br	Bonn kilometrek
highway	emergency_access_point	br	Poent moned trummadoù
highway	footway	br	Gwenodenn evit an droadeien
highway	ford	br	Roudour
highway	gate	br	Dor
highway	living_street	br	Straed annez
highway	minor	br	Hent dister
highway	motorway	br	Gourhent
highway	motorway_junction	br	Kengej gourhent
highway	motorway_link	br	Gourhent
highway	path	br	Gwenodenn
highway	pedestrian	br	Hent evit an droadeien
highway	platform	br	Leurenn
highway	primary	br	Hent kentañ renk
highway	primary_link	br	Pennhent
highway	raceway	br	Redva
highway	residential	br	Takad annezet
highway	road	br	Hent
highway	secondary	br	Hent eil renk
highway	secondary_link	br	Hent a eil renk
highway	service	br	Hent servij
highway	services	br	Servijoù gourhent
highway	steps	br	Diri
highway	stile	br	Skalier
highway	tertiary	br	Hent trede renk
highway	track	br	Roudenn
highway	trail	br	Roudenn
highway	trunk	br	Hent-tizh
highway	trunk_link	br	Hent-tizh
highway	unclassified	br	Hent dirumm
highway	unsurfaced	br	Hent dizolo
historic	archaeological_site	br	Lec'hienn henoniel
historic	battlefield	br	Tachenn emgann
historic	boundary_stone	br	Bonn harzoù
historic	building	br	Savadur
historic	castle	br	Kastell
historic	church	br	Iliz
historic	house	br	Ti
historic	icon	br	Arlun
historic	manor	br	Maner
historic	memorial	br	Kounlec'h
historic	mine	br	Mengleuz
historic	monument	br	Monumant
historic	museum	br	Mirdi
historic	ruins	br	Dismantroù
historic	tower	br	Tour
historic	wayside_cross	br	Kroaz
historic	wayside_shrine	br	Ti-pediñ
historic	wreck	br	Peñse
landuse	allotments	br	Liorzhoù familh
landuse	basin	br	Poull
landuse	brownfield	br	Tachenn rezet
landuse	cemetery	br	Bered
landuse	commercial	br	Takad kenwerzh
landuse	conservation	br	Takad gwarezet
landuse	construction	br	Savadur
landuse	farm	br	Atant
landuse	farmland	br	Douaroù-labour
landuse	farmyard	br	Mereuri
landuse	forest	br	Koadeg
landuse	grass	br	Geot
landuse	greenfield	br	Tachenn da sevel tiez
landuse	industrial	br	Takad greantel
landuse	landfill	br	Diskarg
landuse	meadow	br	Prad
landuse	military	br	Takad milourel
landuse	mine	br	Mengleuz
landuse	mountain	br	Menez
landuse	nature_reserve	br	Gwarezva natur
landuse	park	br	Park
landuse	piste	br	Roudenn
landuse	plaza	br	Plasenn
landuse	quarry	br	Mengleuz
landuse	railway	br	Hent-houarn
landuse	recreation_ground	br	Leur c'hoari
landuse	reservoir	br	Mirlenn
landuse	residential	br	Takad annez
landuse	retail	br	Kenwerzhioù
landuse	village_green	br	Takad natur foran
landuse	vineyard	br	Gwinieg
landuse	wetland	br	Takad gleborek
landuse	wood	br	Koad
leisure	beach_resort	br	Kêr-gouronkañ
leisure	common	br	Tachennoù foran
leisure	fishing	br	Takad pesketa
leisure	garden	br	Liorzh
leisure	golf_course	br	Tachenn golf
leisure	ice_rink	br	Poull-ruzikat
leisure	marina	br	Porzh-bageal
leisure	miniature_golf	br	Golfig
leisure	nature_reserve	br	Gwarezva Natur
leisure	park	br	Park
leisure	pitch	br	Tachenn sport
leisure	playground	br	Tachenn c'hoari
leisure	recreation_ground	br	Tachenn c'hoari
leisure	slipway	br	Kal
leisure	sports_centre	br	Kreizenn sport
leisure	stadium	br	Stad
leisure	swimming_pool	br	Poull-neuial
leisure	track	br	Roudenn redek
leisure	water_park	br	Kreizenn dour
natural	bay	br	Bae
natural	beach	br	Traezhenn
natural	cape	br	Kab
natural	cave_entrance	br	Treuzoù mougev
natural	channel	br	Kanol
natural	cliff	br	Tornaod
natural	coastline	br	Arvor
natural	crater	br	Krater
natural	feature	br	Elfenn
natural	fell	br	Fell
natural	fjord	br	Fjord
natural	geyser	br	Geiser
natural	glacier	br	Skorneg
natural	heath	br	Brug
natural	hill	br	Torgenn
natural	island	br	Enez
natural	land	br	Douar
natural	marsh	br	Geun
natural	moor	br	Lanneier
natural	mud	br	Fank
natural	peak	br	Pikern
natural	point	br	Poent
natural	reef	br	Karreg
natural	ridge	br	Kribenn
natural	river	br	Stêr
natural	rock	br	Roc'h
natural	scree	br	Disac'hadur
natural	scrub	br	Strouezh
natural	shoal	br	Klosenn
natural	spring	br	Lamm-dour
natural	strait	br	Strizh-mor
natural	tree	br	Gwezenn
natural	valley	br	Traoñienn
natural	volcano	br	Menez-tan
natural	water	br	Dour
natural	wetland	br	Takad gleborek
natural	wetlands	br	Takadoù gleborek
natural	wood	br	Koad
place	airport	br	Aerborzh
place	city	br	Meurgêr
place	country	br	Bro
place	county	br	Kontelezh
place	farm	br	Atant
place	hamlet	br	Pennkêr
place	house	br	Ti
place	houses	br	Tiez
place	island	br	Enez
place	islet	br	Enezennig
place	locality	br	Kêr
place	moor	br	Lanneg
place	municipality	br	Kumun
place	postcode	br	Kod post
place	region	br	Rannvro
place	sea	br	Mor
place	state	br	Stad
place	subdivision	br	Isrann
place	suburb	br	Karter
place	town	br	Kêr
place	unincorporated_area	br	Takad diaoz
place	village	br	Kêriadenn
railway	abandoned	br	Hent-houarn dilezet
railway	construction	br	Hent-houarn war sevel
railway	disused	br	Hent-houarn dilezet
railway	disused_station	br	Porzh-houarn dilezet
railway	funicular	br	Hent-houarn fundren
railway	halt	br	Arsav tren
railway	historic_station	br	Arsav tren istorel
railway	junction	br	Kej hent-houarn
railway	level_crossing	br	Treuzenn hent-houarn
railway	light_rail	br	Hent-houarn bihan
railway	monorail	br	Hent-houarn unroud
railway	narrow_gauge	br	Hent-houarn strizh
railway	platform	br	Savenn hent-houarn
railway	preserved	br	Hent-houarn miret
railway	spur	br	Hent-houarn kevreañ
railway	station	br	Porzh-houarn
railway	subway	br	Arsav metro
railway	subway_entrance	br	Antre metro
railway	switch	br	Hentoù-houarn heñchañ
railway	tram	br	Tramgarr
railway	tram_stop	br	Arsav tramgarr
railway	yard	br	Gar-dibab
shop	alcohol	br	Gwezher alkool
shop	apparel	br	Stal dilhad
shop	art	br	Stal arz
shop	bakery	br	Baraerezh
shop	beauty	br	Stal produioù kened
shop	beverages	br	Stal evajoù
shop	bicycle	br	Stal marc'hoù-houarn
shop	books	br	Levrdi
shop	butcher	br	Kiger
shop	car	br	Stal girri
shop	car_dealer	br	Gwerzher kirri
shop	car_parts	br	Pezhioù evit ar c'hirri
shop	carpet	br	Stal pallennoù
shop	car_repair	br	Dresañ kirri
shop	charity	br	Stal garitez
shop	chemist	br	Stal produioù yec'hederezh
shop	clothes	br	Stal dilhad
shop	computer	br	Stal urzhiataerioù
shop	confectionery	br	Koñfizerezh
shop	convenience	br	Ispiserezh
shop	copyshop	br	Stal luc'heilañ
shop	cosmetics	br	Stal produioù kened
shop	department_store	br	Gourstal
shop	discount	br	Stal discount
shop	doityourself	br	Stal bitellat
shop	drugstore	br	Apotikerezh
shop	dry_cleaning	br	Naetaat ent sec'h
shop	electronics	br	Stal traoù eletronek
shop	estate_agent	br	Kourater tiez
shop	farm	br	Stal evit al labour-douar
shop	fashion	br	Stal gizioù
shop	fish	br	Stal besked
shop	florist	br	Bokedour
shop	food	br	Stal voued
shop	funeral_directors	br	Kañvlidoù
shop	furniture	br	Stal arrebeuri
shop	gallery	br	Palier
shop	garden_centre	br	Stal liorzhañ
shop	general	br	Stal hollek
shop	gift	br	Stal profoù
shop	greengrocer	br	Gwerzher frouezh ha legumaj
shop	grocery	br	Ispiserezh
shop	hairdresser	br	Perukenner
shop	hardware	br	Stal urzhiataerezh
shop	hifi	br	Stal Hi-Fi
shop	insurance	br	Asurañs
shop	jewelry	br	Bravigerezh
shop	kiosk	br	Kiosk
shop	laundry	br	Kanndi
shop	mall	br	Palier kenwerzh
shop	market	br	Marc'had
shop	mobile_phone	br	Stal pellgomzerioù hezoug
shop	motorcycle	br	Stal marc'hoù-tan
shop	music	br	Stal sonerezh
shop	newsagent	br	Gwerzher kazetennoù
shop	optician	br	Luneder
shop	organic	br	Stal boued bio
shop	outdoor	br	Stal oberiantizoù diavaez
shop	pet	br	Stal loened
shop	photo	br	Stal luc'hskeudenniñ
shop	salon	br	Saloñs
shop	shoes	br	Stal voteier
shop	shopping_centre	br	Kreizenn-genwerzh
shop	sports	br	Stal sport
shop	stationery	br	Paperaerezh
shop	supermarket	br	Gourmarc'had
shop	toys	br	Stal c'hoarielloù
shop	travel_agency	br	Ajañs-veaj
shop	video	br	Stal videoioù
shop	wine	br	Kavour gwin
tourism	alpine_hut	br	Bod menez
tourism	artwork	br	Oberenn arz
tourism	attraction	br	Tra zedennus
tourism	bed_and_breakfast	br	Bod ha boued
tourism	cabin	br	Kabanenn
tourism	camp_site	br	Tachenn gampiñ
tourism	caravan_site	br	Tachenn karavanennoù
tourism	chalet	br	Ti-menez
tourism	guest_house	br	Ti herberc'h
tourism	hostel	br	Herberc'h
tourism	hotel	br	Leti
tourism	information	br	Titouroù
tourism	lean_to	br	Stand
tourism	motel	br	Motel
tourism	museum	br	Mirdi
tourism	picnic_site	br	Lec'hienn biknikañ
tourism	theme_park	br	Park tematek
tourism	valley	br	Traoñienn
tourism	viewpoint	br	Gwelva
tourism	zoo	br	Zoo
waterway	boatyard	br	Chanter bigi
waterway	canal	br	Kanol
waterway	connector	br	Kevreadur dourredennoù
waterway	dam	br	Chaoser
waterway	derelict_canal	br	Kanol dilezet
waterway	ditch	br	Foz
waterway	dock	br	Dok
waterway	drain	br	Dizourer
waterway	lock	br	Skluz
waterway	lock_gate	br	Skluz
waterway	mineral_spring	br	Mammenn dour melar
waterway	mooring	br	Fes
waterway	rapids	br	Taranoù
waterway	river	br	Stêr
waterway	riverbank	br	Naoz
waterway	stream	br	Gwazh-dour
waterway	wadi	br	Oued
waterway	waterfall	br	Lamm-dour
waterway	water_point	br	Doureg
waterway	weir	br	Stankell
amenity	airport	ca	Aeroport
amenity	arts_centre	ca	Centre d'Art
amenity	atm	ca	Caixer automàtic
amenity	auditorium	ca	Auditori
amenity	bank	ca	Banc
amenity	bar	ca	Bar
amenity	bench	ca	Banc
amenity	bicycle_parking	ca	Aparcament de Bicicletes
amenity	bicycle_rental	ca	Lloguer de bicicletes
amenity	brothel	ca	Prostíbul
amenity	bureau_de_change	ca	Oficina de canvi
amenity	bus_station	ca	Estació d'autobusos
amenity	cafe	ca	Cafè
amenity	car_rental	ca	Lloguer de cotxes
amenity	car_sharing	ca	Per Compartir Cotxe
amenity	car_wash	ca	Rentat de cotxes
amenity	casino	ca	Casino
amenity	cinema	ca	Cinema
amenity	clinic	ca	Clínica
amenity	club	ca	Club
amenity	college	ca	Institut
amenity	community_centre	ca	Centre Comunitari / Centre Cívic
amenity	courthouse	ca	Jutjat
amenity	crematorium	ca	Crematori
amenity	dentist	ca	Dentista
amenity	doctors	ca	Metges
amenity	dormitory	ca	Residència Universitària
amenity	drinking_water	ca	Aigua potable
amenity	driving_school	ca	Autoescola
amenity	embassy	ca	Ambaixada
amenity	emergency_phone	ca	Telèfon d'emergència
amenity	fast_food	ca	Menjar ràpid
amenity	ferry_terminal	ca	Terminal de Ferry
amenity	fire_hydrant	ca	Boca d'incendi
amenity	fire_station	ca	Parc de bombers
amenity	fountain	ca	Font
amenity	fuel	ca	Gasolinera
amenity	grave_yard	ca	Cementiri
amenity	gym	ca	Gimnàs
amenity	hall	ca	Ajuntament
amenity	health_centre	ca	Centre de Salut
amenity	hospital	ca	Hospital
amenity	hotel	ca	Hotel
amenity	hunting_stand	ca	Club de caça
amenity	ice_cream	ca	Gelat
amenity	kindergarten	ca	Jardí d'infància
amenity	library	ca	Biblioteca
amenity	market	ca	Mercat
amenity	marketplace	ca	Mercat
amenity	mountain_rescue	ca	Rescat de Muntanya
amenity	nightclub	ca	Club nocturn
amenity	nursery	ca	Infantil
amenity	nursing_home	ca	Llar d'Avis
amenity	office	ca	Oficina
amenity	park	ca	Parc
amenity	parking	ca	Pàrquing
amenity	pharmacy	ca	Farmàcia
amenity	place_of_worship	ca	Lloc de culte
amenity	police	ca	Policia
amenity	post_box	ca	Bustia
amenity	post_office	ca	Oficina de correus
amenity	preschool	ca	Pre-Escola
amenity	prison	ca	Presó
amenity	pub	ca	Pub
amenity	public_building	ca	Edifici públic
amenity	public_market	ca	Mercat Públic
amenity	reception_area	ca	Àrea de recepció
amenity	recycling	ca	Punt de reciclatge
amenity	restaurant	ca	Restaurant
amenity	retirement_home	ca	Casa de Retirament
amenity	sauna	ca	Sauna
amenity	school	ca	Escola
amenity	shelter	ca	Refugi
amenity	shop	ca	Botiga
amenity	shopping	ca	Botigues
amenity	social_club	ca	Club social
amenity	studio	ca	Estudi
amenity	supermarket	ca	Supermercat
amenity	taxi	ca	Taxi
amenity	telephone	ca	Telèfon públic
amenity	theatre	ca	Teatre
amenity	toilets	ca	Banys
amenity	townhall	ca	Ajuntament
amenity	university	ca	Universitat
amenity	vending_machine	ca	Màquina expenedora
amenity	veterinary	ca	Veterinari
amenity	village_hall	ca	Casa de la Vila
amenity	waste_basket	ca	Cistella de Residus
amenity	wifi	ca	Accés a internet WiFi
amenity	youth_centre	ca	Centre juvenil
boundary	administrative	ca	Administració de Fronteres
building	apartments	ca	Bloc d'apartaments
building	block	ca	Edifici en construcció
building	bunker	ca	Búnker
building	chapel	ca	Capella
building	church	ca	Església
building	city_hall	ca	Ajuntament
building	commercial	ca	Edifici comercial
building	dormitory	ca	Residència Universitària
building	entrance	ca	Entrada de l'Edifici
building	faculty	ca	Edifici facultatiu
building	farm	ca	Instal·lacions agrícoles
building	flats	ca	Pisos
building	garage	ca	Garatge
building	hall	ca	Ajuntament
building	hospital	ca	Edifici hospitalari
building	hotel	ca	Hotel
building	house	ca	Casa
building	industrial	ca	Edifici industrial
building	office	ca	Edifici d'oficines
building	public	ca	Edifici públic
building	residential	ca	Edifici residencial
building	retail	ca	Edifici de Venda al detall
building	school	ca	Edifici escolar
building	shop	ca	Botiga
building	stadium	ca	Estadi
building	store	ca	Magatzem
building	terrace	ca	Terrassa
building	tower	ca	Torre
building	train_station	ca	Estació de tren
building	university	ca	Edifici universitari
highway	bridleway	ca	Ferradura
highway	bus_guideway	ca	Carril Bus
highway	bus_stop	ca	Parada d'autobús
highway	byway	ca	Ruta segregada
highway	construction	ca	Autopista en construcció
highway	cycleway	ca	Ruta per a bicicletes
highway	distance_marker	ca	Marcador de Distància
highway	emergency_access_point	ca	Accés d'emergència
highway	footway	ca	Sendera
highway	ford	ca	Fiord
highway	gate	ca	Porta
highway	living_street	ca	Carrer habitat
highway	minor	ca	Camí secundari
highway	motorway	ca	L'autopista
highway	motorway_junction	ca	L'autopista
highway	motorway_link	ca	L'autopista Road
highway	path	ca	Camí
highway	pedestrian	ca	Via Peatonal
highway	platform	ca	Plataforma
highway	primary	ca	Carretera Principal
highway	primary_link	ca	Carretera principal
highway	raceway	ca	Vial Ràpid
highway	residential	ca	Residencial
highway	road	ca	Carretera
highway	secondary	ca	Carretera secundària
highway	secondary_link	ca	Carretera secundària
highway	service	ca	Carretera de Servei
highway	services	ca	Serveis en ruta
highway	steps	ca	Graons
highway	stile	ca	Escala per a travessar reixats
highway	tertiary	ca	Carretera terciària
highway	track	ca	Pista
highway	trail	ca	Sendera
highway	trunk	ca	Autovia de
highway	trunk_link	ca	Autovia de
highway	unclassified	ca	Sense classificar Road
highway	unsurfaced	ca	Pista sense asfaltar
historic	archaeological_site	ca	Lloc arqueològic
historic	battlefield	ca	Camp de batalla
historic	boundary_stone	ca	Pedra de la frontera
historic	building	ca	Edifici
historic	castle	ca	Castell
historic	church	ca	Església
historic	house	ca	Casa
historic	icon	ca	Icona
historic	manor	ca	Manor
historic	memorial	ca	Memorial
historic	mine	ca	Mina
historic	monument	ca	Monument
historic	museum	ca	Museu
historic	ruins	ca	Ruïnes
historic	tower	ca	Torre
historic	wayside_cross	ca	Camí de la creu
historic	wayside_shrine	ca	Santuari de carreteres
historic	wreck	ca	Wreck
landuse	allotments	ca	Horts
landuse	basin	ca	Conca
landuse	brownfield	ca	Brownfield terra
landuse	cemetery	ca	Cementiri
landuse	commercial	ca	Zona comercial
landuse	conservation	ca	Conservació
landuse	construction	ca	Construcció
landuse	farm	ca	Granja
landuse	farmland	ca	Terres de conreu
landuse	farmyard	ca	Corral
landuse	forest	ca	Bosc
landuse	grass	ca	Herba
landuse	greenfield	ca	Greenfield terra
landuse	industrial	ca	Zona industrial
landuse	landfill	ca	Abocador
landuse	meadow	ca	Prat
landuse	military	ca	Zona Militar
landuse	mine	ca	Mina
landuse	mountain	ca	Muntanya
landuse	nature_reserve	ca	Reserva Natural
landuse	park	ca	Parc
landuse	piste	ca	Pista d'aterratge
landuse	plaza	ca	Plaça
landuse	quarry	ca	Pedrera
landuse	railway	ca	Ferrocarril
landuse	recreation_ground	ca	Zona d'Esbarjo
landuse	reservoir	ca	Embassament
landuse	residential	ca	Àrea residencial
landuse	retail	ca	Al detall
landuse	village_green	ca	Village Green
landuse	vineyard	ca	Vinya
landuse	wetland	ca	Aiguamoll
landuse	wood	ca	Fusta
leisure	beach_resort	ca	Beach Resort
leisure	common	ca	Terra comú
leisure	fishing	ca	Àrea de pesca
leisure	garden	ca	Jardí
leisure	golf_course	ca	Camp de golf
leisure	ice_rink	ca	Pista de patinatge sobre gel
leisure	marina	ca	Port esportiu
leisure	miniature_golf	ca	Minigolf
leisure	nature_reserve	ca	Reserva natural
leisure	park	ca	Parc
leisure	pitch	ca	Camp d'esports
leisure	playground	ca	Parc infantil
leisure	recreation_ground	ca	Terra de recreació
leisure	slipway	ca	Slipway
leisure	sports_centre	ca	Centre esportiu
leisure	stadium	ca	Estadi
leisure	swimming_pool	ca	Piscina
leisure	track	ca	Pista
leisure	water_park	ca	Parc aquàtic
natural	bay	ca	Badia
natural	beach	ca	Platja
natural	cape	ca	Cap
natural	cave_entrance	ca	Entrada a cova
natural	channel	ca	Canal
natural	cliff	ca	Cingle
natural	coastline	ca	Litoral
natural	crater	ca	Cràter
natural	feature	ca	Característica
natural	fell	ca	Forest
natural	fjord	ca	Fiord
natural	geyser	ca	Guèiser
natural	glacier	ca	Glacera
natural	heath	ca	Bruguerar
natural	hill	ca	Pujol
natural	island	ca	Illa
natural	land	ca	Terra
natural	marsh	ca	Marsh
natural	moor	ca	Amarratge
natural	mud	ca	Llot
natural	peak	ca	Pic
natural	point	ca	Punt
natural	reef	ca	Escull
natural	ridge	ca	Cresta
natural	river	ca	Riu
natural	rock	ca	Roca
natural	scree	ca	Pedregar
natural	scrub	ca	Scrub
natural	shoal	ca	Banc
natural	spring	ca	Deu
natural	strait	ca	Estret
natural	tree	ca	Arbre
natural	valley	ca	Vall
natural	volcano	ca	Volcà
natural	water	ca	Aigua
natural	wetland	ca	Aiguamoll
natural	wetlands	ca	Aiguamolls
natural	wood	ca	Bosc
place	airport	ca	Aeroport
place	city	ca	Ciutat
place	country	ca	País
place	county	ca	Comtat
place	farm	ca	Granja
place	hamlet	ca	Aldea
place	house	ca	Casa
place	houses	ca	Cases
place	island	ca	Illa
place	islet	ca	Illot
place	locality	ca	Localitat
place	moor	ca	Amarrador
place	municipality	ca	Municipi
place	postcode	ca	Codi postal
place	region	ca	Regió
place	sea	ca	Mar
place	state	ca	Estat o província
place	subdivision	ca	Subdivisió
place	suburb	ca	Suburbi
place	town	ca	Poble
place	unincorporated_area	ca	Àrea no incorporada
place	village	ca	Aldea
railway	abandoned	ca	Ferrocarril fora de Servei
railway	construction	ca	Ferrocarril en Construcció
railway	disused	ca	Ferrocarril en desús
railway	disused_station	ca	Estació de tren tancada
railway	funicular	ca	Funicular Railway
railway	halt	ca	Parada de tren
railway	historic_station	ca	Estació de tren antiga
railway	junction	ca	Cruïlla de tren
railway	level_crossing	ca	Pas a nivell
railway	light_rail	ca	Tren lleuger
railway	monorail	ca	Monorail
railway	narrow_gauge	ca	Ample ferroviari mètric
railway	platform	ca	Andana
railway	preserved	ca	Conservat ferrocarril
railway	spur	ca	Esperó de ferrocarril
railway	station	ca	Estació de tren
railway	subway	ca	Estació de metro
railway	subway_entrance	ca	Accés al Metro
railway	switch	ca	Punts de ferrocarril
railway	tram	ca	Tramvia
railway	tram_stop	ca	Parada de tramvia
railway	yard	ca	Pati de ferrocarril
shop	alcohol	ca	De llicència
shop	apparel	ca	Roba de la botiga
shop	art	ca	Galeria d'Art
shop	bakery	ca	Fleca
shop	beauty	ca	Saló de bellesa
shop	beverages	ca	Botiga de begudes
shop	bicycle	ca	Tenda de bicicletes
shop	books	ca	Llibreria
shop	butcher	ca	Carnisseria
shop	car	ca	Venda de Cotxes
shop	car_dealer	ca	Compra-venda de cotxes
shop	car_parts	ca	Peces de cotxes
shop	carpet	ca	Botiga de catifes
shop	car_repair	ca	Reparació d'automòbils
shop	charity	ca	Botiga de caritat
shop	chemist	ca	Farmàcia
shop	clothes	ca	Botiga de roba
shop	computer	ca	Botiga d'informàtica
shop	confectionery	ca	Confiteria botiga
shop	convenience	ca	Botiga de conveniència
shop	copyshop	ca	Copisteria
shop	cosmetics	ca	Botiga Cosmètica
shop	department_store	ca	Department Store
shop	discount	ca	Botiga d'articles de descompte
shop	doityourself	ca	Bricolatge
shop	drugstore	ca	Farmàcia
shop	dry_cleaning	ca	Tintoreria
shop	electronics	ca	Botiga d'electrònica
shop	estate_agent	ca	Immobiliària
shop	farm	ca	Agrobotiga
shop	fashion	ca	Botiga de moda
shop	fish	ca	Peixateria
shop	florist	ca	Floristeria
shop	food	ca	Botiga de menjar
shop	funeral_directors	ca	Funeral d'administració
shop	furniture	ca	Mobles
shop	gallery	ca	Galeria de fotos
shop	garden_centre	ca	Centre de jardí
shop	general	ca	Magatzem General
shop	gift	ca	Botiga de regals
shop	greengrocer	ca	Greengrocer
shop	grocery	ca	Botiga de queviures
shop	hairdresser	ca	Perruqueria o barberia
shop	hardware	ca	Botiga de maquinari
shop	hifi	ca	Hi-Fi
shop	insurance	ca	Homes For Sale
shop	jewelry	ca	Joieria
shop	kiosk	ca	Quiosc botiga
shop	laundry	ca	Bugaderia
shop	mall	ca	Centre comercial
shop	market	ca	Mercat
shop	mobile_phone	ca	Botiga de telèfon mòbil
shop	motorcycle	ca	Botiga de motocicletes
shop	music	ca	Botiga de música
shop	newsagent	ca	Quiosc
shop	optician	ca	Òptica
shop	organic	ca	Botiga d'aliments orgànics
shop	outdoor	ca	Botiga exterior
shop	pet	ca	Botiga d'animals
shop	photo	ca	Botiga de foto
shop	salon	ca	Sala d'estar
shop	shoes	ca	Sabateria
shop	shopping_centre	ca	Centre comercial
shop	sports	ca	Botiga d'esports
shop	stationery	ca	Botiga de papereria
shop	supermarket	ca	Supermercat
shop	toys	ca	Botiga de joguines
shop	travel_agency	ca	Agència de viatges
shop	video	ca	Video de la botiga
shop	wine	ca	De llicència
tourism	alpine_hut	ca	Cabanya alpina
tourism	artwork	ca	Il·lustració
tourism	attraction	ca	Atracció
tourism	bed_and_breakfast	ca	Llist i esmorzar (B&B)
tourism	cabin	ca	Cabanya
tourism	camp_site	ca	Campament
tourism	caravan_site	ca	Càmping per a caravanes
tourism	chalet	ca	Xalet
tourism	guest_house	ca	Alberg
tourism	hostel	ca	Hostal
tourism	hotel	ca	Hotel
tourism	information	ca	Informació
tourism	lean_to	ca	Nau
tourism	motel	ca	Motel
tourism	museum	ca	Museu
tourism	picnic_site	ca	Àrea de pícnic
tourism	theme_park	ca	Parc temàtic
tourism	valley	ca	Vall
tourism	viewpoint	ca	Mirador
tourism	zoo	ca	Zoològic
waterway	boatyard	ca	Drassana
waterway	canal	ca	Canal
waterway	connector	ca	Connector de Waterway
waterway	dam	ca	Dam
waterway	derelict_canal	ca	Hi Canal
waterway	ditch	ca	Séquia
waterway	dock	ca	No obstant això,
waterway	drain	ca	De drenatge
waterway	lock	ca	Pany
waterway	lock_gate	ca	Porta de panys
waterway	mineral_spring	ca	Mineral primavera
waterway	mooring	ca	Amarradors
waterway	rapids	ca	Ràpids
waterway	river	ca	Riu
waterway	riverbank	ca	Riverbank
waterway	stream	ca	Stream
waterway	wadi	ca	Torrent
waterway	waterfall	ca	Cascada
waterway	water_point	ca	Punt d'aigua
waterway	weir	ca	Weir
amenity	airport	cs	Letiště
amenity	arts_centre	cs	Kulturní centrum
amenity	atm	cs	Bankomat
amenity	auditorium	cs	Posluchárna
amenity	bank	cs	Banka
amenity	bar	cs	Bar
amenity	bench	cs	Lavička
amenity	bicycle_parking	cs	Parkoviště pro kola
amenity	bicycle_rental	cs	Půjčovna kol
amenity	brothel	cs	Nevěstinec
amenity	bureau_de_change	cs	Směnárna
amenity	bus_station	cs	Autobusové nádraží
amenity	cafe	cs	Kavárna
amenity	car_rental	cs	Půjčovna aut
amenity	car_sharing	cs	Sdílení aut
amenity	car_wash	cs	Automyčka
amenity	casino	cs	Kasino
amenity	cinema	cs	Kino
amenity	clinic	cs	Klinika
amenity	club	cs	Klub
amenity	college	cs	Vysoká škola
amenity	community_centre	cs	Komunitní centrum
amenity	courthouse	cs	Soud
amenity	crematorium	cs	Krematorium
amenity	dentist	cs	Zubař
amenity	doctors	cs	Lékař
amenity	dormitory	cs	Kolej
amenity	drinking_water	cs	Pitná voda
amenity	driving_school	cs	Autoškola
amenity	embassy	cs	Velvyslanectví
amenity	emergency_phone	cs	Nouzový telefon
amenity	fast_food	cs	Rychlé občerstvení
amenity	ferry_terminal	cs	Přístaviště přívozu
amenity	fire_hydrant	cs	Požární hydrant
amenity	fire_station	cs	Hasičská stanice
amenity	fountain	cs	Fontána
amenity	fuel	cs	Čerpací stanice
amenity	grave_yard	cs	Hřbitov
amenity	gym	cs	Fitness centrum / tělocvična
amenity	hall	cs	Sál
amenity	health_centre	cs	Zdravotní středisko
amenity	hospital	cs	Nemocnice
amenity	hotel	cs	Hotel
amenity	hunting_stand	cs	Posed
amenity	ice_cream	cs	Zmrzlinárna
amenity	kindergarten	cs	Mateřská škola
amenity	library	cs	Knihovna
amenity	market	cs	Obchod
amenity	marketplace	cs	Tržiště
amenity	mountain_rescue	cs	Horská služba
amenity	nightclub	cs	Noční klub
amenity	nursery	cs	Jesle
amenity	nursing_home	cs	Pečovatelský dům
amenity	office	cs	Úřad
amenity	park	cs	Park
amenity	parking	cs	Parkoviště
amenity	pharmacy	cs	Lékárna
amenity	place_of_worship	cs	Náboženský objekt
amenity	police	cs	Policie
amenity	post_box	cs	Poštovní schránka
amenity	post_office	cs	Pošta
amenity	preschool	cs	Mateřská škola
amenity	prison	cs	Věznice
amenity	pub	cs	Hospoda
amenity	public_building	cs	Veřejná budova
amenity	public_market	cs	Veřejný trh
amenity	reception_area	cs	Recepce
amenity	recycling	cs	Tříděný odpad
amenity	restaurant	cs	Restaurace
amenity	retirement_home	cs	Domov důchodců
amenity	sauna	cs	Sauna
amenity	school	cs	Škola
amenity	shelter	cs	Přístřeší
amenity	shop	cs	Obchod
amenity	shopping	cs	Nákupní centrum
amenity	social_club	cs	Společenský klub
amenity	studio	cs	Studio
amenity	supermarket	cs	Supermarket
amenity	taxi	cs	Taxi
amenity	telephone	cs	Telefonní automat
amenity	theatre	cs	Divadlo
amenity	toilets	cs	Toalety
amenity	townhall	cs	Radnice
amenity	university	cs	Univerzita
amenity	vending_machine	cs	Prodejní automat
amenity	veterinary	cs	Veterinární ordinace
amenity	village_hall	cs	Společenský sál
amenity	waste_basket	cs	Odpadkový koš
amenity	wifi	cs	Přístupový bod WiFi
amenity	youth_centre	cs	Centrum pro mládež
boundary	administrative	cs	Administrativní hranice
building	apartments	cs	Bytový dům
building	block	cs	Blok budov
building	bunker	cs	Bunkr
building	chapel	cs	Kaple
building	church	cs	Kostel
building	city_hall	cs	Radnice
building	commercial	cs	Komerční budova
building	dormitory	cs	Kolej
building	entrance	cs	Vstup do objektu
building	faculty	cs	Fakultní budova
building	farm	cs	Hospodářská budova
building	flats	cs	Byty
building	garage	cs	Garáž
building	hall	cs	Sál
building	hospital	cs	Nemocniční budova
building	hotel	cs	Hotel
building	house	cs	Dům
building	industrial	cs	Průmyslová budova
building	office	cs	Kancelářská budova
building	public	cs	Veřejná budova
building	residential	cs	Obytná budova
building	retail	cs	Maloobchodní budova
building	school	cs	Školní budova
building	shop	cs	Obchod
building	stadium	cs	Stadion
building	store	cs	Obchodní dům
building	terrace	cs	Řadová zástavba
building	tower	cs	Věž
building	train_station	cs	Železniční stanice
building	university	cs	Univerzitní budova
highway	bridleway	cs	Koňská stezka
highway	bus_guideway	cs	Autobusová dráha
highway	bus_stop	cs	Autobusová zastávka
highway	byway	cs	Účelová komunikace
highway	construction	cs	Silnice ve výstavbě
highway	cycleway	cs	Cyklostezka
highway	distance_marker	cs	Kilometrovník
highway	emergency_access_point	cs	Nouzový lokalizační bod
highway	footway	cs	Chodník
highway	ford	cs	Brod
highway	gate	cs	Brána
highway	living_street	cs	Obytná zóna
highway	minor	cs	Vedlejší silnice
highway	motorway	cs	Dálnice
highway	motorway_junction	cs	Dálniční křižovatka
highway	motorway_link	cs	Dálnice
highway	path	cs	Pěšina
highway	pedestrian	cs	Pěší zóna
highway	platform	cs	Nástupiště
highway	primary	cs	Silnice první třídy
highway	primary_link	cs	Silnice první třídy
highway	raceway	cs	Závodní dráha
highway	residential	cs	Ulice
highway	road	cs	Cesta
highway	secondary	cs	Silnice druhé třídy
highway	secondary_link	cs	Silnice druhé třídy
highway	service	cs	Účelová komunikace
highway	services	cs	Dálniční odpočívadlo
highway	steps	cs	Schody
highway	stile	cs	Schůdky přes ohradu
highway	tertiary	cs	Silnice třetí třídy
highway	track	cs	Cesta
highway	trail	cs	Stezka
highway	trunk	cs	Významná silnice
highway	trunk_link	cs	Významná silnice
highway	unclassified	cs	Silnice
highway	unsurfaced	cs	Nezpevněná cesta
historic	archaeological_site	cs	Archeologické naleziště
historic	battlefield	cs	Bojiště
historic	boundary_stone	cs	Hraniční kámen
historic	building	cs	Budova
historic	castle	cs	Hrad
historic	church	cs	Kostel
historic	house	cs	Dům
historic	icon	cs	Ikona
historic	manor	cs	Panství
historic	memorial	cs	Památník
historic	mine	cs	Důl
historic	monument	cs	Pomník
historic	museum	cs	Muzeum
historic	ruins	cs	Zřícenina
historic	tower	cs	Věž
historic	wayside_cross	cs	Boží muka
historic	wayside_shrine	cs	Boží muka
historic	wreck	cs	Vrak
landuse	allotments	cs	Zahrádkářská kolonie
landuse	basin	cs	Vodní nádrž
landuse	brownfield	cs	Brownfield
landuse	cemetery	cs	Hřbitov
landuse	commercial	cs	Komerční zóna
landuse	conservation	cs	Chráněné území
landuse	construction	cs	Staveniště
landuse	farm	cs	Farma
landuse	farmland	cs	Zemědělská půda
landuse	farmyard	cs	Dvůr
landuse	forest	cs	Les
landuse	grass	cs	Trávník
landuse	greenfield	cs	Zelená plocha pro výstavbu
landuse	industrial	cs	Průmyslová zóna
landuse	landfill	cs	Skládka
landuse	meadow	cs	Louka
landuse	military	cs	Vojenský prostor
landuse	mine	cs	Důl
landuse	mountain	cs	Hory
landuse	nature_reserve	cs	Přírodní rezervace
landuse	park	cs	Park
landuse	piste	cs	Sjezdovka
landuse	plaza	cs	Náměstí
landuse	quarry	cs	Lom
landuse	railway	cs	Železnice
landuse	recreation_ground	cs	Rekreační oblast
landuse	reservoir	cs	Zásobník na vodu
landuse	residential	cs	Rezidenční oblast
landuse	retail	cs	Maloobchody
landuse	village_green	cs	Náves
landuse	vineyard	cs	Vinice
landuse	wetland	cs	Mokřad
landuse	wood	cs	Neudržovaný les
leisure	beach_resort	cs	Pobřežní letovisko
leisure	common	cs	Obecní půda
leisure	fishing	cs	Rybářská oblast
leisure	garden	cs	Zahrada
leisure	golf_course	cs	Golfové hřiště
leisure	ice_rink	cs	Kluziště
leisure	marina	cs	Přístav
leisure	miniature_golf	cs	Minigolf
leisure	nature_reserve	cs	Přírodní rezervace
leisure	park	cs	Park
leisure	pitch	cs	Hřiště
leisure	playground	cs	Dětské hřiště
leisure	recreation_ground	cs	Rekreační oblast
leisure	slipway	cs	Skluzavka
leisure	sports_centre	cs	Sportovní centrum
leisure	stadium	cs	Stadion
leisure	swimming_pool	cs	Bazén
leisure	track	cs	Běžecká dráha
leisure	water_park	cs	Aquapark
natural	bay	cs	Záliv
natural	beach	cs	Pláž
natural	cape	cs	Mys
natural	cave_entrance	cs	Vstup do jeskyně
natural	channel	cs	Kanál
natural	cliff	cs	Útes
natural	coastline	cs	Pobřežní čára
natural	crater	cs	Kráter
natural	feature	cs	Prvek
natural	fell	cs	See http://wiki.openstreetmap.org/wiki/Tag:natural=fell
natural	fjord	cs	Fjord
natural	geyser	cs	Gejzír
natural	glacier	cs	Ledovec
natural	heath	cs	Vřesoviště
natural	hill	cs	Kopec
natural	island	cs	Ostrov
natural	land	cs	Země
natural	marsh	cs	Mokřina
natural	moor	cs	Vřesoviště
natural	mud	cs	Bahno
natural	peak	cs	Vrchol
natural	point	cs	Bod
natural	reef	cs	Útes
natural	ridge	cs	Hřeben
natural	river	cs	Řeka
natural	rock	cs	Skalisko
natural	scree	cs	Osyp
natural	scrub	cs	Rumiště
natural	shoal	cs	Mělčina
natural	spring	cs	Pramen
natural	strait	cs	Úžina
natural	tree	cs	Strom
natural	valley	cs	Údolí
natural	volcano	cs	Sopka
natural	water	cs	Vodní plocha
natural	wetland	cs	Mokřad
natural	wetlands	cs	Mokřad
natural	wood	cs	Neudržovaný les
place	airport	cs	Letiště
place	city	cs	Velkoměsto
place	country	cs	Stát
place	county	cs	Hrabství
place	farm	cs	Farma
place	hamlet	cs	Osada
place	house	cs	Dům
place	houses	cs	Budovy
place	island	cs	Ostrov
place	islet	cs	Ostrůvek
place	locality	cs	Oblast
place	moor	cs	Bažina
place	municipality	cs	Obecní úřad
place	postcode	cs	PSČ
place	region	cs	Region
place	sea	cs	Moře
place	state	cs	Stát
place	subdivision	cs	Parcely
place	suburb	cs	Městská část
place	town	cs	Město
place	unincorporated_area	cs	Nezařazená oblast
place	village	cs	Vesnice
railway	abandoned	cs	Zrušená železniční trať
railway	construction	cs	Železnice ve výstavbě
railway	disused	cs	Nepoužívaná železniční trať
railway	disused_station	cs	Nepoužívaná železniční stanice
railway	funicular	cs	Lanová dráha
railway	halt	cs	Železniční zastávka
railway	historic_station	cs	Nádraží historické železnice
railway	junction	cs	Kolejové rozvětvení
railway	level_crossing	cs	Železniční přejezd
railway	light_rail	cs	Rychlodráha
railway	monorail	cs	Monorail
railway	narrow_gauge	cs	Úzkorozchodná dráha
railway	platform	cs	Železniční nástupiště
railway	preserved	cs	Historická železnice
railway	spur	cs	Železniční vlečka
railway	station	cs	Železniční stanice
railway	subway	cs	Stanice metra
railway	subway_entrance	cs	Vstup do metra
railway	switch	cs	Výhybka
railway	tram	cs	Tramvajová trať
railway	tram_stop	cs	Tramvajová zastávka
railway	yard	cs	Přednádraží
shop	alcohol	cs	Prodej alkoholu
shop	apparel	cs	Prodej oděvů
shop	art	cs	Prodej umění
shop	bakery	cs	Pekařství
shop	beauty	cs	Salón krásy
shop	beverages	cs	Prodej nápojů
shop	bicycle	cs	Cykloobchod
shop	books	cs	Knihkupectví
shop	butcher	cs	Řeznictví
shop	car	cs	Prodej automobilů
shop	car_dealer	cs	Prodej automobilů
shop	car_parts	cs	Prodej autodílů
shop	carpet	cs	Obchod s koberci
shop	car_repair	cs	Autoservis
shop	charity	cs	Charitativní obchod
shop	chemist	cs	Drogerie
shop	clothes	cs	Prodej oděvů
shop	computer	cs	Prodej počítačů
shop	confectionery	cs	Cukrárna
shop	convenience	cs	Smíšené zboží
shop	copyshop	cs	Copycentrum
shop	cosmetics	cs	Parfumerie
shop	department_store	cs	Obchodní dům
shop	discount	cs	Diskontní prodejna
shop	doityourself	cs	Obchod pro kutily
shop	drugstore	cs	Lékárna
shop	dry_cleaning	cs	Chemická čistírna
shop	electronics	cs	Prodej elektroniky
shop	estate_agent	cs	Realitní kancelář
shop	farm	cs	Prodej zemědělských výrobků
shop	fashion	cs	Módní salón
shop	fish	cs	Rybárna
shop	florist	cs	Květinářství
shop	food	cs	Potraviny
shop	funeral_directors	cs	Pohřební služba
shop	furniture	cs	Prodej nábytku
shop	gallery	cs	Galerie
shop	garden_centre	cs	Zahradnictví
shop	general	cs	Smíšení zboží
shop	gift	cs	Dárkové zboží, suvenýry
shop	greengrocer	cs	Ovoce–zelenina
shop	grocery	cs	Prodej potravin
shop	hairdresser	cs	Kadeřnictví
shop	hardware	cs	Železářství
shop	hifi	cs	Prodej Hi-Fi elektroniky
shop	insurance	cs	Pojišťovna
shop	jewelry	cs	Klenotnictví
shop	kiosk	cs	Kiosek
shop	laundry	cs	Prádelna
shop	mall	cs	Nákupní centrum
shop	market	cs	Obchod
shop	mobile_phone	cs	Prodej mobilních telefonů
shop	motorcycle	cs	Prodej motocyklů
shop	music	cs	Prodej hudby
shop	newsagent	cs	Novinový stánek
shop	optician	cs	Oční optika
shop	organic	cs	Prodej biopotravin
shop	outdoor	cs	Outdoorový obchod
shop	pet	cs	Prodejna pro chovatele
shop	photo	cs	Prodejna foto
shop	salon	cs	Salón
shop	shoes	cs	Obuvnictví
shop	shopping_centre	cs	Nákupní centrum
shop	sports	cs	Prodejna pro sportovce
shop	stationery	cs	Papírnictví
shop	supermarket	cs	Supermarket
shop	toys	cs	Hračkářství
shop	travel_agency	cs	Cestovní kancelář
shop	video	cs	Videopůjčovna, prodej DVD
shop	wine	cs	Vinárna
tourism	alpine_hut	cs	Vysokohorská chata
tourism	artwork	cs	Umělecké dílo
tourism	attraction	cs	Turistická atrakce
tourism	bed_and_breakfast	cs	Ubytování Bed & Breakfast
tourism	cabin	cs	Chatka
tourism	camp_site	cs	Tábořiště, kemp
tourism	caravan_site	cs	Autokemping
tourism	chalet	cs	Chalupa
tourism	guest_house	cs	Penzion
tourism	hostel	cs	Hostel
tourism	hotel	cs	Hotel
tourism	information	cs	Turistické informace
tourism	lean_to	cs	Přístřešek
tourism	motel	cs	Motel
tourism	museum	cs	Muzeum
tourism	picnic_site	cs	Piknikové místo
tourism	theme_park	cs	Zábavní park
tourism	valley	cs	Údolí
tourism	viewpoint	cs	Místo s dobrým výhledem
tourism	zoo	cs	Zoo
waterway	boatyard	cs	Loděnice
waterway	canal	cs	Kanál
waterway	connector	cs	Propojení vodních cest
waterway	dam	cs	Přehrada
waterway	derelict_canal	cs	Opuštěný kanál
waterway	ditch	cs	Meliorační kanál
waterway	dock	cs	Dok
waterway	drain	cs	Odvodňovací kanál
waterway	lock	cs	Zdymadlo
waterway	lock_gate	cs	Vrata plavební komory
waterway	mineral_spring	cs	Minerální pramen
waterway	mooring	cs	Kotviště
waterway	rapids	cs	Peřeje
waterway	river	cs	Řeka
waterway	riverbank	cs	Břeh řeky
waterway	stream	cs	Potok
waterway	wadi	cs	Vádí
waterway	waterfall	cs	Vodopád
waterway	water_point	cs	Vodní bod
waterway	weir	cs	Jez
amenity	airport	da	Lufthavn
amenity	arts_centre	da	Kunstcenter
amenity	atm	da	Pengeautomat
amenity	auditorium	da	Auditorium
amenity	bank	da	Bank
amenity	bar	da	Bar
amenity	bench	da	Bænk
amenity	bicycle_parking	da	Cykelparkering
amenity	bicycle_rental	da	Cykeludlejning
amenity	brothel	da	Bordel
amenity	bureau_de_change	da	Vekselkontor
amenity	bus_station	da	Busstation
amenity	cafe	da	Café
amenity	car_rental	da	Biludlejning
amenity	car_sharing	da	Delebiler
amenity	car_wash	da	Bilvask
amenity	casino	da	Kasino
amenity	cinema	da	Biograf
amenity	clinic	da	Klinik
amenity	club	da	Klub
amenity	college	da	College
amenity	community_centre	da	Fællesskabscenter
amenity	courthouse	da	Retsbygning
amenity	crematorium	da	Krematorium
amenity	dentist	da	Tandlæge
amenity	doctors	da	Læger
amenity	dormitory	da	Kollegium
amenity	drinking_water	da	Drikkevand
amenity	driving_school	da	Køreskole
amenity	embassy	da	Ambassade
amenity	emergency_phone	da	Nødtelefon
amenity	fast_food	da	Fastfood
amenity	ferry_terminal	da	Færgeterminal
amenity	fire_hydrant	da	Brandhane
amenity	fire_station	da	Brandstation
amenity	fountain	da	Springvand
amenity	fuel	da	Benzinstation
amenity	grave_yard	da	Kirkegård
amenity	gym	da	Træningscenter
amenity	hall	da	Forsamlingshal
amenity	health_centre	da	Sundhedscenter
amenity	hospital	da	Sygehus
amenity	hotel	da	Hotel
amenity	hunting_stand	da	Jagtplatform
amenity	ice_cream	da	Is
amenity	kindergarten	da	Børnehave
amenity	library	da	Bibliotek
amenity	market	da	Marked
amenity	marketplace	da	Markedsplads
amenity	mountain_rescue	da	Bjergredning
amenity	nightclub	da	Natklub
amenity	nursery	da	Børnehaveklasse
amenity	nursing_home	da	Plejehjem
amenity	office	da	Kontor
amenity	park	da	Park
amenity	parking	da	Parkering
amenity	pharmacy	da	Apotek
amenity	place_of_worship	da	Kultsted
amenity	police	da	Politi
amenity	post_box	da	Postkasse
amenity	post_office	da	Postkontor
amenity	preschool	da	Børnehaveklasse
amenity	prison	da	Fængsel
amenity	pub	da	Pub
amenity	public_building	da	Offentlig bygning
amenity	public_market	da	Offentligt marked
amenity	reception_area	da	Modtagelsesområde
amenity	recycling	da	Genbrugsstation
amenity	restaurant	da	Restaurant
amenity	retirement_home	da	Plejehjem
amenity	sauna	da	Sauna
amenity	school	da	Skole
amenity	shelter	da	Shelter
amenity	shop	da	Forretning
amenity	shopping	da	Indkøb
amenity	social_club	da	Social klub
amenity	studio	da	Studie
amenity	supermarket	da	Supermarked
amenity	taxi	da	Taxa
amenity	telephone	da	Offentlig telefon
amenity	theatre	da	Teater
amenity	toilets	da	Toiletter
amenity	townhall	da	Rådhus
amenity	university	da	Universitet
amenity	vending_machine	da	Automat
amenity	veterinary	da	Dyrlæge
amenity	village_hall	da	Forsamlingshus
amenity	waste_basket	da	Skraldespand
amenity	wifi	da	WiFi-adgangspunkt
amenity	youth_centre	da	Ungdomscenter
boundary	administrative	da	Administrativ grænse
building	apartments	da	Lejlighedsblok
building	block	da	Bygningsblok
building	bunker	da	Bunker
building	chapel	da	Kapel
building	church	da	Kirke
building	city_hall	da	Rådhus
building	commercial	da	Erhvervsbygning
building	dormitory	da	Kollegium
building	entrance	da	Bygningsindgang
building	faculty	da	Fakultetsbygning
building	farm	da	Landbrugsbygning
building	flats	da	Lejligheder
building	garage	da	Garage
building	hall	da	Hal
building	hospital	da	Sygehusbygning
building	hotel	da	Hotel
building	house	da	Hus
building	industrial	da	Industribygning
building	office	da	Kontorbygning
building	public	da	Offentlig bygning
building	residential	da	Beboelsesbygning
building	retail	da	Detailhandelbygning
building	school	da	Skolebygning
building	shop	da	Forretning
building	stadium	da	Stadion
building	store	da	Butik
building	terrace	da	Terrasse
building	tower	da	Tårn
building	train_station	da	Jernbanestation
building	university	da	Universitetsbygning
highway	bridleway	da	Ridesti
highway	bus_guideway	da	Styret busspor
highway	bus_stop	da	Busstoppested
highway	byway	da	Stikvej
highway	construction	da	Vej under konstruktion
highway	cycleway	da	Cykelsti
highway	distance_marker	da	Afstandsmarkør
highway	emergency_access_point	da	Nødudgangspunkt
highway	footway	da	Gangsti
highway	ford	da	Vadested
highway	gate	da	Låge
highway	living_street	da	Vej med legende børn
highway	minor	da	Mindre vej
highway	motorway	da	Motorvej
highway	motorway_junction	da	Motorvejsafkørsel
highway	motorway_link	da	Af-/tilkørsel til motorvej
highway	path	da	Sti
highway	pedestrian	da	Gågade
highway	platform	da	Perron
highway	primary	da	Hovedvej (primærrute)
highway	primary_link	da	Hovedvej (primærrute)
highway	raceway	da	Racerbane
highway	residential	da	Vej i byområder
highway	road	da	Vej
highway	secondary	da	Hovedvej (sekundærrute)
highway	secondary_link	da	Hovedvej (sekundærrute)
highway	service	da	Adgangsvej
highway	services	da	Motorvejsserviceområde
highway	steps	da	Trappe
highway	stile	da	Fåretrappe
highway	tertiary	da	Hovedvej
highway	track	da	Hjulspor
highway	trail	da	Spor
highway	trunk	da	Motortrafikvej
highway	trunk_link	da	Motortrafikvej
highway	unclassified	da	Anden vej
highway	unsurfaced	da	Uasfalteret vej
historic	archaeological_site	da	Arkæologisk sted
historic	battlefield	da	Slagmark
historic	boundary_stone	da	Grænsesten
historic	building	da	Bygning
historic	castle	da	Slot
historic	church	da	Kirke
historic	house	da	Hus
historic	icon	da	Ikon
historic	manor	da	Herregård
historic	memorial	da	Mindesmærke
historic	mine	da	Mine
historic	monument	da	Monument
historic	museum	da	Museum
historic	ruins	da	Ruin
historic	tower	da	Tårn
historic	wayside_cross	da	Vejkors
historic	wayside_shrine	da	Vejside helligdom
historic	wreck	da	Vrag
landuse	allotments	da	Kolonihaver
landuse	basin	da	Bassin
landuse	brownfield	da	Tidligere industriområde
landuse	cemetery	da	Begravelsesplads
landuse	commercial	da	Erhvervsområde
landuse	conservation	da	Fredet
landuse	construction	da	Byggeri
landuse	farm	da	Gård
landuse	farmland	da	Landbrugsjord
landuse	farmyard	da	Gårdsplads
landuse	forest	da	Skov
landuse	grass	da	Græs
landuse	greenfield	da	Ikke-udviklet område
landuse	industrial	da	Industriområde
landuse	landfill	da	Losseplads
landuse	meadow	da	Eng
landuse	military	da	Militært område
landuse	mine	da	Mine
landuse	mountain	da	Bjerg
landuse	nature_reserve	da	Naturreservat
landuse	park	da	Park
landuse	piste	da	Piste
landuse	plaza	da	Torv
landuse	quarry	da	Stenbrud/grusgrav
landuse	railway	da	Jernbane
landuse	recreation_ground	da	Idrætsplads
landuse	reservoir	da	Reservoir
landuse	residential	da	Boligområde
landuse	retail	da	Detailhandel
landuse	village_green	da	Forte
landuse	vineyard	da	Vingård
landuse	wetland	da	Vådområde
landuse	wood	da	Skov
leisure	beach_resort	da	Badestrand
leisure	common	da	Fælles arealer
leisure	fishing	da	Fiskeområde
leisure	garden	da	Have
leisure	golf_course	da	Golfbane
leisure	ice_rink	da	Skøjtebane
leisure	marina	da	Bådehavn
leisure	miniature_golf	da	Minigolf
leisure	nature_reserve	da	Naturreservat
leisure	park	da	Park
leisure	pitch	da	Sportsarena
leisure	playground	da	Legeplads
leisure	recreation_ground	da	Idrætsplads
leisure	slipway	da	Bedding
leisure	sports_centre	da	Sportscenter
leisure	stadium	da	Stadion
leisure	swimming_pool	da	Svømmebasin
leisure	track	da	Løbebane
leisure	water_park	da	Vandland
natural	bay	da	Bugt
natural	beach	da	Strand
natural	cape	da	Odde
natural	cave_entrance	da	Huleindgang
natural	channel	da	Kanal
natural	cliff	da	Forbjerg
natural	coastline	da	Kystlinje
natural	crater	da	Krater
natural	feature	da	Landskabsdetalje
natural	fell	da	Fjeld
natural	fjord	da	Fjord
natural	geyser	da	Gejser
natural	glacier	da	Gletsjer
natural	heath	da	Hede
natural	hill	da	Bakke
natural	island	da	Ø
natural	land	da	Land
natural	marsh	da	Marsk
natural	moor	da	Bjerghede
natural	mud	da	Mudder
natural	peak	da	Top
natural	point	da	Punkt
natural	reef	da	Rev
natural	ridge	da	Bjergkam
natural	river	da	Flod
natural	rock	da	Klippe
natural	scree	da	Klint
natural	scrub	da	Krat
natural	shoal	da	Sandbanke
natural	spring	da	Kilde
natural	strait	da	Sund
natural	tree	da	Træ
natural	valley	da	Dal
natural	volcano	da	Vulkan
natural	water	da	Vand
natural	wetland	da	Vådområde
natural	wetlands	da	Vådområder
natural	wood	da	Skov
place	airport	da	Lufthavn
place	city	da	Storby
place	country	da	Land
place	county	da	Amt
place	farm	da	Gård
place	hamlet	da	Bebyggelse
place	house	da	Hus
place	houses	da	Huse
place	island	da	Ø
place	islet	da	Holm
place	locality	da	Sted
place	moor	da	Hede
place	municipality	da	Kommune
place	postcode	da	Postnummer
place	region	da	Region
place	sea	da	Hav
place	state	da	Stat
place	subdivision	da	Underafdeling
place	suburb	da	Forstad
place	town	da	By
place	unincorporated_area	da	Kommunefrit område
place	village	da	Landsby
railway	abandoned	da	Forladt jernbane
railway	construction	da	Jernbane under konstruktion
railway	disused	da	Nedlagt jernbane
railway	disused_station	da	Nedlagt jernbanestation
railway	funicular	da	Kabelbane
railway	halt	da	Togstoppested
railway	historic_station	da	Historisk jernbanestation
railway	junction	da	Jernbaneovergang
railway	level_crossing	da	Jernbaneoverskæring
railway	light_rail	da	Bybane
railway	monorail	da	Monorail
railway	narrow_gauge	da	Smalsporjernbane
railway	platform	da	Jernbaneperron
railway	preserved	da	Bevaret jernbane
railway	spur	da	Jernbanesidespor
railway	station	da	Jernbanestation
railway	subway	da	Undergrundsstation
railway	subway_entrance	da	Undergrundsindgang
railway	switch	da	Sporskifte
railway	tram	da	Sporvej
railway	tram_stop	da	Sporvognsstoppested
railway	yard	da	Jernbaneterræn
shop	alcohol	da	Spiritusforretning
shop	apparel	da	Tøjbutik
shop	art	da	Kunstbutik
shop	bakery	da	Bager
shop	beauty	da	Skønhedssalon
shop	beverages	da	Drikkevareforretning
shop	bicycle	da	Cykelhandel
shop	books	da	Boghandel
shop	butcher	da	Slagter
shop	car	da	Bilforhandler
shop	car_dealer	da	Bilforhandler
shop	car_parts	da	Bilreservedele
shop	carpet	da	Tæppebutik
shop	car_repair	da	Bilværksted
shop	charity	da	Velgørenhedsbutik
shop	chemist	da	Apotek
shop	clothes	da	Tøjbutik
shop	computer	da	Computerforretning
shop	confectionery	da	Slikbutik
shop	convenience	da	Kiosk
shop	copyshop	da	Kopibutik
shop	cosmetics	da	Kosmetikforretning
shop	department_store	da	Varehus
shop	discount	da	Tilbudsbutik
shop	doityourself	da	Gør-det-selv
shop	drugstore	da	Apotek
shop	dry_cleaning	da	Renseri
shop	electronics	da	Elektronikforretning
shop	estate_agent	da	Ejendomsmægler
shop	farm	da	Gårdbutik
shop	fashion	da	Modebutik
shop	fish	da	Fiskehandler
shop	florist	da	Blomsterhandler
shop	food	da	Fødevarehandel
shop	funeral_directors	da	Begravelsesforretning
shop	furniture	da	Møbler
shop	gallery	da	Galleri
shop	garden_centre	da	Havecenter
shop	general	da	Landhandel
shop	gift	da	Souvenirbutik
shop	greengrocer	da	Grønthandler
shop	grocery	da	Købmand
shop	hairdresser	da	Frisør
shop	hardware	da	Byggemarked
shop	hifi	da	Hi-Fi
shop	insurance	da	Forsikring
shop	jewelry	da	Guldsmed
shop	kiosk	da	Kiosk
shop	laundry	da	Vaskeri
shop	mall	da	Indkøbscenter
shop	market	da	Marked
shop	mobile_phone	da	Mobiltelefonforretning
shop	motorcycle	da	Motorcykelbutik
shop	music	da	Musikforretning
shop	newsagent	da	Bladkiosk
shop	optician	da	Optiker
shop	organic	da	Økologisk fødevarebutik
shop	outdoor	da	Udendørs butik
shop	pet	da	Dyrehandel
shop	photo	da	Fotobutik
shop	salon	da	Salon
shop	shoes	da	Skobutik
shop	shopping_centre	da	Indkøbscenter
shop	sports	da	Sportsforretning
shop	stationery	da	Papirvarehandel
shop	supermarket	da	Supermarked
shop	toys	da	Legetøjsbutik
shop	travel_agency	da	Rejsebureau
shop	video	da	Videoforretning
shop	wine	da	Vinforretning
tourism	alpine_hut	da	Bjerghytte
tourism	artwork	da	Kunst
tourism	attraction	da	Seværdighed
tourism	bed_and_breakfast	da	Bed and Breakfast
tourism	cabin	da	Hytte
tourism	camp_site	da	Lejrplads
tourism	caravan_site	da	Campingplads
tourism	chalet	da	Chalet
tourism	guest_house	da	Guesthouse (hotel)
tourism	hostel	da	Vandrerhjem
tourism	hotel	da	Hotel
tourism	information	da	Turistinformation
tourism	lean_to	da	Ly
tourism	motel	da	Motel
tourism	museum	da	Museum
tourism	picnic_site	da	Picnicsted
tourism	theme_park	da	Forlystelsespark
tourism	valley	da	Dal
tourism	viewpoint	da	Udsigtspunkt
tourism	zoo	da	Zoologisk have
waterway	boatyard	da	Bådeværft
waterway	canal	da	Kanal
waterway	connector	da	Vandvejsforbindelse
waterway	dam	da	Dæmning
waterway	derelict_canal	da	Nedlagt kanal
waterway	ditch	da	Grøft
waterway	dock	da	Dok
waterway	drain	da	Afløb
waterway	lock	da	Sluse
waterway	lock_gate	da	Sluseport
waterway	mineral_spring	da	Mineralsk kilde
waterway	mooring	da	Fortøjning
waterway	rapids	da	Stryg
waterway	river	da	Flod
waterway	riverbank	da	Flodbred
waterway	stream	da	Bæk
waterway	wadi	da	Flodseng
waterway	waterfall	da	Vandfald
waterway	water_point	da	Vandpunkt
waterway	weir	da	Overløbsdæmning
amenity	airport	de	Flughafen
amenity	arts_centre	de	Kunstcenter
amenity	atm	de	Geldautomat
amenity	auditorium	de	Hörsaal
amenity	bank	de	Bank
amenity	bar	de	Bar
amenity	bench	de	Bank
amenity	bicycle_parking	de	Fahrrad-Stellplatz
amenity	bicycle_rental	de	Fahrradverleih
amenity	brothel	de	Bordell
amenity	bureau_de_change	de	Wechselstube
amenity	bus_station	de	Busbahnhof
amenity	cafe	de	Café
amenity	car_rental	de	Autovermietung
amenity	car_sharing	de	Carsharing
amenity	car_wash	de	Autowaschanlage
amenity	casino	de	Casino
amenity	cinema	de	Kino
amenity	clinic	de	Krankenhaus
amenity	club	de	Club
amenity	college	de	Hochschule
amenity	community_centre	de	Gemeindezentrum
amenity	courthouse	de	Gericht
amenity	crematorium	de	Krematorium
amenity	dentist	de	Zahnarzt
amenity	doctors	de	Arzt
amenity	dormitory	de	Studentenwohnheim
amenity	drinking_water	de	Trinkwasser
amenity	driving_school	de	Fahrschule
amenity	embassy	de	Botschaft
amenity	emergency_phone	de	Notrufsäule
amenity	fast_food	de	Schnellimbiss
amenity	ferry_terminal	de	Fähren-Anlaufstelle
amenity	fire_hydrant	de	Hydrant
amenity	fire_station	de	Feuerwehr
amenity	fountain	de	Springbrunnen
amenity	fuel	de	Tankstelle
amenity	grave_yard	de	Friedhof
amenity	gym	de	Fitness-Zentrum
amenity	hall	de	Halle
amenity	health_centre	de	Gesundheitszentrum
amenity	hospital	de	Krankenhaus
amenity	hotel	de	Hotel
amenity	hunting_stand	de	Hochstand
amenity	ice_cream	de	Eisdiele
amenity	kindergarten	de	Kindergarten
amenity	library	de	Bücherei
amenity	market	de	Markt
amenity	marketplace	de	Marktplatz
amenity	mountain_rescue	de	Bergrettung
amenity	nightclub	de	Nachtklub
amenity	nursery	de	Kindertagesstätte
amenity	nursing_home	de	Altersheim
amenity	office	de	Büro
amenity	park	de	Park
amenity	parking	de	Parkplatz
amenity	pharmacy	de	Apotheke
amenity	place_of_worship	de	Andachtsstätte
amenity	police	de	Polizei
amenity	post_box	de	Briefkasten
amenity	post_office	de	Postamt
amenity	preschool	de	Vorschule
amenity	prison	de	Gefängnis
amenity	pub	de	Kneipe
amenity	public_building	de	Öffentliches Gebäude
amenity	public_market	de	Öffentlicher Markt
amenity	reception_area	de	Empfangsbereich
amenity	recycling	de	Recycling-Center
amenity	restaurant	de	Restaurant
amenity	retirement_home	de	Altersheim
amenity	sauna	de	Sauna
amenity	school	de	Schule
amenity	shelter	de	Unterkunft
amenity	shop	de	Geschäft
amenity	shopping	de	Einkaufszentrum
amenity	social_club	de	Geselligkeitsverein
amenity	studio	de	Studio
amenity	supermarket	de	Supermarkt
amenity	taxi	de	Taxi
amenity	telephone	de	Telefonzelle
amenity	theatre	de	Theater
amenity	toilets	de	WC
amenity	townhall	de	Rathaus
amenity	university	de	Universität
amenity	vending_machine	de	Selbstbedienungsautomat
amenity	veterinary	de	Tierarzt
amenity	village_hall	de	Gemeindezentrum
amenity	waste_basket	de	Mülleimer
amenity	wifi	de	WLAN-Access-Point
amenity	youth_centre	de	Jugendhaus
boundary	administrative	de	Verwaltungsgrenze
building	apartments	de	Wohnblock
building	block	de	Gebäudeblock
building	bunker	de	Bunker
building	chapel	de	Kapelle
building	church	de	Kirche
building	city_hall	de	Rathaus
building	commercial	de	Gewerbegebäude
building	dormitory	de	Studentenwohnheim
building	entrance	de	Eingang
building	faculty	de	Ausbildungsgebäude
building	farm	de	Bauernhof
building	flats	de	Wohnungen
building	garage	de	Garage
building	hall	de	Halle
building	hospital	de	Spital
building	hotel	de	Hotel
building	house	de	Haus
building	industrial	de	Industriegebäude
building	office	de	Bürogebäude
building	public	de	Öffentliches Gebäude
building	residential	de	Wohngebäude
building	retail	de	Einzelhandelsgebäude
building	school	de	Schulgebäude
building	shop	de	Geschäft
building	stadium	de	Stadion
building	store	de	Geschäft
building	terrace	de	Terrasse
building	tower	de	Turm
building	train_station	de	Bahnhof
building	university	de	Universitätsgebäude
highway	bridleway	de	Reitweg
highway	bus_guideway	de	Busspur
highway	bus_stop	de	Bushaltestelle
highway	byway	de	Seitenweg
highway	construction	de	Straße im Bau
highway	cycleway	de	Radweg
highway	distance_marker	de	Kilometerstein
highway	emergency_access_point	de	Notrufpunkt
highway	footway	de	Fußweg
highway	ford	de	Furt
highway	gate	de	Gatter
highway	living_street	de	Spielstraße
highway	minor	de	Nebenstraße
highway	motorway	de	Autobahn
highway	motorway_junction	de	Autobahnkreuz
highway	motorway_link	de	Autobahnauffahrt
highway	path	de	Pfad
highway	pedestrian	de	Fußgängerweg
highway	platform	de	Plattform
highway	primary	de	Primärstraße
highway	primary_link	de	Primärauffahrt
highway	raceway	de	Rennweg
highway	residential	de	Wohnstraße
highway	road	de	Straße
highway	secondary	de	Landstraße
highway	secondary_link	de	Landstraße
highway	service	de	Anliegerstraße
highway	services	de	Autobahnraststätte
highway	steps	de	Treppe
highway	stile	de	Zaunübertritt
highway	tertiary	de	Tertiärstraße
highway	track	de	Feldweg
highway	trail	de	Pfad
highway	trunk	de	Fernverkehrsstraße
highway	trunk_link	de	Fernstraßenauffahrt
highway	unclassified	de	Landstraße
highway	unsurfaced	de	Nichtasphaltierte Straße
historic	archaeological_site	de	Ausgrabungsstätte
historic	battlefield	de	Kampfgebiet
historic	boundary_stone	de	Grenzstein
historic	building	de	Historisches Gebäude
historic	castle	de	Schloss
historic	church	de	Kirche
historic	house	de	Historisches Haus
historic	icon	de	Zeichen
historic	manor	de	Gut
historic	memorial	de	Gedenkstätte
historic	mine	de	Mine
historic	monument	de	Monument
historic	museum	de	Museum
historic	ruins	de	Ruine
historic	tower	de	Turm
historic	wayside_cross	de	Wegkreuz
historic	wayside_shrine	de	Schrein
historic	wreck	de	Schiffswrack
landuse	allotments	de	Schrebergärten
landuse	basin	de	Becken
landuse	brownfield	de	Bebautes Land
landuse	cemetery	de	Friedhof
landuse	commercial	de	Gewerbegebiet
landuse	conservation	de	Naturschutzgebiet
landuse	construction	de	Baustelle
landuse	farm	de	Bauernhof
landuse	farmland	de	Ackerland
landuse	farmyard	de	Hof
landuse	forest	de	Wald
landuse	grass	de	Wiese
landuse	greenfield	de	unbebaute Fläche
landuse	industrial	de	Industriegebiet
landuse	landfill	de	Müllhalde
landuse	meadow	de	Wiese
landuse	military	de	Militärgebiet
landuse	mine	de	Mine
landuse	mountain	de	Berg
landuse	nature_reserve	de	Naturschutzgebiet
landuse	park	de	Park
landuse	piste	de	Piste
landuse	plaza	de	Plaza
landuse	quarry	de	Steinbruch
landuse	railway	de	Eisenbahn
landuse	recreation_ground	de	Freizeitgebiet
landuse	reservoir	de	Reservoir
landuse	residential	de	Siedlung
landuse	retail	de	Einzelhandel
landuse	village_green	de	Dorfwiese
landuse	vineyard	de	Weingut
landuse	wetland	de	Feuchtgebiet
landuse	wood	de	Wald
leisure	beach_resort	de	Badeort
leisure	common	de	Gemeindeland
leisure	fishing	de	Fischereigrund
leisure	garden	de	Garten
leisure	golf_course	de	Golfplatz
leisure	ice_rink	de	Eislaufplatz
leisure	marina	de	Yachthafen
leisure	miniature_golf	de	Minigolf
leisure	nature_reserve	de	Naturschutzgebiet
leisure	park	de	Park
leisure	pitch	de	Sportplatz
leisure	playground	de	Spielplatz
leisure	recreation_ground	de	Freizeitbereich
leisure	slipway	de	Gleitbahn
leisure	sports_centre	de	Sportzentrum
leisure	stadium	de	Stadion
leisure	swimming_pool	de	Schwimmbad
leisure	track	de	Rennstrecke
leisure	water_park	de	Wasserpark
natural	bay	de	Bucht
natural	beach	de	Strand
natural	cape	de	Kap
natural	cave_entrance	de	Höhleneingang
natural	channel	de	Kanal
natural	cliff	de	Klippe
natural	coastline	de	Küstenlinie
natural	crater	de	Krater
natural	feature	de	Merkmal
natural	fell	de	Kahler Berg
natural	fjord	de	Fjord
natural	geyser	de	Geysir
natural	glacier	de	Gletscher
natural	heath	de	Heide
natural	hill	de	Erhebung
natural	island	de	Insel
natural	land	de	Land
natural	marsh	de	Moor
natural	moor	de	Moor
natural	mud	de	Schlamm
natural	peak	de	Gipfel
natural	point	de	Punkt
natural	reef	de	Riff
natural	ridge	de	Grat
natural	river	de	Fluss
natural	rock	de	Steine
natural	scree	de	Geröll
natural	scrub	de	Busch
natural	shoal	de	Untiefe
natural	spring	de	Quelle
natural	strait	de	Straße
natural	tree	de	Baum
natural	valley	de	Tal
natural	volcano	de	Vulkan
natural	water	de	Wasser
natural	wetland	de	Feuchtgebiet
natural	wetlands	de	Feuchtgebiet
natural	wood	de	Wald
place	airport	de	Flughafen
place	city	de	Stadt
place	country	de	Land
place	county	de	Bezirk
place	farm	de	Gehöft
place	hamlet	de	Weiler
place	house	de	Haus
place	houses	de	Häuser
place	island	de	Insel
place	islet	de	Inselchen
place	locality	de	Ortschaft
place	moor	de	Moor
place	municipality	de	Gemeinde
place	postcode	de	Postleitzahl
place	region	de	Region
place	sea	de	See
place	state	de	Bundesland/-staat
place	subdivision	de	Untergruppe
place	suburb	de	Stadtteil
place	town	de	Stadt
place	unincorporated_area	de	Freiland
place	village	de	Dorf
railway	abandoned	de	Verlassene Bahnstrecke
railway	construction	de	Eisenbahn im Bau
railway	disused	de	Aufgelassene Bahnstrecke
railway	disused_station	de	Aufgelassener Bahnhof
railway	funicular	de	Seilbahn
railway	halt	de	Haltepunkt
railway	historic_station	de	Ehemaliger Bahnhof
railway	junction	de	Bahnknotenpunkt
railway	level_crossing	de	Eisenbahnkreuzung
railway	light_rail	de	Straßenbahn
railway	monorail	de	Einschienenbahn
railway	narrow_gauge	de	Schmalspurbahn
railway	platform	de	Bahnsteig
railway	preserved	de	Erhaltene Bahnspur
railway	spur	de	Bahnspur
railway	station	de	Bahnhof
railway	subway	de	U-Bahn-Station
railway	subway_entrance	de	U-Bahn-Zugang
railway	switch	de	Weiche
railway	tram	de	Straßenbahn
railway	tram_stop	de	Straßenbahn-Haltestelle
railway	yard	de	Rangierbahnhof
shop	alcohol	de	Spirituosenladen
shop	apparel	de	Bekleidungsgeschäft
shop	art	de	Kunstladen
shop	bakery	de	Bäckerei
shop	beauty	de	Parfümerie
shop	beverages	de	Getränkemarkt
shop	bicycle	de	Fahrradgeschäft
shop	books	de	Buchgeschäft
shop	butcher	de	Metzgerei
shop	car	de	Autohaus
shop	car_dealer	de	Autohaus
shop	car_parts	de	Autoteilehändler
shop	carpet	de	Teppichladen
shop	car_repair	de	Autowerkstatt
shop	charity	de	Wohltätigkeitsladen
shop	chemist	de	Apotheke
shop	clothes	de	Bekleidungsgeschäft
shop	computer	de	Computergeschäft
shop	confectionery	de	Konditorei
shop	convenience	de	Minimarkt
shop	copyshop	de	Copyshop
shop	cosmetics	de	Parfümerie
shop	department_store	de	Kaufhaus
shop	discount	de	Diskontladen
shop	doityourself	de	Baumarkt
shop	drugstore	de	Drogerie
shop	dry_cleaning	de	Textilreinigung
shop	electronics	de	Elektronikgeschäft
shop	estate_agent	de	Imobilienhändler
shop	farm	de	Hofladen
shop	fashion	de	Modegeschäft
shop	fish	de	Fischereiladen
shop	florist	de	Blumenladen
shop	food	de	Lebensmittelladen
shop	funeral_directors	de	Bestattungsunternehmen
shop	furniture	de	Möbelgeschäft
shop	gallery	de	Galerie
shop	garden_centre	de	Gärtnerei
shop	general	de	Gemischtwarenladen
shop	gift	de	Geschenkeladen
shop	greengrocer	de	Obst- und Gemüsehändler
shop	grocery	de	Lebensmittelladen
shop	hairdresser	de	Frisörsalon
shop	hardware	de	Eisenwarenhändler
shop	hifi	de	Elektroshop
shop	insurance	de	Versicherungsbüro
shop	jewelry	de	Juwelier
shop	kiosk	de	Kiosk
shop	laundry	de	Wäscherei
shop	mall	de	Einkaufszentrum
shop	market	de	Markt
shop	mobile_phone	de	Handygeschäft
shop	motorcycle	de	Motorradgeschäft
shop	music	de	Musikladen
shop	newsagent	de	Zeitschriftenladen
shop	optician	de	Optiker
shop	organic	de	Biokostladen
shop	outdoor	de	Freizeit-Shop
shop	pet	de	Tierhandlung
shop	photo	de	Fotoshop
shop	salon	de	Salon
shop	shoes	de	Schuhgeschäft
shop	shopping_centre	de	Einkaufszentrum
shop	sports	de	Sportgeschäft
shop	stationery	de	Papierwarenladen
shop	supermarket	de	Supermarkt
shop	toys	de	Spielwarengeschäft
shop	travel_agency	de	Reisebüro
shop	video	de	Videoshop
shop	wine	de	Weinkost
tourism	alpine_hut	de	Berghütte
tourism	artwork	de	Kunstwerk
tourism	attraction	de	Attraktion
tourism	bed_and_breakfast	de	Bed and Breakfast
tourism	cabin	de	Hütte
tourism	camp_site	de	Campingplatz
tourism	caravan_site	de	Wohnwagen-Stellplatz
tourism	chalet	de	Almhütte
tourism	guest_house	de	Gasthaus
tourism	hostel	de	Jugendherberge
tourism	hotel	de	Hotel
tourism	information	de	Touristen-Information
tourism	lean_to	de	Anbau
tourism	motel	de	Motel
tourism	museum	de	Museum
tourism	picnic_site	de	Piknikplatz
tourism	theme_park	de	Vergnügungspark
tourism	valley	de	Tal
tourism	viewpoint	de	Aussichtspunkt
tourism	zoo	de	Zoo
waterway	boatyard	de	Werft
waterway	canal	de	Kanal
waterway	connector	de	Wasserstraßenverbindung
waterway	dam	de	Staudamm
waterway	derelict_canal	de	Aufgelassener Kanal
waterway	ditch	de	Wassergraben
waterway	dock	de	Dock
waterway	drain	de	Abfluss
waterway	lock	de	Lock
waterway	lock_gate	de	Schleusentor
waterway	mineral_spring	de	Mineralquelle
waterway	mooring	de	Anlegeplatz
waterway	rapids	de	Stromschnellen
waterway	river	de	Fluss
waterway	riverbank	de	Flussufer
waterway	stream	de	Bach
waterway	wadi	de	Trockental
waterway	waterfall	de	Wasserfall
waterway	water_point	de	Wasserpunkt
waterway	weir	de	Wehr
amenity	airport	dsb	Lětanišćo
amenity	arts_centre	dsb	Kulturny centrum
amenity	atm	dsb	Pjenjezny awtomat
amenity	auditorium	dsb	Awditorium
amenity	bank	dsb	Banka
amenity	bar	dsb	Bara
amenity	bench	dsb	Ławka
amenity	bicycle_parking	dsb	Zmakanišćo za kólasa
amenity	bicycle_rental	dsb	Pśepóžycarnja kólasow
amenity	brothel	dsb	Bordel
amenity	bureau_de_change	dsb	Zaměnjarnja
amenity	bus_station	dsb	Busowe dwórnišćo
amenity	cafe	dsb	Kafejownja
amenity	car_rental	dsb	Pśenajmjeśe awtow
amenity	car_sharing	dsb	Centrala za sobujězdźenje
amenity	car_wash	dsb	Awtomyjarnja
amenity	casino	dsb	Kasino
amenity	cinema	dsb	Kino
amenity	clinic	dsb	Klinika
amenity	club	dsb	Klub
amenity	college	dsb	Wusoka šula
amenity	community_centre	dsb	Komunikaciski centrum
amenity	courthouse	dsb	Sudnistwo
amenity	crematorium	dsb	Krematorium
amenity	dentist	dsb	Zubny gójc
amenity	doctors	dsb	Gójce
amenity	dormitory	dsb	Internat
amenity	drinking_water	dsb	Pitna wóda
amenity	driving_school	dsb	Jězdna šula
amenity	embassy	dsb	Wjelikopósłaństwo
amenity	emergency_phone	dsb	Telefon za nuzowe zawołanje
amenity	fast_food	dsb	Pójědankarnja
amenity	ferry_terminal	dsb	Pśewózny pśistaw
amenity	fire_hydrant	dsb	Hydrant
amenity	fire_station	dsb	Wognjarnja
amenity	fountain	dsb	Studnja
amenity	fuel	dsb	Tankownja
amenity	grave_yard	dsb	Kjarchob
amenity	gym	dsb	Fitnesowy centrum
amenity	hall	dsb	Hala
amenity	health_centre	dsb	Strowotniski centrum
amenity	hospital	dsb	Chórownja
amenity	hotel	dsb	Hotel
amenity	hunting_stand	dsb	Góntwarske sedło
amenity	ice_cream	dsb	Lod
amenity	kindergarten	dsb	Źiśownja
amenity	library	dsb	Knigłownja
amenity	market	dsb	Wiki
amenity	marketplace	dsb	Wikowanišćo
amenity	mountain_rescue	dsb	Górska wumóžarska słužba
amenity	nightclub	dsb	Nocny klub
amenity	nursery	dsb	Źiśownja
amenity	nursing_home	dsb	Wótwardowarnja
amenity	office	dsb	Běrow
amenity	park	dsb	Park
amenity	parking	dsb	Parkowanišćo
amenity	pharmacy	dsb	Aptejka
amenity	place_of_worship	dsb	Bóžy dom
amenity	police	dsb	Policija
amenity	post_box	dsb	Listowy kašćik
amenity	post_office	dsb	Post
amenity	preschool	dsb	Pśedšula
amenity	prison	dsb	Popajźeństwo
amenity	pub	dsb	Kjarcma
amenity	public_building	dsb	Zjawne twarjenje
amenity	public_market	dsb	Zjawny mark
amenity	reception_area	dsb	Wobcerk pśidostaśa
amenity	recycling	dsb	Zběranišćo starowinow
amenity	restaurant	dsb	Gósćeńc
amenity	retirement_home	dsb	Starcownja
amenity	sauna	dsb	Sawna
amenity	school	dsb	Šula
amenity	shelter	dsb	Pódstup
amenity	shop	dsb	Pśekupnica
amenity	shopping	dsb	Nakupowanišćo
amenity	social_club	dsb	Towarišliwostny klub
amenity	studio	dsb	Studijo
amenity	supermarket	dsb	Supermark
amenity	taxi	dsb	Taksijowe městno
amenity	telephone	dsb	Zjawny telefon
amenity	theatre	dsb	Źiwadło
amenity	toilets	dsb	Toalety
amenity	townhall	dsb	Radnica
amenity	university	dsb	Uniwersita
amenity	vending_machine	dsb	Awtomat
amenity	veterinary	dsb	Skótny gójc
amenity	village_hall	dsb	Gmejnski centrum
amenity	waste_basket	dsb	Sudobje za wótpadanki
amenity	wifi	dsb	WLAN-pśistup
amenity	youth_centre	dsb	Młoźinski centrum
boundary	administrative	dsb	Zastojnstwowa granica
building	apartments	dsb	Bydleński blok
building	block	dsb	Blok twarjenjow
building	bunker	dsb	Bunker
building	chapel	dsb	Kapałka
building	church	dsb	Cerkwja
building	city_hall	dsb	Radnica
building	commercial	dsb	Źěłarstwowe twarjenje
building	dormitory	dsb	Internat
building	entrance	dsb	Zachod do twarjenja
building	faculty	dsb	Twarjenje fakulty
building	farm	dsb	Burski dom
building	flats	dsb	Bydlenja
building	garage	dsb	Garaža
building	hall	dsb	Hala
building	hospital	dsb	Chórownja
building	hotel	dsb	Hotel
building	house	dsb	Dom
building	industrial	dsb	Industrijowe twarjenje
building	office	dsb	Běrowowe twarjenje
building	public	dsb	Zjawne twarjenje
building	residential	dsb	Bydleńske twarjenje
building	retail	dsb	Twarjenje drobnego wikowanja
building	school	dsb	Šulske twarjenje
building	shop	dsb	Wobchod
building	stadium	dsb	Stadion
building	store	dsb	Wobchod
building	terrace	dsb	Terasa
building	tower	dsb	Torm
building	train_station	dsb	Dwórnišćo
building	university	dsb	Uniwersitne twarjenje
highway	bridleway	dsb	Rejtarska drožka
highway	bus_guideway	dsb	Jězdna kólej kólejowego busa
highway	bus_stop	dsb	Busowe zastanišćo
highway	byway	dsb	Pódlańska droga
highway	construction	dsb	Dalokowobchadowa droga se twari
highway	cycleway	dsb	Sćažka za kólasowarjow
highway	distance_marker	dsb	Kilometrownik
highway	emergency_access_point	dsb	Nuzowa słužba
highway	footway	dsb	Chódnik
highway	ford	dsb	Brod
highway	gate	dsb	Wrota
highway	living_street	dsb	Droga z pómjeńšonym wobchadom
highway	minor	dsb	Bocna droga
highway	motorway	dsb	Awtodroga
highway	motorway_junction	dsb	Kśica awtodrogi
highway	motorway_link	dsb	Zajězd na awtodrogu
highway	path	dsb	Sćažka
highway	pedestrian	dsb	Drožka za pěskowarjow
highway	platform	dsb	Platforma
highway	primary	dsb	Droga prědnego rěda
highway	primary_link	dsb	Droga prědnego rěda
highway	raceway	dsb	Wuběgowanišćo
highway	residential	dsb	Bydleńska droga
highway	road	dsb	Droga
highway	secondary	dsb	Droga drugego rěda
highway	secondary_link	dsb	Droga drugego rěda
highway	service	dsb	Paralelna droga
highway	services	dsb	Gósćeńc pśi awtodroze
highway	steps	dsb	Stupy
highway	stile	dsb	Płotowy pśestup
highway	tertiary	dsb	Droga tśeśego rěda
highway	track	dsb	Pólna drožka
highway	trail	dsb	Sćažka
highway	trunk	dsb	Dalokowobchadowa droga
highway	trunk_link	dsb	Dalokowobchadowa droga
highway	unclassified	dsb	Njezarědowana droga
highway	unsurfaced	dsb	Njewobtwarźona droga
historic	archaeological_site	dsb	Archeologiske wukopowanišćo
historic	battlefield	dsb	Bitwišćo
historic	boundary_stone	dsb	Granicny kamjeń
historic	building	dsb	Twarjenje
historic	castle	dsb	Grod
historic	church	dsb	Cerkwja
historic	house	dsb	Dom
historic	icon	dsb	Ikona
historic	manor	dsb	Kubło
historic	memorial	dsb	Wopomnišćo
historic	mine	dsb	Pódkopy
historic	monument	dsb	Pomnik
historic	museum	dsb	Muzeum
historic	ruins	dsb	Ruiny
historic	tower	dsb	Torm
historic	wayside_cross	dsb	Kśica drogi
historic	wayside_shrine	dsb	Lodka drogi
historic	wreck	dsb	Wrak
landuse	allotments	dsb	Gumnyška
landuse	basin	dsb	Basenk
landuse	brownfield	dsb	Industrijowe lědo
landuse	cemetery	dsb	Kjarchob
landuse	commercial	dsb	Źěłarstwowy wobcerk
landuse	conservation	dsb	Pśirodošćit
landuse	construction	dsb	Twarnišćo
landuse	farm	dsb	Farma
landuse	farmland	dsb	Rola
landuse	farmyard	dsb	Žywnosć
landuse	forest	dsb	Góla
landuse	grass	dsb	Błomje
landuse	greenfield	dsb	njewobtwarjona zemja
landuse	industrial	dsb	Industrijowy wobcerk
landuse	landfill	dsb	Wótchytanišćo
landuse	meadow	dsb	Łuka
landuse	military	dsb	Militarny wobcerk
landuse	mine	dsb	Pódkopy
landuse	mountain	dsb	Góra
landuse	nature_reserve	dsb	Strony šćitaneje pśirody
landuse	park	dsb	Park
landuse	piste	dsb	Pista
landuse	plaza	dsb	Naměstno
landuse	quarry	dsb	Skała
landuse	railway	dsb	Zeleznica
landuse	recreation_ground	dsb	Wódychańske strony
landuse	reservoir	dsb	Gaśeński jazor
landuse	residential	dsb	Bydleński wobcerk
landuse	retail	dsb	Drobne wikowanje
landuse	village_green	dsb	Wejsny najs
landuse	vineyard	dsb	Winowe kubło
landuse	wetland	dsb	Mokšy teren
landuse	wood	dsb	Lěs
leisure	beach_resort	dsb	Mórske kupjele
leisure	common	dsb	Almenda
leisure	fishing	dsb	Wuźišćo
leisure	garden	dsb	Zagroda
leisure	golf_course	dsb	Golfowišćo
leisure	ice_rink	dsb	Lodowa hala
leisure	marina	dsb	Jachtowy pśistaw
leisure	miniature_golf	dsb	Minigolf
leisure	nature_reserve	dsb	Strony šćitaneje pśirody
leisure	park	dsb	Park
leisure	pitch	dsb	Sportnišćo
leisure	playground	dsb	Grajkanišćo
leisure	recreation_ground	dsb	Wódychańske strony
leisure	slipway	dsb	Łoźowa suwanka
leisure	sports_centre	dsb	Sportowy centrum
leisure	stadium	dsb	Stadion
leisure	swimming_pool	dsb	Swimmingpool
leisure	track	dsb	Wuběgowánska cera
leisure	water_park	dsb	Wódowy park
natural	bay	dsb	Zalew
natural	beach	dsb	Pśibrjog
natural	cape	dsb	Kap
natural	cave_entrance	dsb	Jamowy zachod
natural	channel	dsb	Kanal
natural	cliff	dsb	Skalina
natural	coastline	dsb	Pśibrjozna linija
natural	crater	dsb	Krater
natural	feature	dsb	Funkcija
natural	fell	dsb	Fjel
natural	fjord	dsb	Fjord
natural	geyser	dsb	Geysir
natural	glacier	dsb	Lodojc
natural	heath	dsb	Wrjosate strony
natural	hill	dsb	Górka
natural	island	dsb	Kupa
natural	land	dsb	Zemja
natural	marsh	dsb	Marša
natural	moor	dsb	Bagno
natural	mud	dsb	Błoto
natural	peak	dsb	Špica
natural	point	dsb	Městno
natural	reef	dsb	Riff
natural	ridge	dsb	Górski grjebjeń
natural	river	dsb	Rěka
natural	rock	dsb	Skała
natural	scree	dsb	Kamjenišćo
natural	scrub	dsb	Krě
natural	shoal	dsb	Měłkosć
natural	spring	dsb	Žrědło
natural	strait	dsb	Mórska wuscyna
natural	tree	dsb	Bom
natural	valley	dsb	Doł
natural	volcano	dsb	Wulkan
natural	water	dsb	Wódy
natural	wetland	dsb	Ługowe łuki
natural	wetlands	dsb	Ługowe łuki
natural	wood	dsb	Lěs
place	airport	dsb	Lětanišćo
place	city	dsb	Wjelike město
place	country	dsb	Kraj
place	county	dsb	Wokrejs
place	farm	dsb	Žywnosć
place	hamlet	dsb	Wjaska
place	house	dsb	Dom
place	houses	dsb	Domy
place	island	dsb	Kupa
place	islet	dsb	Mała kupa
place	locality	dsb	Sedlišćo
place	moor	dsb	Bagno
place	municipality	dsb	Gmejna
place	postcode	dsb	Postowa licba
place	region	dsb	Region
place	sea	dsb	Mórjo
place	state	dsb	Zwězkowy kraj
place	subdivision	dsb	Trabantowe město
place	suburb	dsb	Pśedměsto
place	town	dsb	Město
place	unincorporated_area	dsb	Bźezgmejnske strony
place	village	dsb	Wjas
railway	abandoned	dsb	Spušćona zeleznicowa cera
railway	construction	dsb	Zeleznicowa cera se twari
railway	disused	dsb	Njewužywana zeleznicowa cera
railway	disused_station	dsb	Njewužywane dwórnišćo
railway	funicular	dsb	Powrjozowa zeleznica
railway	halt	dsb	Zeleznicowe zastanišćo
railway	historic_station	dsb	Historiske dwórnišćo
railway	junction	dsb	Zeleznicowe kśicnišćo
railway	level_crossing	dsb	Zeleznicowy pśechod
railway	light_rail	dsb	Měsćańska zeleznica
railway	monorail	dsb	Jadnokólejowa zeleznica
railway	narrow_gauge	dsb	Wuskokólejata zeleznica
railway	platform	dsb	Pśistupnišćo
railway	preserved	dsb	Wuchowana zeleznica
railway	spur	dsb	Kólejowy wótstawk
railway	station	dsb	Dwórnišćo
railway	subway	dsb	Zastanišćo pódzemskeje
railway	subway_entrance	dsb	Zachod k pódzemskej
railway	switch	dsb	Pśestajadło
railway	tram	dsb	Elektriska
railway	tram_stop	dsb	Zastanišćo elektriskeje
railway	yard	dsb	Ranžěrowańske dwórnišćo
shop	alcohol	dsb	Wobchod za spirituoze
shop	apparel	dsb	Woblekarnja
shop	art	dsb	Wobchod wuměłskich twórbow
shop	bakery	dsb	Pjakarnja
shop	beauty	dsb	Parfimerija
shop	beverages	dsb	Piśowy mark
shop	bicycle	dsb	Wobchod za kólasa
shop	books	dsb	Knigłarnja
shop	butcher	dsb	Rěznik
shop	car	dsb	Awtownja
shop	car_dealer	dsb	Awtownja
shop	car_parts	dsb	Awtowe narownanki
shop	carpet	dsb	Tepichowy wobchod
shop	car_repair	dsb	Pórěźarnja awtow
shop	charity	dsb	Dobrotnostny wobchod
shop	chemist	dsb	Aptejka
shop	clothes	dsb	Woblekarnja
shop	computer	dsb	Computerowy wobchod
shop	confectionery	dsb	Konditarnja
shop	convenience	dsb	Kšamarska loda
shop	copyshop	dsb	Kopěrowański wobchod
shop	cosmetics	dsb	Kosmetikowy wobchod
shop	department_store	dsb	Kupnica
shop	discount	dsb	Discounter
shop	doityourself	dsb	Wobchod za baslarsku pótrjebu
shop	drugstore	dsb	Drogerija
shop	dry_cleaning	dsb	Cysćarnja
shop	electronics	dsb	Elektronikowy wobchod
shop	estate_agent	dsb	Maklaŕ gruntow
shop	farm	dsb	Žywnosćowy wobchod
shop	fashion	dsb	Modowy wobchod
shop	fish	dsb	Wobchod za ryby
shop	florist	dsb	Kwětkarnja
shop	food	dsb	Wobchod za žywidła
shop	funeral_directors	dsb	Zakopowański institut
shop	furniture	dsb	Meblowy wobchod
shop	gallery	dsb	Galerija
shop	garden_centre	dsb	Zagrodowy center
shop	general	dsb	Wobchod za měšane wóry
shop	gift	dsb	Wobchod za dary
shop	greengrocer	dsb	Zeleninarski wobchod
shop	grocery	dsb	Wobchod za žywidła
shop	hairdresser	dsb	Frizerski salon
shop	hardware	dsb	Twarski mark
shop	hifi	dsb	Technika hi-fi
shop	insurance	dsb	Zawěsćarnja
shop	jewelry	dsb	Pyšnotkowy wobchod
shop	kiosk	dsb	Kiosk
shop	laundry	dsb	Pałkarnja
shop	mall	dsb	Nakupowanišćo
shop	market	dsb	Wiki
shop	mobile_phone	dsb	Wobchod za mobilne telefony
shop	motorcycle	dsb	Wobchod za motorske
shop	music	dsb	Wobchod za muzikalije
shop	newsagent	dsb	Pśedawaŕ casnikow
shop	optician	dsb	Optikaŕ
shop	organic	dsb	Wobchod za biocarobu
shop	outdoor	dsb	Pśekupnica pód gołym njebjom
shop	pet	dsb	Coologiska pśedawarnja
shop	photo	dsb	Fotograf
shop	salon	dsb	Salon
shop	shoes	dsb	Wobchod za crjeje
shop	shopping_centre	dsb	Kupowański centrum
shop	sports	dsb	Sportowy wobchod
shop	stationery	dsb	Pśedawarnja za pisańskich wórow
shop	supermarket	dsb	Supermark
shop	toys	dsb	Wobchod za grajki
shop	travel_agency	dsb	Drogowański běrow
shop	video	dsb	Wideowobchod
shop	wine	dsb	Wobchod za spirituoze
tourism	alpine_hut	dsb	Górski chromcyk
tourism	artwork	dsb	Wuměłska twórba
tourism	attraction	dsb	Atrakcija
tourism	bed_and_breakfast	dsb	Pśenocowanje ze snědanim
tourism	cabin	dsb	Chyža
tourism	camp_site	dsb	Campingowanišćo
tourism	caravan_site	dsb	Zmakanišćo za bydleńske wóze
tourism	chalet	dsb	Prozninski domcyk
tourism	guest_house	dsb	Góstny dom
tourism	hostel	dsb	Młodownja
tourism	hotel	dsb	Hotel
tourism	information	dsb	Informacije
tourism	lean_to	dsb	Pśitwaŕ
tourism	motel	dsb	Motel
tourism	museum	dsb	Muzeum
tourism	picnic_site	dsb	Piknikowanišćo
tourism	theme_park	dsb	Rozwjaseleński park
tourism	valley	dsb	Doł
tourism	viewpoint	dsb	Rozglědanišćo
tourism	zoo	dsb	Coo
waterway	boatyard	dsb	Ŀoźnica
waterway	canal	dsb	Kanal
waterway	connector	dsb	Zwisk mjazy wódnymi drogami
waterway	dam	dsb	Zagaśica
waterway	derelict_canal	dsb	Zanjerózony kanal
waterway	ditch	dsb	Grobla
waterway	dock	dsb	Dok
waterway	drain	dsb	Wótwódowy kanal
waterway	lock	dsb	Pušćalnica
waterway	lock_gate	dsb	Pušćalnicowe wrota
waterway	mineral_spring	dsb	Žrědło mineralneje wódy
waterway	mooring	dsb	Pśistajenje
waterway	rapids	dsb	Pśejmy rěki
waterway	river	dsb	Rěka
waterway	riverbank	dsb	Rěcyny brjog
waterway	stream	dsb	Rěcka
waterway	wadi	dsb	Wadi
waterway	waterfall	dsb	Wódopad
waterway	water_point	dsb	Wódne městno
waterway	weir	dsb	Gaśeńska murja
amenity	airport	el	Αεροδρόμιο
amenity	arts_centre	el	Κέντρο Τεχνών
amenity	auditorium	el	Αμφιθέατρο
amenity	bank	el	Τράπεζα
amenity	bar	el	Μπαρ
amenity	bench	el	Πάγκος
amenity	brothel	el	Πορνείο
amenity	bus_station	el	Σταθμός Λεωφορείου
amenity	cafe	el	Καφετέρια
amenity	car_rental	el	Ενοικίαση αυτοκινήτου
amenity	car_wash	el	Πλύσιμο Αυτοκινήτων
amenity	casino	el	Καζίνο
amenity	cinema	el	Κινηματογράφος
amenity	clinic	el	Κλινική
amenity	club	el	Club
amenity	college	el	Κολέγιο
amenity	courthouse	el	Δικαστήριο
amenity	crematorium	el	Κρεματόριο
amenity	dentist	el	Οδοντίατρος
amenity	doctors	el	Ιατροί
amenity	drinking_water	el	Πόσιμο Νερό
amenity	driving_school	el	Σχολή Οδηγών
amenity	embassy	el	Πρεσβεία
amenity	emergency_phone	el	Τηλέφωνο Έκτακτης Ανάγκης
amenity	fast_food	el	Ταχυφαγείο
amenity	fountain	el	Συντριβάνι
amenity	fuel	el	Καύσιμα
amenity	grave_yard	el	Νεκροταφείο
amenity	gym	el	Γυμναστήριο
amenity	hospital	el	Νοσοκομείο
amenity	hotel	el	Ξενοδοχείο
amenity	ice_cream	el	Παγωτό
amenity	kindergarten	el	Νηπιαγωγείο
amenity	library	el	Βιβλιοθήκη
amenity	market	el	Αγορά
amenity	marketplace	el	Αγορά
amenity	nightclub	el	Night Club
amenity	office	el	Γραφείο
amenity	park	el	Πάρκο
amenity	police	el	Αστυνομία
amenity	post_box	el	Ταχυδρομική Θυρίδα
amenity	post_office	el	Ταχυδρομείο
amenity	preschool	el	Προσχολική Εκπαίδευση
amenity	prison	el	Φυλακή
amenity	pub	el	Παμπ
amenity	reception_area	el	Χώρος Υποδοχής
amenity	restaurant	el	Εστιατόριο
amenity	sauna	el	Σάουνα
amenity	school	el	Σχολείο
amenity	shop	el	Κατάστημα
amenity	studio	el	Στούντιο
amenity	supermarket	el	Σουπερμάρκετ
amenity	taxi	el	Ταξί
amenity	theatre	el	Θέατρο
amenity	toilets	el	Τουαλέτες
amenity	townhall	el	Δημαρχείο
amenity	university	el	Πανεπιστήμιο
amenity	veterinary	el	Κτηνιατρική Χειρουργική
amenity	wifi	el	Πρόσβαση WiFi
amenity	youth_centre	el	Πολύκεντρο Νεολαίας
building	bunker	el	Οχυρό
building	chapel	el	Παρεκκλήσι
building	church	el	Εκκλησία
building	dormitory	el	Κοιτώνας
building	flats	el	Διαμερίσματα
building	garage	el	Γκαράζ
building	hotel	el	Ξενοδοχείο
building	house	el	Σπίτι
building	residential	el	Πολυκατοικία
building	stadium	el	Στάδιο
building	tower	el	Πύργος
building	train_station	el	Σιδηροδρομικός Σταθμός
highway	bridleway	el	Μονοπάτι για άλογα
highway	bus_stop	el	Στάση Λεωφορείου
highway	footway	el	Μονοπάτι
highway	gate	el	Πύλη
highway	path	el	Διαδρομή
highway	pedestrian	el	Πεζόδρομιο
highway	residential	el	Κατοικίες
highway	road	el	Δρόμος
highway	trail	el	Διαδρομή
historic	archaeological_site	el	Αρχαιολογικός Χώρος
historic	building	el	Κτίριο
historic	memorial	el	Μνημόσυνο
historic	mine	el	Ορυχείο
historic	monument	el	Μνημείο
historic	museum	el	Μουσείο
landuse	basin	el	Λεκανοπέδιο
landuse	cemetery	el	Κοιμητήριο
landuse	commercial	el	Εμπορική Περιοχή
landuse	farm	el	Αγρόκτημα
landuse	farmland	el	Αγρόκτημα
landuse	farmyard	el	Αγρόκτημα
landuse	forest	el	Δάσος
landuse	grass	el	Γρασίδι
landuse	military	el	Στρατιωτική Περιοχή
landuse	mine	el	Ορυχείο
landuse	mountain	el	Βουνό
landuse	park	el	Πάρκο
landuse	plaza	el	Πλατεία
landuse	quarry	el	Λατομείο
landuse	railway	el	Σιδηρόδρομος
landuse	residential	el	Κατοικημένη Περιοχή
landuse	vineyard	el	Αμπέλι
landuse	wood	el	Μη προσεγμένο δάσος
leisure	fishing	el	Αλιευτική Περιοχή
leisure	garden	el	Κήπος
leisure	golf_course	el	Γήπεδο Γκολφ
leisure	ice_rink	el	Παγοδρόμιο
leisure	miniature_golf	el	Μίνι Γκολφ
leisure	park	el	Πάρκο
leisure	playground	el	Παιδική Χαρά
leisure	sports_centre	el	Αθλητικό Κέντρο
leisure	stadium	el	Στάδιο
leisure	swimming_pool	el	Πισίνα
natural	beach	el	Παραλία
natural	cape	el	Ακρωτήριο
natural	cave_entrance	el	Είσοδος Σπηλιάς
natural	channel	el	Κανάλι
natural	cliff	el	Γκρεμός
natural	crater	el	Κρατήρας
natural	feature	el	Χαρακτηριστικό
natural	fjord	el	Φιόρδ
natural	glacier	el	Παγετώνας
natural	hill	el	Λόφος
natural	island	el	Νησί
natural	marsh	el	Βάλτος
natural	mud	el	Λάσπη
natural	peak	el	Κορυφή
natural	reef	el	Ύφαλος
natural	river	el	Ποτάμι
natural	rock	el	Βράχος
natural	strait	el	Πορθμός
natural	tree	el	Δέντρο
natural	valley	el	Κοιλάδα
natural	volcano	el	Ηφαίστειο
natural	water	el	Νερό
natural	wetlands	el	Υγρότοποι
natural	wood	el	Μη προσεγμένο δάσος
place	airport	el	Αεροδρόμιο
place	city	el	Πόλη
place	country	el	Χώρα
place	county	el	Κομητεία
place	farm	el	Αγρόκτημα
place	hamlet	el	Χωριουδάκι
place	house	el	Σπίτι
place	houses	el	Σπίτια
place	island	el	Νησί
place	islet	el	Νησίδα
place	locality	el	Τοποθεσία
place	municipality	el	Δήμος
place	postcode	el	Ταχυδρομικός Κώδικας
place	region	el	Περιοχή
place	sea	el	Θάλασσα
place	state	el	Πολιτεία
place	subdivision	el	Υποδιαίρεση
place	suburb	el	Προάστιο
place	town	el	Μικρή Πόλη
place	village	el	Χωριό
railway	abandoned	el	Εγκαταλελειμμένος Σιδηρόδρομος
railway	construction	el	Σιδηρόδρομος Υπό Κατασκευή
railway	disused	el	Σιδηρόδρομος Εκτός Χρήσης
railway	disused_station	el	Σιδηροδρομικός Σταθμός Εκτός Χρήσης
railway	historic_station	el	Ιστορική Σιδηροδρομικός Σταθμός
railway	station	el	Σιδηροδρομικός Σταθμός
railway	subway	el	Σταθμός Μετρό
railway	subway_entrance	el	Είσοδος Στο Μετρό
railway	tram_stop	el	Στάση Τραμ
shop	bakery	el	Φούρνος
shop	books	el	Βιβλιοπωλείο
shop	butcher	el	Κρεοπωλείο
shop	car_parts	el	Εξαρτήματα Αυτοκινήτου
shop	confectionery	el	Ζαχαροπλαστική
shop	drugstore	el	Φαρμακείο
shop	dry_cleaning	el	Στεγνό Καθάρισμα
shop	fish	el	Ιχθυοπωλείο
shop	florist	el	Ανθοκομείο
shop	greengrocer	el	Μανάβης
shop	hairdresser	el	Κομμωτήριο
shop	insurance	el	Ασφαλιστική
shop	jewelry	el	Κοσμηματοπωλείο
shop	kiosk	el	Περίπτερο
shop	mall	el	Εμπορικό Κέντρο
shop	sports	el	Κατάστημα Αθλητικών
shop	supermarket	el	Σουπερμάρκετ
shop	travel_agency	el	Ταξιδιωτικό Πρακτορείο
tourism	hotel	el	Ξενοδοχείο
tourism	museum	el	Μουσείο
waterway	boatyard	el	Ναυπηγείο
waterway	dam	el	Φράγμα
waterway	ditch	el	Χαντάκι
waterway	river	el	Ποτάμι
waterway	waterfall	el	Καταράχτης
amenity	airport	en-gb	Airport
amenity	arts_centre	en-gb	Arts Centre
amenity	atm	en-gb	ATM
amenity	auditorium	en-gb	Auditorium
amenity	bank	en-gb	Bank
amenity	bar	en-gb	Bar
amenity	bench	en-gb	Bench
amenity	bicycle_parking	en-gb	Cycle Parking
amenity	bicycle_rental	en-gb	Cycle Rental
amenity	brothel	en-gb	Brothel
amenity	bureau_de_change	en-gb	Bureau de Change
amenity	bus_station	en-gb	Bus Station
amenity	cafe	en-gb	Cafe
amenity	car_rental	en-gb	Car Rental
amenity	car_sharing	en-gb	Car Sharing
amenity	car_wash	en-gb	Car Wash
amenity	casino	en-gb	Casino
amenity	cinema	en-gb	Cinema
amenity	clinic	en-gb	Clinic
amenity	club	en-gb	Club
amenity	college	en-gb	College
amenity	community_centre	en-gb	Community Centre
amenity	courthouse	en-gb	Courthouse
amenity	crematorium	en-gb	Crematorium
amenity	dentist	en-gb	Dentist
amenity	doctors	en-gb	Doctors
amenity	dormitory	en-gb	Dormitory
amenity	drinking_water	en-gb	Drinking Water
amenity	driving_school	en-gb	Driving School
amenity	embassy	en-gb	Embassy
amenity	emergency_phone	en-gb	Emergency Phone
amenity	fast_food	en-gb	Fast Food
amenity	ferry_terminal	en-gb	Ferry Terminal
amenity	fire_hydrant	en-gb	Fire Hydrant
amenity	fire_station	en-gb	Fire Station
amenity	fountain	en-gb	Fountain
amenity	fuel	en-gb	Fuel
amenity	grave_yard	en-gb	Grave Yard
amenity	gym	en-gb	Fitness Centre / Gym
amenity	hall	en-gb	Hall
amenity	health_centre	en-gb	Health Centre
amenity	hospital	en-gb	Hospital
amenity	hotel	en-gb	Hotel
amenity	hunting_stand	en-gb	Hunting Stand
amenity	ice_cream	en-gb	Ice Cream
amenity	kindergarten	en-gb	Kindergarten
amenity	library	en-gb	Library
amenity	market	en-gb	Market
amenity	marketplace	en-gb	Marketplace
amenity	mountain_rescue	en-gb	Mountain Rescue
amenity	nightclub	en-gb	Night Club
amenity	nursery	en-gb	Nursery
amenity	nursing_home	en-gb	Nursing Home
amenity	office	en-gb	Office
amenity	park	en-gb	Park
amenity	parking	en-gb	Parking
amenity	pharmacy	en-gb	Pharmacy
amenity	place_of_worship	en-gb	Place of Worship
amenity	police	en-gb	Police
amenity	post_box	en-gb	Post Box
amenity	post_office	en-gb	Post Office
amenity	preschool	en-gb	Pre-School
amenity	prison	en-gb	Prison
amenity	pub	en-gb	Pub
amenity	public_building	en-gb	Public Building
amenity	public_market	en-gb	Public Market
amenity	reception_area	en-gb	Reception Area
amenity	recycling	en-gb	Recycling Point
amenity	restaurant	en-gb	Restaurant
amenity	retirement_home	en-gb	Retirement Home
amenity	sauna	en-gb	Sauna
amenity	school	en-gb	School
amenity	shelter	en-gb	Shelter
amenity	shop	en-gb	Shop
amenity	shopping	en-gb	Shopping
amenity	social_club	en-gb	Social Club
amenity	studio	en-gb	Studio
amenity	supermarket	en-gb	Supermarket
amenity	taxi	en-gb	Taxi
amenity	telephone	en-gb	Public Telephone
amenity	theatre	en-gb	Theatre
amenity	toilets	en-gb	Toilets
amenity	townhall	en-gb	Town Hall
amenity	university	en-gb	University
amenity	vending_machine	en-gb	Vending Machine
amenity	veterinary	en-gb	Veterinary Surgery
amenity	village_hall	en-gb	Village Hall
amenity	waste_basket	en-gb	Waste Basket
amenity	wifi	en-gb	WiFi Access
amenity	youth_centre	en-gb	Youth Centre
boundary	administrative	en-gb	Administrative Boundary
building	apartments	en-gb	Apartment Block
building	block	en-gb	Building Block
building	bunker	en-gb	Bunker
building	chapel	en-gb	Chapel
building	church	en-gb	Church
building	city_hall	en-gb	City Hall
building	commercial	en-gb	Commercial Building
building	dormitory	en-gb	Dormitory
building	entrance	en-gb	Building Entrance
building	faculty	en-gb	Faculty Building
building	farm	en-gb	Farm Building
building	flats	en-gb	Flats
building	garage	en-gb	Garage
building	hall	en-gb	Hall
building	hospital	en-gb	Hospital Building
building	hotel	en-gb	Hotel
building	house	en-gb	House
building	industrial	en-gb	Industrial Building
building	office	en-gb	Office Building
building	public	en-gb	Public Building
building	residential	en-gb	Residential Building
building	retail	en-gb	Retail Building
building	school	en-gb	School Building
building	shop	en-gb	Shop
building	stadium	en-gb	Stadium
building	store	en-gb	Store
building	terrace	en-gb	Terrace
building	tower	en-gb	Tower
building	train_station	en-gb	Railway Station
building	university	en-gb	University Building
highway	bridleway	en-gb	Bridleway
highway	bus_guideway	en-gb	Guided Bus Lane
highway	bus_stop	en-gb	Bus Stop
highway	byway	en-gb	Byway
highway	construction	en-gb	Highway under Construction
highway	cycleway	en-gb	Cycle Path
highway	distance_marker	en-gb	Distance Marker
highway	emergency_access_point	en-gb	Emergency Access Point
highway	footway	en-gb	Footpath
highway	ford	en-gb	Ford
highway	gate	en-gb	Gate
highway	living_street	en-gb	Living Street
highway	minor	en-gb	Minor Road
highway	motorway	en-gb	Motorway
highway	motorway_junction	en-gb	Motorway Junction
highway	motorway_link	en-gb	Motorway Road
highway	path	en-gb	Path
highway	pedestrian	en-gb	Pedestrian Way
highway	platform	en-gb	Platform
highway	primary	en-gb	Primary Road
highway	primary_link	en-gb	Primary Road
highway	raceway	en-gb	Raceway
highway	residential	en-gb	Residential
highway	road	en-gb	Road
highway	secondary	en-gb	Secondary Road
highway	secondary_link	en-gb	Secondary Road
highway	service	en-gb	Service Road
highway	services	en-gb	Motorway Services
highway	steps	en-gb	Steps
highway	stile	en-gb	Stile
highway	tertiary	en-gb	Tertiary Road
highway	track	en-gb	Track
highway	trail	en-gb	Trail
highway	trunk	en-gb	Trunk Road
highway	trunk_link	en-gb	Trunk Road
highway	unclassified	en-gb	Unclassified Road
highway	unsurfaced	en-gb	Unsurfaced Road
historic	archaeological_site	en-gb	Archaeological Site
historic	battlefield	en-gb	Battlefield
historic	boundary_stone	en-gb	Boundary Stone
historic	building	en-gb	Building
historic	castle	en-gb	Castle
historic	church	en-gb	Church
historic	house	en-gb	House
historic	icon	en-gb	Icon
historic	manor	en-gb	Manor
historic	memorial	en-gb	Memorial
historic	mine	en-gb	Mine
historic	monument	en-gb	Monument
historic	museum	en-gb	Museum
historic	ruins	en-gb	Ruins
historic	tower	en-gb	Tower
historic	wayside_cross	en-gb	Wayside Cross
historic	wayside_shrine	en-gb	Wayside Shrine
historic	wreck	en-gb	Wreck
landuse	allotments	en-gb	Allotments
landuse	basin	en-gb	Basin
landuse	brownfield	en-gb	Brownfield Land
landuse	cemetery	en-gb	Cemetery
landuse	commercial	en-gb	Commercial Area
landuse	conservation	en-gb	Conservation
landuse	construction	en-gb	Construction
landuse	farm	en-gb	Farm
landuse	farmland	en-gb	Farmland
landuse	farmyard	en-gb	Farmyard
landuse	forest	en-gb	Forest
landuse	grass	en-gb	Grass
landuse	greenfield	en-gb	Greenfield Land
landuse	industrial	en-gb	Industrial Area
landuse	landfill	en-gb	Landfill
landuse	meadow	en-gb	Meadow
landuse	military	en-gb	Military Area
landuse	mine	en-gb	Mine
landuse	mountain	en-gb	Mountain
landuse	nature_reserve	en-gb	Nature Reserve
landuse	park	en-gb	Park
landuse	piste	en-gb	Piste
landuse	plaza	en-gb	Plaza
landuse	quarry	en-gb	Quarry
landuse	railway	en-gb	Railway
landuse	recreation_ground	en-gb	Recreation Ground
landuse	reservoir	en-gb	Reservoir
landuse	residential	en-gb	Residential Area
landuse	retail	en-gb	Retail
landuse	village_green	en-gb	Village Green
landuse	vineyard	en-gb	Vineyard
landuse	wetland	en-gb	Wetland
landuse	wood	en-gb	Wood
leisure	beach_resort	en-gb	Beach Resort
leisure	common	en-gb	Common Land
leisure	fishing	en-gb	Fishing Area
leisure	garden	en-gb	Garden
leisure	golf_course	en-gb	Golf Course
leisure	ice_rink	en-gb	Ice Rink
leisure	marina	en-gb	Marina
leisure	miniature_golf	en-gb	Miniature Golf
leisure	nature_reserve	en-gb	Nature Reserve
leisure	park	en-gb	Park
leisure	pitch	en-gb	Sports Pitch
leisure	playground	en-gb	Playground
leisure	recreation_ground	en-gb	Recreation Ground
leisure	slipway	en-gb	Slipway
leisure	sports_centre	en-gb	Sports Centre
leisure	stadium	en-gb	Stadium
leisure	swimming_pool	en-gb	Swimming Pool
leisure	track	en-gb	Running Track
leisure	water_park	en-gb	Water Park
natural	bay	en-gb	Bay
natural	beach	en-gb	Beach
natural	cape	en-gb	Cape
natural	cave_entrance	en-gb	Cave Entrance
natural	channel	en-gb	Channel
natural	cliff	en-gb	Cliff
natural	coastline	en-gb	Coastline
natural	crater	en-gb	Crater
natural	feature	en-gb	Feature
natural	fell	en-gb	Fell
natural	fjord	en-gb	Fjord
natural	geyser	en-gb	Geyser
natural	glacier	en-gb	Glacier
natural	heath	en-gb	Heath
natural	hill	en-gb	Hill
natural	island	en-gb	Island
natural	land	en-gb	Land
natural	marsh	en-gb	Marsh
natural	moor	en-gb	Moor
natural	mud	en-gb	Mud
natural	peak	en-gb	Peak
natural	point	en-gb	Point
natural	reef	en-gb	Reef
natural	ridge	en-gb	Ridge
natural	river	en-gb	River
natural	rock	en-gb	Rock
natural	scree	en-gb	Scree
natural	scrub	en-gb	Scrub
natural	shoal	en-gb	Shoal
natural	spring	en-gb	Spring
natural	strait	en-gb	Strait
natural	tree	en-gb	Tree
natural	valley	en-gb	Valley
natural	volcano	en-gb	Volcano
natural	water	en-gb	Water
natural	wetland	en-gb	Wetland
natural	wetlands	en-gb	Wetlands
natural	wood	en-gb	Wood
place	airport	en-gb	Airport
place	city	en-gb	City
place	country	en-gb	Country
place	county	en-gb	County
place	farm	en-gb	Farm
place	hamlet	en-gb	Hamlet
place	house	en-gb	House
place	houses	en-gb	Houses
place	island	en-gb	Island
place	islet	en-gb	Islet
place	locality	en-gb	Locality
place	moor	en-gb	Moor
place	municipality	en-gb	Municipality
place	postcode	en-gb	Postcode
place	region	en-gb	Region
place	sea	en-gb	Sea
place	state	en-gb	State
place	subdivision	en-gb	Subdivision
place	suburb	en-gb	Suburb
place	town	en-gb	Town
place	unincorporated_area	en-gb	Unincorporated Area
place	village	en-gb	Village
railway	abandoned	en-gb	Abandoned Railway
railway	construction	en-gb	Railway under Construction
railway	disused	en-gb	Disused Railway
railway	disused_station	en-gb	Disused Railway Station
railway	funicular	en-gb	Funicular Railway
railway	halt	en-gb	Train Stop
railway	historic_station	en-gb	Historic Railway Station
railway	junction	en-gb	Railway Junction
railway	level_crossing	en-gb	Level Crossing
railway	light_rail	en-gb	Light Rail
railway	monorail	en-gb	Monorail
railway	narrow_gauge	en-gb	Narrow Gauge Railway
railway	platform	en-gb	Railway Platform
railway	preserved	en-gb	Preserved Railway
railway	spur	en-gb	Railway Spur
railway	station	en-gb	Railway Station
railway	subway	en-gb	Subway Station
railway	subway_entrance	en-gb	Subway Entrance
railway	switch	en-gb	Railway Points
railway	tram	en-gb	Tramway
railway	tram_stop	en-gb	Tram Stop
railway	yard	en-gb	Railway Yard
shop	alcohol	en-gb	Off License
shop	apparel	en-gb	Apparel Shop
shop	art	en-gb	Art Shop
shop	bakery	en-gb	Bakery
shop	beauty	en-gb	Beauty Shop
shop	beverages	en-gb	Beverages Shop
shop	bicycle	en-gb	Bicycle Shop
shop	books	en-gb	Book Shop
shop	butcher	en-gb	Butcher
shop	car	en-gb	Car Shop
shop	car_dealer	en-gb	Car Dealer
shop	car_parts	en-gb	Car Parts
shop	carpet	en-gb	Carpet Shop
shop	car_repair	en-gb	Car Repair
shop	charity	en-gb	Charity Shop
shop	chemist	en-gb	Chemist
shop	clothes	en-gb	Clothes Shop
shop	computer	en-gb	Computer Shop
shop	confectionery	en-gb	Confectionery Shop
shop	convenience	en-gb	Convenience Store
shop	copyshop	en-gb	Copy Shop
shop	cosmetics	en-gb	Cosmetics Shop
shop	department_store	en-gb	Department Store
shop	discount	en-gb	Discount Items Shop
shop	doityourself	en-gb	Do-It-Yourself
shop	drugstore	en-gb	Drugstore
shop	dry_cleaning	en-gb	Dry Cleaning
shop	electronics	en-gb	Electronics Shop
shop	estate_agent	en-gb	Estate Agent
shop	farm	en-gb	Farm Shop
shop	fashion	en-gb	Fashion Shop
shop	fish	en-gb	Fish Shop
shop	florist	en-gb	Florist
shop	food	en-gb	Food Shop
shop	funeral_directors	en-gb	Funeral Directors
shop	furniture	en-gb	Furniture
shop	gallery	en-gb	Gallery
shop	garden_centre	en-gb	Garden Centre
shop	general	en-gb	General Store
shop	gift	en-gb	Gift Shop
shop	greengrocer	en-gb	Greengrocer
shop	grocery	en-gb	Grocery Shop
shop	hairdresser	en-gb	Hairdresser
shop	hardware	en-gb	Hardware Store
shop	hifi	en-gb	Hi-Fi
shop	insurance	en-gb	Insurance
shop	jewelry	en-gb	Jewelry Shop
shop	kiosk	en-gb	Kiosk Shop
shop	laundry	en-gb	Laundry
shop	mall	en-gb	Mall
shop	market	en-gb	Market
shop	mobile_phone	en-gb	Mobile Phone Shop
shop	motorcycle	en-gb	Motorcycle Shop
shop	music	en-gb	Music Shop
shop	newsagent	en-gb	Newsagent
shop	optician	en-gb	Optician
shop	organic	en-gb	Organic Food Shop
shop	outdoor	en-gb	Outdoor Shop
shop	pet	en-gb	Pet Shop
shop	photo	en-gb	Photo Shop
shop	salon	en-gb	Salon
shop	shoes	en-gb	Shoe Shop
shop	shopping_centre	en-gb	Shopping Centre
shop	sports	en-gb	Sports Shop
shop	stationery	en-gb	Stationery Shop
shop	supermarket	en-gb	Supermarket
shop	toys	en-gb	Toy Shop
shop	travel_agency	en-gb	Travel Agency
shop	video	en-gb	Video Shop
shop	wine	en-gb	Off License
tourism	alpine_hut	en-gb	Alpine Hut
tourism	artwork	en-gb	Artwork
tourism	attraction	en-gb	Attraction
tourism	bed_and_breakfast	en-gb	Bed and Breakfast
tourism	cabin	en-gb	Cabin
tourism	camp_site	en-gb	Camp Site
tourism	caravan_site	en-gb	Caravan Site
tourism	chalet	en-gb	Chalet
tourism	guest_house	en-gb	Guest House
tourism	hostel	en-gb	Hostel
tourism	hotel	en-gb	Hotel
tourism	information	en-gb	Information
tourism	lean_to	en-gb	Lean To
tourism	motel	en-gb	Motel
tourism	museum	en-gb	Museum
tourism	picnic_site	en-gb	Picnic Site
tourism	theme_park	en-gb	Theme Park
tourism	valley	en-gb	Valley
tourism	viewpoint	en-gb	Viewpoint
tourism	zoo	en-gb	Zoo
waterway	boatyard	en-gb	Boatyard
waterway	canal	en-gb	Canal
waterway	connector	en-gb	Waterway Connector
waterway	dam	en-gb	Dam
waterway	derelict_canal	en-gb	Derelict Canal
waterway	ditch	en-gb	Ditch
waterway	dock	en-gb	Dock
waterway	drain	en-gb	Drain
waterway	lock	en-gb	Lock
waterway	lock_gate	en-gb	Lock Gate
waterway	mineral_spring	en-gb	Mineral Spring
waterway	mooring	en-gb	Mooring
waterway	rapids	en-gb	Rapids
waterway	river	en-gb	River
waterway	riverbank	en-gb	Riverbank
waterway	stream	en-gb	Stream
waterway	wadi	en-gb	Wadi
waterway	waterfall	en-gb	Waterfall
waterway	water_point	en-gb	Water Point
waterway	weir	en-gb	Weir
amenity	airport	es	Aeropuerto
amenity	arts_centre	es	Centro artístico
amenity	atm	es	Cajero automático
amenity	auditorium	es	Auditorio
amenity	bank	es	Banco
amenity	bar	es	Bar
amenity	bench	es	Banco
amenity	bicycle_parking	es	Aparcamiento de bibicletas
amenity	bicycle_rental	es	Alquiler de bicicletas
amenity	brothel	es	Burdel
amenity	bureau_de_change	es	Casa de cambio
amenity	bus_station	es	Estación de autobuses
amenity	cafe	es	Cafetería
amenity	car_rental	es	Alquiler de vehículos
amenity	car_sharing	es	Vehículo compartido
amenity	car_wash	es	Autolavado
amenity	casino	es	Casino
amenity	cinema	es	Cine
amenity	clinic	es	Clínica
amenity	club	es	Club
amenity	college	es	Universidad o instituto
amenity	community_centre	es	Centro comunitario
amenity	courthouse	es	Juzgado
amenity	crematorium	es	Crematorio
amenity	dentist	es	Dentista
amenity	doctors	es	Consultorio médico
amenity	dormitory	es	Residencia de estudiantes
amenity	drinking_water	es	Agua potable
amenity	driving_school	es	Autoescuela
amenity	embassy	es	Embajada
amenity	emergency_phone	es	Teléfono de emergencia
amenity	fast_food	es	Comida rápida
amenity	ferry_terminal	es	Terminal de ferrys
amenity	fire_hydrant	es	Hidrante
amenity	fire_station	es	Parque de bomberos
amenity	fountain	es	Fuente
amenity	fuel	es	Gasolinera
amenity	grave_yard	es	Cementerio
amenity	gym	es	Gimnasio
amenity	hall	es	Salón
amenity	health_centre	es	Centro de salud
amenity	hospital	es	Hospital
amenity	hotel	es	Hotel
amenity	hunting_stand	es	Apostadero de caza
amenity	ice_cream	es	Heladería
amenity	kindergarten	es	Jardín de infancia
amenity	library	es	Biblioteca
amenity	market	es	Mercado
amenity	marketplace	es	Mercado
amenity	mountain_rescue	es	Rescate de montaña
amenity	nightclub	es	Club nocturno
amenity	nursery	es	Enfermería
amenity	nursing_home	es	Residencia para la tercera edad
amenity	office	es	Oficina
amenity	park	es	Parque
amenity	parking	es	Aparcamiento
amenity	pharmacy	es	Farmacia
amenity	place_of_worship	es	Templo
amenity	police	es	Policía
amenity	post_box	es	Buzón de correos
amenity	post_office	es	Oficina de correos
amenity	preschool	es	Preescolar
amenity	prison	es	Prisión
amenity	pub	es	Pub
amenity	public_building	es	Edificio público
amenity	public_market	es	Mercado público
amenity	reception_area	es	Área de recepción
amenity	recycling	es	Punto de reciclaje
amenity	restaurant	es	Restaurante
amenity	retirement_home	es	Residencia de jubilados
amenity	sauna	es	Sauna
amenity	school	es	Escuela
amenity	shelter	es	Refugio
amenity	shop	es	Tienda
amenity	shopping	es	Compras
amenity	social_club	es	Club social
amenity	studio	es	Estudio
amenity	supermarket	es	Supermercado
amenity	taxi	es	Taxi
amenity	telephone	es	Teléfono público
amenity	theatre	es	Teatro
amenity	toilets	es	Aseos
amenity	townhall	es	Ayuntamiento
amenity	university	es	Universidad
amenity	vending_machine	es	Máquina expendedora
amenity	veterinary	es	Clínica veterinaria
amenity	village_hall	es	Sala del pueblo
amenity	waste_basket	es	Papelera
amenity	wifi	es	Acceso a Internet inalámbrico
amenity	youth_centre	es	Centro juvenil
boundary	administrative	es	Frontera administrativa
building	apartments	es	Bloque de apartamentos
building	block	es	Bloque de edificios
building	bunker	es	Búnker
building	chapel	es	Capilla
building	church	es	Iglesia
building	city_hall	es	Ayuntamiento
building	commercial	es	Edificio comercial
building	dormitory	es	Residencia de estudiantes, colegio mayor
building	entrance	es	Entrada a edificio
building	faculty	es	Edificio de facultad
building	farm	es	Granja
building	flats	es	Apartamentos
building	garage	es	Garaje
building	hall	es	Mansión
building	hospital	es	Edificio hospitalario
building	hotel	es	Hotel
building	house	es	Casa
building	industrial	es	Edificio industrial
building	office	es	Edificio de oficinas
building	public	es	Edificio público
building	residential	es	Edificio residencial
building	retail	es	Edificio comercial
building	school	es	Edificio escolar
building	shop	es	Tienda
building	stadium	es	Estadio
building	store	es	Almacén
building	terrace	es	Terraza
building	tower	es	Torre
building	train_station	es	Estación de tren
building	university	es	Edificio universitario
highway	bridleway	es	Camino prioritario para peatones y caballos
highway	bus_guideway	es	Canal guiado de autobuses
highway	bus_stop	es	Parada de autobuses
highway	byway	es	Camino
highway	construction	es	Vía en construcción
highway	cycleway	es	Carril bici
highway	distance_marker	es	Hito kilométrico
highway	emergency_access_point	es	Acceso de emergencia
highway	footway	es	Sendero
highway	ford	es	Vado
highway	gate	es	Puerta
highway	living_street	es	Calle residencial
highway	minor	es	Carretera secundaria
highway	motorway	es	Autovía
highway	motorway_junction	es	Cruce de autovías
highway	motorway_link	es	Enlace de autovía
highway	path	es	Camino
highway	pedestrian	es	Vía peatonal
highway	platform	es	Plataforma
highway	primary	es	Carretera primaria
highway	primary_link	es	Enlace de carretera principal
highway	raceway	es	Pista de carreras
highway	residential	es	Calle
highway	road	es	Carretera
highway	secondary	es	Carretera secundaria
highway	secondary_link	es	Enlace de carretera secundaria
highway	service	es	Vía de servicio
highway	services	es	Vía de servicio
highway	steps	es	Escaleras
highway	stile	es	Escalera para atravesar verjas
highway	tertiary	es	Carretera terciaria
highway	track	es	Pista
highway	trail	es	Sendero
highway	trunk	es	Vía rápida
highway	trunk_link	es	Enlace de vía rápida
highway	unclassified	es	Carretera sin clasificar
highway	unsurfaced	es	Vía no pavimentada
historic	archaeological_site	es	Yacimiento arqueológico
historic	battlefield	es	Campo de batalla
historic	boundary_stone	es	Mojón
historic	building	es	Edificio histórico
historic	castle	es	Castillo
historic	church	es	Iglesia
historic	house	es	Casa
historic	icon	es	Icono
historic	manor	es	Casa señorial
historic	memorial	es	Memorial
historic	mine	es	Mina
historic	monument	es	Monumento
historic	museum	es	Museo
historic	ruins	es	Ruinas
historic	tower	es	Torre
historic	wayside_cross	es	Cruz de término
historic	wayside_shrine	es	Sepulcro
historic	wreck	es	Pecio
landuse	allotments	es	Huertos
landuse	basin	es	Cuenca
landuse	brownfield	es	Solar vacante
landuse	cemetery	es	Cementerio
landuse	commercial	es	Área de oficinas
landuse	conservation	es	Terreno protegido
landuse	construction	es	Construcción
landuse	farm	es	Granja
landuse	farmland	es	Tierra de labranza
landuse	farmyard	es	Corral
landuse	forest	es	Bosque
landuse	grass	es	Césped
landuse	greenfield	es	Terreno urbanizable
landuse	industrial	es	Zona industrial
landuse	landfill	es	Basurero, vertedero
landuse	meadow	es	Pradera
landuse	military	es	Zona militar
landuse	mine	es	Mina
landuse	mountain	es	Montaña
landuse	nature_reserve	es	Reserva natural
landuse	park	es	Parque
landuse	piste	es	Pista de esquí
landuse	plaza	es	Plaza
landuse	quarry	es	Cantera
landuse	railway	es	Vía de ferrocarril
landuse	recreation_ground	es	Área recreacional
landuse	reservoir	es	Embalse
landuse	residential	es	Área residencial
landuse	retail	es	Zona comercial
landuse	village_green	es	Parque municipal
landuse	vineyard	es	Viñedo
landuse	wetland	es	Pantano
landuse	wood	es	Madera
leisure	beach_resort	es	Complejo en la playa
leisure	common	es	Terreno común
leisure	fishing	es	Área de pesca
leisure	garden	es	Jardín
leisure	golf_course	es	Campo de golf
leisure	ice_rink	es	Pista de patinaje sobre hielo
leisure	marina	es	Puerto deportivo
leisure	miniature_golf	es	Minigolf
leisure	nature_reserve	es	Reserva natural
leisure	park	es	Parque
leisure	pitch	es	Cancha deportiva
leisure	playground	es	Área de juegos
leisure	recreation_ground	es	Área recreativa
leisure	slipway	es	Grada
leisure	sports_centre	es	Centro deportivo
leisure	stadium	es	Estadio
leisure	swimming_pool	es	Piscina
leisure	track	es	Pista de carreras
leisure	water_park	es	Parque acuático
natural	bay	es	Bahía
natural	beach	es	Playa
natural	cape	es	Cabo
natural	cave_entrance	es	Entrada a cueva
natural	channel	es	Canal
natural	cliff	es	Acantilado
natural	coastline	es	Costa
natural	crater	es	Cráter
natural	feature	es	Característica
natural	fell	es	Monte
natural	fjord	es	Fiordo
natural	geyser	es	Géiser
natural	glacier	es	Glaciar
natural	heath	es	Brezal
natural	hill	es	Colina
natural	island	es	Isla
natural	land	es	Tierra
natural	marsh	es	Marisma
natural	moor	es	Páramo
natural	mud	es	Lodo
natural	peak	es	Pico
natural	point	es	Punto
natural	reef	es	Arrecife
natural	ridge	es	Cresta
natural	river	es	Río
natural	rock	es	Roca
natural	scree	es	Pedregal
natural	scrub	es	Matorrales
natural	shoal	es	Banco de arena
natural	spring	es	Manantial
natural	strait	es	Estrecho
natural	tree	es	Árbol
natural	valley	es	Valle
natural	volcano	es	Volcán
natural	water	es	Agua
natural	wetland	es	Pantano
natural	wetlands	es	Pantano
natural	wood	es	Bosque
place	airport	es	Aeropuerto
place	city	es	Ciudad
place	country	es	País
place	county	es	Condado
place	farm	es	Granja
place	hamlet	es	Aldea
place	house	es	Casa
place	houses	es	Casas
place	island	es	Isla
place	islet	es	Islote
place	locality	es	Localidad
place	moor	es	Páramo
place	municipality	es	Municipio
place	postcode	es	Código postal
place	region	es	Región
place	sea	es	Mar
place	state	es	Estado o provincia
place	subdivision	es	Subdivisión
place	suburb	es	Suburbio
place	town	es	Pueblo
place	unincorporated_area	es	Área no incorporada
place	village	es	Villa
railway	abandoned	es	Vía de tren abandonada
railway	construction	es	Vía ferroviaria en construcción
railway	disused	es	Vía ferroviaria en desuso
railway	disused_station	es	Estación de tren en desuso
railway	funicular	es	Vía de funicular
railway	halt	es	Apeadero
railway	historic_station	es	Estación de tren histórica
railway	junction	es	Encrucijada de vías ferroviarias
railway	level_crossing	es	Paso a nivel
railway	light_rail	es	Metro ligero
railway	monorail	es	Monorail
railway	narrow_gauge	es	Ferrocarril de vía estrecha
railway	platform	es	Andén
railway	preserved	es	Vía ferroviaria preservada
railway	spur	es	Ramal ferroviario
railway	station	es	Estación de trenes
railway	subway	es	Estación de metro
railway	subway_entrance	es	Boca de metro
railway	switch	es	Aguja de ferrocarril
railway	tram	es	Ruta de tranvía
railway	tram_stop	es	Parada de tranvía
railway	yard	es	Estación de clasificación
shop	alcohol	es	Licorería
shop	apparel	es	Tienda de ropa
shop	art	es	Tienda de artículos de arte
shop	bakery	es	Panadería
shop	beauty	es	Tienda de productos de belleza
shop	beverages	es	Tienda de bebidas
shop	bicycle	es	Tienda de bicicletas
shop	books	es	Librería
shop	butcher	es	Carnicería
shop	car	es	Concesionario
shop	car_dealer	es	Concesionario de automóviles
shop	car_parts	es	Repuestos automotrices
shop	carpet	es	Tienda de alfombras
shop	car_repair	es	Taller mecánico
shop	charity	es	Tienda benéfica
shop	chemist	es	Droguería
shop	clothes	es	Tienda de ropa
shop	computer	es	Tienda de informática
shop	confectionery	es	Dulcería
shop	convenience	es	Pequeño supermercado
shop	copyshop	es	Copistería
shop	cosmetics	es	Tienda de cosmética
shop	department_store	es	Grandes almacenes
shop	discount	es	Tienda de descuento
shop	doityourself	es	Tienda de bricolaje
shop	drugstore	es	Parafarmacia
shop	dry_cleaning	es	Tintorería
shop	electronics	es	Tienda de electrónica
shop	estate_agent	es	Inmobiliaria
shop	farm	es	Tienda de productos agrícolas
shop	fashion	es	Tienda de moda
shop	fish	es	Tienda de artículos de pesca
shop	florist	es	Floristería
shop	food	es	Tienda de alimentación
shop	funeral_directors	es	Funeraria
shop	furniture	es	Tienda de muebles
shop	gallery	es	Galería
shop	garden_centre	es	Vivero
shop	general	es	Tienda de artículos generales
shop	gift	es	Tienda de regalos
shop	greengrocer	es	Frutería
shop	grocery	es	Tienda de alimentación
shop	hairdresser	es	Peluquería
shop	hardware	es	Ferretería
shop	hifi	es	Hi-Fi
shop	insurance	es	Aseguradora
shop	jewelry	es	Joyería
shop	kiosk	es	Kiosko
shop	laundry	es	Lavandería
shop	mall	es	Centro comercial
shop	market	es	Mercado
shop	mobile_phone	es	Tienda de telefonía
shop	motorcycle	es	Tienda de motocicletas
shop	music	es	Tienda de música
shop	newsagent	es	Kiosko de prensa
shop	optician	es	Óptica
shop	organic	es	Tienda de alimentos orgánicos
shop	outdoor	es	Tienda de deportes de aventura
shop	pet	es	Tienda de mascotas
shop	photo	es	Tienda fotográfica
shop	salon	es	Salón de belleza
shop	shoes	es	Zapatería
shop	shopping_centre	es	Centro comercial
shop	sports	es	Tienda de artículos deportivos
shop	stationery	es	Papelería
shop	supermarket	es	Supermercado
shop	toys	es	Juguetería
shop	travel_agency	es	Agencia de viajes
shop	video	es	Videotienda
shop	wine	es	Licorería
tourism	alpine_hut	es	Cabaña alpina
tourism	artwork	es	Obra de arte
tourism	attraction	es	Atracción
tourism	bed_and_breakfast	es	Cama y desayuno (B&B)
tourism	cabin	es	Cabaña
tourism	camp_site	es	Campamento
tourism	caravan_site	es	Camping para caravanas
tourism	chalet	es	Chalet
tourism	guest_house	es	Albergue
tourism	hostel	es	Hostal
tourism	hotel	es	Hotel
tourism	information	es	Información
tourism	lean_to	es	Refugio
tourism	motel	es	Motel
tourism	museum	es	Museo
tourism	picnic_site	es	Área de picnic
tourism	theme_park	es	Parque temático
tourism	valley	es	Valle
tourism	viewpoint	es	Mirador
tourism	zoo	es	Zoológico
waterway	boatyard	es	Astillero
waterway	canal	es	Canal
waterway	connector	es	Esclusa
waterway	dam	es	Presa
waterway	derelict_canal	es	Canal abandonado
waterway	ditch	es	Acequia
waterway	dock	es	Muelle
waterway	drain	es	Desagüe
waterway	lock	es	Esclusa
waterway	lock_gate	es	Compuerta de esclusa
waterway	mineral_spring	es	Fuente mineral
waterway	mooring	es	Amarradero
waterway	rapids	es	Rápidos
waterway	river	es	Río
waterway	riverbank	es	Ribera
waterway	stream	es	Arroyo
waterway	wadi	es	Rambla
waterway	waterfall	es	Cascada
waterway	water_point	es	Punto de agua
waterway	weir	es	Represa
amenity	airport	et	Lennujaam
amenity	atm	et	Pangaautomaat
amenity	auditorium	et	Auditoorium
amenity	bank	et	Pank
amenity	bar	et	Baar
amenity	bench	et	Pink
amenity	bicycle_parking	et	Jalgrattaparkla
amenity	bicycle_rental	et	Jalgrattarent
amenity	brothel	et	Lõbumaja
amenity	bureau_de_change	et	Rahavahetus
amenity	bus_station	et	Bussijaam
amenity	cafe	et	Kohvik
amenity	car_rental	et	Autorent
amenity	car_wash	et	Autopesu
amenity	casino	et	Kasiino
amenity	cinema	et	Kino
amenity	clinic	et	Kliinik
amenity	club	et	Klubi
amenity	courthouse	et	Kohtuhoone
amenity	crematorium	et	Krematoorium
amenity	dentist	et	Hambaarst
amenity	drinking_water	et	Joogivesi
amenity	driving_school	et	Autokool
amenity	embassy	et	Saatkond
amenity	fast_food	et	Kiirtoit
amenity	fire_station	et	Tuletõrjedepoo
amenity	fountain	et	Purskkaev
amenity	fuel	et	Kütus
amenity	grave_yard	et	Surnuaed
amenity	hospital	et	Haigla
amenity	hotel	et	Hotell
amenity	ice_cream	et	Jäätis
amenity	kindergarten	et	Lasteaed
amenity	library	et	Raamatukogu
amenity	market	et	Turg
amenity	marketplace	et	Turg
amenity	nightclub	et	Ööklubi
amenity	park	et	Park
amenity	parking	et	Parkimisplats
amenity	pharmacy	et	Apteek
amenity	police	et	Politsei
amenity	post_box	et	Postkast
amenity	post_office	et	Postkontor
amenity	preschool	et	Lasteaed
amenity	prison	et	Vangla
amenity	pub	et	Pubi
amenity	reception_area	et	Vastuvõtt
amenity	restaurant	et	Restoran
amenity	retirement_home	et	Vanadekodu
amenity	sauna	et	Saun
amenity	school	et	Kool
amenity	shelter	et	Varjualune
amenity	shop	et	Kauplus
amenity	supermarket	et	Supermarket
amenity	taxi	et	Takso
amenity	theatre	et	Teater
amenity	toilets	et	WC
amenity	university	et	Ülikool
amenity	waste_basket	et	Prügikast
amenity	wifi	et	WiFi
amenity	youth_centre	et	Noortekeskus
boundary	administrative	et	Halduspiir
building	bunker	et	Punker
building	chapel	et	Kabel
building	church	et	Kirik
building	commercial	et	Ärihoone
building	dormitory	et	Ühiselamu
building	faculty	et	Õppehoone
building	farm	et	Talumaja
building	flats	et	Korruselamu
building	garage	et	Garaaž
building	hall	et	Hall
building	hospital	et	Haigla hoone
building	hotel	et	Hotell
building	house	et	Maja
building	industrial	et	Tööstushoone
building	office	et	Kontorihoone
building	public	et	Avalik hoone
building	school	et	Koolihoone
building	shop	et	Kauplus
building	stadium	et	Staadion
building	store	et	Kauplus
building	tower	et	Torn
building	train_station	et	Raudteejaam
building	university	et	Ülikoolihoone
highway	bridleway	et	Ratsatee
highway	bus_stop	et	Bussipeatus
highway	cycleway	et	Jalgrattatee
highway	footway	et	Jalgrada
highway	ford	et	Koolmekoht
highway	gate	et	Värav
highway	living_street	et	Õueala
highway	motorway	et	Kiirtee
highway	path	et	Rada
highway	pedestrian	et	Jalakäijatele
highway	platform	et	Platvorm
highway	road	et	Tee
highway	secondary	et	Tugimaantee
highway	steps	et	Trepp
highway	unsurfaced	et	Katteta tee
historic	battlefield	et	Lahinguväli
historic	boundary_stone	et	Piirikivi
historic	building	et	Hoone
historic	castle	et	Kindlus
historic	church	et	Kirik
historic	house	et	Maja
historic	icon	et	Ikoon
historic	manor	et	Mõis
historic	memorial	et	Memoriaal
historic	mine	et	Kaevandus
historic	monument	et	Mälestusmärk
historic	museum	et	Muuseum
historic	ruins	et	Varemed
historic	tower	et	Torn
historic	wreck	et	Vrakk
landuse	cemetery	et	Surnuaed
landuse	forest	et	Mets
landuse	grass	et	Muru
landuse	landfill	et	Prügimägi
landuse	meadow	et	Niit
landuse	mine	et	Kaevandus
landuse	mountain	et	Mägi
landuse	nature_reserve	et	Looduskaitseala
landuse	park	et	Park
landuse	quarry	et	Karjäär
landuse	railway	et	Raudtee
landuse	reservoir	et	Veehoidla
landuse	vineyard	et	Viinamarjaistandus
landuse	wetland	et	Soo
landuse	wood	et	Mets
leisure	garden	et	Aed
leisure	golf_course	et	Golfiväljak
leisure	ice_rink	et	Uisuväli
leisure	miniature_golf	et	Minigolf
leisure	nature_reserve	et	Looduskaitseala
leisure	park	et	park
leisure	pitch	et	Spordiväljak
leisure	playground	et	Mänguväljak
leisure	slipway	et	Slipp
leisure	sports_centre	et	Spordikeskus
leisure	stadium	et	Saadion
leisure	swimming_pool	et	Ujula
leisure	water_park	et	Veepark
natural	bay	et	Laht
natural	beach	et	Rand
natural	cape	et	Neem
natural	cave_entrance	et	Koopa sissepääs
natural	channel	et	Kanal
natural	cliff	et	Kalju
natural	coastline	et	Rannajoon
natural	crater	et	Kraater
natural	fjord	et	Fjord
natural	geyser	et	Geiser
natural	glacier	et	Liustik
natural	heath	et	Nõmm
natural	hill	et	Mägi
natural	island	et	Saar
natural	land	et	Maa
natural	moor	et	Raba
natural	mud	et	Muda
natural	peak	et	Mäetipp
natural	reef	et	Riff
natural	river	et	Jõgi
natural	rock	et	Kivi
natural	spring	et	Allikas
natural	strait	et	Väin
natural	tree	et	Puu
natural	valley	et	Org
natural	volcano	et	Vulkaan
natural	water	et	Vesi
natural	wetland	et	Märgala
natural	wetlands	et	Soo
natural	wood	et	Mets
place	airport	et	lennujaam
place	city	et	Linn
place	country	et	riik
place	county	et	Maakond
place	farm	et	talu
place	house	et	maja
place	houses	et	Majad
place	island	et	Saar
place	islet	et	Saareke
place	moor	et	Raba
place	municipality	et	Vald
place	postcode	et	Sihtnumber
place	sea	et	meri
place	state	et	Osariik
place	town	et	Linn
place	village	et	Küla
railway	halt	et	Rongipeatus
railway	junction	et	Raudtee ülekäigukoht
railway	level_crossing	et	Raudtee ülesõidukoht
railway	narrow_gauge	et	Kitsarööpmeline raudtee
railway	platform	et	Raudteeperroon
railway	station	et	Raudteejaam
railway	subway	et	Metroojaam
railway	tram	et	Trammitee
railway	tram_stop	et	Trammipeatus
shop	bicycle	et	Rattapood
shop	books	et	Raamatupood
shop	butcher	et	Lihunik
shop	carpet	et	Vaibakauplus
shop	car_repair	et	Autoparandus
shop	clothes	et	Riidepood
shop	computer	et	Arvutikauplus
shop	cosmetics	et	Kosmeetikapood
shop	drugstore	et	Apteek
shop	dry_cleaning	et	Keemiline puhastus
shop	fish	et	Kalapood
shop	florist	et	Lillepood
shop	food	et	Toidupood
shop	furniture	et	Mööbel
shop	gallery	et	Galerii
shop	garden_centre	et	Aianduskeskus
shop	hairdresser	et	Juuksur
shop	insurance	et	Kindlustus
shop	jewelry	et	Juveelipood
shop	kiosk	et	Kiosk
shop	mobile_phone	et	Mobiiltelefonide pood
shop	music	et	Muusikapood
shop	pet	et	Lemmikloomapood
shop	shoes	et	Kingapood
shop	sports	et	Spordipood
shop	supermarket	et	Supermarket
shop	toys	et	Mänguasjapood
shop	travel_agency	et	Reisiagentuur
tourism	alpine_hut	et	Alpimaja
tourism	attraction	et	Turismiatraktsioon
tourism	camp_site	et	Laagriplats
tourism	guest_house	et	külalistemaja
tourism	hostel	et	Hostel
tourism	hotel	et	Hotell
tourism	information	et	informatsioon
tourism	motel	et	motell
tourism	museum	et	muuseum
tourism	picnic_site	et	piknikuplats
tourism	theme_park	et	Teemapark
tourism	zoo	et	Loomaaed
waterway	canal	et	Kanal
waterway	dam	et	Tamm
waterway	ditch	et	Kraav
waterway	river	et	Jõgi
waterway	riverbank	et	Jõekallas
waterway	stream	et	Oja
waterway	waterfall	et	Kosk
amenity	airport	eu	Aireportu
amenity	arts_centre	eu	Arte Zentroa
amenity	auditorium	eu	Entzunareto
amenity	bank	eu	Banku
amenity	bar	eu	Taberna
amenity	bench	eu	Eserleku
amenity	bicycle_rental	eu	Txirrindu Alokairua
amenity	brothel	eu	Putetxe
amenity	bureau_de_change	eu	Diru-truke Bulegoa
amenity	bus_station	eu	Autobus-geltoki
amenity	cafe	eu	Kafetegi
amenity	car_rental	eu	Ibilgailu-alokairu
amenity	car_wash	eu	Auto Garbiketa
amenity	casino	eu	Kasino
amenity	cinema	eu	Zinema
amenity	clinic	eu	Klinika
amenity	club	eu	Diskoteka
amenity	college	eu	Kolegioa
amenity	community_centre	eu	Komunitate Zentroa
amenity	courthouse	eu	Epaitegia
amenity	crematorium	eu	Errauste labe
amenity	dentist	eu	Dentista
amenity	doctors	eu	Medikuak
amenity	drinking_water	eu	Edateko ur
amenity	driving_school	eu	Autoeskola
amenity	embassy	eu	Enbaxada
amenity	emergency_phone	eu	Larrialdi Telefonoa
amenity	fast_food	eu	Janari Azkarra
amenity	ferry_terminal	eu	Ferry terminal
amenity	fire_station	eu	Suhiltzaileak
amenity	fountain	eu	Iturri
amenity	grave_yard	eu	Hilerri
amenity	gym	eu	Osasun Zentroa / Gimnasioa
amenity	hall	eu	Aretoa
amenity	health_centre	eu	Osasun Zentroa
amenity	hospital	eu	Ospitalea
amenity	hotel	eu	Hotel
amenity	ice_cream	eu	Izozkiak
amenity	kindergarten	eu	Haurtzaindegi
amenity	library	eu	Liburutegia
amenity	market	eu	Merkatu
amenity	marketplace	eu	Merkatua
amenity	mountain_rescue	eu	Mendiko Erreskatea
amenity	nightclub	eu	Gau-klub
amenity	nursery	eu	Haurtzaindegi
amenity	office	eu	Bulego
amenity	park	eu	Parke
amenity	parking	eu	Aparkaleku
amenity	pharmacy	eu	Farmazia
amenity	place_of_worship	eu	Otoitzerako Lekua
amenity	police	eu	Polizia
amenity	post_box	eu	Postontzia
amenity	post_office	eu	Postetxe
amenity	preschool	eu	Eskolaurre
amenity	prison	eu	Espetxe
amenity	public_building	eu	Eraikin publiko
amenity	public_market	eu	Herri Azoka
amenity	recycling	eu	Birziklatze gune
amenity	restaurant	eu	Jatetxe
amenity	retirement_home	eu	Nagusien etxea
amenity	sauna	eu	Sauna
amenity	school	eu	Ikastetxe
amenity	shop	eu	Denda
amenity	shopping	eu	Erosketak
amenity	studio	eu	Estudio
amenity	supermarket	eu	Supermerkatu
amenity	taxi	eu	Taxi
amenity	telephone	eu	Telefono publiko
amenity	theatre	eu	Antzokia
amenity	toilets	eu	Komunak
amenity	townhall	eu	Udaletxe
amenity	university	eu	Unibertsitate
amenity	vending_machine	eu	Salmenta automatiko
amenity	wifi	eu	WiFi Sarbidea
amenity	youth_centre	eu	Gaztelekua
boundary	administrative	eu	Muga Administratiboa
building	bunker	eu	Bunker
building	chapel	eu	Kapera
building	church	eu	Eliza
building	city_hall	eu	Udaletxea
building	garage	eu	Garajea
building	hospital	eu	Ospitale erakina
building	hotel	eu	Hotela
building	house	eu	Etxe
building	industrial	eu	Eraikin industriala
building	public	eu	Eraikin publiko
building	school	eu	Eskola eraikina
building	shop	eu	Denda
building	stadium	eu	Estadio
building	store	eu	Denda
building	tower	eu	Dorre
building	train_station	eu	Tren Geltokia
building	university	eu	Unibertsitate eraikina
highway	bus_stop	eu	Autobus-geraleku
highway	construction	eu	Eraikitze-lanetan dagoen Autopista
highway	emergency_access_point	eu	Larrialdi Sarbide Gunea
highway	footway	eu	Oinezkoen bide
highway	gate	eu	Ate
highway	motorway	eu	Autobide
highway	motorway_link	eu	Autobidea
highway	platform	eu	Nasa
highway	primary	eu	Lehen mailako errepide
highway	primary_link	eu	Errepide nagusi
highway	residential	eu	Bizileku
highway	road	eu	Errepide
highway	secondary	eu	Bigarren mailako errepide
highway	secondary_link	eu	Bigarren mailako errepide
highway	service	eu	Zerbitzu Errepidea
highway	services	eu	Autobide Zerbitzuak
highway	steps	eu	Eskailera-mailak
highway	tertiary	eu	Hirugarren mailako errepide
highway	track	eu	Pista
historic	archaeological_site	eu	Aztarnategi arkeologiko
historic	building	eu	Eraikina
historic	castle	eu	Gaztelu
historic	church	eu	Eliza
historic	house	eu	Etxea
historic	memorial	eu	Memoriala
historic	mine	eu	Meategi
historic	monument	eu	Monumentu
historic	museum	eu	Museo
historic	tower	eu	Dorre
landuse	cemetery	eu	Hilerri
landuse	commercial	eu	Merkataritza Eremua
landuse	construction	eu	Eraikuntza
landuse	farm	eu	Baserria
landuse	forest	eu	Baso
landuse	meadow	eu	Larre
landuse	military	eu	Eremu Militarra
landuse	mine	eu	Meategi
landuse	mountain	eu	Mendi
landuse	nature_reserve	eu	Natura-erreserba
landuse	park	eu	Parke
landuse	plaza	eu	Enparantza
landuse	quarry	eu	Harrobi
landuse	railway	eu	Trenbide
landuse	reservoir	eu	Urtegi
leisure	beach_resort	eu	Hondartza konplexu
leisure	common	eu	Lur Komunak
leisure	fishing	eu	Arrantza Lekua
leisure	garden	eu	Lorategi
leisure	golf_course	eu	Golf-zelai
leisure	ice_rink	eu	Izotz-pista
leisure	marina	eu	Kirol-portu
leisure	miniature_golf	eu	Minigolfa
leisure	nature_reserve	eu	Natura Erreserba
leisure	park	eu	Parkea
leisure	pitch	eu	Kirolgunea
leisure	playground	eu	Jolastoki
leisure	sports_centre	eu	Kiroldegi
leisure	stadium	eu	Estadio
leisure	swimming_pool	eu	Igerilekua
natural	bay	eu	Badia
natural	beach	eu	Hondartza
natural	cape	eu	Lurmutur
natural	cave_entrance	eu	Kobazulo Sarrera
natural	channel	eu	Kanal
natural	coastline	eu	Itsasertz
natural	crater	eu	Crater
natural	fjord	eu	Fiordo
natural	geyser	eu	Geiser
natural	glacier	eu	Glaziar
natural	hill	eu	Muinoa
natural	island	eu	Irla
natural	mud	eu	Lohi
natural	peak	eu	Gailur
natural	point	eu	Puntu
natural	reef	eu	Arrezife
natural	river	eu	Ibai
natural	rock	eu	Arroka
natural	scree	eu	Harritza
natural	shoal	eu	Hondar-banku
natural	strait	eu	Itsasertza
natural	tree	eu	Zuhaitza
natural	valley	eu	Haran
natural	volcano	eu	Sumendi
natural	water	eu	Ura
natural	wood	eu	Baso
place	airport	eu	Aireportu
place	city	eu	Hiria
place	country	eu	Herrialdea
place	county	eu	Konderria
place	farm	eu	Baserria
place	hamlet	eu	Herrixka
place	house	eu	Etxe
place	houses	eu	Etxeak
place	island	eu	Irla
place	islet	eu	Uhartea
place	locality	eu	Lokalitate
place	municipality	eu	Udalerri
place	postcode	eu	Posta-kode
place	region	eu	Eskualde
place	sea	eu	Itsasoa
place	state	eu	Estatua
place	subdivision	eu	Subdibisio
place	suburb	eu	Aldiri
place	town	eu	Herria
place	unincorporated_area	eu	Elkartu Gabeko Gunea
place	village	eu	Herrixka
railway	construction	eu	Eraikitze-lanetan dagoen Trenbidea
railway	halt	eu	Tren Geralekua
railway	historic_station	eu	Tren Geltoki Historikoa
railway	light_rail	eu	Tren Arina
railway	monorail	eu	Monoraila
railway	platform	eu	Trenbide Plataforma
railway	station	eu	Tren Geltokia
railway	subway	eu	Metro geltoki
railway	subway_entrance	eu	Metro Sarbidea
railway	tram	eu	Tranbia
railway	tram_stop	eu	Tranbia geltoki
shop	art	eu	Arte-denda
shop	bakery	eu	Okindegi
shop	books	eu	Liburudenda
shop	butcher	eu	Harategi
shop	chemist	eu	Farmazia
shop	clothes	eu	Arropa denda
shop	computer	eu	Ordenagailu-denda
shop	confectionery	eu	Gozotegi
shop	electronics	eu	Elektronika-denda
shop	estate_agent	eu	Higiezinen agente
shop	fish	eu	Arrantza-denda
shop	florist	eu	Loradenda
shop	food	eu	Janari-denda
shop	furniture	eu	Altzari
shop	gallery	eu	Galeria
shop	gift	eu	Opari-denda
shop	greengrocer	eu	Barazki-saltzaile
shop	grocery	eu	Janaridenda
shop	hairdresser	eu	Ile-apaindegi
shop	hifi	eu	Hi-Fi
shop	insurance	eu	Aseguruak
shop	jewelry	eu	Bitxi-denda
shop	kiosk	eu	Kiosko
shop	laundry	eu	Garbitegi
shop	mall	eu	Merkataritza-gunea
shop	market	eu	Merkatu
shop	mobile_phone	eu	Mugikor-denda
shop	music	eu	Musika-denda
shop	newsagent	eu	Kioskoa
shop	optician	eu	Optika
shop	pet	eu	Animalia-denda
shop	photo	eu	Argazki-denda
shop	shoes	eu	Zapatadenda
shop	shopping_centre	eu	Merkatal Gunea
shop	sports	eu	Kirol denda
shop	supermarket	eu	Supermerkatu
shop	toys	eu	Jostailu Denda
shop	travel_agency	eu	Bidaia-agentzia
tourism	alpine_hut	eu	Aterpe alpinoa
tourism	attraction	eu	Atrakzio
tourism	bed_and_breakfast	eu	Ohe eta gosari (B&B)
tourism	cabin	eu	Kabina
tourism	camp_site	eu	Kanpin
tourism	chalet	eu	Txalet
tourism	guest_house	eu	Aterpe
tourism	hostel	eu	Ostatu
tourism	hotel	eu	Hotel
tourism	information	eu	Informazioa
tourism	motel	eu	Motel
tourism	museum	eu	Museoa
tourism	picnic_site	eu	Piknik-gune
tourism	theme_park	eu	Parke tematiko
tourism	valley	eu	Haran
tourism	viewpoint	eu	Behatoki
tourism	zoo	eu	Zoologiko
waterway	canal	eu	Kanal
waterway	dam	eu	Urtegia
waterway	ditch	eu	Lubakia
waterway	drain	eu	Isurbidea
waterway	rapids	eu	Ur-lasterrak
waterway	river	eu	Ibai
waterway	waterfall	eu	Ur-jauzi
waterway	weir	eu	Uharka
amenity	airport	fa	فرودگاه
amenity	atm	fa	عابر بانک
amenity	bank	fa	بانک
amenity	bench	fa	نیمکت
amenity	brothel	fa	فاحشه خانه
amenity	cafe	fa	کافه
amenity	cinema	fa	سینما
amenity	clinic	fa	درمانگاه
amenity	courthouse	fa	دادگاه
amenity	dentist	fa	دندانپزشک
amenity	dormitory	fa	خوابگاه دانشجویی
amenity	embassy	fa	سفارت
amenity	fire_station	fa	آتش نشانی
amenity	fuel	fa	پمپ بنزین
amenity	hospital	fa	بیمارستان
amenity	hotel	fa	هتل
amenity	ice_cream	fa	بستنی فروشی
amenity	kindergarten	fa	کودکستان
amenity	library	fa	کتابخانه
amenity	market	fa	بازار
amenity	marketplace	fa	بازار
amenity	office	fa	دفتر
amenity	park	fa	پارک
amenity	parking	fa	پارکینگ
amenity	pharmacy	fa	داروخانه
amenity	police	fa	پلیس
amenity	post_box	fa	صندوق پست
amenity	post_office	fa	اداره پست
amenity	prison	fa	زندان
amenity	pub	fa	میخانه
amenity	recycling	fa	بازیافت
amenity	restaurant	fa	رستوران
amenity	school	fa	مدرسه
amenity	shop	fa	فروشگاه
amenity	supermarket	fa	سوپرمارکت
amenity	taxi	fa	تاکسی
amenity	theatre	fa	تئاتر
amenity	toilets	fa	توالت
amenity	townhall	fa	شهر داری
amenity	university	fa	دانشگاه
amenity	waste_basket	fa	سطل اشغال
building	church	fa	کلیسا
building	garage	fa	گاراژ
building	hospital	fa	ساختمان بیمارستان
building	hotel	fa	هتل
building	house	fa	خانه
building	shop	fa	فروشگاه
building	stadium	fa	ورزشگاه
building	tower	fa	برج
highway	bus_stop	fa	ایستگاه اتوبوس
highway	footway	fa	پیاده رو
highway	gate	fa	دروازه
highway	motorway	fa	اتوبان
highway	path	fa	مسیر
highway	pedestrian	fa	پیاده راه
highway	residential	fa	مسکونی
highway	road	fa	جاده
highway	steps	fa	پله
highway	trunk	fa	بزرگراه
highway	trunk_link	fa	بزرگراه
historic	castle	fa	قلعه
historic	church	fa	کلیسا
historic	museum	fa	موزه
historic	tower	fa	برج
landuse	cemetery	fa	گورستان
landuse	farmland	fa	زمین کشاورزی
landuse	forest	fa	جنگل
landuse	mine	fa	معدن
landuse	mountain	fa	کوه
landuse	park	fa	پارک
landuse	railway	fa	ریل
leisure	fishing	fa	نواحی ماهی‌گیری
leisure	garden	fa	باغ
leisure	marina	fa	تفریح‌گاه ساحلی
leisure	park	fa	پارک
leisure	stadium	fa	ورزشگاه
leisure	swimming_pool	fa	استخر شنا
natural	bay	fa	خالیج
natural	beach	fa	ساحل
natural	cave_entrance	fa	ورودی غار
natural	channel	fa	کانال
natural	coastline	fa	ساحل
natural	fell	fa	قطع کردن
natural	glacier	fa	یخچال طبیعی
natural	hill	fa	تپه
natural	island	fa	جزیره
natural	moor	fa	دشت
natural	mud	fa	گل
natural	peak	fa	قله
natural	point	fa	نقطه
natural	river	fa	رود خانه
natural	rock	fa	صخره
natural	spring	fa	بهار
natural	tree	fa	درخت
natural	valley	fa	دره
natural	volcano	fa	کوه آتشفشان
natural	water	fa	اب
natural	wood	fa	جنگل
place	airport	fa	فرودگاه
place	city	fa	شهر بزرگ
place	country	fa	کشور
place	farm	fa	مزرعه
place	house	fa	خانه
place	island	fa	جزیره
place	islet	fa	جزیره کوچک
place	locality	fa	محل
place	postcode	fa	کدپستی
place	sea	fa	دریا
place	suburb	fa	محله
place	town	fa	شهر
place	village	fa	دهکده
shop	bakery	fa	نانوایی
shop	books	fa	فروشگاه کتاب
shop	butcher	fa	قصاب
shop	greengrocer	fa	سبزی فروش
shop	kiosk	fa	کیوسک
shop	laundry	fa	خشکشویی
shop	market	fa	بازار
shop	supermarket	fa	سوپرمارکت
tourism	artwork	fa	آثار هنری
tourism	attraction	fa	جاذبه
tourism	bed_and_breakfast	fa	تخت‌خواب و صبحانه
tourism	cabin	fa	اطاق
tourism	camp_site	fa	محل اردوگاه
tourism	chalet	fa	کلبه ییلاقی
tourism	hostel	fa	هتل
tourism	hotel	fa	هتل
tourism	information	fa	اطلاعات
tourism	motel	fa	متل
tourism	museum	fa	موزه
tourism	valley	fa	دره
tourism	zoo	fa	باغ وحش
waterway	canal	fa	کانال
waterway	dam	fa	سد
waterway	river	fa	رودخانه
waterway	waterfall	fa	ابشار
amenity	airport	fi	Lentokenttä
amenity	arts_centre	fi	Taidekeskus
amenity	atm	fi	Pankkiautomaatti
amenity	auditorium	fi	Auditorio
amenity	bank	fi	Pankki
amenity	bar	fi	Baari
amenity	bench	fi	Penkki
amenity	bicycle_parking	fi	Pyöräparkki
amenity	bicycle_rental	fi	Pyörävuokraamo
amenity	brothel	fi	Bordelli
amenity	bureau_de_change	fi	Rahanvaihto
amenity	bus_station	fi	Linja-autoasema
amenity	cafe	fi	Kahvila
amenity	car_rental	fi	Autovuokraamo
amenity	car_sharing	fi	Kimppakyyti
amenity	car_wash	fi	Autopesu
amenity	casino	fi	Kasino
amenity	cinema	fi	Elokuvateatteri
amenity	clinic	fi	Klinikka
amenity	club	fi	Klubi
amenity	college	fi	Oppilaitos
amenity	community_centre	fi	Yhteisökeskus
amenity	courthouse	fi	Oikeustalo
amenity	crematorium	fi	Krematorio
amenity	dentist	fi	Hammaslääkäri
amenity	doctors	fi	Lääkäreitä
amenity	dormitory	fi	Asuntola
amenity	drinking_water	fi	Juomavesi
amenity	driving_school	fi	Autokoulu
amenity	embassy	fi	Lähetystö
amenity	emergency_phone	fi	Hätäpuhelin
amenity	fast_food	fi	Pikaruoka
amenity	ferry_terminal	fi	Lauttaterminaali
amenity	fire_hydrant	fi	Paloposti
amenity	fire_station	fi	Paloasema
amenity	fountain	fi	Lähde
amenity	fuel	fi	Polttoaine
amenity	grave_yard	fi	Hautausmaa
amenity	gym	fi	Liikuntakeskus / kuntosali
amenity	hall	fi	Halli
amenity	health_centre	fi	Terveyskeskus
amenity	hospital	fi	Sairaala
amenity	hotel	fi	Hotelli
amenity	hunting_stand	fi	Metsästyslava
amenity	ice_cream	fi	Jäätelö
amenity	kindergarten	fi	Päiväkoti
amenity	library	fi	Kirjasto
amenity	market	fi	Tori
amenity	marketplace	fi	Tori
amenity	mountain_rescue	fi	Vuoristopelastuspalvelu
amenity	nightclub	fi	Yökerho
amenity	nursery	fi	Päiväkoti
amenity	nursing_home	fi	Hoitokoti
amenity	office	fi	Toimisto
amenity	park	fi	Puisto
amenity	parking	fi	Parkkipaikka
amenity	pharmacy	fi	Apteekki
amenity	place_of_worship	fi	Kirkko
amenity	police	fi	Poliisi
amenity	post_box	fi	Kirjelaatikko
amenity	post_office	fi	Postitoimisto
amenity	preschool	fi	Esikoulu
amenity	prison	fi	Vankila
amenity	pub	fi	Pubi
amenity	public_building	fi	Julkinen rakennus
amenity	public_market	fi	Torikauppa
amenity	reception_area	fi	Vastaanottoalue
amenity	recycling	fi	Kierrätyspaikka
amenity	restaurant	fi	Ravintola
amenity	retirement_home	fi	Vanhainkoti
amenity	sauna	fi	Sauna
amenity	school	fi	Koulu
amenity	shelter	fi	Väestönsuoja
amenity	shop	fi	Kauppa
amenity	shopping	fi	Ostokset
amenity	social_club	fi	Sosiaalinen kerho
amenity	studio	fi	Studio
amenity	supermarket	fi	Supermarketti
amenity	taxi	fi	Taksi
amenity	telephone	fi	Puhelinkoppi
amenity	theatre	fi	Teatteri
amenity	toilets	fi	WC
amenity	townhall	fi	Kaupungintalo
amenity	university	fi	Yliopisto
amenity	vending_machine	fi	Myyntiautomaatti
amenity	veterinary	fi	Eläinlääkäri
amenity	village_hall	fi	Kyläkoti
amenity	waste_basket	fi	Roskakori
amenity	wifi	fi	Langaton lähiverkko
amenity	youth_centre	fi	Nuorisokeskus
boundary	administrative	fi	Hallinnollinen raja
building	apartments	fi	Talo
building	block	fi	Rakennusosa
building	bunker	fi	Bunkkeri
building	chapel	fi	Kappeli
building	church	fi	Kirkko
building	city_hall	fi	Kaupungintalo
building	commercial	fi	Liikerakennus
building	dormitory	fi	Asuntola
building	entrance	fi	Rakennuksen sisäänkäynti
building	faculty	fi	Tiedekunnan rakennus
building	farm	fi	Maatilan rakennus
building	flats	fi	Kerrostalo
building	garage	fi	Autotalli
building	hall	fi	Halli
building	hospital	fi	Sairaalarakennus
building	hotel	fi	Hotelli
building	house	fi	Talo
building	industrial	fi	Teollisuusrakennus
building	office	fi	Toimistorakennus
building	public	fi	Julkinen rakennus
building	residential	fi	Asuinrakennus
building	retail	fi	Liikerakennus
building	school	fi	Koulurakennus
building	shop	fi	Kauppa
building	stadium	fi	Stadion
building	store	fi	Kauppa
building	terrace	fi	Terassi
building	tower	fi	Torni
building	train_station	fi	Rautatieasema
building	university	fi	Yliopistorakennus
highway	bridleway	fi	Ratsastuspolku
highway	bus_guideway	fi	Ohjattu linja-autokaista
highway	bus_stop	fi	Bussipysäkki
highway	byway	fi	Sivutie
highway	construction	fi	Rakenteilla oleva tie
highway	cycleway	fi	Pyörätie
highway	distance_marker	fi	Etäisyysmerkki
highway	emergency_access_point	fi	Hätätilapaikka
highway	footway	fi	Polku
highway	ford	fi	Kahluupaikka
highway	gate	fi	Portti
highway	living_street	fi	Asuinkatu
highway	minor	fi	Sivutie
highway	motorway	fi	Moottoritie
highway	motorway_junction	fi	Moottoritien liittymä
highway	motorway_link	fi	Moottoritie
highway	path	fi	Polku
highway	pedestrian	fi	Jalkakäytävä
highway	platform	fi	Asemalaituri
highway	primary	fi	Kantatie
highway	primary_link	fi	Kantatie
highway	raceway	fi	Kilparata
highway	residential	fi	Asuinkatu
highway	road	fi	Tie
highway	secondary	fi	Seututie
highway	secondary_link	fi	Seututie
highway	service	fi	Huoltotie
highway	services	fi	Moottoritiepalvelut
highway	steps	fi	Portaat
highway	stile	fi	Aidanylitys
highway	tertiary	fi	Yhdystie
highway	track	fi	Metsätie
highway	trail	fi	Vaelluspolku
highway	trunk	fi	Valtatie
highway	trunk_link	fi	Valtatie
highway	unclassified	fi	Luokittelematon tie
highway	unsurfaced	fi	Päällystämätön tie
historic	archaeological_site	fi	Arkeologinen kohde
historic	battlefield	fi	Taistelukenttä
historic	boundary_stone	fi	Rajakivi
historic	building	fi	Rakennus
historic	castle	fi	Linna
historic	church	fi	Kirkko
historic	house	fi	Talo
historic	icon	fi	Ikoni
historic	manor	fi	Kartano
historic	memorial	fi	Muistomerkki
historic	mine	fi	Kaivos
historic	monument	fi	Muistomerkki
historic	museum	fi	Museo
historic	ruins	fi	Rauniot
historic	tower	fi	Torni
historic	wreck	fi	Hylky
landuse	allotments	fi	Siirtolapuutarha
landuse	basin	fi	Syvänne
landuse	cemetery	fi	Hautausmaa
landuse	commercial	fi	Kaupallinen alue
landuse	conservation	fi	Suojeltu kohde
landuse	construction	fi	Rakennustyömaa
landuse	farm	fi	Maatila
landuse	farmland	fi	Viljelysmaa
landuse	farmyard	fi	Maatilan piha
landuse	forest	fi	Metsä
landuse	grass	fi	Nurmikko
landuse	industrial	fi	Teollisuusalue
landuse	landfill	fi	Kaatopaikka
landuse	meadow	fi	Niitty
landuse	military	fi	Sotilasalue
landuse	mine	fi	Kaivos
landuse	mountain	fi	Vuori
landuse	nature_reserve	fi	Luonnonsuojelualue
landuse	park	fi	Puisto
landuse	piste	fi	Latu
landuse	plaza	fi	Aukio
landuse	quarry	fi	Avolouhos
landuse	railway	fi	Rautatie
landuse	recreation_ground	fi	Virkistysalue
landuse	reservoir	fi	Tekojärvi
landuse	residential	fi	Asuinalue
landuse	retail	fi	Vähittäiskauppa
landuse	vineyard	fi	Viinitarha
landuse	wetland	fi	Kosteikko
landuse	wood	fi	Metsä
leisure	beach_resort	fi	Rantakohde
leisure	common	fi	Yhteinen maa
leisure	fishing	fi	Kalastusalue
leisure	garden	fi	Puutarha
leisure	golf_course	fi	Golf-kenttä
leisure	ice_rink	fi	Luistelurata
leisure	marina	fi	Huvivenesatama
leisure	miniature_golf	fi	Minigolf
leisure	nature_reserve	fi	Luonnonsuojelualue
leisure	park	fi	Puisto
leisure	pitch	fi	Urheilukenttä
leisure	playground	fi	Leikkikenttä
leisure	recreation_ground	fi	Virkistysalue
leisure	slipway	fi	Vesillelaskuramppi
leisure	sports_centre	fi	Urheilukeskus
leisure	stadium	fi	Stadioni
leisure	swimming_pool	fi	Uima-allas
leisure	track	fi	Juoksurata
leisure	water_park	fi	Vesipuisto
natural	bay	fi	Lahti
natural	beach	fi	Hiekkaranta
natural	cape	fi	Niemi
natural	cave_entrance	fi	Luolan sisäänkäynti
natural	channel	fi	Kanava
natural	cliff	fi	Jyrkänne
natural	coastline	fi	Rantaviiva
natural	crater	fi	Kraatteri
natural	feature	fi	Erikoispiirre
natural	fell	fi	Tunturi
natural	fjord	fi	Vuono
natural	geyser	fi	Geysir
natural	glacier	fi	Jäätikkö
natural	heath	fi	Nummi
natural	hill	fi	Mäki
natural	island	fi	Saari
natural	land	fi	Maa
natural	marsh	fi	Suo
natural	moor	fi	Nummi
natural	mud	fi	Muta
natural	peak	fi	Huippu
natural	point	fi	Niemi
natural	reef	fi	Riutta
natural	ridge	fi	Harju
natural	river	fi	Joki
natural	rock	fi	Kivi
natural	scree	fi	Kivikko
natural	scrub	fi	Pensaikko
natural	shoal	fi	Matalikko
natural	spring	fi	Lähde
natural	strait	fi	Salmi
natural	tree	fi	Puu
natural	valley	fi	Laakso
natural	volcano	fi	Tulivuori
natural	water	fi	Vesi
natural	wetland	fi	Kosteikko
natural	wetlands	fi	Kosteikko
natural	wood	fi	Metsä
place	airport	fi	Lentokenttä
place	city	fi	Kaupunki
place	country	fi	Maa
place	county	fi	Piirikunta
place	farm	fi	Maatila
place	hamlet	fi	Pieni kylä
place	house	fi	Talo
place	houses	fi	Taloja
place	island	fi	Saari
place	islet	fi	Saareke
place	locality	fi	Paikkakunta
place	moor	fi	Nummi
place	municipality	fi	Kunta
place	postcode	fi	Postinumero
place	region	fi	Alue
place	sea	fi	Meri
place	state	fi	Osavaltio
place	subdivision	fi	Naapurusto
place	suburb	fi	Lähiö
place	town	fi	Kaupunki
place	unincorporated_area	fi	Ei-liitetty alue
place	village	fi	Kylä
railway	abandoned	fi	Hylätty rautatie
railway	construction	fi	Rakenteilla oleva rautatie
railway	disused	fi	Käyttämätön rautatie
railway	disused_station	fi	Käytöstä poistunut rautatieasema
railway	funicular	fi	Funikulaari
railway	halt	fi	Junan pysäkki
railway	historic_station	fi	Historiallinen juna-asema
railway	junction	fi	Rautatien risteys
railway	level_crossing	fi	Tasoristeys
railway	light_rail	fi	Pikaraitiotie
railway	monorail	fi	Yksikiskoinen raide
railway	narrow_gauge	fi	Kapearaiteinen rautatie
railway	platform	fi	Asemalaituri
railway	preserved	fi	Museorautatie
railway	spur	fi	Pistoraide
railway	station	fi	Rautatieasema
railway	subway	fi	Metroasema
railway	subway_entrance	fi	Metron sisäänkäynti
railway	switch	fi	Ratavaihde
railway	tram	fi	Raitiotie
railway	tram_stop	fi	Raitiovaunupysäkki
railway	yard	fi	Ratapiha
shop	art	fi	Taidekauppa
shop	bakery	fi	Leipomo
shop	bicycle	fi	Polkupyöräkauppa
shop	books	fi	Kirjakauppa
shop	butcher	fi	Lihakauppa
shop	car	fi	Autokauppa
shop	car_dealer	fi	Autokauppa
shop	car_parts	fi	Auton osia
shop	carpet	fi	Mattokauppa
shop	car_repair	fi	Autokorjaamo
shop	chemist	fi	Apteekki
shop	clothes	fi	Vaatekauppa
shop	computer	fi	Tietokonekauppa
shop	convenience	fi	Lähikauppa
shop	cosmetics	fi	Kosmetiikkakauppa
shop	department_store	fi	Tavaratalo
shop	doityourself	fi	Tee-se-itse
shop	dry_cleaning	fi	Kuivapesula
shop	electronics	fi	Elektroniikkakauppa
shop	fashion	fi	Muotikauppa
shop	fish	fi	Kalakauppa
shop	florist	fi	Kukkakauppa
shop	food	fi	Ruokakauppa
shop	funeral_directors	fi	Hautausurakoitsija
shop	furniture	fi	Huonekaluliike
shop	gallery	fi	Galleria
shop	gift	fi	Lahjakauppa
shop	hairdresser	fi	Kampaamo
shop	hardware	fi	Rautakauppa
shop	insurance	fi	Vakuutus
shop	jewelry	fi	Korukauppa
shop	kiosk	fi	Kioski
shop	laundry	fi	Pesula
shop	mall	fi	Ostoskeskus
shop	mobile_phone	fi	Matkapuhelinkauppa
shop	motorcycle	fi	Moottoripyöräkauppa
shop	music	fi	Musiikkikauppa
shop	newsagent	fi	Lehtikioski
shop	optician	fi	Optikko
shop	organic	fi	Luomukauppa
shop	outdoor	fi	Ulkoiluvälinekauppa
shop	pet	fi	Eläinkauppa
shop	photo	fi	Valokuvausliike
shop	salon	fi	Salonki
shop	shoes	fi	Kenkäkauppa
shop	shopping_centre	fi	Ostoskeskus
shop	sports	fi	Urheilukauppa
shop	supermarket	fi	Supermarketti
shop	toys	fi	Lelukauppa
shop	travel_agency	fi	Matkatoimisto
shop	video	fi	Videokauppa
tourism	alpine_hut	fi	Alppimaja
tourism	artwork	fi	Taideteos
tourism	attraction	fi	Nähtävyys
tourism	bed_and_breakfast	fi	Aamiaismajoitus
tourism	cabin	fi	Mökki
tourism	camp_site	fi	Leirintäalue
tourism	caravan_site	fi	Leirintäalue
tourism	chalet	fi	Alppimaja
tourism	hostel	fi	Hostelli
tourism	hotel	fi	Hotelli
tourism	information	fi	Infopiste
tourism	motel	fi	Motelli
tourism	museum	fi	Museo
tourism	picnic_site	fi	Piknik-paikka
tourism	theme_park	fi	Teemapuisto
tourism	valley	fi	Laakso
tourism	viewpoint	fi	Näköalapaikka
tourism	zoo	fi	Eläintarha
waterway	boatyard	fi	Telakka
waterway	canal	fi	Kanaali
waterway	dam	fi	Pato
waterway	ditch	fi	Oja
waterway	dock	fi	Märkätelakka
waterway	drain	fi	Oja
waterway	lock	fi	Sulku
waterway	lock_gate	fi	Sulkuportti
waterway	rapids	fi	Koski
waterway	river	fi	Joki
waterway	riverbank	fi	Joki
waterway	stream	fi	Puro
waterway	waterfall	fi	Vesiputous
waterway	weir	fi	Pato
amenity	airport	fr	Aéroport
amenity	arts_centre	fr	Centre artistique
amenity	atm	fr	Distributeur automatique de billets
amenity	auditorium	fr	Auditorium
amenity	bank	fr	Banque
amenity	bar	fr	Bar
amenity	bench	fr	Banc
amenity	bicycle_parking	fr	Parking à vélos
amenity	bicycle_rental	fr	Location de vélos
amenity	brothel	fr	Bordel
amenity	bureau_de_change	fr	Bureau de change
amenity	bus_station	fr	Arrêt de bus
amenity	cafe	fr	Café
amenity	car_rental	fr	Location de voiture
amenity	car_sharing	fr	Covoiturage
amenity	car_wash	fr	Lavage de voiture
amenity	casino	fr	Casino
amenity	cinema	fr	Cinéma
amenity	clinic	fr	Clinique
amenity	club	fr	Club
amenity	college	fr	Établissement d'enseignement supérieur
amenity	community_centre	fr	Salle polyvalente
amenity	courthouse	fr	Palais de justice
amenity	crematorium	fr	Crématorium
amenity	dentist	fr	Dentiste
amenity	doctors	fr	Docteurs
amenity	dormitory	fr	Dortoir
amenity	drinking_water	fr	Eau potable
amenity	driving_school	fr	École de conduite
amenity	embassy	fr	Ambassade
amenity	emergency_phone	fr	Téléphone d'urgence
amenity	fast_food	fr	Restauration rapide
amenity	ferry_terminal	fr	Terminal de ferry
amenity	fire_hydrant	fr	Bouche d'incendie
amenity	fire_station	fr	Caserne des pompiers
amenity	fountain	fr	Fontaine
amenity	fuel	fr	Carburant
amenity	grave_yard	fr	Cimetière
amenity	gym	fr	Fitness /gymnastique
amenity	hall	fr	Salle
amenity	health_centre	fr	Centre de santé
amenity	hospital	fr	Hôpital
amenity	hotel	fr	Hôtel
amenity	hunting_stand	fr	Stand de tir
amenity	ice_cream	fr	Crème glacée
amenity	kindergarten	fr	Jardin d'enfant
amenity	library	fr	Bibliothèque
amenity	market	fr	Marché
amenity	marketplace	fr	Place de marché
amenity	mountain_rescue	fr	Secours en montagne
amenity	nightclub	fr	Boîte de nuit
amenity	nursery	fr	Nurserie
amenity	nursing_home	fr	Maison de santé
amenity	office	fr	Bureau
amenity	park	fr	Parc
amenity	parking	fr	Parking
amenity	pharmacy	fr	Pharmacie
amenity	place_of_worship	fr	Lieu de culte
amenity	police	fr	Police
amenity	post_box	fr	Boîte aux lettres
amenity	post_office	fr	Bureau de poste
amenity	preschool	fr	Préscolaire
amenity	prison	fr	Prison
amenity	pub	fr	Bar
amenity	public_building	fr	Bâtiment public
amenity	public_market	fr	Marché public
amenity	reception_area	fr	Zone de réception
amenity	recycling	fr	Point de recyclage
amenity	restaurant	fr	Restaurant
amenity	retirement_home	fr	Maison de retraite
amenity	sauna	fr	Sauna
amenity	school	fr	École
amenity	shelter	fr	Refuge
amenity	shop	fr	Magasin
amenity	shopping	fr	Commerce
amenity	social_club	fr	Club social
amenity	studio	fr	Studio
amenity	supermarket	fr	Supermarché
amenity	taxi	fr	Taxi
amenity	telephone	fr	Téléphone public
amenity	theatre	fr	Théâtre
amenity	toilets	fr	Toilettes
amenity	townhall	fr	Hôtel de ville
amenity	university	fr	Université
amenity	vending_machine	fr	Distributeur automatique
amenity	veterinary	fr	Chirurgie vétérinaire
amenity	village_hall	fr	Salle communale
amenity	waste_basket	fr	Corbeille
amenity	wifi	fr	Accès WiFi
amenity	youth_centre	fr	Centre pour la jeunesse
boundary	administrative	fr	Limite administrative
building	apartments	fr	Immeuble
building	block	fr	Immeuble
building	bunker	fr	Bunker
building	chapel	fr	Chapelle
building	church	fr	Église
building	city_hall	fr	Hôtel de ville
building	commercial	fr	Bâtiment de bureaux
building	dormitory	fr	Dortoir
building	entrance	fr	Entrée de bâtiment
building	faculty	fr	Bâtiment de faculté
building	farm	fr	Bâtiment de ferme
building	flats	fr	Appartements
building	garage	fr	Garage
building	hall	fr	Salle
building	hospital	fr	Bâtiment hospitalier
building	hotel	fr	Hôtel
building	house	fr	Maison
building	industrial	fr	Bâtiment industriel
building	office	fr	Bâtiment de bureaux
building	public	fr	Bâtiment public
building	residential	fr	Bâtiment résidentiel
building	retail	fr	Magasin
building	school	fr	Bâtiment d'école
building	shop	fr	Magasin
building	stadium	fr	Stade
building	store	fr	Magasin
building	terrace	fr	Terrasse
building	tower	fr	Tour
building	train_station	fr	Gare ferroviaire
building	university	fr	Bâtiment d'université
highway	bridleway	fr	Chemin pour cavaliers
highway	bus_guideway	fr	Voie de bus guidée
highway	bus_stop	fr	Arrêt de bus
highway	byway	fr	Route secondaire
highway	construction	fr	Autoroute en construction
highway	cycleway	fr	Piste cyclable
highway	distance_marker	fr	Borne kilométrique
highway	emergency_access_point	fr	Point d'accès d'urgence
highway	footway	fr	Chemin piéton
highway	ford	fr	Gué
highway	gate	fr	Porte
highway	living_street	fr	Rue résidentielle
highway	minor	fr	Route mineure
highway	motorway	fr	Autoroute
highway	motorway_junction	fr	Jonction d'autoroute
highway	motorway_link	fr	Route autoroutière
highway	path	fr	Chemin
highway	pedestrian	fr	Chemin piéton
highway	platform	fr	Plateforme
highway	primary	fr	Route principale
highway	primary_link	fr	Route principale
highway	raceway	fr	Circuit
highway	residential	fr	Résidentiel
highway	road	fr	Route
highway	secondary	fr	Route secondaire
highway	secondary_link	fr	Route secondaire
highway	service	fr	Route de service
highway	services	fr	Services autoroutiers
highway	steps	fr	Escalier
highway	stile	fr	Échalier
highway	tertiary	fr	Route tertiaire
highway	track	fr	Piste
highway	trail	fr	Piste
highway	trunk	fr	Voie express
highway	trunk_link	fr	Voie express
highway	unclassified	fr	Route mineure
highway	unsurfaced	fr	Route non revêtue
historic	archaeological_site	fr	Site archéologique
historic	battlefield	fr	Champ de bataille
historic	boundary_stone	fr	Borne frontière
historic	building	fr	Bâtiment
historic	castle	fr	Château
historic	church	fr	Église
historic	house	fr	Maison
historic	icon	fr	Icône
historic	manor	fr	Manoir
historic	memorial	fr	Mémorial
historic	mine	fr	Mine
historic	monument	fr	Monument
historic	museum	fr	Musée
historic	ruins	fr	Ruines
historic	tower	fr	Tour
historic	wayside_cross	fr	Croix de chemin
historic	wayside_shrine	fr	Oratoire
historic	wreck	fr	Épave
landuse	allotments	fr	Jardins familiaux
landuse	basin	fr	Bassin
landuse	brownfield	fr	Terrain rasé
landuse	cemetery	fr	Cimetière
landuse	commercial	fr	Zone tertiaire
landuse	conservation	fr	Zone protégée
landuse	construction	fr	Construction
landuse	farm	fr	Zone agricole
landuse	farmland	fr	Terrains agricoles
landuse	farmyard	fr	Bâtiments de ferme
landuse	forest	fr	Forêt
landuse	grass	fr	Herbe
landuse	greenfield	fr	Zone de construction future
landuse	industrial	fr	Zone industrielle
landuse	landfill	fr	Décharge
landuse	meadow	fr	Prairie
landuse	military	fr	Zone militaire
landuse	mine	fr	Mine
landuse	mountain	fr	Montagne
landuse	nature_reserve	fr	Réserve naturelle
landuse	park	fr	Parc
landuse	piste	fr	Piste
landuse	plaza	fr	Plaza
landuse	quarry	fr	Carrière
landuse	railway	fr	Voie ferrée
landuse	recreation_ground	fr	Aire de jeux
landuse	reservoir	fr	Réservoir
landuse	residential	fr	Zone résidentielle
landuse	retail	fr	Zone commerciale
landuse	village_green	fr	Zone publique herborée
landuse	vineyard	fr	Vignoble
landuse	wetland	fr	Zone humide
landuse	wood	fr	Bois
leisure	beach_resort	fr	Station balnéaire
leisure	common	fr	Terrains communaux
leisure	fishing	fr	Zone de pêche
leisure	garden	fr	Jardin
leisure	golf_course	fr	Terrain de golf
leisure	ice_rink	fr	Patinoire
leisure	marina	fr	Port de plaisance
leisure	miniature_golf	fr	Golf miniature
leisure	nature_reserve	fr	Réserve naturelle
leisure	park	fr	Parc
leisure	pitch	fr	Terrain de sport
leisure	playground	fr	Aire de jeux
leisure	recreation_ground	fr	Terrain de jeux
leisure	slipway	fr	Cale de lancement
leisure	sports_centre	fr	Centre sportif
leisure	stadium	fr	Stade
leisure	swimming_pool	fr	Piscine
leisure	track	fr	Piste
leisure	water_park	fr	Parc aquatique
natural	bay	fr	Baie
natural	beach	fr	Plage
natural	cape	fr	Cap
natural	cave_entrance	fr	Entrée de grotte
natural	channel	fr	Canal
natural	cliff	fr	Falaise
natural	coastline	fr	Littoral
natural	crater	fr	Cratère
natural	feature	fr	Élément
natural	fell	fr	Lande
natural	fjord	fr	Fjord
natural	geyser	fr	Geyser
natural	glacier	fr	Glacier
natural	heath	fr	Bruyère
natural	hill	fr	Colline
natural	island	fr	Île
natural	land	fr	Terre
natural	marsh	fr	Marécage
natural	moor	fr	Maure
natural	mud	fr	Boue
natural	peak	fr	Pic
natural	point	fr	Pointe
natural	reef	fr	Récif
natural	ridge	fr	Crête
natural	river	fr	Rivière
natural	rock	fr	Roche
natural	scree	fr	Éboulis
natural	scrub	fr	Broussailles
natural	shoal	fr	Haut-fond
natural	spring	fr	Source
natural	strait	fr	Détroit
natural	tree	fr	Arbre
natural	valley	fr	Vallée
natural	volcano	fr	Volcan
natural	water	fr	Eau
natural	wetland	fr	Zone humide
natural	wetlands	fr	Zones humides
natural	wood	fr	Forêt
place	airport	fr	Aéroport
place	city	fr	Ville
place	country	fr	Pays
place	county	fr	Comté
place	farm	fr	Ferme
place	hamlet	fr	Hameau
place	house	fr	Maison
place	houses	fr	Maisons
place	island	fr	Île
place	islet	fr	Îlot
place	locality	fr	Localité
place	moor	fr	Maure
place	municipality	fr	Municipalité
place	postcode	fr	Code postal
place	region	fr	Région
place	sea	fr	Mer
place	state	fr	État / province
place	subdivision	fr	Subdivision
place	suburb	fr	Quartier
place	town	fr	Ville
place	unincorporated_area	fr	Lieu non organisé
place	village	fr	Village
railway	abandoned	fr	Voie ferrée abandonnée
railway	construction	fr	Voie ferrée en construction
railway	disused	fr	Voie ferrée désaffectée
railway	disused_station	fr	Gare désaffectée
railway	funicular	fr	Voie de funiculaire
railway	halt	fr	Arrêt de train
railway	historic_station	fr	Arrêt de train historique
railway	junction	fr	Jonction ferroviaire
railway	level_crossing	fr	Passage à niveau
railway	light_rail	fr	Petite voie ferrée
railway	monorail	fr	Monorail
railway	narrow_gauge	fr	Chemin de fer à voie étroite
railway	platform	fr	Plateforme ferroviaire
railway	preserved	fr	Voie ferrée conservée
railway	spur	fr	Voie de connexion
railway	station	fr	Gare ferroviaire
railway	subway	fr	Station de métro
railway	subway_entrance	fr	Bouche de métro
railway	switch	fr	Aiguillage
railway	tram	fr	Tramway
railway	tram_stop	fr	Arrêt de tram
railway	yard	fr	Voie de triage
shop	alcohol	fr	Magasin officiel d'alcool
shop	apparel	fr	Magasin d'habillement
shop	art	fr	Boutique d'art
shop	bakery	fr	Boulangerie
shop	beauty	fr	Magasin de produits de beauté
shop	beverages	fr	Magasin de boissons
shop	bicycle	fr	Magasin de vélos
shop	books	fr	Librairie
shop	butcher	fr	Boucher
shop	car	fr	Magasin de voitures
shop	car_dealer	fr	Vendeur de voitures
shop	car_parts	fr	Pièces d'automobile
shop	carpet	fr	Magasin de tapis
shop	car_repair	fr	Réparation de voitures
shop	charity	fr	Magasin de bienfaisance
shop	chemist	fr	Magasin de produits d'hygiène
shop	clothes	fr	Magasin de vêtements
shop	computer	fr	Magasin informatique
shop	confectionery	fr	Confiserie
shop	convenience	fr	Épicerie
shop	copyshop	fr	Magasin de photocopies
shop	cosmetics	fr	Magasin de cosmétiques
shop	department_store	fr	Grand magasin
shop	discount	fr	Magasin discount
shop	doityourself	fr	Magasin de bricolage
shop	drugstore	fr	Pharmacie
shop	dry_cleaning	fr	Nettoyage à sec
shop	electronics	fr	Magasin d'électronique
shop	estate_agent	fr	Agent immobilier
shop	farm	fr	Magasin de produits agricoles
shop	fashion	fr	Magasin de mode
shop	fish	fr	Poissonnerie
shop	florist	fr	Fleuriste
shop	food	fr	Magasin d'alimentation
shop	funeral_directors	fr	Pompes funèbres
shop	furniture	fr	Ameublement
shop	gallery	fr	Galerie
shop	garden_centre	fr	Jardinerie
shop	general	fr	Magasin généraliste
shop	gift	fr	Boutique de cadeaux
shop	greengrocer	fr	Marchand de fruits et légumes
shop	grocery	fr	Épicerie
shop	hairdresser	fr	Coiffeur
shop	hardware	fr	Quincaillerie
shop	hifi	fr	Magasin Hi-Fi
shop	insurance	fr	Assurance
shop	jewelry	fr	Bijouterie
shop	kiosk	fr	Kiosque
shop	laundry	fr	Blanchisserie
shop	mall	fr	Galerie marchande
shop	market	fr	Marché
shop	mobile_phone	fr	Magasin de téléphones mobiles
shop	motorcycle	fr	Magasin de moto
shop	music	fr	Magasin de musique
shop	newsagent	fr	Marchand de journaux
shop	optician	fr	Opticien
shop	organic	fr	Magasin bio
shop	outdoor	fr	Magasin d'activités de plein air
shop	pet	fr	Magasin d'animaux
shop	photo	fr	Magasin de photographie
shop	salon	fr	Salon
shop	shoes	fr	Magasin de chaussures
shop	shopping_centre	fr	Centre commercial
shop	sports	fr	Magasin de sport
shop	stationery	fr	Papeterie
shop	supermarket	fr	Supermarché
shop	toys	fr	Magasin de jouets
shop	travel_agency	fr	Agence de voyage
shop	video	fr	Magasin de vidéos
shop	wine	fr	Caviste
tourism	alpine_hut	fr	Refuge
tourism	artwork	fr	Œuvre d’art
tourism	attraction	fr	Attraction
tourism	bed_and_breakfast	fr	Gîte
tourism	cabin	fr	Hutte
tourism	camp_site	fr	Camping
tourism	caravan_site	fr	Site de caravane
tourism	chalet	fr	Chalet
tourism	guest_house	fr	Maison d'hôte
tourism	hostel	fr	Auberge
tourism	hotel	fr	Hôtel
tourism	information	fr	Informations
tourism	lean_to	fr	Stand
tourism	motel	fr	Motel
tourism	museum	fr	Musée
tourism	picnic_site	fr	Site de pique-nique
tourism	theme_park	fr	Parc à thème
tourism	valley	fr	Vallée
tourism	viewpoint	fr	Point de vue
tourism	zoo	fr	Zoo
waterway	boatyard	fr	Chantier naval
waterway	canal	fr	Canal
waterway	connector	fr	Connexion hydrographique
waterway	dam	fr	Digue
waterway	derelict_canal	fr	Canal de délaissement
waterway	ditch	fr	Fossé
waterway	dock	fr	Dock
waterway	drain	fr	Drain
waterway	lock	fr	Écluse
waterway	lock_gate	fr	Porte d'écluse
waterway	mineral_spring	fr	Source d'eau minérale
waterway	mooring	fr	Mouillage
waterway	rapids	fr	Rapides
waterway	river	fr	Rivière
waterway	riverbank	fr	Lit de rivière
waterway	stream	fr	Ruisseau
waterway	wadi	fr	Oued
waterway	waterfall	fr	Chute d'eau
waterway	water_point	fr	Point d'eau
waterway	weir	fr	Barrage
amenity	airport	fur	Aeropuart
amenity	arts_centre	fur	Centri pes arts
amenity	atm	fur	Bancomat
amenity	auditorium	fur	Auditori
amenity	bank	fur	Bancje
amenity	bar	fur	Bar
amenity	bench	fur	Bancjute
amenity	bicycle_rental	fur	Nauli di bicicletis
amenity	bureau_de_change	fur	Ufizi di cambi
amenity	bus_station	fur	Stazion des corieris
amenity	car_rental	fur	Nauli di machinis
amenity	car_wash	fur	Lavaç machinis
amenity	casino	fur	Casinò
amenity	cinema	fur	Cine
amenity	clinic	fur	Cliniche
amenity	community_centre	fur	Centri civic
amenity	dentist	fur	Dentist
amenity	doctors	fur	Dotôrs
amenity	dormitory	fur	Dormitori
amenity	drinking_water	fur	Aghe potabil
amenity	driving_school	fur	Scuele guide
amenity	embassy	fur	Ambassade
amenity	emergency_phone	fur	Telefon di emergjence
amenity	fire_hydrant	fur	Idrant
amenity	fire_station	fur	Stazion dai pompîrs
amenity	fountain	fur	Fontane
amenity	fuel	fur	Stazion di riforniment
amenity	health_centre	fur	Centri pe salût
amenity	hospital	fur	Ospedâl
amenity	ice_cream	fur	Gjelato
amenity	kindergarten	fur	Scuelute
amenity	library	fur	Biblioteche
amenity	market	fur	Marcjât
amenity	office	fur	Ufizi
amenity	park	fur	Parc
amenity	parking	fur	Parcament
amenity	pharmacy	fur	Farmacie
amenity	place_of_worship	fur	Lûc di cult
amenity	police	fur	Polizie
amenity	post_office	fur	Pueste
amenity	prison	fur	Preson
amenity	pub	fur	Pub
amenity	public_building	fur	Edifici public
amenity	public_market	fur	Marcjât public
amenity	recycling	fur	Pont pal ricicli
amenity	restaurant	fur	Ristorant
amenity	retirement_home	fur	Cjase di polse
amenity	sauna	fur	Saune
amenity	school	fur	Scuele
amenity	shop	fur	Buteghe
amenity	supermarket	fur	Supermarcjât
amenity	taxi	fur	Taxi
amenity	telephone	fur	Telefon public
amenity	theatre	fur	Teatri
amenity	townhall	fur	Municipi
amenity	university	fur	Universitât
amenity	vending_machine	fur	Distributôr automatic
amenity	veterinary	fur	Veterinari
amenity	village_hall	fur	Centri civic
amenity	wifi	fur	Acès a internet WiFi
amenity	youth_centre	fur	Centri zovanîl
boundary	administrative	fur	Confin aministratîf
building	chapel	fur	Capele
building	church	fur	Glesie
building	city_hall	fur	Municipi
building	commercial	fur	Edifici comerciâl
building	dormitory	fur	Dormitori
building	entrance	fur	Jentrade dal edifici
building	garage	fur	Garage
building	hospital	fur	Edifici dal ospedâl
building	hotel	fur	Hotel
building	house	fur	Cjase
building	industrial	fur	Edifici industriâl
building	public	fur	Edifici public
building	residential	fur	Edifici residenziâl
building	school	fur	Edifici scolastic
building	shop	fur	Buteghe
building	stadium	fur	Stadi
building	tower	fur	Tor
building	train_station	fur	Stazion de ferade
building	university	fur	Edifici universitari
highway	bus_stop	fur	Fermade autobus
highway	construction	fur	Strade in costruzion
highway	emergency_access_point	fur	Pont di acès di emergjence
highway	pedestrian	fur	Strade pedonâl
highway	raceway	fur	Circuit
highway	road	fur	Strade
highway	steps	fur	Scjalis
highway	unsurfaced	fur	Strade no asfaltade
historic	archaeological_site	fur	Sît archeologic
historic	battlefield	fur	Cjamp di bataie
historic	building	fur	Edifici
historic	castle	fur	Cjiscjel
historic	church	fur	Glesie
historic	house	fur	Cjase
historic	icon	fur	Icone
historic	monument	fur	Monument
historic	museum	fur	Museu
historic	tower	fur	Tor
landuse	cemetery	fur	Simiteri
landuse	commercial	fur	Aree comerciâl
landuse	construction	fur	In costruzion
landuse	industrial	fur	Aree industriâl
landuse	military	fur	Aree militâr
landuse	mine	fur	Miniere
landuse	mountain	fur	Montagne
landuse	nature_reserve	fur	Riserve naturâl
landuse	park	fur	Parc
landuse	railway	fur	Ferade
landuse	residential	fur	Aree residenziâl
landuse	vineyard	fur	Vigne
leisure	common	fur	Comugnâi (UK)
leisure	fishing	fur	Riserve par pescjâ
leisure	garden	fur	Zardin
leisure	golf_course	fur	Troi di golf
leisure	miniature_golf	fur	Minigolf
leisure	nature_reserve	fur	Riserve naturâl
leisure	park	fur	Parc
leisure	sports_centre	fur	Centri sportîf
leisure	stadium	fur	Stadi
leisure	swimming_pool	fur	Pissine
leisure	track	fur	Piste pe corse
leisure	water_park	fur	Parc acuatic
natural	bay	fur	Rade
natural	beach	fur	Splaze
natural	channel	fur	Canâl
natural	coastline	fur	Litorâl
natural	crater	fur	Cratêr
natural	fjord	fur	Fiort
natural	glacier	fur	Glaçâr
natural	hill	fur	Culine
natural	island	fur	Isule
natural	point	fur	Pont
natural	river	fur	Flum
natural	tree	fur	Arbul
natural	valley	fur	Val
natural	volcano	fur	Vulcan
place	airport	fur	Aeropuart
place	city	fur	Citât
place	country	fur	Paîs
place	county	fur	Contee
place	hamlet	fur	Frazion
place	house	fur	Cjase
place	houses	fur	Cjasis sparniçadis
place	island	fur	Isule
place	islet	fur	Isulute
place	locality	fur	Localitât
place	municipality	fur	Comun
place	postcode	fur	Codis postâl
place	region	fur	Regjon
place	sea	fur	Mâr
place	state	fur	Stât
place	subdivision	fur	Sotdivision
place	suburb	fur	Cuartîr
place	town	fur	Citadine
place	village	fur	Vilaç
railway	abandoned	fur	Ferade bandonade
railway	construction	fur	Ferade in costruzion
railway	disused	fur	Ferade bandonade
railway	disused_station	fur	Stazion de ferade bandonade
railway	halt	fur	Fermade de ferade
railway	level_crossing	fur	Passaç a nivel
railway	light_rail	fur	Ferade lizere
railway	station	fur	Stazion de ferade
railway	tram_stop	fur	Fermade dal tram
shop	bakery	fur	Pancôr
shop	bicycle	fur	Buteghe di bicicletis
shop	books	fur	Librerie
shop	butcher	fur	Becjarie
shop	carpet	fur	Buteghe di tapêts
shop	car_repair	fur	Riparazion di machinis
shop	gallery	fur	Galarie di art
shop	hairdresser	fur	Piruchîr o barbîr
shop	insurance	fur	Assicurazion
shop	jewelry	fur	Buteghe dal oresin
shop	laundry	fur	Lavandarie
shop	market	fur	Marcjât
shop	optician	fur	Otic
shop	pet	fur	Buteghe di animâi
shop	shoes	fur	Buteghe di scarpis
shop	supermarket	fur	Supermarcjât
shop	toys	fur	Negozi di zugatui
shop	travel_agency	fur	Agjenzie di viaçs
tourism	hostel	fur	Ostel
tourism	information	fur	Informazions
tourism	museum	fur	Museu
tourism	valley	fur	Val
tourism	viewpoint	fur	Pont panoramic
tourism	zoo	fur	Zoo
waterway	canal	fur	Canâl
waterway	dam	fur	Dighe
waterway	ditch	fur	Fuesse
waterway	river	fur	Flum
amenity	airport	gl	Aeroporto
amenity	arts_centre	gl	Centro artístico
amenity	atm	gl	Caixeiro automático
amenity	auditorium	gl	Auditorio
amenity	bank	gl	Banco
amenity	bar	gl	Bar
amenity	bench	gl	Banco
amenity	bicycle_parking	gl	Aparcadoiro de bicicletas
amenity	bicycle_rental	gl	Aluguer de bicicletas
amenity	brothel	gl	Prostíbulo
amenity	bureau_de_change	gl	Casa de cambio
amenity	bus_station	gl	Estación de autobuses
amenity	cafe	gl	Cafetaría
amenity	car_rental	gl	Aluguer de automóbiles
amenity	car_sharing	gl	Aluguer de automóbiles
amenity	car_wash	gl	Lavadoiro de coches
amenity	casino	gl	Casino
amenity	cinema	gl	Cine
amenity	clinic	gl	Clínica
amenity	club	gl	Club
amenity	college	gl	Instituto
amenity	community_centre	gl	Centro comunitario
amenity	courthouse	gl	Xulgado
amenity	crematorium	gl	Crematorio
amenity	dentist	gl	Dentista
amenity	doctors	gl	Médicos
amenity	dormitory	gl	Residencia universitaria
amenity	drinking_water	gl	Auga potable
amenity	driving_school	gl	Escola de condución
amenity	embassy	gl	Embaixada
amenity	emergency_phone	gl	Teléfono de emerxencia
amenity	fast_food	gl	Comida rápida
amenity	ferry_terminal	gl	Terminal de transbordadores
amenity	fire_hydrant	gl	Boca de incendios
amenity	fire_station	gl	Parque de bombeiros
amenity	fountain	gl	Fonte
amenity	fuel	gl	Combustible
amenity	grave_yard	gl	Cemiterio
amenity	gym	gl	Ximnasio
amenity	hall	gl	Sala de reunións
amenity	health_centre	gl	Centro de saúde
amenity	hospital	gl	Hospital
amenity	hotel	gl	Hotel
amenity	hunting_stand	gl	Lugar de caza
amenity	ice_cream	gl	Xeadaría
amenity	kindergarten	gl	Xardín de infancia
amenity	library	gl	Biblioteca
amenity	market	gl	Mercado
amenity	marketplace	gl	Praza de mercado
amenity	mountain_rescue	gl	Rescate de montaña
amenity	nightclub	gl	Club nocturno
amenity	nursery	gl	Parvulario
amenity	nursing_home	gl	Residencia para a terceira idade
amenity	office	gl	Oficina
amenity	park	gl	Parque
amenity	parking	gl	Aparcadoiro
amenity	pharmacy	gl	Farmacia
amenity	place_of_worship	gl	Lugar de culto
amenity	police	gl	Policía
amenity	post_box	gl	Caixa de correos
amenity	post_office	gl	Oficina de correos
amenity	preschool	gl	Preescolar
amenity	prison	gl	Prisión
amenity	pub	gl	Pub
amenity	public_building	gl	Edificio público
amenity	public_market	gl	Mercado público
amenity	reception_area	gl	Zona de recepción
amenity	recycling	gl	Punto de reciclaxe
amenity	restaurant	gl	Restaurante
amenity	retirement_home	gl	Residencia de xubilados
amenity	sauna	gl	Sauna
amenity	school	gl	Escola
amenity	shelter	gl	Abeiro
amenity	shop	gl	Tenda
amenity	shopping	gl	Comercio
amenity	social_club	gl	Club social
amenity	studio	gl	Estudio
amenity	supermarket	gl	Supermercado
amenity	taxi	gl	Taxi
amenity	telephone	gl	Teléfono público
amenity	theatre	gl	Teatro
amenity	toilets	gl	Aseos
amenity	townhall	gl	Concello
amenity	university	gl	Universidade
amenity	vending_machine	gl	Máquina expendedora
amenity	veterinary	gl	Clínica veterinaria
amenity	village_hall	gl	Concello
amenity	waste_basket	gl	Cesto do lixo
amenity	wifi	gl	Acceso WiFi
amenity	youth_centre	gl	Casa da xuventude
boundary	administrative	gl	Límite administrativo
building	apartments	gl	Bloque de apartamentos
building	block	gl	Bloque de edificios
building	bunker	gl	Búnker
building	chapel	gl	Capela
building	church	gl	Igrexa
building	city_hall	gl	Concello
building	commercial	gl	Edificio comercial
building	dormitory	gl	Residencia universitaria
building	entrance	gl	Entrada do edificio
building	faculty	gl	Edificio de facultade
building	farm	gl	Granxa
building	flats	gl	Apartamentos
building	garage	gl	Garaxe
building	hall	gl	Sala de reunións
building	hospital	gl	Edificio hospitalario
building	hotel	gl	Hotel
building	house	gl	Casa
building	industrial	gl	Edificio industrial
building	office	gl	Edificio de oficinas
building	public	gl	Edificio público
building	residential	gl	Edificio residencial
building	retail	gl	Edificio comercial
building	school	gl	Edificio escolar
building	shop	gl	Tenda
building	stadium	gl	Estadio
building	store	gl	Comercio
building	terrace	gl	Terraza
building	tower	gl	Torre
building	train_station	gl	Estación de ferrocarril
building	university	gl	Complexo universitario
highway	bridleway	gl	Pista de cabalos
highway	bus_guideway	gl	Liña de autobuses guiados
highway	bus_stop	gl	Parada de autobús
highway	byway	gl	Camiño secundario
highway	construction	gl	Autoestrada en construción
highway	cycleway	gl	Pista de bicicletas
highway	distance_marker	gl	Indicador quilométrico
highway	emergency_access_point	gl	Punto de acceso de emerxencia
highway	footway	gl	Carreiro
highway	ford	gl	Vao
highway	gate	gl	Porta
highway	living_street	gl	Rúa residencial
highway	minor	gl	Estrada lateral
highway	motorway	gl	Autoestrada
highway	motorway_junction	gl	Cruzamento de autovías
highway	motorway_link	gl	Enlace de autoestrada
highway	path	gl	Camiño
highway	pedestrian	gl	Camiño peonil
highway	platform	gl	Plataforma
highway	primary	gl	Estrada principal
highway	primary_link	gl	Estrada principal
highway	raceway	gl	Circuíto
highway	residential	gl	Residencial
highway	road	gl	Estrada
highway	secondary	gl	Estrada secundaria
highway	secondary_link	gl	Estrada secundaria
highway	service	gl	Estrada de servizo
highway	services	gl	Área de servizo
highway	steps	gl	Chanzos
highway	stile	gl	Escada
highway	tertiary	gl	Estrada terciaria
highway	track	gl	Pista
highway	trail	gl	Pista
highway	trunk	gl	Estrada nacional
highway	trunk_link	gl	Estrada nacional
highway	unclassified	gl	Estrada sen clasificar
highway	unsurfaced	gl	Estrada non pavimentada
historic	archaeological_site	gl	Xacemento arqueolóxico
historic	battlefield	gl	Campo de batalla
historic	boundary_stone	gl	Marco
historic	building	gl	Construción
historic	castle	gl	Castelo
historic	church	gl	Igrexa
historic	house	gl	Casa
historic	icon	gl	Icona
historic	manor	gl	Casa señorial
historic	memorial	gl	Memorial
historic	mine	gl	Mina
historic	monument	gl	Monumento
historic	museum	gl	Museo
historic	ruins	gl	Ruínas
historic	tower	gl	Torre
historic	wayside_cross	gl	Cruce de camiños
historic	wayside_shrine	gl	Santuario no camiño
historic	wreck	gl	Pecio
landuse	allotments	gl	Hortas
landuse	basin	gl	Cunca
landuse	brownfield	gl	Terreo baldío
landuse	cemetery	gl	Cemiterio
landuse	commercial	gl	Zona comercial
landuse	conservation	gl	Conservación
landuse	construction	gl	Construción
landuse	farm	gl	Granxa
landuse	farmland	gl	Terra de labranza
landuse	farmyard	gl	Curral
landuse	forest	gl	Bosque
landuse	grass	gl	Herba
landuse	greenfield	gl	Terreo verde
landuse	industrial	gl	Zona industrial
landuse	landfill	gl	Recheo
landuse	meadow	gl	Pradaría
landuse	military	gl	Zona militar
landuse	mine	gl	Mina
landuse	mountain	gl	Montaña
landuse	nature_reserve	gl	Reserva natural
landuse	park	gl	Parque
landuse	piste	gl	Pista
landuse	plaza	gl	Praza
landuse	quarry	gl	Canteira
landuse	railway	gl	Ferrocarril
landuse	recreation_ground	gl	Área recreativa
landuse	reservoir	gl	Encoro
landuse	residential	gl	Zona residencial
landuse	retail	gl	Zona comercial
landuse	village_green	gl	Parque municipal
landuse	vineyard	gl	Viñedo
landuse	wetland	gl	Pantano
landuse	wood	gl	Madeira
leisure	beach_resort	gl	Balneario
leisure	common	gl	Terreo común
leisure	fishing	gl	Área de pesca
leisure	garden	gl	Xardín
leisure	golf_course	gl	Campo de golf
leisure	ice_rink	gl	Pista de patinaxe sobre xeo
leisure	marina	gl	Porto deportivo
leisure	miniature_golf	gl	Minigolf
leisure	nature_reserve	gl	Reserva natural
leisure	park	gl	Parque
leisure	pitch	gl	Cancha deportiva
leisure	playground	gl	Patio de recreo
leisure	recreation_ground	gl	Área recreativa
leisure	slipway	gl	Varadoiro
leisure	sports_centre	gl	Centro deportivo
leisure	stadium	gl	Estadio
leisure	swimming_pool	gl	Piscina
leisure	track	gl	Pista de carreiras
leisure	water_park	gl	Parque acuático
natural	bay	gl	Baía
natural	beach	gl	Praia
natural	cape	gl	Cabo
natural	cave_entrance	gl	Entrada de cova
natural	channel	gl	Canal
natural	cliff	gl	Cantil
natural	coastline	gl	Litoral
natural	crater	gl	Cráter
natural	feature	gl	Elemento
natural	fell	gl	Brañal
natural	fjord	gl	Fiorde
natural	geyser	gl	Géiser
natural	glacier	gl	Glaciar
natural	heath	gl	Breixeira
natural	hill	gl	Outeiro
natural	island	gl	Illa
natural	land	gl	Terra
natural	marsh	gl	Marisma
natural	moor	gl	Páramo
natural	mud	gl	Lama
natural	peak	gl	Pico
natural	point	gl	Punto
natural	reef	gl	Arrecife
natural	ridge	gl	Crista
natural	river	gl	Río
natural	rock	gl	Rocha
natural	scree	gl	Pedregal
natural	scrub	gl	Matogueira
natural	shoal	gl	Cardume
natural	spring	gl	Primavera
natural	strait	gl	Estreito
natural	tree	gl	Árbore
natural	valley	gl	Val
natural	volcano	gl	Volcán
natural	water	gl	Auga
natural	wetland	gl	Pantano
natural	wetlands	gl	Pantano
natural	wood	gl	Bosque
place	airport	gl	Aeroporto
place	city	gl	Cidade
place	country	gl	País
place	county	gl	Condado
place	farm	gl	Granxa
place	hamlet	gl	Aldea
place	house	gl	Casa
place	houses	gl	Casas
place	island	gl	Illa
place	islet	gl	Illote
place	locality	gl	Localidade
place	moor	gl	Páramo
place	municipality	gl	Municipio
place	postcode	gl	Código postal
place	region	gl	Rexión
place	sea	gl	Mar
place	state	gl	Estado/Provincia
place	subdivision	gl	Subdivisión
place	suburb	gl	Barrio
place	town	gl	Cidade
place	unincorporated_area	gl	Área non incorporada
place	village	gl	Vila
railway	abandoned	gl	Vía de tren abandonada
railway	construction	gl	Vía ferroviaria en construción
railway	disused	gl	Vía ferroviaria en desuso
railway	disused_station	gl	Estación de trens en desuso
railway	funicular	gl	Vía de funicular
railway	halt	gl	Parada de trens
railway	historic_station	gl	Estación de trens histórica
railway	junction	gl	Unión de vías ferroviarias
railway	level_crossing	gl	Paso a nivel
railway	light_rail	gl	Metro lixeiro
railway	monorail	gl	Monorraíl
railway	narrow_gauge	gl	Vía ferroviaria estreita
railway	platform	gl	Plataforma ferroviaria
railway	preserved	gl	Vía ferroviaria conservada
railway	spur	gl	Vía ramificada
railway	station	gl	Estación de ferrocarril
railway	subway	gl	Estación de metro
railway	subway_entrance	gl	Boca de metro
railway	switch	gl	Puntos de cambio de vía
railway	tram	gl	Vía de tranvías
railway	tram_stop	gl	Parada de tranvías
railway	yard	gl	Estación de clasificación
shop	alcohol	gl	Tenda de licores
shop	apparel	gl	Tenda de roupa
shop	art	gl	Tenda de arte
shop	bakery	gl	Panadaría
shop	beauty	gl	Tenda de produtos de beleza
shop	beverages	gl	Tenda de bebidas
shop	bicycle	gl	Tenda de bicicletas
shop	books	gl	Libraría
shop	butcher	gl	Carnizaría
shop	car	gl	Concesionario
shop	car_dealer	gl	Concesionario de automóbiles
shop	car_parts	gl	Recambios de automóbil
shop	carpet	gl	Tenda de alfombras
shop	car_repair	gl	Taller mecánico
shop	charity	gl	Tenda benéfica
shop	chemist	gl	Farmacia
shop	clothes	gl	Tenda de roupa
shop	computer	gl	Tenda informática
shop	confectionery	gl	Pastelaría
shop	convenience	gl	Tenda 24 horas
shop	copyshop	gl	Tenda de fotocopias
shop	cosmetics	gl	Tenda de cosméticos
shop	department_store	gl	Gran almacén
shop	discount	gl	Tenda de descontos
shop	doityourself	gl	Tenda de bricolaxe
shop	drugstore	gl	Farmacia
shop	dry_cleaning	gl	Limpeza en seco
shop	electronics	gl	Tenda de electrónica
shop	estate_agent	gl	Axencia inmobiliaria
shop	farm	gl	Tenda de produtos agrícolas
shop	fashion	gl	Tenda de moda
shop	fish	gl	Peixaría
shop	florist	gl	Floraría
shop	food	gl	Tenda de alimentación
shop	funeral_directors	gl	Tanatorio
shop	furniture	gl	Mobiliario
shop	gallery	gl	Galería
shop	garden_centre	gl	Centro de xardinaría
shop	general	gl	Tenda de ultramarinos
shop	gift	gl	Tenda de agasallos
shop	greengrocer	gl	Froitaría
shop	grocery	gl	Tenda de alimentación
shop	hairdresser	gl	Perrucaría
shop	hardware	gl	Ferraxaría
shop	hifi	gl	Hi-Fi
shop	insurance	gl	Aseguradora
shop	jewelry	gl	Xoiaría
shop	kiosk	gl	Quiosco
shop	laundry	gl	Lavandaría
shop	mall	gl	Centro comercial
shop	market	gl	Mercado
shop	mobile_phone	gl	Tenda de telefonía móbil
shop	motorcycle	gl	Tenda de motocicletas
shop	music	gl	Tenda de música
shop	newsagent	gl	Quiosco
shop	optician	gl	Oftalmólogo
shop	organic	gl	Tenda de alimentos orgánicos
shop	outdoor	gl	Tenda de deportes ao aire libre
shop	pet	gl	Tenda de mascotas
shop	photo	gl	Tenda de fotografía
shop	salon	gl	Salón de beleza
shop	shoes	gl	Zapataría
shop	shopping_centre	gl	Centro comercial
shop	sports	gl	Tenda de deportes
shop	stationery	gl	Papelaría
shop	supermarket	gl	Supermercado
shop	toys	gl	Xoguetaría
shop	travel_agency	gl	Axencia de viaxes
shop	video	gl	Tenda de vídeos
shop	wine	gl	Tenda de licores
tourism	alpine_hut	gl	Cabana alpina
tourism	artwork	gl	Obra de arte
tourism	attraction	gl	Atracción
tourism	bed_and_breakfast	gl	Cama e almorzo
tourism	cabin	gl	Cabana
tourism	camp_site	gl	Campamento
tourism	caravan_site	gl	Sitio de caravanas
tourism	chalet	gl	Chalé
tourism	guest_house	gl	Albergue
tourism	hostel	gl	Hostal
tourism	hotel	gl	Hotel
tourism	information	gl	Información
tourism	lean_to	gl	Caseta
tourism	motel	gl	Motel
tourism	museum	gl	Museo
tourism	picnic_site	gl	Sitio de pícnic
tourism	theme_park	gl	Parque temático
tourism	valley	gl	Val
tourism	viewpoint	gl	Miradoiro
tourism	zoo	gl	Zoolóxico
waterway	boatyard	gl	Estaleiro
waterway	canal	gl	Canal
waterway	connector	gl	Conexión de vía de auga
waterway	dam	gl	Encoro
waterway	derelict_canal	gl	Canal abandonado
waterway	ditch	gl	Cuneta
waterway	dock	gl	Peirao
waterway	drain	gl	Sumidoiro
waterway	lock	gl	Esclusa
waterway	lock_gate	gl	Esclusa
waterway	mineral_spring	gl	Fonte mineral
waterway	mooring	gl	Atraque
waterway	rapids	gl	Rápidos
waterway	river	gl	Río
waterway	riverbank	gl	Beira do río
waterway	stream	gl	Arroio
waterway	wadi	gl	Uadi
waterway	waterfall	gl	Fervenza
waterway	water_point	gl	Punto de auga
waterway	weir	gl	Vaira
amenity	airport	he	שדה תעופה
amenity	arts_centre	he	מרכז אמנויות
amenity	atm	he	כספומט
amenity	auditorium	he	אודיטוריום
amenity	bank	he	בנק
amenity	bar	he	פאב
amenity	bench	he	ספסל
amenity	bicycle_parking	he	חניית אופניים
amenity	bicycle_rental	he	השכרת אופניים
amenity	brothel	he	בית בושת
amenity	bureau_de_change	he	חלפן כספים
amenity	bus_station	he	תחנת אוטובוס
amenity	cafe	he	בית קפה
amenity	car_rental	he	השכרת רכב
amenity	car_sharing	he	נקודת שיתוף רכבים
amenity	car_wash	he	שטיפת מכוניות
amenity	casino	he	קזינו
amenity	cinema	he	בית קולנוע
amenity	clinic	he	מרפאה
amenity	club	he	מועדון
amenity	college	he	מכללה
amenity	community_centre	he	מרכז קהילתי
amenity	courthouse	he	בית משפט
amenity	crematorium	he	קרמטוריום
amenity	dentist	he	רופא שיניים
amenity	doctors	he	רופאים
amenity	dormitory	he	מעונות
amenity	drinking_water	he	מי שתייה
amenity	driving_school	he	בית ספר לנהיגה
amenity	embassy	he	שגרירות
amenity	emergency_phone	he	טלפון חירום
amenity	fast_food	he	מזון מהיר
amenity	ferry_terminal	he	מסוף מעבורת
amenity	fire_hydrant	he	ברז כיבוי אש
amenity	fire_station	he	תחנת כיבוי אש
amenity	fountain	he	מזרקה
amenity	fuel	he	דלק
amenity	grave_yard	he	בית קברות
amenity	gym	he	מכון כושר/חדר כושר
amenity	hall	he	אולם
amenity	health_centre	he	מרכז בריאות
amenity	hospital	he	בית חולים
amenity	hotel	he	בית מלון
amenity	ice_cream	he	גלידה
amenity	kindergarten	he	גן ילדים
amenity	library	he	ספרייה
amenity	marketplace	he	שוק
amenity	mountain_rescue	he	תחנת חילוץ הררית
amenity	nursery	he	פעוטון
amenity	nursing_home	he	בית אבות
amenity	office	he	משרד
amenity	park	he	פארק
amenity	parking	he	חנייה
amenity	pharmacy	he	בית מרקחת
amenity	place_of_worship	he	מקום פולחן
amenity	police	he	משטרה
amenity	post_box	he	תיבת דואר
amenity	post_office	he	סניף דואר
amenity	preschool	he	גן ילדים
amenity	prison	he	כלא
amenity	pub	he	פאב
amenity	public_building	he	מבנה ציבור
amenity	public_market	he	שוק
amenity	reception_area	he	איזור קבלה
amenity	recycling	he	נקודת מיחזור
amenity	restaurant	he	מסעדה
amenity	retirement_home	he	בית אבות
amenity	sauna	he	סאונה
amenity	school	he	בית ספר
amenity	shelter	he	מחסה
amenity	shop	he	חנות
amenity	shopping	he	קניות
amenity	social_club	he	מועדון
amenity	studio	he	סטודיו
amenity	supermarket	he	סופרמרקט
amenity	taxi	he	מונית
amenity	telephone	he	טלפון ציבורי
amenity	theatre	he	תיאטרון
amenity	toilets	he	שירותים
amenity	townhall	he	עירייה
amenity	university	he	אוניברסיטה
amenity	vending_machine	he	מכונת מכירה
amenity	veterinary	he	מרפאה וטרינרית
amenity	village_hall	he	אולם הכפר
amenity	waste_basket	he	פח אשפה
amenity	wifi	he	איזור WiFi
amenity	youth_centre	he	מרכז נוער
boundary	administrative	he	גבול איזור מנהל
building	apartments	he	בית דירות
building	block	he	אבן בניין
building	bunker	he	בונקר
building	chapel	he	קפלה
building	church	he	כנסייה
building	city_hall	he	בניין עירייה
building	commercial	he	בניין מסחרי
building	dormitory	he	מעונות
building	entrance	he	כניסה לבניין
building	faculty	he	בניין פקולטה
building	farm	he	חווה
building	flats	he	דירות
building	garage	he	מוסך
building	hall	he	בניין
building	hospital	he	בית חולים
building	hotel	he	מלון
building	house	he	בית
building	industrial	he	בניין תעשייתי
building	office	he	בניין משרדים
building	public	he	בניין ציבורי
building	residential	he	בניין מגורים
building	retail	he	בניין מסחרי
building	school	he	בית ספר
building	shop	he	חנות
building	stadium	he	אצטדיון
building	store	he	חנות
building	terrace	he	מרפסת פתוחה
building	tower	he	מגדל
building	train_station	he	תחנת רכבת
highway	bridleway	he	שביל עבור סוסים
highway	bus_guideway	he	נתיב תחבורה ציבורית מונחית
highway	bus_stop	he	תחנת אוטובוס
highway	byway	he	דרך צידית
highway	construction	he	דרך ראשית בבנייה
highway	cycleway	he	נתיב אופניים
highway	distance_marker	he	סמן מרחק
highway	emergency_access_point	he	נקודת גישה לשירותי חירום
highway	footway	he	שביל להולכי רגל
highway	ford	he	מעברה (נקודת חציית נהר)
highway	gate	he	שער
highway	living_street	he	רחוב
highway	minor	he	דרך צידית
highway	motorway	he	כביש
highway	motorway_junction	he	צומת כבישים
highway	motorway_link	he	כביש
highway	path	he	נתיב
highway	pedestrian	he	נתיב להולכי רגל
highway	platform	he	פלטפורמה
highway	primary	he	דרך ראשית
highway	primary_link	he	כביש ראשי
highway	raceway	he	מסלול מרוצים
highway	residential	he	מגורים
highway	road	he	דרך
highway	secondary	he	דרך מישנית
highway	secondary_link	he	דרך מישנית
highway	service	he	כביש שירות
highway	services	he	שירותי דרך
highway	steps	he	מדרגות
highway	stile	he	מעבר מעל גדר
highway	tertiary	he	דרך צידית
highway	track	he	מסלול מרוצים
highway	trail	he	שביל
highway	unclassified	he	כביש לא מסווג
highway	unsurfaced	he	כביש לא סלול
historic	archaeological_site	he	אתר ארכיאולוגי
historic	battlefield	he	שדה קרב
historic	boundary_stone	he	אבן גבול
historic	building	he	בניין
historic	castle	he	טירה
historic	church	he	כנסייה
historic	house	he	בית
historic	icon	he	איקונין
historic	manor	he	אחוזה
historic	memorial	he	אנדרטה
historic	mine	he	מכרה
historic	monument	he	אנדרטה
historic	museum	he	מוזיאון
historic	ruins	he	הריסות
historic	tower	he	מגדל
historic	wayside_cross	he	צלב בצד הדרך
historic	wayside_shrine	he	מקדש בצד הדרך
historic	wreck	he	ספינה טרופה
landuse	allotments	he	הקצאת קרקע
landuse	basin	he	אגן
landuse	cemetery	he	בית קברות
landuse	commercial	he	איזור מסחרי
landuse	conservation	he	שמורה
natural	coastline	he	קו חוף
natural	crater	he	מכתש
natural	feature	he	תכונה
natural	fell	he	הר המתנשא מעל היערות סביבו
natural	fjord	he	פיורד
natural	geyser	he	גייזר
natural	glacier	he	קרחון
natural	heath	he	בתה
natural	hill	he	גבעה
natural	island	he	אי
natural	land	he	אדמה
natural	marsh	he	ביצה
natural	moor	he	ביצה
natural	mud	he	בוץ
natural	peak	he	פסגה
natural	point	he	נקודה
natural	reef	he	שונית
natural	ridge	he	רכס
natural	river	he	נהר
natural	rock	he	סלע
natural	scree	he	ערמת סלעים
natural	scrub	he	ערבה
natural	shoal	he	שרטון
natural	spring	he	מעיין
natural	strait	he	מצר
natural	tree	he	עץ
natural	valley	he	עמק
natural	volcano	he	הר געש
natural	water	he	מים
natural	wetland	he	מלחה
natural	wetlands	he	מלחות
natural	wood	he	יער
place	airport	he	נמל תעופה
place	city	he	עיר
place	country	he	ארץ
place	county	he	מחוז
place	farm	he	חווה
place	hamlet	he	כפר
place	house	he	בית
place	houses	he	בתים
place	island	he	אי
place	islet	he	איון
place	locality	he	איזור מקומי
place	moor	he	ביצה
place	municipality	he	עירייה
place	postcode	he	מיקוד
place	region	he	איזור
place	sea	he	ים
place	state	he	מדינה
place	subdivision	he	חלוקת משנה
place	suburb	he	פרוור
place	town	he	עיירה
place	unincorporated_area	he	איזור בלתי מאוגד
place	village	he	כפר
railway	abandoned	he	מסילת ברזל נטושה
railway	construction	he	מסילת ברזל בבנייה
railway	disused	he	מסילת ברזל שאינה בשימוש
railway	disused_station	he	תחנת רכבת שאינה בשימוש
railway	funicular	he	רכבל
railway	halt	he	תחנת רכבת
railway	historic_station	he	תחנת רכבת היסטורית
railway	junction	he	מפגש מסילות ברזל
railway	level_crossing	he	מפגש מסילת ברזל וכביש
railway	light_rail	he	רכבת קלה
railway	monorail	he	מונורייל
railway	narrow_gauge	he	מסילת רכבת צרה
railway	platform	he	רציף רכבת
railway	preserved	he	רכבת משומרת
railway	station	he	תחנת רכבת
railway	subway	he	תחנת רכבת תחתית
railway	subway_entrance	he	כניסה לתחנת רכבת תחתית
railway	tram	he	חשמלית
railway	tram_stop	he	תחנת חשמלית
railway	yard	he	מוסך רכבות
shop	apparel	he	חנות בגדים
shop	art	he	חנות חפצי אמנות
shop	bakery	he	מאפייה
shop	beauty	he	סלון יופי
shop	beverages	he	חנות משקאות
shop	bicycle	he	חנות אפניים
shop	books	he	חנות ספרים
shop	butcher	he	קצב
shop	car	he	חנות כלי רכב
shop	car_dealer	he	סוחר כלי רכב
shop	car_parts	he	חלקי רכב
shop	carpet	he	חנות שטיחים
shop	car_repair	he	מוסך
shop	charity	he	חנות צדקה
shop	chemist	he	בית מרקחת
shop	clothes	he	חנות בגדים
shop	computer	he	חנות מחשבים
shop	confectionery	he	קונדיטוריה
shop	convenience	he	מכולת
shop	copyshop	he	חנות צילום
shop	cosmetics	he	חנות קוסמטיקה
shop	department_store	he	כלבו
shop	discount	he	חנות מוזלת
shop	doityourself	he	חנות עשה-זאת-בעצמך
shop	drugstore	he	בית מרקחת
shop	dry_cleaning	he	ניקוי יבש
shop	electronics	he	חנות אלקטרוניקה
shop	fashion	he	חנות אופנה
shop	fish	he	חנות דגים
shop	florist	he	חנות פרחים
shop	food	he	מכולת
shop	funeral_directors	he	בית לוויות
shop	furniture	he	רהיטים
shop	gallery	he	גלריה
shop	garden_centre	he	מרכז גינון
shop	general	he	מכולת
shop	gift	he	חנות מתנות
shop	greengrocer	he	ירקן
shop	grocery	he	מכולת
shop	hairdresser	he	מעצב שער
shop	hardware	he	חנות חומרי בניין
shop	insurance	he	ביטוח
shop	jewelry	he	חנות תכשיטים
shop	kiosk	he	קיוסק
shop	laundry	he	מכבסה
shop	mall	he	מרכז קניות
shop	market	he	שוק
shop	mobile_phone	he	חנות טלפונים ניידים
shop	motorcycle	he	חנות אופנועים
shop	music	he	חנות כלי מוזיקה
shop	optician	he	אופטיקאי
shop	organic	he	חנות מזון אורגני
shop	outdoor	he	חנות ציוד מחנאות
shop	pet	he	חנות חיות מחמד
shop	photo	he	חנות צילום
shop	salon	he	סלון
shop	shoes	he	חנות נעליים
shop	shopping_centre	he	מרכז קניות
shop	sports	he	חנות ספורט
shop	stationery	he	חנות כלי כתיבה
shop	supermarket	he	סופרמרקט
shop	toys	he	חנות צעצועים
shop	travel_agency	he	סוכנות נסיעות
tourism	alpine_hut	he	בקתה אלפינית
tourism	artwork	he	יצירת אמנות
tourism	attraction	he	אתר בעל עניין
tourism	bed_and_breakfast	he	לינה וארוחת בוקר
tourism	cabin	he	בקתה
tourism	camp_site	he	אתר מחנאות
tourism	caravan_site	he	אתר קרוואן
tourism	chalet	he	טירה
tourism	guest_house	he	בית הארחה
tourism	hostel	he	אכסנייה
tourism	hotel	he	מלון
tourism	information	he	מידע
tourism	motel	he	מלון דרכים
tourism	museum	he	מוזיאון
tourism	picnic_site	he	אתר פיקניק
tourism	theme_park	he	פארק נושאי
tourism	valley	he	עמק
tourism	viewpoint	he	נקודת תצפית
tourism	zoo	he	גן חיות
waterway	boatyard	he	בית סירות
waterway	canal	he	תעלה
waterway	connector	he	מחבר נתיבי מים
waterway	dam	he	סכר
waterway	derelict_canal	he	תעלה נטושה
waterway	ditch	he	מחפורת
waterway	dock	he	רציף
waterway	drain	he	ביוב
waterway	lock	he	מנעול
waterway	mineral_spring	he	מעיין מים מינרלים
waterway	mooring	he	מעגן
waterway	rapids	he	אשדות
waterway	river	he	נהר
waterway	riverbank	he	גדת נהר
waterway	stream	he	פלג
waterway	wadi	he	ואדי
waterway	waterfall	he	מפל מים
waterway	water_point	he	נקודת מים
waterway	weir	he	ויר
amenity	airport	hr	Zračna luka
amenity	arts_centre	hr	Umjetnički centar
amenity	atm	hr	Bankomat
amenity	auditorium	hr	Auditorij
amenity	bank	hr	Banka
amenity	bar	hr	Bar
amenity	bench	hr	Klupa
amenity	bicycle_parking	hr	Biciklistički parking
amenity	bicycle_rental	hr	Rent a bicikl
amenity	brothel	hr	Bordel
amenity	bureau_de_change	hr	Mjenjačnica
amenity	bus_station	hr	Autobusni kolodvor
amenity	cafe	hr	Caffe bar
amenity	car_rental	hr	Rent-a-car
amenity	car_sharing	hr	Carsharing
amenity	car_wash	hr	Autopraonica
amenity	casino	hr	Casino
amenity	cinema	hr	Kino
amenity	clinic	hr	Klinika
amenity	club	hr	Klub
amenity	college	hr	Fakultet
amenity	community_centre	hr	Društveni centar
amenity	courthouse	hr	Sud
amenity	crematorium	hr	Krematorij
amenity	dentist	hr	Zubar
amenity	doctors	hr	Doktor
amenity	dormitory	hr	Studentski dom
amenity	drinking_water	hr	Pitka voda
amenity	driving_school	hr	Autoškola
amenity	embassy	hr	Veleposlanstvo
amenity	emergency_phone	hr	Telefon (S.O.S)
amenity	fast_food	hr	Fast food
amenity	ferry_terminal	hr	Trajektni terminal
amenity	fire_hydrant	hr	Hidrant
amenity	fire_station	hr	Vatrogasna postaja
amenity	fountain	hr	Fontana
amenity	fuel	hr	Benzinska
amenity	grave_yard	hr	Groblje
amenity	gym	hr	Fitness centar
amenity	hall	hr	Hala
amenity	health_centre	hr	Zdravstveni centar
amenity	hospital	hr	Bolnica
amenity	hotel	hr	Hotel
amenity	hunting_stand	hr	Čeka
amenity	ice_cream	hr	Slastičarna
amenity	kindergarten	hr	Dječji vrtić
amenity	library	hr	Knjižnica
amenity	market	hr	Tržnica
amenity	marketplace	hr	Tržnica
amenity	mountain_rescue	hr	GSS - Gorska služba spašavanja
amenity	nightclub	hr	Noćni klub
amenity	nursery	hr	Čuvanje djece
amenity	nursing_home	hr	Starački dom
amenity	office	hr	Kancelarija
amenity	park	hr	Park
amenity	parking	hr	Parking
amenity	pharmacy	hr	Ljekarna
amenity	place_of_worship	hr	Crkva
amenity	police	hr	Policija
amenity	post_box	hr	Poštanski sandučić
amenity	post_office	hr	Pošta
amenity	preschool	hr	Predškolska ustanova
amenity	prison	hr	Zatvor
amenity	pub	hr	Pub
amenity	public_building	hr	Ustanova
amenity	public_market	hr	Javna tržnica
amenity	reception_area	hr	Recepcija
amenity	recycling	hr	Reciklažna točka
amenity	restaurant	hr	Restoran
amenity	retirement_home	hr	Dom za starije osobe
amenity	sauna	hr	Sauna
amenity	school	hr	Škola
amenity	shelter	hr	Sklonište
amenity	shop	hr	Trgovina
amenity	shopping	hr	Trgovački centar
amenity	social_club	hr	Društveni klub
amenity	studio	hr	Studio
amenity	supermarket	hr	Supermarket
amenity	taxi	hr	Taxi
amenity	telephone	hr	Telefonska govornica
amenity	theatre	hr	Kazalište
amenity	toilets	hr	WC
amenity	townhall	hr	Gradsko poglavarstvo
amenity	university	hr	Sveučilište
amenity	vending_machine	hr	Automat
amenity	veterinary	hr	Veterinar
amenity	village_hall	hr	Seoski Dom
amenity	waste_basket	hr	Kanta za otpatke
amenity	wifi	hr	WiFi pristupna točka
amenity	youth_centre	hr	Centar za mladež
boundary	administrative	hr	Administrativna granica
building	apartments	hr	Stambeni blok
building	block	hr	Blok zgrada
building	bunker	hr	Bunker
building	chapel	hr	Kapelica
building	church	hr	Crkva
building	city_hall	hr	Gradska vjećnica
building	commercial	hr	Poslovna zgrada
building	dormitory	hr	Studentski dom
building	entrance	hr	Ulaz
building	faculty	hr	Zgrada fakulteta
building	farm	hr	Farma (zgrada)
building	flats	hr	Stanovi
building	garage	hr	Garaža
building	hall	hr	Dvorana
building	hospital	hr	Bolnica
building	hotel	hr	Hotel
building	house	hr	Kuća
building	industrial	hr	Industrijska zgrada
building	office	hr	Uredska zgrada
building	public	hr	Javna zgrada
building	residential	hr	Stambena zgrada
building	retail	hr	Maloprodajna zgrada
building	school	hr	Školska zgrada
building	shop	hr	Trgovina
building	stadium	hr	Stadion
building	store	hr	Trgovina
building	terrace	hr	Terasa
building	tower	hr	Toranj
building	train_station	hr	Željeznički kolodvor
building	university	hr	Zgrada Sveučilišta
highway	bridleway	hr	Konjička staza
highway	bus_guideway	hr	Autobusna traka
highway	bus_stop	hr	Autobusno stajalište
highway	byway	hr	Prečica
highway	construction	hr	Autocesta u izgradnji
highway	cycleway	hr	Biciklistička staza
highway	distance_marker	hr	Oznaka km
highway	emergency_access_point	hr	S.O.S. točka
highway	footway	hr	Pješačka staza
highway	ford	hr	Ford
highway	gate	hr	Kapija
highway	living_street	hr	Ulica smirenog prometa
highway	minor	hr	Drugorazredna cesta
highway	motorway	hr	Autocesta
highway	motorway_junction	hr	Čvor (autoputa)
highway	motorway_link	hr	Autocesta (pristupna cesta)
highway	path	hr	Staza
highway	pedestrian	hr	Pješački put
highway	platform	hr	Platforma
highway	primary	hr	Državna cesta
highway	primary_link	hr	Državna cesta
highway	raceway	hr	Trkalište
highway	residential	hr	Ulica
highway	road	hr	Cesta
highway	secondary	hr	Županijska cesta
highway	secondary_link	hr	Županijska cesta
highway	service	hr	Servisna cesta
highway	services	hr	Autocesta - usluge
highway	steps	hr	Stepenice
highway	stile	hr	Prijelaz preko ograde
highway	tertiary	hr	Lokalna cesta
highway	track	hr	Makadam
highway	trail	hr	Staza
highway	trunk	hr	Cesta rezervirana za motorna vozila
highway	trunk_link	hr	Cesta rezrevirana za mot. voz. - prilazna cesta
highway	unclassified	hr	Nerazvrstana cesta
highway	unsurfaced	hr	Neasfaltirana cesta
historic	archaeological_site	hr	Arheološko nalazište
historic	battlefield	hr	Bojno polje
historic	boundary_stone	hr	Granični kamen
historic	building	hr	Zgrada
historic	castle	hr	Dvorac
historic	church	hr	Crkva
historic	house	hr	Kuća
historic	icon	hr	Ikona
historic	manor	hr	Zamak
historic	memorial	hr	Spomen dom
historic	mine	hr	Rudnik
historic	monument	hr	Spomenik
historic	museum	hr	Muzej
historic	ruins	hr	Ruševine
historic	tower	hr	Toranj
historic	wayside_cross	hr	Krajputaš
historic	wayside_shrine	hr	Usputno svetište
historic	wreck	hr	Olupina
landuse	allotments	hr	Vrtovi
landuse	basin	hr	Bazen
landuse	brownfield	hr	Zemljište za prenamjenu
landuse	cemetery	hr	Groblje
landuse	commercial	hr	Poslovno područje
landuse	conservation	hr	Zaštićeno područje
landuse	construction	hr	Gradilište
landuse	farm	hr	Farma
landuse	farmland	hr	Polje
landuse	farmyard	hr	Farma
landuse	forest	hr	Šuma
landuse	grass	hr	Trava
landuse	greenfield	hr	Greenfield zemljište
landuse	industrial	hr	Industrijsko područje
landuse	landfill	hr	Deponija
landuse	meadow	hr	Livada
landuse	military	hr	Vojno područje
landuse	mine	hr	Rudnik
landuse	mountain	hr	Planina
landuse	nature_reserve	hr	Rezervat prirode
landuse	park	hr	Park
landuse	piste	hr	Pista
landuse	plaza	hr	Plaza
landuse	quarry	hr	Kamenolom
landuse	railway	hr	Željeznica
landuse	recreation_ground	hr	Rekreacijsko područje
landuse	reservoir	hr	Rezervoar
landuse	residential	hr	Stambeno područje
landuse	retail	hr	Trgovina
landuse	village_green	hr	Seoski travnjak
landuse	vineyard	hr	Vinograd
landuse	wetland	hr	Močvara
landuse	wood	hr	Šuma
leisure	beach_resort	hr	Plaža
leisure	common	hr	Općinsko zemljište
leisure	fishing	hr	Ribičko područje
leisure	garden	hr	Vrt
leisure	golf_course	hr	Golf igralište
leisure	ice_rink	hr	Klizalište
leisure	marina	hr	Marina
leisure	miniature_golf	hr	Minigolf
leisure	nature_reserve	hr	Rezervat prirode
leisure	park	hr	Park
leisure	pitch	hr	Sportski teren
leisure	playground	hr	Igralište
leisure	recreation_ground	hr	Rekreacijski teren
leisure	slipway	hr	Navoz
leisure	sports_centre	hr	Sportski centar
leisure	stadium	hr	Stadion
leisure	swimming_pool	hr	Bazen
leisure	track	hr	Staza za trčanje
leisure	water_park	hr	Vodeni park
natural	bay	hr	Zaljev
natural	beach	hr	Plaža
natural	cape	hr	Rt
natural	cave_entrance	hr	Pećina (ulaz)
natural	channel	hr	Kanal
natural	cliff	hr	Litica
natural	coastline	hr	Obala
natural	crater	hr	Krater
natural	feature	hr	Obilježje
natural	fell	hr	Brdo
natural	fjord	hr	Fjord
natural	geyser	hr	Gejzir
natural	glacier	hr	Glečer
natural	heath	hr	Ravnica
natural	hill	hr	Brdo
natural	island	hr	Otok
natural	land	hr	Zemlja
natural	marsh	hr	Močvara
natural	moor	hr	Močvara
natural	mud	hr	Blato
natural	peak	hr	Vrh
natural	point	hr	Točka
natural	reef	hr	Greben
natural	ridge	hr	Greben
natural	river	hr	Rijeka
natural	rock	hr	Stijena
natural	scree	hr	Šljunak
natural	scrub	hr	Guštara
natural	shoal	hr	Sprud
natural	spring	hr	Izvor
natural	strait	hr	Tjesnac
natural	tree	hr	Drvo
natural	valley	hr	Dolina
natural	volcano	hr	Vulkan
natural	water	hr	Voda
natural	wetland	hr	Močvara
natural	wetlands	hr	Močvara
natural	wood	hr	Šuma
place	airport	hr	Zračna luka
place	city	hr	Grad
place	country	hr	Država
place	county	hr	Županija/grofovija
place	farm	hr	Farma
place	hamlet	hr	Zaseok
place	house	hr	Kuća
place	houses	hr	Kuće
place	island	hr	Otok
place	islet	hr	Otočić
place	locality	hr	Lokalitet
place	moor	hr	Močvara
place	municipality	hr	Općina
place	postcode	hr	Poštanski broj
place	region	hr	Područje
place	sea	hr	More
place	state	hr	Pokrajina / država (USA)
place	subdivision	hr	Podgrupa
place	suburb	hr	Predgrađe
place	town	hr	grad
place	unincorporated_area	hr	Slobodna zemlja
place	village	hr	Selo
railway	abandoned	hr	Napuštena pruga
railway	construction	hr	Pruga u izgradnji
railway	disused	hr	Napuštena pruga
railway	disused_station	hr	Željeznička stanica (nije u upotrebi)
railway	funicular	hr	Uspinjača
railway	halt	hr	Željeznička stanica
railway	historic_station	hr	Povijesna željeznička stanica
railway	junction	hr	Željeznički čvor
railway	level_crossing	hr	Pružni prijelaz
railway	light_rail	hr	Laka željeznica
railway	monorail	hr	Jednotračna pruga
railway	narrow_gauge	hr	Uskotračna pruga
railway	platform	hr	Željeznička platforma
railway	preserved	hr	Sačuvana pruga
railway	spur	hr	Pruga
railway	station	hr	Željeznički kolodvor
railway	subway	hr	Podzemna - stanica
railway	subway_entrance	hr	Podzemna - ulaz
railway	switch	hr	Skretnica
railway	tram	hr	Tramvaj
railway	tram_stop	hr	Tramvajska stanica
railway	yard	hr	Ranžirni kolodvor
shop	alcohol	hr	Trgovina pićem
shop	apparel	hr	Trgovina odjećom
shop	art	hr	Atelje
shop	bakery	hr	Pekara
shop	beauty	hr	Parfumerija
shop	beverages	hr	Trgovina pićem
shop	bicycle	hr	Trgovina biciklima
shop	books	hr	Knjižara
shop	butcher	hr	Mesnica
shop	car	hr	Autokuća
shop	car_dealer	hr	Autokuća
shop	car_parts	hr	Autodijelovi
shop	carpet	hr	Trgovina tepisima
shop	car_repair	hr	Autoservis
shop	charity	hr	Dobrotvorna trgovina
shop	chemist	hr	Ljekarna
shop	clothes	hr	Butik
shop	computer	hr	Computer Shop
shop	confectionery	hr	Delikatesa
shop	convenience	hr	Minimarket
shop	copyshop	hr	Kopiraona
shop	cosmetics	hr	Parfumerija
shop	department_store	hr	Robna kuća
shop	discount	hr	Diskont
shop	doityourself	hr	Uradi sam
shop	drugstore	hr	Drogerija
shop	dry_cleaning	hr	Kemijska čistionica
shop	electronics	hr	Trgovina elektronikom
shop	estate_agent	hr	Agencija za nekretnine
shop	farm	hr	Poljo-apoteka
shop	fashion	hr	Modna trgovina
shop	fish	hr	Ribarnica
shop	florist	hr	Cvjećarnica
shop	food	hr	Trgovina prehranom
shop	funeral_directors	hr	Pogrebno poduzeće
shop	furniture	hr	Namještaj
shop	gallery	hr	Galerija
shop	garden_centre	hr	Vrtni centar
shop	general	hr	Trgovina mješovitom robom
shop	gift	hr	Poklon trgovina
shop	greengrocer	hr	Voćarna
shop	grocery	hr	Trgovina prehranom
shop	hairdresser	hr	Frizer
shop	hardware	hr	Željezar
shop	hifi	hr	Hi-Fi
shop	insurance	hr	Osiguranje
shop	jewelry	hr	Zlatarna
shop	kiosk	hr	Kiosk
shop	laundry	hr	Praonica rublja
shop	mall	hr	Trgovački centar
shop	market	hr	Tržnica
shop	mobile_phone	hr	Trgovina mobitelima
shop	motorcycle	hr	Moto Shop
shop	music	hr	Trgovina glazbom
shop	newsagent	hr	Novinar
shop	optician	hr	Optičar
shop	organic	hr	Trgovina zdrave hrane
shop	outdoor	hr	Trgovina za slobodno vrijeme
shop	pet	hr	Trgovina za kućne ljubimce
shop	photo	hr	Fotograf
shop	salon	hr	Salon
shop	shoes	hr	Trgovina obućom
shop	shopping_centre	hr	Trgovački centar
shop	sports	hr	Trgovina sportskom opremom
shop	stationery	hr	Papirnica
shop	supermarket	hr	Supermarket
shop	toys	hr	Trgovina igračkama
shop	travel_agency	hr	Putnička agencija
shop	video	hr	Videoteka
shop	wine	hr	Vinoteka
tourism	alpine_hut	hr	Alpska kuća
tourism	artwork	hr	Umjetničko djelo
tourism	attraction	hr	Atrakcija
tourism	bed_and_breakfast	hr	Noćenje i doručak
tourism	cabin	hr	Koliba
tourism	camp_site	hr	Kamp
tourism	caravan_site	hr	Kamp-kućice (mjesto)
tourism	chalet	hr	Planinska kuća
tourism	guest_house	hr	Apartman
tourism	hostel	hr	Hostel
tourism	hotel	hr	Hotel
tourism	information	hr	Informacije
tourism	lean_to	hr	Lean to
tourism	motel	hr	Motel
tourism	museum	hr	Muzej
tourism	picnic_site	hr	Piknik-mjesto
tourism	theme_park	hr	Tematski park
tourism	valley	hr	Dolina
tourism	viewpoint	hr	Vidikovac
tourism	zoo	hr	Zoo
waterway	boatyard	hr	Brodogradilište
waterway	canal	hr	Kanal
waterway	connector	hr	Spoj vodnih puteva
waterway	dam	hr	Brana
waterway	derelict_canal	hr	Zanemaren kanal
waterway	ditch	hr	Jarak
waterway	dock	hr	Dok
waterway	drain	hr	Odvod
waterway	lock	hr	Ustava
waterway	lock_gate	hr	Ustava
waterway	mineral_spring	hr	Mineralni izvor
waterway	mooring	hr	Sidrište
waterway	rapids	hr	Brzaci
waterway	river	hr	Rijeka
waterway	riverbank	hr	Riječna obala
waterway	stream	hr	Potok
waterway	wadi	hr	Suho korito rijeke
waterway	waterfall	hr	Vodopad
waterway	water_point	hr	Točka vodotoka
waterway	weir	hr	Brana
amenity	airport	hsb	Lětanišćo
amenity	arts_centre	hsb	Kulturny centrum
amenity	atm	hsb	Bankomat
amenity	auditorium	hsb	Awditorij
amenity	bank	hsb	Banka
amenity	bar	hsb	Bara
amenity	bench	hsb	Ławka
amenity	bicycle_parking	hsb	Wotstajenišćo za kolesa
amenity	bicycle_rental	hsb	Wupožcowarnja za kolesa
amenity	brothel	hsb	Bordel
amenity	bureau_de_change	hsb	Měnjernja
amenity	bus_station	hsb	Busowe dwórnišćo
amenity	cafe	hsb	Kofejownja
amenity	car_rental	hsb	Awtowa přenajimarnja
amenity	car_sharing	hsb	Centrala za sobujěducych
amenity	car_wash	hsb	Awtomyjernja
amenity	casino	hsb	Kazino
amenity	cinema	hsb	Kino
amenity	clinic	hsb	Klinika
amenity	club	hsb	Klub
amenity	college	hsb	Wysoka šula
amenity	community_centre	hsb	Zhromadny centrum
amenity	courthouse	hsb	Sudnistwo
amenity	crematorium	hsb	Krematorij
amenity	dentist	hsb	Zubny lěkar
amenity	doctors	hsb	Lěkarjo
amenity	dormitory	hsb	Internat
amenity	drinking_water	hsb	Pitna woda
amenity	driving_school	hsb	Jězbna šula
amenity	embassy	hsb	Wulkopósłanstwo
amenity	emergency_phone	hsb	Nuzowy telefon
amenity	fast_food	hsb	Přikuski
amenity	ferry_terminal	hsb	Přewozny přistaw
amenity	fire_hydrant	hsb	Wohnjowy hydrant
amenity	fire_station	hsb	Wohnjostraža
amenity	fountain	hsb	Studnja
amenity	fuel	hsb	Tankownja
amenity	grave_yard	hsb	Kěrchow
amenity	gym	hsb	Fitnesowy center/Fitnesowe studijo
amenity	hall	hsb	Schadźowarnja
amenity	health_centre	hsb	Strowotny centrum
amenity	hospital	hsb	Chorownja
amenity	hotel	hsb	Hotel
amenity	hunting_stand	hsb	Łakańca
amenity	ice_cream	hsb	Jědźny lód
amenity	kindergarten	hsb	Pěstowarnja
amenity	library	hsb	Knihownja
amenity	market	hsb	Wiki
amenity	marketplace	hsb	Torhošćo
amenity	mountain_rescue	hsb	Hórska wuchowanska słužba
amenity	nightclub	hsb	Nócny klub
amenity	nursery	hsb	Pěstowarnja
amenity	nursing_home	hsb	Hladarnja
amenity	office	hsb	Běrow
amenity	park	hsb	Park
amenity	parking	hsb	Parkowanišćo
amenity	pharmacy	hsb	Lěkarnja
amenity	place_of_worship	hsb	Boži dom
amenity	police	hsb	Policija
amenity	post_box	hsb	Listowy kašćik
amenity	post_office	hsb	Póstowy zarjad
amenity	preschool	hsb	Předšula
amenity	prison	hsb	Jastwo
amenity	pub	hsb	Korčma
amenity	public_building	hsb	Zjawne twarjenje
amenity	public_market	hsb	Zjawne wiki
amenity	reception_area	hsb	Přijimanski wobłuk
amenity	recycling	hsb	Přijimarnja starowiznow
amenity	restaurant	hsb	Hosćenc
amenity	retirement_home	hsb	Starownja
amenity	sauna	hsb	Sawna
amenity	school	hsb	Šula
amenity	shelter	hsb	Podstup
amenity	shop	hsb	Wobchod
amenity	shopping	hsb	Nakup
amenity	social_club	hsb	Towarstwo
amenity	studio	hsb	Studijo
amenity	supermarket	hsb	Superwiki
amenity	taxi	hsb	Taksijowe zastanišćo
amenity	telephone	hsb	Zjawny telefon
amenity	theatre	hsb	Dźiwadło
amenity	toilets	hsb	Nuzniki
amenity	townhall	hsb	Radnica
amenity	university	hsb	Uniwersita
amenity	vending_machine	hsb	Awtomat
amenity	veterinary	hsb	Zwěrjacy lěkar
amenity	village_hall	hsb	Gmejnski centrum
amenity	waste_basket	hsb	Wotpadkowe sudobjo
amenity	wifi	hsb	WLAN-přistup
amenity	youth_centre	hsb	Centrum za młodostnych
boundary	administrative	hsb	Zarjadniska hranica
building	apartments	hsb	Bydlenski blok
building	block	hsb	Bydlenski blok
building	bunker	hsb	Bunker
building	chapel	hsb	Kapałka
building	church	hsb	Cyrkej
building	city_hall	hsb	Radnica
building	commercial	hsb	Wobchodniske twarjenje
building	dormitory	hsb	Studentski internat
building	entrance	hsb	Twarjenjowy zachod
building	faculty	hsb	Fakultowe twarjenje
building	farm	hsb	Hospodarske twarjenje
building	flats	hsb	Bydlenja
building	garage	hsb	Garaža
building	hall	hsb	Hala
building	hospital	hsb	Chorownja
building	hotel	hsb	Hotel
building	house	hsb	Dom
building	industrial	hsb	Industrijowe twarjenje
building	office	hsb	Běrowowe twarjenje
building	public	hsb	Zjawne twarjenje
building	residential	hsb	Bydlenske twarjenje
building	retail	hsb	Priwatne twarjenje
building	school	hsb	Šulske twarjenje
building	shop	hsb	Wobchod
building	stadium	hsb	Stadion
building	store	hsb	Wobchod
building	terrace	hsb	Terasa
building	tower	hsb	Wěža
building	train_station	hsb	Dwórnišćo
building	university	hsb	Uniwersitne twarjenje
highway	bridleway	hsb	Jěchanski puć
highway	bus_guideway	hsb	Trolejbusowy milinowód
highway	bus_stop	hsb	Busowe zastanišćo
highway	byway	hsb	Pódlanski puć
highway	construction	hsb	Dróha so twari
highway	cycleway	hsb	Kolesowarska šćežka
highway	distance_marker	hsb	Kilometernik
highway	emergency_access_point	hsb	Přijimarnja njezbožow
highway	footway	hsb	Pućik
highway	ford	hsb	Bród
highway	gate	hsb	Wrota
highway	living_street	hsb	Hasa z pomjeńšenym wobchadom
highway	minor	hsb	Pódlanska hasa
highway	motorway	hsb	Awtodróha
highway	motorway_junction	hsb	Awtodróhowe křižnišćo
highway	motorway_link	hsb	Přijězd na awtodróhu
highway	path	hsb	Šćežka
highway	pedestrian	hsb	Chódnik
highway	platform	hsb	Platforma
highway	primary	hsb	Dróha prěnjeho rjada
highway	primary_link	hsb	Dróha prěnjeho rjada
highway	raceway	hsb	Pista
highway	residential	hsb	Bydlenska hasa
highway	road	hsb	Dróha
highway	secondary	hsb	Dróha druheho rjada
highway	secondary_link	hsb	Dróha druheho rjada
highway	service	hsb	Dróha za přidróžnych
highway	services	hsb	Awtodróhowy wotpočny hosćenc
highway	steps	hsb	Schodźenki
highway	stile	hsb	Płótne stupadło
highway	tertiary	hsb	Dróha třećeho rjada
highway	track	hsb	Pólny puć
highway	trail	hsb	Šćežka
highway	trunk	hsb	Dalokodróha
highway	trunk_link	hsb	Dalokodróha
highway	unclassified	hsb	Njezarjadowana dróha
highway	unsurfaced	hsb	Njewobtwjerdźena dróha
historic	archaeological_site	hsb	Archeologiske wurywanišćo
historic	battlefield	hsb	Bitwišćo
historic	boundary_stone	hsb	Měznik
historic	building	hsb	Twarjenje
historic	castle	hsb	Hród
historic	church	hsb	Cyrkej
historic	house	hsb	Dom
historic	icon	hsb	Ikona
historic	manor	hsb	Knježi dwór
historic	memorial	hsb	Wopomnišćo
historic	mine	hsb	Podkopki
historic	monument	hsb	Pomnik
historic	museum	hsb	Muzej
historic	ruins	hsb	Rozpadanki
historic	tower	hsb	Wěža
historic	wayside_cross	hsb	Pućny křiž
historic	wayside_shrine	hsb	Stołp
historic	wreck	hsb	Wrak
landuse	allotments	hsb	Małozahrodki
landuse	basin	hsb	Basenk
landuse	brownfield	hsb	Industrijowe lado
landuse	cemetery	hsb	Kěrchow
landuse	commercial	hsb	Přemysłowa kónčina
landuse	conservation	hsb	Přirodoškit
landuse	construction	hsb	Twar
landuse	farm	hsb	Farma
landuse	farmland	hsb	Pola
landuse	farmyard	hsb	Statok
landuse	forest	hsb	Wužitny lěs
landuse	grass	hsb	Trawa
landuse	greenfield	hsb	Njewobtwarjena zemja
landuse	industrial	hsb	Industrijowa kónčina
landuse	landfill	hsb	Smjećišćo
landuse	meadow	hsb	Łuka
landuse	military	hsb	Wojerska kónčina
landuse	mine	hsb	Podkopki
landuse	mountain	hsb	Hora
landuse	nature_reserve	hsb	Přirodoškitne pasmo
landuse	park	hsb	Park
landuse	piste	hsb	Pista
landuse	plaza	hsb	Naměsto
landuse	quarry	hsb	Skała
landuse	railway	hsb	Železnica
landuse	recreation_ground	hsb	Wočerstwjenska krajina
landuse	reservoir	hsb	Zběranski basenk
landuse	residential	hsb	Bydlenski wobwod
landuse	retail	hsb	Wobchody
landuse	village_green	hsb	Nawjes
landuse	vineyard	hsb	Winicy
landuse	wetland	hsb	Łučina
landuse	wood	hsb	Lěs
leisure	beach_resort	hsb	Mórske kupjele
leisure	common	hsb	Gmejnski kraj
leisure	fishing	hsb	Rybnišćo
leisure	garden	hsb	Zahroda
leisure	golf_course	hsb	Golfownišćo
leisure	ice_rink	hsb	Smykanišćo
leisure	marina	hsb	Jachtowy přistaw
leisure	miniature_golf	hsb	Minigolf
leisure	nature_reserve	hsb	Přirodoškitne pasmo
leisure	park	hsb	Park
leisure	pitch	hsb	Sportnišćo
leisure	playground	hsb	Hrajkanišćo
leisure	recreation_ground	hsb	Wočerstwjenišćo
leisure	slipway	hsb	Helling
leisure	sports_centre	hsb	Sportowy centrum
leisure	stadium	hsb	Stadion
leisure	swimming_pool	hsb	Swimmingpool
leisure	track	hsb	Běhanišćo
leisure	water_park	hsb	Wodowy park
natural	bay	hsb	Zaliw
natural	beach	hsb	Přibrjóh
natural	cape	hsb	Kap
natural	cave_entrance	hsb	Prózdnjeński zachod
natural	channel	hsb	Kanal
natural	cliff	hsb	Wuskała
natural	coastline	hsb	Pobrjóžna linija
natural	crater	hsb	Krater
natural	feature	hsb	Funkcija
natural	fell	hsb	Fjeld
natural	fjord	hsb	Fjord
natural	geyser	hsb	Geiser
natural	glacier	hsb	Lodowc
natural	heath	hsb	Hola
natural	hill	hsb	Hórka
natural	island	hsb	Kupa
natural	land	hsb	Kraj
natural	marsh	hsb	Marša
natural	moor	hsb	Bahno
natural	mud	hsb	Błóto
natural	peak	hsb	Špica
natural	point	hsb	Dypk
natural	reef	hsb	Rif
natural	ridge	hsb	Horinski hrjebjeń
natural	river	hsb	Rěka
natural	rock	hsb	Skała
natural	scree	hsb	Walanki
natural	scrub	hsb	Kerki
natural	shoal	hsb	Niłčina, pěsčišćo
natural	spring	hsb	Žórło
natural	strait	hsb	Mórska wužina
natural	tree	hsb	Štom
natural	valley	hsb	Doł
natural	volcano	hsb	Wulkan
natural	water	hsb	Wodźizny
natural	wetland	hsb	Łučina
natural	wetlands	hsb	Łučiny
natural	wood	hsb	Lěs
place	airport	hsb	Lětanišćo
place	city	hsb	Wulkoměsto
place	country	hsb	Kraj
place	county	hsb	Wokrjes
place	farm	hsb	Farma
place	hamlet	hsb	Wjeska
place	house	hsb	Dom
place	houses	hsb	Domy
place	island	hsb	Kupa
place	islet	hsb	Kupka
place	locality	hsb	Sydlišćo
place	moor	hsb	Bahno
place	municipality	hsb	Gmejna
place	postcode	hsb	Postowe wodźenske čisło
place	region	hsb	Region
place	sea	hsb	Morjo
place	state	hsb	Zwjazkowy kraj
place	subdivision	hsb	Trabantowe město
place	suburb	hsb	Předměsto
place	town	hsb	Město
place	unincorporated_area	hsb	Bjezgmejnska kónčina
place	village	hsb	Wjes
railway	abandoned	hsb	Rozpušćena železnica
railway	construction	hsb	Železnica so twari
railway	disused	hsb	Zastajena železnica
railway	disused_station	hsb	Zawrjene dwórnišćo
railway	funicular	hsb	Powjaznica
railway	halt	hsb	Železniske zastanišćo
railway	historic_station	hsb	Historiske dwórnišćo
railway	junction	hsb	Železniske křižnišćo
railway	level_crossing	hsb	Železniski přechod
railway	light_rail	hsb	Měšćanska železnica
railway	monorail	hsb	Jednokolijowa železnica
railway	narrow_gauge	hsb	Wuskokolijata železnica
railway	platform	hsb	Železniske nastupišćo
railway	preserved	hsb	Muzejowa železnica
railway	spur	hsb	Přizamkowe kolije
railway	station	hsb	Dwórnišćo
railway	subway	hsb	Metrowa stacija
railway	subway_entrance	hsb	Zachod do podzemskeje železnicy
railway	switch	hsb	Wuhibka
railway	tram	hsb	Tramwajka
railway	tram_stop	hsb	Tramwajkowe zastanišćo
railway	yard	hsb	Ranžěrowanske dwórnišćo
shop	alcohol	hsb	Wobchod za spirituozy
shop	apparel	hsb	Drastowy wobchod
shop	art	hsb	Wuměłski wobchod
shop	bakery	hsb	Pjekarnja
shop	beauty	hsb	Kosmetikowy salon
shop	beverages	hsb	Napojowe wiki
shop	bicycle	hsb	Wobchod za kolesa
shop	books	hsb	Kniharnja
shop	butcher	hsb	Rěznik
shop	car	hsb	Awtosalon
shop	car_dealer	hsb	Wikowar awtow
shop	car_parts	hsb	Awtowe narunanki
shop	carpet	hsb	Přestrjencowy wobchod
shop	car_repair	hsb	Awtowa porjedźernja
shop	charity	hsb	Dobroćelski wobchod
shop	chemist	hsb	Lěkarnja
shop	clothes	hsb	Drastowy wobchod
shop	computer	hsb	Kompjuterowy wobchod
shop	confectionery	hsb	Konditarnja
shop	convenience	hsb	Miniwiki
shop	copyshop	hsb	Kopěrowanski wobchod
shop	cosmetics	hsb	Kosmetikowy wobchod
shop	department_store	hsb	Kupnica
shop	discount	hsb	Wobchod za tunje artikle
shop	doityourself	hsb	Paslerska potrjeba
shop	drugstore	hsb	Drogerija
shop	dry_cleaning	hsb	Čisćernja
shop	electronics	hsb	Wobchod za elektroniku
shop	estate_agent	hsb	Makler z imobilijemi
shop	farm	hsb	Wobchod na statoku
shop	fashion	hsb	Modowy wobchod
shop	fish	hsb	Rybowy wobchod
shop	florist	hsb	Kwětkarnja
shop	food	hsb	Wobchod za žiwidła
shop	funeral_directors	hsb	Pochowanski wustaw
shop	furniture	hsb	Meble
shop	gallery	hsb	Galerija
shop	garden_centre	hsb	Zahrodny centrum
shop	general	hsb	Wobchod za měšane twory
shop	gift	hsb	Wobchod za dary
shop	greengrocer	hsb	Wobchod za zeleniny
shop	grocery	hsb	Žiwidłowy wobchod
shop	hairdresser	hsb	Frizerski salon
shop	hardware	hsb	Twarske wiki
shop	hifi	hsb	Hi-fi
shop	insurance	hsb	Zawěsćernja
shop	jewelry	hsb	Debjenkowy wobchod
shop	kiosk	hsb	Kiosk
shop	laundry	hsb	Myjernja
shop	mall	hsb	Promenada
shop	market	hsb	Wiki
shop	mobile_phone	hsb	Telekomunikaciski wobchod
shop	motorcycle	hsb	Wobchod za motorske
shop	music	hsb	Wobchod za hudźbniny
shop	newsagent	hsb	Kiosk nowin
shop	optician	hsb	Optikar
shop	organic	hsb	Biowobchod
shop	outdoor	hsb	Wobchod pod hołym njebjom
shop	pet	hsb	Coowobchod
shop	photo	hsb	Fotograf
shop	salon	hsb	Salon
shop	shoes	hsb	Wobchod črijow
shop	shopping_centre	hsb	Nakupowanišćo
shop	sports	hsb	Sportowy wobchod
shop	stationery	hsb	Papjernistwo
shop	supermarket	hsb	Superwiki
shop	toys	hsb	Wobchod za hrajki
shop	travel_agency	hsb	Pućowanski běrow
shop	video	hsb	Widejowobchod
shop	wine	hsb	Wobchod za spirituozy
tourism	alpine_hut	hsb	Hórska bawda
tourism	artwork	hsb	Wuměłska twórba
tourism	attraction	hsb	Atrakcija
tourism	bed_and_breakfast	hsb	Přenocowanje ze snědanju
tourism	cabin	hsb	Chěžka
tourism	camp_site	hsb	Stanowanišćo
tourism	caravan_site	hsb	Campingowanišćo za caravany
tourism	chalet	hsb	Chata
tourism	guest_house	hsb	Hóstny dom
tourism	hostel	hsb	Hospoda
tourism	hotel	hsb	Hotel
tourism	information	hsb	Informacija
tourism	lean_to	hsb	Kólnja
tourism	motel	hsb	Motel
tourism	museum	hsb	Muzej
tourism	picnic_site	hsb	Piknikowanišćo
tourism	theme_park	hsb	Park zabawy
tourism	valley	hsb	Doł
tourism	viewpoint	hsb	Wuhladnišćo
tourism	zoo	hsb	Coo
waterway	boatyard	hsb	Łódźnica
waterway	canal	hsb	Kanal
waterway	connector	hsb	Zwisk mjez wódnymi pućemi
waterway	dam	hsb	Nasyp
waterway	derelict_canal	hsb	Zanjerodźeny kanal
waterway	ditch	hsb	Hrjebja
waterway	dock	hsb	Dok
waterway	drain	hsb	Wentok
waterway	lock	hsb	Přepław
waterway	lock_gate	hsb	Wrota přeplawnje
waterway	mineral_spring	hsb	Mineralne žórło
waterway	mooring	hsb	Přistawnišćo
waterway	rapids	hsb	Rěčne prohi
waterway	river	hsb	Rěka
waterway	riverbank	hsb	Rěčny brjóh
waterway	stream	hsb	Wulkorěka
waterway	wadi	hsb	Wadi
waterway	waterfall	hsb	Wodopad
waterway	water_point	hsb	Wódne městno
waterway	weir	hsb	Spušćadło
amenity	airport	hu	Repülőtér
amenity	arts_centre	hu	Művészeti központ
amenity	atm	hu	Bankautomata
amenity	auditorium	hu	Auditórium
amenity	bank	hu	Bank
amenity	bar	hu	Bár
amenity	bench	hu	Pad
amenity	bicycle_parking	hu	Kerékpártároló
amenity	bicycle_rental	hu	Kerékpárkölcsönző
amenity	brothel	hu	Bordélyház
amenity	bureau_de_change	hu	Pénzváltó
amenity	bus_station	hu	Autóbusz-állomás
amenity	cafe	hu	Kávézó
amenity	car_rental	hu	Autókölcsönző
amenity	car_sharing	hu	Autómegosztás
amenity	car_wash	hu	Autómosó
amenity	casino	hu	Kaszinó
amenity	cinema	hu	Mozi
amenity	clinic	hu	Klinika
amenity	club	hu	Klub
amenity	college	hu	Főiskola
amenity	community_centre	hu	Művelődési központ
amenity	courthouse	hu	Bíróság
amenity	crematorium	hu	Krematórium
amenity	dentist	hu	Fogorvos
amenity	doctors	hu	Orvosi rendelő
amenity	dormitory	hu	Kollégium
amenity	drinking_water	hu	Ivóvíz
amenity	driving_school	hu	Autósiskola
amenity	embassy	hu	Nagykövetség
amenity	emergency_phone	hu	Segélyhívó
amenity	fast_food	hu	Gyorsétterem
amenity	ferry_terminal	hu	Kompkikötő
amenity	fire_hydrant	hu	Tűzcsap
amenity	fire_station	hu	Tűzoltóság
amenity	fountain	hu	Szökőkút
amenity	fuel	hu	Benzinkút
amenity	grave_yard	hu	Kis temető
amenity	gym	hu	Fitness- / Tornaterem
amenity	hall	hu	Csarnok
amenity	health_centre	hu	Egészségügyi központ
amenity	hospital	hu	Kórház
amenity	hotel	hu	Szálloda
amenity	hunting_stand	hu	Magasles
amenity	ice_cream	hu	Jégkrém
amenity	kindergarten	hu	Óvoda
amenity	library	hu	Könyvtár
amenity	market	hu	Piac
amenity	marketplace	hu	Vásártér
amenity	mountain_rescue	hu	Hegyimentők
amenity	nightclub	hu	Éjszakai bár
amenity	nursery	hu	Óvoda
amenity	nursing_home	hu	Idősek otthona
amenity	office	hu	Iroda
amenity	park	hu	Park
amenity	parking	hu	Parkoló
amenity	pharmacy	hu	Gyógyszertár
amenity	place_of_worship	hu	Vallási hely
amenity	police	hu	Rendőrség
amenity	post_box	hu	Postaláda
amenity	post_office	hu	Posta
amenity	preschool	hu	Óvoda
amenity	prison	hu	Börtön
amenity	pub	hu	Kocsma
amenity	public_building	hu	Középület
amenity	public_market	hu	Piac
amenity	reception_area	hu	Recepció
amenity	recycling	hu	Szelektív hulladékgyűjtő
amenity	restaurant	hu	Étterem
amenity	retirement_home	hu	Nyugdíjasotthon
amenity	sauna	hu	Szauna
amenity	school	hu	Iskola
amenity	shelter	hu	Esőház
amenity	shop	hu	Bolt
amenity	shopping	hu	Bevásárlás
amenity	social_club	hu	Társasági klub
amenity	studio	hu	Stúdió
amenity	supermarket	hu	Szupermarket
amenity	taxi	hu	Taxi
amenity	telephone	hu	Nyilvános telefon
amenity	theatre	hu	Színház
amenity	toilets	hu	WC
amenity	townhall	hu	Városháza
amenity	university	hu	Egyetem
amenity	vending_machine	hu	Árusító automata
amenity	veterinary	hu	Állatorvosi rendelő
amenity	village_hall	hu	Községháza
amenity	waste_basket	hu	Szemétgyűjtő kosár
amenity	wifi	hu	WiFi hozzáférés
amenity	youth_centre	hu	Ifjúsági központ
boundary	administrative	hu	Közigazgatási határ
building	apartments	hu	Társasház
building	block	hu	Háztömb
building	bunker	hu	Bunker
building	chapel	hu	Kápolna
building	church	hu	Templom
building	city_hall	hu	Városháza
building	commercial	hu	Kereskedelmi épület
building	dormitory	hu	Kollégium
building	entrance	hu	Épületbejárat
building	faculty	hu	Egyetemi épület
building	farm	hu	Tanyaépület
building	flats	hu	Lakások
building	garage	hu	Garázs
building	hall	hu	Csarnok
building	hospital	hu	Kórházépület
building	hotel	hu	Szálloda
building	house	hu	Ház
building	industrial	hu	Ipari épület
building	office	hu	Irodaház
building	public	hu	Középület
building	residential	hu	Lakóház
building	retail	hu	Kereskedelmi épület
building	school	hu	Iskolaépület
building	shop	hu	Bolt
building	stadium	hu	Stadion
building	store	hu	Áruház
building	terrace	hu	Sorház
building	tower	hu	Torony
building	train_station	hu	Vasútállomás
building	university	hu	Egyetemi épület
highway	bridleway	hu	Lovaglóút
highway	bus_guideway	hu	Buszsín
highway	bus_stop	hu	Buszmegálló
highway	byway	hu	Kiépítetlen ösvény
highway	construction	hu	Építés alatt álló közút
highway	cycleway	hu	Kerékpárút
highway	distance_marker	hu	Távolságjelölő
highway	emergency_access_point	hu	Vészhelyzeti hozzáférési pont
highway	footway	hu	Gyalogút
highway	ford	hu	Gázló
highway	gate	hu	Kapu
highway	living_street	hu	Pihenőút
highway	minor	hu	Alárendelt út
highway	motorway	hu	Autópálya
highway	motorway_junction	hu	Autópálya-csomópont
highway	motorway_link	hu	Autópálya
highway	path	hu	Ösvény
highway	pedestrian	hu	Sétálóutca
highway	platform	hu	Peron
highway	primary	hu	Főút
highway	primary_link	hu	Főút
highway	raceway	hu	Versenypálya
highway	residential	hu	Lakóövezeti út
highway	road	hu	Út
highway	secondary	hu	Összekötő út
highway	secondary_link	hu	Összekötő út
highway	service	hu	Szervizút
highway	services	hu	Autópálya-pihenőhely
highway	steps	hu	Lépcső
highway	stile	hu	Lépcsős átjáró
highway	tertiary	hu	Bekötőút
highway	track	hu	Földút
highway	trail	hu	Túraút
highway	trunk	hu	Autóút
highway	trunk_link	hu	Autóút
highway	unclassified	hu	Egyéb út
highway	unsurfaced	hu	Burkolatlan út
historic	archaeological_site	hu	Régészeti lelőhely
historic	battlefield	hu	Csatamező
historic	boundary_stone	hu	Határkő
historic	building	hu	Épület
historic	castle	hu	Vár
historic	church	hu	Templom
historic	house	hu	Ház
historic	icon	hu	Ikon
historic	manor	hu	Majorság
historic	memorial	hu	Emlékmű
historic	mine	hu	Bánya
historic	monument	hu	Műemlék
historic	museum	hu	Múzeum
historic	ruins	hu	Rom
historic	tower	hu	Torony
historic	wayside_cross	hu	Útszéli kereszt
historic	wayside_shrine	hu	Útszéli kegyhely
historic	wreck	hu	Hajóroncs
landuse	allotments	hu	Kert
landuse	basin	hu	Medence
landuse	brownfield	hu	Barnamező
landuse	cemetery	hu	Temető
landuse	commercial	hu	Irodaterület
landuse	conservation	hu	Védelmi terület
landuse	construction	hu	Építési terület
landuse	farm	hu	Tanya
landuse	farmland	hu	Mezőgazdasági terület
landuse	farmyard	hu	Tanya épületei
landuse	forest	hu	Erdő
landuse	grass	hu	Füves terület
landuse	greenfield	hu	Zöldmező
landuse	industrial	hu	Ipari terület
landuse	landfill	hu	Hulladéklerakó
landuse	meadow	hu	Rét
landuse	military	hu	Katonai terület
landuse	mine	hu	Bánya
landuse	mountain	hu	Hegy
landuse	nature_reserve	hu	Természetvédelmi terület
landuse	park	hu	Park
landuse	piste	hu	Sípálya
landuse	plaza	hu	Tér
landuse	quarry	hu	Kőfejtő
landuse	railway	hu	Vasúti terület
landuse	recreation_ground	hu	Szabadidőpark
landuse	reservoir	hu	Víztározó
landuse	residential	hu	Lakóövezet
landuse	retail	hu	Kereskedelmi terület
landuse	village_green	hu	Közös mező
landuse	vineyard	hu	Szőlős
landuse	wetland	hu	Láp
landuse	wood	hu	Erdő
leisure	beach_resort	hu	Tengerparti üdülőhely
leisure	common	hu	Közös terület
leisure	fishing	hu	Horgászterület
leisure	garden	hu	Kert
leisure	golf_course	hu	Golfpálya
leisure	ice_rink	hu	Műjégpálya
leisure	marina	hu	Kishajókikötő
leisure	miniature_golf	hu	Minigolfpálya
leisure	nature_reserve	hu	Természetvédelmi terület
leisure	park	hu	Park
leisure	pitch	hu	Labdarúgópálya
leisure	playground	hu	Játszótér
leisure	recreation_ground	hu	Szabadidőpark
leisure	slipway	hu	Sólya
leisure	sports_centre	hu	Sportközpont
leisure	stadium	hu	Stadion
leisure	swimming_pool	hu	Uszoda
leisure	track	hu	Futópálya
leisure	water_park	hu	Vízipark
natural	bay	hu	Öböl
natural	beach	hu	Part
natural	cape	hu	Partfok
natural	cave_entrance	hu	Barlangbejárat
natural	channel	hu	Csatorna
natural	cliff	hu	Szikla
natural	coastline	hu	Tengerpart
natural	crater	hu	Kráter
natural	feature	hu	Tereptárgy
natural	fell	hu	Kopár
natural	fjord	hu	Fjord
natural	geyser	hu	Gejzír
natural	glacier	hu	Gleccser
natural	heath	hu	Puszta
natural	hill	hu	Domb
natural	island	hu	Sziget
natural	land	hu	Szárazföld
natural	marsh	hu	Mocsár
natural	moor	hu	Mocsár
natural	mud	hu	Iszap
natural	peak	hu	Hegycsúcs
natural	point	hu	Pont
natural	reef	hu	Zátony
natural	ridge	hu	Hegygerinc
natural	river	hu	Folyó
natural	rock	hu	Szikla
natural	scree	hu	Sziklatörmelék
natural	scrub	hu	Cserjés
natural	shoal	hu	Zátony
natural	spring	hu	Forrás
natural	strait	hu	Tengerszoros
natural	tree	hu	Fa
natural	valley	hu	Völgy
natural	volcano	hu	Vulkán
natural	water	hu	Tó
natural	wetland	hu	Láp
natural	wetlands	hu	Láp
natural	wood	hu	Erdő
place	airport	hu	Repülőtér
place	city	hu	Nagyváros
place	country	hu	Ország
place	county	hu	Megye
place	farm	hu	Tanya
place	hamlet	hu	Község
place	house	hu	Ház
place	houses	hu	Házak
place	island	hu	Sziget
place	islet	hu	Kis sziget
place	locality	hu	Hely
place	moor	hu	Mocsár
place	municipality	hu	Település
place	postcode	hu	Irányítószám
place	region	hu	Régió
place	sea	hu	Tenger
place	state	hu	Állam
place	subdivision	hu	Településrész
place	suburb	hu	Városrész
place	town	hu	Város
place	unincorporated_area	hu	Jogi személyiséggel nem rendelkező terület
place	village	hu	Nagyközség
railway	abandoned	hu	Felhagyott vasút
railway	construction	hu	Építés alatt álló vasút
railway	disused	hu	Használaton kívüli vasút
railway	disused_station	hu	Használaton kívüli vasútállomás
railway	funicular	hu	Siklóvasút
railway	halt	hu	Vasúti megállóhely
railway	historic_station	hu	Történelmi vasútállomás
railway	junction	hu	Vasúti csomópont
railway	level_crossing	hu	Vasúti átjáró
railway	light_rail	hu	HÉV
railway	monorail	hu	Egysínű vasút
railway	narrow_gauge	hu	Keskeny nyomközű vasút
railway	platform	hu	Vasúti peron
railway	preserved	hu	Megőrzött vasút
railway	spur	hu	Vasúti szárnyvonal
railway	station	hu	Vasútállomás
railway	subway	hu	Metróállomás
railway	subway_entrance	hu	Metrókijárat
railway	switch	hu	Vasúti váltó
railway	tram	hu	Villamos
railway	tram_stop	hu	Villamosmegálló
railway	yard	hu	Rendező-pályaudvar
shop	alcohol	hu	Alkoholos italbolt
shop	apparel	hu	Ruházati bolt
shop	art	hu	Művészeti bolt
shop	bakery	hu	Pékség
shop	beauty	hu	Szépészeti bolt
shop	beverages	hu	Italbolt
shop	bicycle	hu	Kerékpárbolt
shop	books	hu	Könyvesbolt
shop	butcher	hu	Hentesbolt
shop	car	hu	Autókereskedés
shop	car_dealer	hu	Autókereskedés
shop	car_parts	hu	Autóalkatrészbolt
shop	carpet	hu	Szőnyegbolt
shop	car_repair	hu	Autószerviz
shop	charity	hu	Adománybolt
shop	chemist	hu	Vegyipari bolt
shop	clothes	hu	Ruházati bolt
shop	computer	hu	Számítástechnikai bolt
shop	confectionery	hu	Cukrászda
shop	convenience	hu	Kisbolt
shop	copyshop	hu	Fénymásoló bolt
shop	cosmetics	hu	Kozmetikai bolt
shop	department_store	hu	Áruház
shop	discount	hu	Diszkontárubolt
shop	doityourself	hu	Barkácsbolt
shop	drugstore	hu	Illatszerbolt
shop	dry_cleaning	hu	Ruhatisztító
shop	electronics	hu	Elektronikai bolt
shop	estate_agent	hu	Ingatlankereskedés
shop	farm	hu	Kertészbolt
shop	fashion	hu	Divatbolt
shop	fish	hu	Halbolt
shop	florist	hu	Virágárus
shop	food	hu	Élelmiszerbolt
shop	funeral_directors	hu	Temetkezési vállalkozó
shop	furniture	hu	Bútorbolt
shop	gallery	hu	Galéria
shop	garden_centre	hu	Cserepes virágbolt
shop	general	hu	Vegyeskereskedés
shop	gift	hu	Ajándékbolt
shop	greengrocer	hu	Zöldséges
shop	grocery	hu	Fűszerbolt
shop	hairdresser	hu	Fodrászat
shop	hardware	hu	Szerelési bolt
shop	hifi	hu	Hi-Fi bolt
shop	insurance	hu	Biztosító
shop	jewelry	hu	Ékszerbolt
shop	kiosk	hu	Trafik
shop	laundry	hu	Mosoda
shop	mall	hu	Üzletház
shop	market	hu	Piac
shop	mobile_phone	hu	Mobiltelefonbolt
shop	motorcycle	hu	Motorbolt
shop	music	hu	Zenebolt
shop	newsagent	hu	Újságárus
shop	optician	hu	Látszerész
shop	organic	hu	Bioélelmiszerbolt
shop	outdoor	hu	Túrabolt
shop	pet	hu	Állatkereskedés
shop	photo	hu	Fotóbolt
shop	salon	hu	Szalon
shop	shoes	hu	Cipőbolt
shop	shopping_centre	hu	Bevásárlóközpont
shop	sports	hu	Sportbolt
shop	stationery	hu	Írószerbolt
shop	supermarket	hu	Szupermarket
shop	toys	hu	Játékbolt
shop	travel_agency	hu	Utazási iroda
shop	video	hu	Videókölcsönző
shop	wine	hu	Borárusító italbolt
tourism	alpine_hut	hu	Alpesi kunyhó
tourism	artwork	hu	Műalkotás
tourism	attraction	hu	Látnivaló
tourism	bed_and_breakfast	hu	Vendégház
tourism	cabin	hu	Kunyhó
tourism	camp_site	hu	Kemping
tourism	caravan_site	hu	Lakókocsitábor
tourism	chalet	hu	Nyaralóház
tourism	guest_house	hu	Vendégház
tourism	hostel	hu	Turistaszálló
tourism	hotel	hu	Szálloda
tourism	information	hu	Információ
tourism	lean_to	hu	Kunyhó
tourism	motel	hu	Motel
tourism	museum	hu	Múzeum
tourism	picnic_site	hu	Piknikezőhely
tourism	theme_park	hu	Vidámpark
tourism	valley	hu	Völgy
tourism	viewpoint	hu	Kilátó
tourism	zoo	hu	Állatkert
waterway	boatyard	hu	Hajóhangár
waterway	canal	hu	Csatorna
waterway	connector	hu	Vízi csatlakozó
waterway	dam	hu	Gát
waterway	derelict_canal	hu	Felhagyott csatorna
waterway	ditch	hu	Árok
waterway	dock	hu	Kikötő
waterway	drain	hu	Árok
waterway	lock	hu	Zsilip
waterway	lock_gate	hu	Zsilip
waterway	mineral_spring	hu	Ásványos patak
waterway	mooring	hu	Kikötő
waterway	rapids	hu	Zuhatag
waterway	river	hu	Folyó
waterway	riverbank	hu	Folyópart
waterway	stream	hu	Patak
waterway	wadi	hu	Vádi
waterway	waterfall	hu	Vízesés
waterway	water_point	hu	Vízi fordítópont
waterway	weir	hu	Bukógát
amenity	airport	ia	Aeroporto
amenity	arts_centre	ia	Centro artistic
amenity	atm	ia	Cassa automatic
amenity	auditorium	ia	Auditorio
amenity	bank	ia	Banca
amenity	bar	ia	Bar
amenity	bench	ia	Banco
amenity	bicycle_parking	ia	Stationamento pro bicyclettas
amenity	bicycle_rental	ia	Location de bicyclettas
amenity	brothel	ia	Bordello
amenity	bureau_de_change	ia	Officio de cambio
amenity	bus_station	ia	Station de autobus
amenity	cafe	ia	Café
amenity	car_rental	ia	Location de automobiles
amenity	car_sharing	ia	Repartition de autos
amenity	car_wash	ia	Lavage de automobiles
amenity	casino	ia	Casino
amenity	cinema	ia	Cinema
amenity	clinic	ia	Clinica
amenity	club	ia	Club
amenity	college	ia	Schola superior
amenity	community_centre	ia	Centro communitari
amenity	courthouse	ia	Tribunal
amenity	crematorium	ia	Crematorio
amenity	dentist	ia	Dentista
amenity	doctors	ia	Medicos
amenity	dormitory	ia	Dormitorio
amenity	drinking_water	ia	Aqua potabile
amenity	driving_school	ia	Autoschola
amenity	embassy	ia	Ambassada
amenity	emergency_phone	ia	Telephono de emergentia
amenity	fast_food	ia	Fast food
amenity	ferry_terminal	ia	Terminal de ferry
amenity	fire_hydrant	ia	Hydrante de incendio
amenity	fire_station	ia	Caserna de pumperos
amenity	fountain	ia	Fontana
amenity	fuel	ia	Carburante
amenity	grave_yard	ia	Cemeterio
amenity	gym	ia	Centro de fitness / Gymnasio
amenity	hall	ia	Hall
amenity	health_centre	ia	Centro de sanitate
amenity	hospital	ia	Hospital
amenity	hotel	ia	Hotel
amenity	hunting_stand	ia	Posto de chassa
amenity	ice_cream	ia	Gelato
amenity	kindergarten	ia	Schola pro juvene infantes
amenity	library	ia	Bibliotheca
amenity	market	ia	Mercato
amenity	marketplace	ia	Mercato
amenity	mountain_rescue	ia	Succurso de montania
amenity	nightclub	ia	Club nocturne
amenity	nursery	ia	Sala recreative pro parve infantes
amenity	nursing_home	ia	Casa de convalescentia
amenity	office	ia	Officio
amenity	park	ia	Parco
amenity	parking	ia	Parking
amenity	pharmacy	ia	Pharmacia
amenity	place_of_worship	ia	Loco de adoration
amenity	police	ia	Policia
amenity	post_box	ia	Cassa postal
amenity	post_office	ia	Officio postal
amenity	preschool	ia	Pre-schola
amenity	prison	ia	Prision
amenity	pub	ia	Taverna
amenity	public_building	ia	Edificio public
amenity	public_market	ia	Mercato public
amenity	reception_area	ia	Area de reception
amenity	recycling	ia	Puncto de recyclage
amenity	restaurant	ia	Restaurante
amenity	retirement_home	ia	Residentia pro vetere personas
amenity	sauna	ia	Sauna
amenity	school	ia	Schola
amenity	shelter	ia	Refugio
amenity	shop	ia	Boteca
amenity	shopping	ia	Compras
amenity	social_club	ia	Club social
amenity	studio	ia	Appartamento de un camera
amenity	supermarket	ia	Supermercato
amenity	taxi	ia	Taxi
amenity	telephone	ia	Telephono public
amenity	theatre	ia	Theatro
amenity	toilets	ia	Toilettes
amenity	townhall	ia	Casa municipal
amenity	university	ia	Universitate
amenity	vending_machine	ia	Distributor automatic
amenity	veterinary	ia	Clinica veterinari
amenity	village_hall	ia	Casa communal
amenity	waste_basket	ia	Corbe a papiro
amenity	wifi	ia	Accesso WiFi
amenity	youth_centre	ia	Centro pro le juventute
boundary	administrative	ia	Limite administrative
building	apartments	ia	Bloco de appartamentos
building	block	ia	Bloco de edificios
building	bunker	ia	Bunker
building	chapel	ia	Cappella
building	church	ia	Ecclesia
building	city_hall	ia	Casa municipal
building	commercial	ia	Edificio commercial
building	dormitory	ia	Dormitorio
building	entrance	ia	Entrata de edificio
building	faculty	ia	Edificio de facultate
building	farm	ia	Edificio agricole
building	flats	ia	Appartamentos
building	garage	ia	Garage
building	hall	ia	Sala
building	hospital	ia	Edificio hospitalari
building	hotel	ia	Hotel
building	house	ia	Casa
building	industrial	ia	Edificio industrial
building	office	ia	Edificio de officio
building	public	ia	Edificio public
building	residential	ia	Edificio residential
building	retail	ia	Magazin
building	school	ia	Edificio de schola
building	shop	ia	Boteca
building	stadium	ia	Stadio
building	store	ia	Magazin
building	terrace	ia	Terrassa
building	tower	ia	Turre
building	train_station	ia	Station ferroviari
building	university	ia	Edificio de universitate
highway	bridleway	ia	Sentiero pro cavallos
highway	bus_guideway	ia	Via guidate de autobus
highway	bus_stop	ia	Halto de autobus
highway	byway	ia	Via minor
highway	construction	ia	Strata in construction
highway	cycleway	ia	Pista cyclabile
highway	distance_marker	ia	Marcator de distantia
highway	emergency_access_point	ia	Puncto de accesso de emergentia
highway	footway	ia	Sentiero pro pedones
highway	ford	ia	Vado
highway	gate	ia	Porta a cancello
highway	living_street	ia	Strata residential
highway	minor	ia	Via minor
highway	motorway	ia	Autostrata
highway	motorway_junction	ia	Junction de autostrata
highway	motorway_link	ia	Via de communication a autostrata
highway	path	ia	Sentiero
highway	pedestrian	ia	Via pro pedones
highway	platform	ia	Platteforma
highway	primary	ia	Via principal
highway	primary_link	ia	Via principal
highway	raceway	ia	Circuito
highway	residential	ia	Residential
highway	road	ia	Via
highway	secondary	ia	Via secundari
highway	secondary_link	ia	Via secundari
highway	service	ia	Via de servicio
highway	services	ia	Servicios de autostrata
highway	steps	ia	Scalones
highway	stile	ia	Scalon o apertura de passage
highway	tertiary	ia	Via tertiari
highway	track	ia	Pista
highway	trail	ia	Pista
highway	trunk	ia	Via national
highway	trunk_link	ia	Via national
highway	unclassified	ia	Via non classificate
highway	unsurfaced	ia	Cammino de terra
historic	archaeological_site	ia	Sito archeologic
historic	battlefield	ia	Campo de battalia
historic	boundary_stone	ia	Lapide de frontiera
historic	building	ia	Edificio
historic	castle	ia	Castello
historic	church	ia	Ecclesia
historic	house	ia	Casa
historic	icon	ia	Icone
historic	manor	ia	Casa seniorial
historic	memorial	ia	Memorial
historic	mine	ia	Mina
historic	monument	ia	Monumento
historic	museum	ia	Museo
historic	ruins	ia	Ruinas
historic	tower	ia	Turre
historic	wayside_cross	ia	Cruce juxta le via
historic	wayside_shrine	ia	Reliquario juxta le via
historic	wreck	ia	Naufragio
landuse	allotments	ia	Jardines familial
landuse	basin	ia	Bassino
landuse	brownfield	ia	Terreno industrial subutilisate
landuse	cemetery	ia	Cemeterio
landuse	commercial	ia	Area commercial
landuse	conservation	ia	Conservation
landuse	construction	ia	Construction
landuse	farm	ia	Ferma
landuse	farmland	ia	Terra arabile
landuse	farmyard	ia	Corte de ferma
landuse	forest	ia	Foreste
landuse	grass	ia	Herba
landuse	greenfield	ia	Terreno sin edificios
landuse	industrial	ia	Area industrial
landuse	landfill	ia	Discargatorio
landuse	meadow	ia	Pastura
landuse	military	ia	Area militar
landuse	mine	ia	Mina
landuse	mountain	ia	Montania
landuse	nature_reserve	ia	Reserva natural
landuse	park	ia	Parco
landuse	piste	ia	Pista de ski
landuse	plaza	ia	Placia
landuse	quarry	ia	Petreria
landuse	railway	ia	Ferrovia
landuse	recreation_ground	ia	Area recreative
landuse	reservoir	ia	Reservoir
landuse	residential	ia	Area residential
landuse	retail	ia	Magazines
landuse	village_green	ia	Parco de village
landuse	vineyard	ia	Vinia
landuse	wetland	ia	Terra humide
landuse	wood	ia	Bosco
leisure	beach_resort	ia	Loco de vacantias al plagia
leisure	common	ia	Terreno commun
leisure	fishing	ia	Area de pisca
leisure	garden	ia	Jardin
leisure	golf_course	ia	Campo de golf
leisure	ice_rink	ia	Patinatorio
leisure	marina	ia	Porto de yachts
leisure	miniature_golf	ia	Minigolf
leisure	nature_reserve	ia	Reserva natural
leisure	park	ia	Parco
leisure	pitch	ia	Campo sportive
leisure	playground	ia	Area de jocos
leisure	recreation_ground	ia	Terreno de recreation
leisure	slipway	ia	Rampa de barca
leisure	sports_centre	ia	Centro sportive
leisure	stadium	ia	Stadio
leisure	swimming_pool	ia	Piscina
leisure	track	ia	Pista de athletismo
leisure	water_park	ia	Parco aquatic
natural	bay	ia	Baia
natural	beach	ia	Plagia
natural	cape	ia	Capo
natural	cave_entrance	ia	Entrata de caverna
natural	channel	ia	Canal
natural	cliff	ia	Precipitio
natural	coastline	ia	Linea de costa
natural	crater	ia	Crater
natural	feature	ia	Attraction
natural	fell	ia	Montania
natural	fjord	ia	Fiord
natural	geyser	ia	Geyser
natural	glacier	ia	Glaciero
natural	heath	ia	Landa
natural	hill	ia	Collina
natural	island	ia	Insula
natural	land	ia	Terra
natural	marsh	ia	Palude
natural	moor	ia	Landa
natural	mud	ia	Fango
natural	peak	ia	Picco
natural	point	ia	Puncto
natural	reef	ia	Scolio
natural	ridge	ia	Cresta
natural	river	ia	Fluvio/Riviera
natural	rock	ia	Rocca
natural	scree	ia	Detrito cadite
natural	scrub	ia	Arbusto
natural	shoal	ia	Banco de sablo
natural	spring	ia	Fontana
natural	strait	ia	Stricto
natural	tree	ia	Arbore
natural	valley	ia	Vallea
natural	volcano	ia	Vulcano
natural	water	ia	Aqua
natural	wetland	ia	Terra humide
natural	wetlands	ia	Terreno paludose
natural	wood	ia	Bosco
place	airport	ia	Aeroporto
place	city	ia	Citate
place	country	ia	Pais
place	county	ia	Contato
place	farm	ia	Ferma
place	hamlet	ia	Vico
place	house	ia	Casa
place	houses	ia	Casas
place	island	ia	Insula
place	islet	ia	Insuletta
place	locality	ia	Localitate
place	moor	ia	Landa
place	municipality	ia	Municipalitate
place	postcode	ia	Codice postal
place	region	ia	Region
place	sea	ia	Mar
place	state	ia	Stato
place	subdivision	ia	Subdivision
place	suburb	ia	Suburbio
place	town	ia	Urbe
place	unincorporated_area	ia	Area sin municipalitate
place	village	ia	Village
railway	abandoned	ia	Ferrovia abandonate
railway	construction	ia	Ferrovia in construction
railway	disused	ia	Ferrovia in disuso
railway	disused_station	ia	Station ferroviari in disuso
railway	funicular	ia	Ferrovia funicular
railway	halt	ia	Halto de traino
railway	historic_station	ia	Station ferroviari historic
railway	junction	ia	Junction ferroviari
railway	level_crossing	ia	Passage a nivello
railway	light_rail	ia	Metro legier
railway	monorail	ia	Monorail
railway	narrow_gauge	ia	Ferrovia stricte
railway	platform	ia	Platteforma ferroviari
railway	preserved	ia	Ferrovia preservate
railway	spur	ia	Ramification de ferrovia
railway	station	ia	Station ferroviari
railway	subway	ia	Station de metro
railway	subway_entrance	ia	Entrata al metro
railway	switch	ia	Agulia
railway	tram	ia	Tramvia
railway	tram_stop	ia	Halto de tram
railway	yard	ia	Station de manovras
shop	alcohol	ia	Magazin de bibitas alcoholic
shop	apparel	ia	Boteca de vestimentos
shop	art	ia	Magazin de arte
shop	bakery	ia	Paneteria
shop	beauty	ia	Salon de beltate
shop	beverages	ia	Boteca de bibitas
shop	bicycle	ia	Magazin de bicyclettas
shop	books	ia	Libreria
shop	butcher	ia	Macelleria
shop	car	ia	Magazin de automobiles
shop	car_dealer	ia	Venditor de automobiles
shop	car_parts	ia	Partes de automobiles
shop	carpet	ia	Magazin de tapetes
shop	car_repair	ia	Reparation de automobiles
shop	charity	ia	Magazin de beneficentia
shop	chemist	ia	Pharmacia
shop	clothes	ia	Magazin de vestimentos
shop	computer	ia	Magazin de computatores
shop	confectionery	ia	Confecteria
shop	convenience	ia	Magazin de quartiero
shop	copyshop	ia	Centro de photocopias
shop	cosmetics	ia	Boteca de cosmetica
shop	department_store	ia	Grande magazin
shop	discount	ia	Boteca de disconto
shop	doityourself	ia	Magazin de bricolage
shop	drugstore	ia	Drogeria
shop	dry_cleaning	ia	Lavanderia a sic
shop	electronics	ia	Boteca de electronica
shop	estate_agent	ia	Agentia immobiliari
shop	farm	ia	Magazin agricole
shop	fashion	ia	Boteca de moda
shop	fish	ia	Pischeria
shop	florist	ia	Florista
shop	food	ia	Magazin de alimentation
shop	funeral_directors	ia	Directores de pompas funebre
shop	furniture	ia	Magazin de mobiles
shop	gallery	ia	Galeria
shop	garden_centre	ia	Jardineria
shop	general	ia	Magazin general
shop	gift	ia	Boteca de donos
shop	greengrocer	ia	Verdurero
shop	grocery	ia	Specieria
shop	hairdresser	ia	Perruccheria
shop	hardware	ia	Quincalieria
shop	hifi	ia	Hi-fi
shop	insurance	ia	Assecurantia
shop	jewelry	ia	Joieleria
shop	kiosk	ia	Kiosque
shop	laundry	ia	Lavanderia
shop	mall	ia	Galeria mercante
shop	market	ia	Mercato
shop	mobile_phone	ia	Boteca de telephonos mobile
shop	motorcycle	ia	Magazin de motocyclos
shop	music	ia	Magazin de musica
shop	newsagent	ia	Venditor de jornales
shop	optician	ia	Optico
shop	organic	ia	Boteca de alimentos organic
shop	outdoor	ia	Magazin de sport al aere libere
shop	pet	ia	Boteca de animales
shop	photo	ia	Magazin de photographia
shop	salon	ia	Salon
shop	shoes	ia	Scarperia
shop	shopping_centre	ia	Centro commercial
shop	sports	ia	Magazin de sport
shop	stationery	ia	Papireria
shop	supermarket	ia	Supermercato
shop	toys	ia	Magazin de joculos
shop	travel_agency	ia	Agentia de viages
shop	video	ia	Magazin de video
shop	wine	ia	Magazin de vinos
tourism	alpine_hut	ia	Cabana alpin
tourism	artwork	ia	Obra de arte
tourism	attraction	ia	Attraction
tourism	bed_and_breakfast	ia	Bed and Breakfast
tourism	cabin	ia	Cabana
tourism	camp_site	ia	Terreno de camping
tourism	caravan_site	ia	Terreno pro caravanas
tourism	chalet	ia	Chalet
tourism	guest_house	ia	Albergo
tourism	hostel	ia	Albergo
tourism	hotel	ia	Hotel
tourism	information	ia	Information
tourism	lean_to	ia	Barraca aperte
tourism	motel	ia	Motel
tourism	museum	ia	Museo
tourism	picnic_site	ia	Loco de picnic
tourism	theme_park	ia	Parco de attractiones
tourism	valley	ia	Valle
tourism	viewpoint	ia	Puncto de vista
tourism	zoo	ia	Jardin zoologic
waterway	boatyard	ia	Cantier naval
waterway	canal	ia	Canal
waterway	connector	ia	Connexion aquatic
waterway	dam	ia	Dica
waterway	derelict_canal	ia	Canal abandonate
waterway	ditch	ia	Fossato
waterway	dock	ia	Dock
waterway	drain	ia	Aquiero
waterway	lock	ia	Esclusa
waterway	lock_gate	ia	Porta de esclusa
waterway	mineral_spring	ia	Fonte de aqua mineral
waterway	mooring	ia	Ammarrage
waterway	rapids	ia	Rapidos
waterway	river	ia	Fluvio/Riviera
waterway	riverbank	ia	Ripa de fluvio/riviera
waterway	stream	ia	Rivo
waterway	wadi	ia	Wadi
waterway	waterfall	ia	Cascada
waterway	water_point	ia	Puncto de aqua
waterway	weir	ia	Barrage
amenity	airport	is	Flugvöllurinn
amenity	atm	is	Hraðbankinn
amenity	bank	is	Bankinn
amenity	bar	is	Barinn
amenity	bench	is	Bekkur
amenity	bicycle_rental	is	Reiðhjólaleigan
amenity	brothel	is	Hóruhúsið
amenity	bureau_de_change	is	Gjaldeyrisskipti
amenity	bus_station	is	Strætóstöð
amenity	cafe	is	Kaffihúsið
amenity	car_rental	is	Bílaleigan
amenity	car_wash	is	Bílaþvottastöðin
amenity	cinema	is	Kvikmyndarhúsið
amenity	dentist	is	Tannlæknirinn
amenity	driving_school	is	Ökuskóli
amenity	embassy	is	Sendiráðið
amenity	emergency_phone	is	Neyðarsími
amenity	fast_food	is	Skyndibitastaðurinn
amenity	fire_hydrant	is	Brunahaninn
amenity	fire_station	is	Slökkvistöð
amenity	fountain	is	Gosbrunnur
amenity	fuel	is	Bensínstöð
amenity	hospital	is	Sjúkrahúsið
amenity	hotel	is	Hótelið
amenity	library	is	Bókasafnið
amenity	market	is	Markaður
amenity	nightclub	is	Næturklúbbur
amenity	office	is	Skrifstofa
amenity	parking	is	Bílastæði
amenity	police	is	Lögreglustöð
amenity	post_box	is	Póstkassinn
amenity	post_office	is	Pósthúsið
amenity	prison	is	Fangelsið
amenity	pub	is	Pöbbinn
amenity	restaurant	is	Veitingastaðurinn
amenity	sauna	is	Gufubaðið
amenity	school	is	Skólinn
amenity	shop	is	Verslunin
amenity	taxi	is	Leigubílastöð
amenity	theatre	is	Leikhúsið
amenity	university	is	Háskóli
amenity	vending_machine	is	Sjálfsali
building	chapel	is	Kapellan
building	church	is	Kirkjan
highway	ford	is	Vaðið
highway	living_street	is	Vistgata
highway	motorway	is	Hraðbraut
highway	residential	is	Íbúðargatan
highway	service	is	Þjónustuvegur
historic	castle	is	Kastalinn
landuse	military	is	Hersvæðið
leisure	ice_rink	is	Skautahöll
leisure	playground	is	Leikvöllurinn
leisure	sports_centre	is	Íþróttamiðstöðin
leisure	swimming_pool	is	Sundlaugin
leisure	water_park	is	Vatnsleikjagarðurinn
natural	bay	is	Flóinn
natural	beach	is	Ströndin
natural	cave_entrance	is	Hellisop
natural	coastline	is	Strandlengjan
natural	crater	is	Gígurinn
natural	fell	is	Fellið
natural	fjord	is	Fjörðurinn
natural	geyser	is	Goshverinn
natural	glacier	is	Jökullinn
natural	hill	is	Hæðin
natural	island	is	Eyjan
natural	peak	is	Fjallið eða tindurinn
natural	reef	is	Rifið
natural	river	is	Áin
natural	tree	is	Tréð
natural	valley	is	Dalurinn
natural	volcano	is	Eldfjallið
natural	water	is	Vatnið
natural	wetland	is	Votlendi
place	airport	is	Flugvöllur
place	city	is	Borg
place	country	is	Land
place	county	is	Landið
place	farm	is	Sveitabærinn
place	house	is	Hús
place	houses	is	Hús
place	island	is	Eyja
place	islet	is	Smáeyja
place	postcode	is	Póstnúmer
place	region	is	Svæðið
place	sea	is	Hafið
place	state	is	Ríki
place	suburb	is	Hverfið
place	town	is	Bær
place	village	is	Þorpið
shop	bakery	is	Bakaríið
shop	bicycle	is	Hjólabúðin
shop	books	is	Bókabúðin
shop	butcher	is	Slátrarinn
shop	car	is	Bílabúðin
shop	carpet	is	Teppabúðin
shop	clothes	is	Fatabúðin
shop	computer	is	Tölvubúðin
shop	electronics	is	Raftækjaverslunin
shop	fish	is	Fiskbúðin
shop	florist	is	Blómabúðin
shop	food	is	Matbúðin
shop	furniture	is	Húsgagnaverslunin
shop	gift	is	Gjafabúðin
shop	hardware	is	Verkfærabúðin
shop	hifi	is	Hljómtækjabúðin
shop	kiosk	is	Söluturninn
shop	mobile_phone	is	Farsímaverslunin
shop	outdoor	is	Útivistarbúðin
shop	pet	is	Gæludýrabúðin
shop	shoes	is	Skóbúð
shop	toys	is	Leikfangaverslunin
shop	travel_agency	is	Ferðaskrifstofan
shop	video	is	Videoleigan
tourism	artwork	is	Listaverk
tourism	guest_house	is	Gesthús
tourism	hotel	is	Hótel
tourism	information	is	Upplýsingar
tourism	motel	is	Mótel
tourism	museum	is	Safn
tourism	valley	is	Dalurinn
tourism	zoo	is	Dýragarður
waterway	dam	is	Vatnsaflsvirkjunin
waterway	river	is	Áin
waterway	stream	is	Lækurinn
waterway	waterfall	is	Fossinn
amenity	airport	it	Aeroporto
amenity	arts_centre	it	Centro d'arte
amenity	atm	it	Cassa automatica
amenity	auditorium	it	Auditorium
amenity	bank	it	Banca
amenity	bar	it	Bar
amenity	bench	it	Panchina
amenity	bicycle_parking	it	Parcheggio per biciclette
amenity	bicycle_rental	it	Noleggio biciclette
amenity	brothel	it	Bordello
amenity	bureau_de_change	it	Cambia valute
amenity	bus_station	it	Stazione degli autobus
amenity	cafe	it	Cafe
amenity	car_rental	it	Autonoleggio
amenity	car_sharing	it	Car Sharing
amenity	car_wash	it	Autolavaggio
amenity	casino	it	Casinò
amenity	cinema	it	Cinema
amenity	clinic	it	Clinica
amenity	club	it	Club
amenity	college	it	Scuola superiore
amenity	community_centre	it	Centro civico
amenity	courthouse	it	Tribunale
amenity	crematorium	it	Crematorio
amenity	dentist	it	Dentista
amenity	doctors	it	Medici
amenity	dormitory	it	Dormitorio
amenity	drinking_water	it	Acqua potabile
amenity	driving_school	it	Scuola guida
amenity	embassy	it	Ambasciata
amenity	emergency_phone	it	Colonnina SOS
amenity	fast_food	it	Fast Food
amenity	ferry_terminal	it	Terminal traghetti
amenity	fire_hydrant	it	Pompa antincendio
amenity	fire_station	it	Vigili del fuoco
amenity	fountain	it	Fontana
amenity	fuel	it	Stazione di rifornimento
amenity	grave_yard	it	Cimitero
amenity	gym	it	Centro fitness / Palestra
amenity	hall	it	Sala
amenity	health_centre	it	Casa di cura
amenity	hospital	it	Ospedale
amenity	hotel	it	Hotel
amenity	hunting_stand	it	Postazione di caccia
amenity	ice_cream	it	Gelateria
amenity	kindergarten	it	Asilo infantile
amenity	library	it	Biblioteca
amenity	market	it	Mercato
amenity	marketplace	it	Mercato
amenity	mountain_rescue	it	Soccorso alpino
amenity	nightclub	it	Locale notturno
amenity	nursery	it	Asilo nido
amenity	nursing_home	it	Asilo nido
amenity	office	it	Ufficio
amenity	park	it	Parco
amenity	parking	it	Parcheggio
amenity	pharmacy	it	Farmacia
amenity	place_of_worship	it	Luogo di culto
amenity	police	it	Polizia
amenity	post_box	it	Cassetta delle lettere
amenity	post_office	it	Ufficio postale
amenity	preschool	it	Scuola Materna
amenity	prison	it	Prigione
amenity	pub	it	Pub
amenity	public_building	it	Edificio pubblico
amenity	public_market	it	Mercato pubblico
amenity	reception_area	it	Area accoglienza
amenity	recycling	it	Punto riciclaggio rifiuti
amenity	restaurant	it	Ristorante
amenity	retirement_home	it	Casa di Riposo
amenity	sauna	it	Sauna
amenity	school	it	Scuola
amenity	shelter	it	Pensilina/ricovero
amenity	shop	it	Negozio
amenity	shopping	it	Acquisti
amenity	social_club	it	Centro Sociale
amenity	studio	it	Studio
amenity	supermarket	it	Supermercato
amenity	taxi	it	Taxi
amenity	telephone	it	Telefono pubblico
amenity	theatre	it	Teatro
amenity	toilets	it	Bagni pubblici
amenity	townhall	it	Municipio
amenity	university	it	Università
amenity	vending_machine	it	Distributore automatico
amenity	veterinary	it	Veterinario
amenity	village_hall	it	Municipio
amenity	waste_basket	it	Cestino rifiuti
amenity	wifi	it	Punto di accesso WiFi
amenity	youth_centre	it	Centro Giovanile
boundary	administrative	it	Confine amministrativo
building	apartments	it	Edificio residenziale
building	block	it	Complesso di edifici
building	bunker	it	Bunker
building	chapel	it	Cappella
building	church	it	Chiesa
building	city_hall	it	Municipio
building	commercial	it	Uffici
building	dormitory	it	Dormitorio
building	entrance	it	Entrata dell'edificio
building	farm	it	Edificio rurale
building	flats	it	Appartamenti
building	garage	it	Autorimessa
building	hall	it	Sala
building	hospital	it	Ospedale
building	hotel	it	Albergo
building	house	it	Casa
building	industrial	it	Edificio industriale
building	office	it	Uffici
building	public	it	Edificio pubblico
building	residential	it	Edificio residenziale
building	retail	it	Edificio commerciale
building	school	it	Edificio scolastico
building	shop	it	Negozio
building	stadium	it	Stadio
building	store	it	Negozio
building	terrace	it	Terrazza
building	tower	it	Torre
building	train_station	it	Stazione ferroviaria
building	university	it	Sede universitaria
highway	bridleway	it	Percorso per equitazione
highway	bus_guideway	it	Autobus guidato
highway	bus_stop	it	Fermata autobus
highway	byway	it	Byway (UK)
highway	construction	it	Strada in costruzione
highway	cycleway	it	Percorso ciclabile
highway	distance_marker	it	Distanziometro
highway	emergency_access_point	it	Colonnina SOS
highway	footway	it	Percorso pedonale
highway	ford	it	Guado
highway	gate	it	Cancello
highway	living_street	it	Strada pedonale
highway	minor	it	Strada secondaria
highway	motorway	it	Autostrada/tangenziale
highway	motorway_junction	it	Svincolo
highway	motorway_link	it	Autostrada
highway	path	it	Sentiero
highway	pedestrian	it	Percorso pedonale
highway	platform	it	Piattaforma
highway	primary	it	Strada di importanza nazionale
highway	primary_link	it	Strada principale
highway	raceway	it	Pista
highway	residential	it	Strada residenziale
highway	road	it	Strada generica
highway	secondary	it	Strada di importanza regionale
highway	secondary_link	it	Strada secondaria
highway	service	it	Strada di servizio
highway	services	it	Stazione di servizio
highway	steps	it	Scala
highway	stile	it	Scaletta
highway	tertiary	it	Strada di importanza locale
highway	track	it	Strada forestale o agricola
highway	trail	it	Percorso escursionistico
highway	trunk	it	Superstrada
highway	trunk_link	it	Superstrada
highway	unclassified	it	Strada minore
highway	unsurfaced	it	Strada non pavimentata
historic	archaeological_site	it	Sito archeologico
historic	battlefield	it	Campo di battaglia
historic	boundary_stone	it	Pietra confinaria
historic	building	it	Edificio
historic	castle	it	Castello
historic	church	it	Chiesa
historic	house	it	Casa storica
historic	icon	it	Icona
historic	manor	it	Maniero
historic	memorial	it	Memoriale
historic	mine	it	Mina
historic	monument	it	Monumento
historic	museum	it	Museo
historic	ruins	it	Rovine
historic	tower	it	Torre
historic	wayside_cross	it	Croce
historic	wayside_shrine	it	Edicola votiva
historic	wreck	it	Relitto
landuse	allotments	it	Orti casalinghi
landuse	basin	it	Bacino
landuse	brownfield	it	Area con edifici in demolizione
landuse	cemetery	it	Cimitero
landuse	commercial	it	Zona di uffici
landuse	conservation	it	Conservazione
landuse	construction	it	Costruzione
landuse	farm	it	Fattoria
landuse	farmland	it	Terreno agricolo
landuse	farmyard	it	Aia
landuse	forest	it	Foresta
landuse	grass	it	Prato
landuse	greenfield	it	Area da adibire a costruzioni
landuse	industrial	it	Zona Industriale
landuse	landfill	it	Discarica di rifiuti
landuse	meadow	it	Prato
landuse	military	it	Zona militare
landuse	mine	it	Miniera
landuse	mountain	it	Montagna
landuse	nature_reserve	it	Riserva naturale
landuse	park	it	Parco
landuse	piste	it	Piste
landuse	quarry	it	Cava
landuse	railway	it	Ferrovia
landuse	recreation_ground	it	Area di svago
landuse	reservoir	it	Riserva idrica
landuse	residential	it	Area Residenziale
landuse	retail	it	Negozi
landuse	vineyard	it	Vigneto
landuse	wetland	it	Zona umida
landuse	wood	it	Bosco
leisure	beach_resort	it	Stabilimento balneare
leisure	common	it	Area comune (UK)
leisure	fishing	it	Riserva di pesca
leisure	garden	it	Giardino
leisure	golf_course	it	Campo da golf
leisure	ice_rink	it	Pista di ghiaccio
leisure	marina	it	Porto turistico
leisure	miniature_golf	it	Minigolf
leisure	nature_reserve	it	Riserva naturale
leisure	park	it	Parco
leisure	pitch	it	Campo sportivo
leisure	playground	it	Parco giochi
leisure	recreation_ground	it	Area di svago
leisure	slipway	it	Rampa per la messa in acqua di imbarcazioni
leisure	sports_centre	it	Centro sportivo
leisure	stadium	it	Stadio
leisure	swimming_pool	it	Piscina
leisure	track	it	Pista da corsa
leisure	water_park	it	Parco acquatico
natural	bay	it	Baia
natural	beach	it	Spiaggia
natural	cape	it	Capo
natural	cave_entrance	it	Entrata di grotta/caverna
natural	channel	it	Canale
natural	cliff	it	Rupe
natural	coastline	it	Linea di costa
natural	crater	it	Cratere
natural	feature	it	Caratteristica
natural	fell	it	Prato alpino
natural	fjord	it	Fiordo
natural	geyser	it	Geyser
natural	glacier	it	Ghiacciaio
natural	heath	it	Brughiera
natural	hill	it	Collina
natural	island	it	Isola
natural	land	it	Terra
natural	marsh	it	Palude alluvionale
natural	moor	it	Molo
natural	mud	it	Zona fangosa (sabbie mobili)
natural	peak	it	Picco montuoso
natural	point	it	Punto
natural	reef	it	Scogliera
natural	ridge	it	Cresta montuosa
natural	river	it	Fiume
natural	rock	it	Roccia
natural	scree	it	Ghiaione
natural	scrub	it	Boscaglia
natural	shoal	it	Secca
natural	spring	it	Sorgente
natural	strait	it	Stretto
natural	tree	it	Albero
natural	valley	it	Valle
natural	volcano	it	Vulcano
natural	water	it	Acqua
natural	wetland	it	Zona umida
natural	wetlands	it	Zona umida
natural	wood	it	Bosco
place	airport	it	Aeroporto
place	city	it	Città
place	country	it	Nazione
place	county	it	Contea (in Italia NON usare)
place	farm	it	Area agricola
place	hamlet	it	Gruppo di case
place	house	it	Casa
place	houses	it	Gruppo di case
place	island	it	Isola
place	islet	it	Isoletta
place	locality	it	Località (luogo con nome, non popolato)
place	moor	it	Molo
place	municipality	it	Comune
place	postcode	it	CAP
place	region	it	Provincia
place	sea	it	Mare
place	state	it	Regione
place	subdivision	it	Suddivisione
place	suburb	it	Quartiere
place	town	it	Paese
place	unincorporated_area	it	Area non inclusa
place	village	it	Piccolo paese
railway	abandoned	it	Linea ferroviaria abbandonata
railway	construction	it	Ferrovia in costruzione
railway	disused	it	Linea ferroviaria dismessa
railway	disused_station	it	Stazione ferroviaria dismessa
railway	funicular	it	Funicolare
railway	halt	it	Fermata del treno
railway	historic_station	it	Storica stazione ferroviaria
railway	junction	it	Collegamento ferroviario
railway	level_crossing	it	Passaggio a livello
railway	light_rail	it	Ferrovia leggera
railway	monorail	it	Monorotaia
railway	narrow_gauge	it	Ferrovia a scartamento ridotto
railway	platform	it	Banchina ferroviaria
railway	preserved	it	Ferrovia storica
railway	spur	it	Ferrovia per società o ente
railway	station	it	Stazione ferroviaria
railway	subway	it	Stazione della metropolitana
railway	subway_entrance	it	Ingresso alla metropolitana
railway	switch	it	Punti ferroviari
railway	tram	it	Tramvia
railway	tram_stop	it	Fermata del tram
railway	yard	it	Zona di manovra ferroviaria
shop	alcohol	it	Alcolici
shop	apparel	it	Negozio di abbigliamento
shop	art	it	Negozio d'arte
shop	bakery	it	Panetteria
shop	beauty	it	Prodotti cosmetici
shop	beverages	it	Negozio bevande
shop	bicycle	it	Negozio biciclette
shop	books	it	Libreria
shop	butcher	it	Macellaio
shop	car	it	Concessionaria
shop	car_dealer	it	Concessionaria auto
shop	car_parts	it	Autoricambi
shop	carpet	it	Tappeti
shop	car_repair	it	Autofficina
shop	charity	it	Negozio solidale
shop	chemist	it	Farmacia
shop	clothes	it	Negozio di abbigliamento
shop	computer	it	Negozio di computer
shop	confectionery	it	Pasticceria
shop	convenience	it	Minimarket
shop	copyshop	it	Copisteria
shop	cosmetics	it	Negozio cosmetici
shop	department_store	it	Grande magazzino
shop	discount	it	Discount
shop	doityourself	it	Fai da-te
shop	drugstore	it	Emporio
shop	dry_cleaning	it	Lavasecco
shop	electronics	it	Elettronica
shop	estate_agent	it	Agenzia immobiliare
shop	farm	it	Parafarmacia
shop	fashion	it	Negozio moda
shop	fish	it	Pescheria
shop	florist	it	Fioraio
shop	food	it	Alimentari
shop	funeral_directors	it	Agenzia funebre
shop	furniture	it	Arredamenti
shop	gallery	it	Galleria d'arte
shop	garden_centre	it	Centro giardinaggio
shop	general	it	Emporio
shop	gift	it	Articoli da regalo
shop	greengrocer	it	Fruttivendolo
shop	grocery	it	Fruttivendolo
shop	hairdresser	it	Parrucchiere
shop	hardware	it	Ferramenta
shop	hifi	it	Hi-Fi
shop	insurance	it	Assicurazioni
shop	jewelry	it	Gioielleria
shop	kiosk	it	Edicola
shop	laundry	it	Lavanderia
shop	mall	it	Centro commerciale
shop	market	it	Mercato
shop	mobile_phone	it	Centro telefonia mobile
shop	motorcycle	it	Concessionario di motociclette
shop	music	it	Articoli musicali
shop	newsagent	it	Giornalaio
shop	optician	it	Ottico
shop	organic	it	Negozio di prodotti naturali ed ecologici
shop	outdoor	it	Negozio di articoli per sport all'aperto
shop	pet	it	Negozio animali
shop	photo	it	Articoli fotografici
shop	salon	it	Salone
shop	shoes	it	Negozio di calzature
shop	shopping_centre	it	Centro commerciale
shop	sports	it	Articoli sportivi
shop	stationery	it	Cartoleria
shop	supermarket	it	Supermercato
shop	toys	it	Negozio di giocattoli
shop	travel_agency	it	Agenzia di viaggi
shop	video	it	Videoteca
shop	wine	it	Alcolici
tourism	alpine_hut	it	Rifugio alpino
tourism	artwork	it	Opera d'arte
tourism	attraction	it	Attrazione turistica
tourism	bed_and_breakfast	it	Bed and Breakfast
tourism	cabin	it	Cabina
tourism	camp_site	it	Campeggio
tourism	caravan_site	it	Area caravan e camper
tourism	chalet	it	Casetta (chalet)
tourism	guest_house	it	Guest House
tourism	hostel	it	Ostello
tourism	hotel	it	Hotel
tourism	information	it	Informazioni
tourism	motel	it	Motel
tourism	museum	it	Museo
tourism	picnic_site	it	Area picnic
tourism	theme_park	it	Parco divertimenti
tourism	valley	it	Valle
tourism	viewpoint	it	Punto panoramico
tourism	zoo	it	Zoo
waterway	boatyard	it	Cantiere nautico
waterway	canal	it	Canale
waterway	connector	it	Canale connettore
waterway	dam	it	Diga
waterway	derelict_canal	it	Canale in disuso
waterway	ditch	it	Fosso
waterway	dock	it	Bacino chiuso
waterway	drain	it	Fognatura/Canale di scolo
waterway	lock	it	Chiusa
waterway	lock_gate	it	Chiusa
waterway	mineral_spring	it	Sorgente di acqua minerale
waterway	mooring	it	Ormeggio
waterway	rapids	it	Rapide
waterway	river	it	Fiume
waterway	riverbank	it	Argine/Banchina
waterway	stream	it	Ruscello
waterway	wadi	it	Uadì
waterway	waterfall	it	Cascata
waterway	water_point	it	Punto di ristoro
waterway	weir	it	Sbarramento idrico
amenity	airport	ja	空港
amenity	arts_centre	ja	アートセンター
amenity	atm	ja	ATM
amenity	auditorium	ja	講堂
amenity	bank	ja	銀行
amenity	bar	ja	バー (立ち飲み屋)
amenity	bench	ja	ベンチ
amenity	bicycle_parking	ja	駐輪場
amenity	bicycle_rental	ja	レンタサイクル
amenity	brothel	ja	売春宿
amenity	bus_station	ja	バス停
amenity	cafe	ja	喫茶店
amenity	car_rental	ja	レンタカー
amenity	car_wash	ja	洗車
amenity	casino	ja	賭場
amenity	cinema	ja	映画館
amenity	clinic	ja	診療所
amenity	club	ja	クラブ
amenity	college	ja	大学
amenity	community_centre	ja	コミュニティセンター
amenity	courthouse	ja	裁判所
amenity	crematorium	ja	火葬場
amenity	dentist	ja	歯科医
amenity	doctors	ja	医師
amenity	dormitory	ja	寮
amenity	drinking_water	ja	飲み水
amenity	driving_school	ja	自動車学校
amenity	embassy	ja	大使館
amenity	emergency_phone	ja	緊急電話
amenity	fast_food	ja	ファストフード
amenity	ferry_terminal	ja	フェリー乗り場
amenity	fire_hydrant	ja	消火栓
amenity	fire_station	ja	消防署
amenity	fountain	ja	噴水
amenity	fuel	ja	燃料
amenity	grave_yard	ja	墓地
amenity	gym	ja	フィットネスセンター
amenity	hall	ja	ホール
amenity	health_centre	ja	保健所
amenity	hospital	ja	病院
amenity	hotel	ja	ホテル
amenity	ice_cream	ja	アイスクリーム販売店
amenity	kindergarten	ja	幼稚園
amenity	library	ja	図書館
amenity	market	ja	市場
amenity	marketplace	ja	市場
amenity	mountain_rescue	ja	山岳救助
amenity	nightclub	ja	ナイトクラブ
amenity	nursery	ja	保育所
amenity	nursing_home	ja	特別養護老人ホーム
amenity	office	ja	オフィス
amenity	park	ja	公園
amenity	parking	ja	駐車場
amenity	pharmacy	ja	薬局
amenity	place_of_worship	ja	神社仏閣
amenity	police	ja	警察所
amenity	post_box	ja	郵便ポスト
amenity	post_office	ja	郵便局
amenity	preschool	ja	幼稚園
amenity	prison	ja	刑務所
amenity	pub	ja	パブ（立ち吞み屋）
amenity	public_building	ja	公共建築物
amenity	public_market	ja	公設市場
amenity	reception_area	ja	レセプションエリア
amenity	restaurant	ja	レストラン
amenity	retirement_home	ja	老人ホーム
amenity	sauna	ja	サウナ
amenity	school	ja	学校
amenity	shelter	ja	避難所
amenity	shop	ja	店舗
amenity	shopping	ja	ショッピング
amenity	social_club	ja	社交クラブ
amenity	studio	ja	スタジオ
amenity	supermarket	ja	スーパーマーケット
amenity	taxi	ja	タクシー乗り場
amenity	telephone	ja	公衆電話
amenity	theatre	ja	劇場
amenity	toilets	ja	トイレ
amenity	townhall	ja	市庁舎
amenity	university	ja	大学
amenity	vending_machine	ja	自動販売機
amenity	veterinary	ja	獣医外科
amenity	wifi	ja	WiFiアクセスポイント
amenity	youth_centre	ja	青少年センター
boundary	administrative	ja	行政境界
building	apartments	ja	団地
building	block	ja	構築物
building	bunker	ja	貯蔵庫
building	chapel	ja	礼拝堂
building	church	ja	教会
building	city_hall	ja	市役所
building	commercial	ja	商業ビル
building	dormitory	ja	寮
building	entrance	ja	ビル入口
building	farm	ja	農舎
building	flats	ja	アパート
building	garage	ja	車庫
building	hall	ja	ホール
building	hospital	ja	病院
building	hotel	ja	ホテル
building	house	ja	住宅
building	industrial	ja	工業ビル
building	office	ja	オフィスビル
building	public	ja	公共建築物
building	residential	ja	住宅
building	retail	ja	店舗ビル
building	school	ja	校舎
building	shop	ja	店舗
building	stadium	ja	球技場
building	store	ja	店舗
building	terrace	ja	テラス
building	tower	ja	塔
building	train_station	ja	鉄道駅
highway	bridleway	ja	乗馬道
highway	bus_stop	ja	バス停
highway	byway	ja	路地
highway	construction	ja	建設中の高速道路
highway	cycleway	ja	自転車道
highway	footway	ja	歩道
highway	ford	ja	砦
highway	gate	ja	門
highway	living_street	ja	住宅街
highway	minor	ja	補助道路
highway	motorway	ja	高速道路
highway	motorway_junction	ja	高速道路ジャンクション
highway	path	ja	パス
highway	platform	ja	プラットフォーム
highway	primary	ja	幹線道路
highway	primary_link	ja	幹線道路
highway	road	ja	道路
highway	secondary	ja	一般道路
highway	secondary_link	ja	一般道路
highway	service	ja	取付道路
highway	steps	ja	階段
highway	tertiary	ja	周辺道路
highway	trunk	ja	国道
highway	trunk_link	ja	幹線道路
highway	unclassified	ja	未分類の道路
highway	unsurfaced	ja	未舗装道路
historic	battlefield	ja	戦場
historic	boundary_stone	ja	境界石
historic	building	ja	ビル
historic	castle	ja	城
historic	church	ja	教会
historic	house	ja	住宅
historic	icon	ja	アイコン
historic	manor	ja	荘園
historic	memorial	ja	記念碑
historic	mine	ja	鉱山
historic	monument	ja	記念碑
historic	museum	ja	博物館
historic	ruins	ja	廃墟
historic	tower	ja	塔
historic	wreck	ja	沈没船
landuse	allotments	ja	家庭菜園
landuse	cemetery	ja	墓地
landuse	commercial	ja	商業地域
landuse	construction	ja	工事中
landuse	farm	ja	農場
landuse	farmland	ja	農地
landuse	forest	ja	森林
landuse	grass	ja	草地
landuse	industrial	ja	工業地帯
landuse	landfill	ja	埋め立て地
landuse	meadow	ja	牧草地
landuse	military	ja	軍用地域
landuse	mine	ja	鉱山
landuse	mountain	ja	山
landuse	park	ja	公園
landuse	plaza	ja	広場
landuse	quarry	ja	採石場
landuse	railway	ja	鉄道
landuse	reservoir	ja	貯水池
landuse	residential	ja	住宅街
landuse	retail	ja	小売店
landuse	vineyard	ja	Vineyard
landuse	wetland	ja	湿地帯
landuse	wood	ja	森林
leisure	beach_resort	ja	ビーチリゾート
leisure	common	ja	共有地
leisure	fishing	ja	釣り場
leisure	garden	ja	庭園
leisure	golf_course	ja	ゴルフ場
leisure	ice_rink	ja	スケート場
leisure	marina	ja	マリーナ
leisure	miniature_golf	ja	ミニチュアゴルフ
leisure	nature_reserve	ja	自然保護区
leisure	park	ja	公園
leisure	pitch	ja	運動場
leisure	playground	ja	遊び場
leisure	recreation_ground	ja	遊園地
leisure	slipway	ja	造船台
leisure	sports_centre	ja	スポーツセンター
leisure	stadium	ja	スタジアム
leisure	swimming_pool	ja	水泳用プール
leisure	track	ja	陸上競技用トラック
leisure	water_park	ja	親水公園
natural	bay	ja	入り江
natural	beach	ja	砂浜
natural	cape	ja	岬
natural	cave_entrance	ja	洞窟入口
natural	channel	ja	水路
natural	cliff	ja	崖
natural	coastline	ja	海岸線
natural	crater	ja	クレーター
natural	feature	ja	地物
natural	fell	ja	荒野
natural	fjord	ja	フィヨルド
natural	geyser	ja	間欠泉
natural	glacier	ja	氷河
natural	heath	ja	荒れ地
natural	hill	ja	丘陵
natural	island	ja	島
natural	land	ja	陸地
natural	marsh	ja	沼地
natural	moor	ja	沼地
natural	mud	ja	泥
natural	peak	ja	山頂
natural	point	ja	点
natural	reef	ja	砂州
natural	ridge	ja	海嶺
natural	river	ja	河川
natural	rock	ja	岩場
natural	scree	ja	がれ場
natural	scrub	ja	低木林
natural	shoal	ja	浅瀬
natural	spring	ja	泉
natural	strait	ja	海峡
natural	tree	ja	木
natural	valley	ja	谷
natural	volcano	ja	噴火口
natural	water	ja	湖水
natural	wetland	ja	湿地帯
natural	wetlands	ja	湿原
natural	wood	ja	森林
place	airport	ja	空港
place	city	ja	市
place	country	ja	国
place	county	ja	郡
place	farm	ja	牧場
place	hamlet	ja	村
place	house	ja	住宅
place	houses	ja	住宅地
place	island	ja	島
place	islet	ja	小島
place	locality	ja	地域
place	moor	ja	沼地
place	municipality	ja	市町村
place	postcode	ja	Postcode
place	region	ja	地域
place	sea	ja	海
place	state	ja	都道府県・州
place	subdivision	ja	区分
place	suburb	ja	郊外
place	town	ja	町
place	village	ja	村
railway	construction	ja	建設中の鉄道
railway	disused	ja	廃線跡
railway	funicular	ja	ケーブル鉄道
railway	halt	ja	列車停止
railway	junction	ja	鉄道連絡駅
railway	level_crossing	ja	踏切
railway	light_rail	ja	ライトレール
railway	monorail	ja	モノレール
railway	narrow_gauge	ja	狭軌鉄道
railway	platform	ja	鉄道プラットフォーム
railway	station	ja	鉄道駅
railway	subway	ja	地下鉄駅
railway	subway_entrance	ja	地下鉄駅入口
railway	tram	ja	路面軌道
railway	tram_stop	ja	トラム停留所
shop	art	ja	アートショップ
shop	bakery	ja	パン屋
shop	beauty	ja	美容室
shop	beverages	ja	飲料ショップ
shop	bicycle	ja	自転車販売店
shop	books	ja	書店
shop	butcher	ja	肉屋
shop	car	ja	自動車販売店
shop	car_dealer	ja	カーディーラー
shop	car_parts	ja	自動車部品販売店
shop	carpet	ja	カーペットショップ
shop	clothes	ja	洋服店
shop	cosmetics	ja	化粧品販売店
shop	department_store	ja	デパート
shop	discount	ja	安売り店
shop	drugstore	ja	ドラッグストア
shop	dry_cleaning	ja	クリーニング
shop	electronics	ja	電気製品販売店
shop	fish	ja	鮮魚販売店
shop	florist	ja	花屋
shop	food	ja	食品販売店
shop	furniture	ja	家具店
shop	gallery	ja	ギャラリー
shop	general	ja	雑貨屋
shop	gift	ja	ギフトショップ
shop	greengrocer	ja	八百屋
shop	grocery	ja	食料品店
shop	insurance	ja	保険
shop	jewelry	ja	宝石店
shop	kiosk	ja	キオスク
shop	laundry	ja	クリーニング店
shop	mall	ja	モール
shop	market	ja	市場
shop	mobile_phone	ja	携帯電話販売店
shop	motorcycle	ja	バイクショップ
shop	music	ja	ミュージックショップ
shop	newsagent	ja	新聞販売店
shop	optician	ja	メガネ店
shop	organic	ja	有機食材店
shop	outdoor	ja	アウトドアショップ
shop	pet	ja	ペットショップ
shop	salon	ja	美容店
shop	shoes	ja	靴屋
shop	shopping_centre	ja	ショッピングセンター
shop	sports	ja	スポーツ用品専門店
shop	stationery	ja	文房具店
shop	supermarket	ja	スーパーマーケット
shop	toys	ja	玩具店
shop	travel_agency	ja	旅行代理店
shop	video	ja	ビデオショップ
tourism	artwork	ja	芸術作品
tourism	attraction	ja	アトラクション
tourism	camp_site	ja	キャンプ場
tourism	chalet	ja	別荘
tourism	guest_house	ja	民宿
tourism	hostel	ja	ホステル
tourism	hotel	ja	ホテル
tourism	information	ja	案内所
tourism	motel	ja	モーテル
tourism	museum	ja	博物館
tourism	theme_park	ja	テーマパーク
tourism	valley	ja	谷
tourism	zoo	ja	動物園
waterway	boatyard	ja	ボートヤード
waterway	canal	ja	運河
waterway	dam	ja	ダム
waterway	derelict_canal	ja	遺棄運河
waterway	dock	ja	埠頭
waterway	drain	ja	排水溝
waterway	lock	ja	岩場
waterway	lock_gate	ja	水門
waterway	mineral_spring	ja	鉱泉
waterway	mooring	ja	係留所
waterway	rapids	ja	急流
waterway	river	ja	河川
waterway	riverbank	ja	川岸
waterway	stream	ja	小川
waterway	wadi	ja	涸れ川
waterway	waterfall	ja	滝
waterway	water_point	ja	給水所
waterway	weir	ja	ダム
amenity	airport	ka	აეროპორტი
amenity	arts_centre	ka	ხელოვნების ცენტრი
amenity	atm	ka	ბანკომატი
amenity	auditorium	ka	აუდიტორია
amenity	bank	ka	ბანკი
amenity	bar	ka	ბარი
amenity	bench	ka	დასაჯდომი
amenity	bicycle_parking	ka	ველოსიპედების სადგომი
amenity	bicycle_rental	ka	ველოსიპედების გაქირავება
amenity	brothel	ka	საროსკიპო
amenity	bureau_de_change	ka	ვალუტის გადაცვლა
amenity	bus_station	ka	ავტობუსის გაჩერება
amenity	cafe	ka	კაფე
amenity	car_rental	ka	მანქანის გაქირავება
amenity	car_wash	ka	ავტოსამრეცხაო
amenity	casino	ka	სამორინე
amenity	cinema	ka	კინოთეატრი
amenity	clinic	ka	პოლიკლინიკა
amenity	club	ka	კლუბი
amenity	college	ka	კოლეჯი
amenity	community_centre	ka	საზოგადოებრივი ცენტრი
amenity	courthouse	ka	სასამართლო
amenity	crematorium	ka	კრემატორიუმი
amenity	dentist	ka	დანტისტი
amenity	doctors	ka	ექიმი
amenity	dormitory	ka	საერთო საცხოვრებელი
amenity	drinking_water	ka	სასმელი წყალი
amenity	driving_school	ka	ავტოსკოლა
amenity	embassy	ka	საელჩო
amenity	emergency_phone	ka	საგანგებო სიტუაციების სამსახურის ტელეფონი
amenity	fast_food	ka	სწრაფი კვება
amenity	ferry_terminal	ka	ბორანის სადგური
amenity	fire_hydrant	ka	სახანძრო ჰიდრანტი
amenity	fire_station	ka	სახანძრო განყოფილება
amenity	fountain	ka	შადრევანი
amenity	fuel	ka	საწვავი
amenity	grave_yard	ka	საფლავი
amenity	gym	ka	ფიტნეს ცენტრი / სავარჯიშო დარბაზი
amenity	hall	ka	დარბაზი
amenity	health_centre	ka	ჯანმრთელობის ცენტრი
amenity	hospital	ka	საავადმყოფო
amenity	hotel	ka	სასტუმრო
amenity	hunting_stand	ka	სანადირო კოშკურა
amenity	ice_cream	ka	ნაყინი
amenity	kindergarten	ka	საბავშვო ბაღი
amenity	library	ka	ბიბლიოთეკა
amenity	market	ka	მაღაზია
amenity	marketplace	ka	ბაზარი
amenity	mountain_rescue	ka	სამთო–სამაშველო სამსახური
amenity	nightclub	ka	ღამის კლუბი
amenity	nursery	ka	პანსიონატი
amenity	nursing_home	ka	მოხუცებულთა თავშესაფარი
amenity	office	ka	ოფისი
amenity	park	ka	პარკი
amenity	parking	ka	ავტოსადგომი
amenity	pharmacy	ka	აფთიაქი
amenity	place_of_worship	ka	რელიგიური ადგილი
amenity	police	ka	პოლიცია
amenity	post_box	ka	საფოსტო ყუთი
amenity	post_office	ka	ფოსტა
amenity	preschool	ka	სკოლამდელი დაწესებულება
amenity	prison	ka	ციხე
amenity	pub	ka	პაბი
amenity	public_building	ka	საჯარო შენობა
amenity	public_market	ka	ბაზრობა
amenity	reception_area	ka	მიმღები
amenity	recycling	ka	ნაგავსაყრელი
amenity	restaurant	ka	რესტორანი
amenity	retirement_home	ka	მოხუცებულთა თავშესაფარი
amenity	sauna	ka	საუნა
amenity	school	ka	სკოლა
amenity	shelter	ka	თავშესაფარი
amenity	shop	ka	მაღაზია
amenity	shopping	ka	სავაჭრო ცენტრი
amenity	social_club	ka	საზოგადოებრივი თავშეყრის ადგილი
amenity	studio	ka	სტუდია
amenity	supermarket	ka	სუპერმარკეტი
amenity	taxi	ka	ტაქსი
amenity	telephone	ka	საზოგადოებრივი ტელეფონი
amenity	theatre	ka	თეატრი
amenity	toilets	ka	ტუალეტი
amenity	townhall	ka	ქალაქის ადმინისტრაცია
amenity	university	ka	უნივერსიტეტი
amenity	vending_machine	ka	სავაჭრო ავტომატი
amenity	veterinary	ka	ვეტერინარული კლინიკა
amenity	waste_basket	ka	ნაგვის ურნა
amenity	wifi	ka	WiFi წერტილი
amenity	youth_centre	ka	ახალგაზრდული ცენტრი
boundary	administrative	ka	ადმინისტრაციული საზღვარი
building	apartments	ka	მრავალბინიანი კორპუსი
building	bunker	ka	ბუნკერი
building	chapel	ka	სამლოცველო
building	church	ka	ეკლესია
building	city_hall	ka	ქალაქის მერია
building	commercial	ka	კომერციული შენობა
building	dormitory	ka	საერთო საცხოვრებელი
building	entrance	ka	შენობის შესასვლელი
building	farm	ka	ფერმა
building	flats	ka	ბინები
building	garage	ka	ავტოფარეხი
building	hall	ka	დარბაზი
building	hospital	ka	საავადმყოფოს შენობა
building	hotel	ka	სასტუმრო
building	house	ka	სახლი
building	industrial	ka	სამრეწველო ნაგებობა
building	office	ka	საოფისე ნაგებობა
building	public	ka	საზოგადოებრივი შენობა
building	residential	ka	საცხოვრებელი სახლი
building	retail	ka	გასაყიდი ნაგებობა
building	school	ka	სკოლა
building	shop	ka	მაღაზია
building	stadium	ka	სტადიონი
building	store	ka	მაღაზია
building	tower	ka	კოშკი
building	train_station	ka	რკინიგზის სადგური
building	university	ka	უნივერსიტეტი
highway	bridleway	ka	საცხენოსნო გზა
highway	bus_stop	ka	ავტობუსის გაჩერება
highway	construction	ka	გზის სარემონტო სამუშაოები
highway	cycleway	ka	ველოსიპედის გზა
highway	emergency_access_point	ka	სასწრაფო დახმარების პუნქტი
highway	footway	ka	ტროტუარი
highway	gate	ka	გასასვლელი
highway	living_street	ka	საცხოვრებელი ქუჩა
highway	minor	ka	მეორადი გზა
highway	motorway	ka	ავტომაგისტრალი
highway	motorway_junction	ka	გზაჯვარედინი
highway	path	ka	ბილიკი
highway	pedestrian	ka	საფეხმავლო გზა
highway	platform	ka	ბაქანი
highway	primary	ka	მთავარი გზა
highway	primary_link	ka	მთავარი გზა
highway	road	ka	გზა
highway	secondary	ka	მეორადი გზა
highway	secondary_link	ka	მეორადი გზა
highway	trail	ka	ბილიკი
historic	battlefield	ka	ბრძოლის ველი
historic	boundary_stone	ka	სასაზღვრო ქვა
historic	building	ka	შენობა
historic	castle	ka	ციხე-სიმაგრე
historic	church	ka	ეკლესია
historic	house	ka	სახლი
historic	memorial	ka	მემორიალი
historic	monument	ka	მონუმენტი
historic	museum	ka	მუზეუმი
historic	ruins	ka	ნანგრევები
historic	tower	ka	კოშკი
landuse	basin	ka	აუზი
landuse	brownfield	ka	მიტოვებული ადგილი
landuse	cemetery	ka	სასაფლაო
landuse	commercial	ka	კომერციული ტერიტორია
landuse	construction	ka	მშენებლობა
landuse	farm	ka	ფერმა
landuse	forest	ka	ტყე
landuse	grass	ka	ბალახი
landuse	greenfield	ka	ახლადათვისებული ადგილი
landuse	industrial	ka	სამრეწველო ზონა
landuse	landfill	ka	ნაგავსაყრელი
landuse	meadow	ka	მინდორი
landuse	military	ka	სამხედრო ტერიტორია
landuse	mine	ka	მაღარო
landuse	mountain	ka	მთა
landuse	nature_reserve	ka	ნაკრძალი
landuse	park	ka	პარკი
landuse	quarry	ka	კარიერი
landuse	railway	ka	რკინიგზა
landuse	recreation_ground	ka	რეკრეაციული ზონა
landuse	reservoir	ka	წყალსაცავი
landuse	residential	ka	საცხოვრებელი ტერიტორია
landuse	village_green	ka	მწვანე სოფელი
landuse	vineyard	ka	ვენახი
landuse	wood	ka	ტყე
leisure	fishing	ka	სათევზაო ტერიტორია
leisure	garden	ka	ბაღი
leisure	golf_course	ka	გოლფის მოედანი
leisure	ice_rink	ka	ყინულის მოედანი
leisure	miniature_golf	ka	მინი გოლფი
leisure	nature_reserve	ka	ნაკრძალი
leisure	park	ka	პარკი
leisure	pitch	ka	სპორტული გაზონი
leisure	playground	ka	სათამაშო მოედანი
leisure	recreation_ground	ka	რეკრეაციული ზონა
leisure	sports_centre	ka	სპორტული ცენტრი
leisure	stadium	ka	სტადიონი
leisure	swimming_pool	ka	საცურაო აუზი
leisure	track	ka	სარბენი ბილიკი
leisure	water_park	ka	აკვაპარკი
natural	bay	ka	ყურე
natural	beach	ka	პლაჟი
natural	cape	ka	კონცხი
natural	cave_entrance	ka	გამოქვაბულში შესასვლელი
natural	channel	ka	არხი
natural	coastline	ka	სანაპირო ზოლი
natural	crater	ka	კრატერი
natural	fell	ka	ბორცვი
natural	fjord	ka	ფიორდი
natural	geyser	ka	გეიზერი
natural	glacier	ka	მყინვარი
natural	hill	ka	ბორცვი
natural	island	ka	კუნძული
natural	land	ka	ხმელეთი
natural	marsh	ka	ჭაობი
natural	peak	ka	პიკი
natural	point	ka	კონცხი
natural	reef	ka	რიფი
natural	ridge	ka	ქედი
natural	river	ka	მდინარე
natural	rock	ka	კლდე
natural	scree	ka	კლდეზვავი
natural	scrub	ka	ბუჩქნარი
natural	spring	ka	წყარო
natural	strait	ka	სრუტე
natural	tree	ka	ხე
natural	valley	ka	ველი
natural	volcano	ka	ვულკანი
natural	water	ka	წყალი
natural	wood	ka	ტყე
place	airport	ka	აეროპორტი
place	city	ka	ქალაქი
place	country	ka	ქვეყანა
place	farm	ka	ფერმა
place	house	ka	სახლი
place	houses	ka	სახლები
place	island	ka	კუნძული
place	islet	ka	პატარა კუნძული
place	municipality	ka	მუნიციპალიტეტი
place	postcode	ka	საფოსტო ინდექსი
place	region	ka	რეგიონი
place	sea	ka	ზღვა
place	state	ka	შტატი/ოლქი
place	suburb	ka	გარეუბანი
place	town	ka	დაბა
place	village	ka	სოფელი
railway	construction	ka	რკინიგზის რემონტი
railway	disused	ka	მიტოვებული რკინიგზა
railway	disused_station	ka	მიტოვებული რკინიგზის სადგური
railway	funicular	ka	ფუნიკულიორი
railway	halt	ka	მატარებლის გაჩერება
railway	historic_station	ka	ისტორიული რკინიგზის სადგური
railway	monorail	ka	მონორელსი
railway	platform	ka	რკინიგზის ბაქანი
railway	station	ka	რკინიგზის სადგური
railway	subway	ka	მეტროსადგური
railway	subway_entrance	ka	მეტროში შესასვლელი
railway	switch	ka	სარკინიგზო ისარი
railway	tram	ka	ტრამვაი
railway	tram_stop	ka	ტრამვაის გაჩერება
railway	yard	ka	რკინიგზის დეპო
shop	bakery	ka	საცხობი
shop	beauty	ka	სილამაზის სალონი
shop	beverages	ka	სასმელების მაღაზია
shop	bicycle	ka	ველოსიპედების მაღაზია
shop	books	ka	წიგნის მაღაზია
shop	butcher	ka	საყასბო
shop	car	ka	ავტოსალონი
shop	car_dealer	ka	ავტომაღაზია
shop	car_parts	ka	ავტონაწილები
shop	carpet	ka	ხალიჩების მაღაზია
shop	car_repair	ka	ავტოსახელოსნო
shop	charity	ka	მეორადი ტანსაცმელი
shop	clothes	ka	ტანსაცმლის მაღაზია
shop	computer	ka	კომპიუტერების მაღაზია
shop	confectionery	ka	საკონდიტრო
shop	cosmetics	ka	კოსმეტიკის მაღაზია
shop	electronics	ka	ელექტროტექნიკის მაღაზია
shop	furniture	ka	ავეჯი
shop	gallery	ka	გალერეა
shop	gift	ka	საჩუქრების მაღაზია
shop	jewelry	ka	საიუველირო მაღაზია
shop	kiosk	ka	ჯიხური
shop	laundry	ka	სამრეცხაო
shop	market	ka	ბაზარი
shop	mobile_phone	ka	მობილური ტელეფონების მაღაზია
shop	music	ka	მუსიკალური მაღაზია
shop	optician	ka	ოპტიკა
shop	pet	ka	ზოომაღაზია
shop	photo	ka	ფოტომაღაზია
shop	supermarket	ka	სუპერმარკეტი
shop	toys	ka	სათამაშოების მაღაზია
shop	travel_agency	ka	ტურისტული სააგენტო
shop	video	ka	ვიდეო მაღაზია
tourism	attraction	ka	ატრაქციონი
tourism	camp_site	ka	ბანაკის ადგილი
tourism	guest_house	ka	სასტუმრო სახლი
tourism	hostel	ka	ჰოსტელი
tourism	hotel	ka	სასტუმრო
tourism	information	ka	ინფორმაცია
tourism	motel	ka	მოტელი
tourism	museum	ka	მუზეუმი
tourism	picnic_site	ka	საპიკნიკე ადგილი
tourism	theme_park	ka	თემატური პარკი
tourism	valley	ka	ველი
tourism	zoo	ka	ზოოპარკი
waterway	canal	ka	არხი
waterway	dam	ka	კაშხალი
waterway	river	ka	მდინარე
waterway	stream	ka	ნაკადული
waterway	waterfall	ka	ჩანჩქერი
amenity	bank	kn	ಬ್ಯಾಂಕ್
amenity	prison	kn	ಕಾರಾಗೃಹ
amenity	school	kn	ಶಾಲೆ
amenity	university	kn	ವಿಶ್ವವಿದ್ಯಾಲಯ
highway	road	kn	ರಸ್ತೆ
historic	house	kn	ಮನೆ
landuse	mountain	kn	ಪರ್ವತ
place	city	kn	ನಗರ
waterway	dam	kn	ಅಣೆಕಟ್ಟು
waterway	river	kn	ನದಿ
amenity	fire_hydrant	ko	소화전
place	airport	ko	공항
shop	insurance	ko	보험
amenity	airport	ku-latn	Firrgeh
amenity	bar	ku-latn	Bar
amenity	bench	ku-latn	Textebend
amenity	hotel	ku-latn	Hotel
amenity	kindergarten	ku-latn	zarrokxane
amenity	pharmacy	ku-latn	Îlacxane
amenity	police	ku-latn	Polîs
amenity	prison	ku-latn	Girtîgeh
amenity	school	ku-latn	Dibistan
amenity	theatre	ku-latn	Şano
amenity	university	ku-latn	Zanîngeh
building	hotel	ku-latn	Hotel
building	house	ku-latn	Xanî
historic	house	ku-latn	Xanî
landuse	cemetery	ku-latn	Gorristan
landuse	forest	ku-latn	Daristan
landuse	park	ku-latn	Park
leisure	park	ku-latn	Park
leisure	stadium	ku-latn	Stadyûm
natural	crater	ku-latn	Zung
natural	island	ku-latn	Girav
natural	river	ku-latn	Çem
natural	tree	ku-latn	Dar
place	airport	ku-latn	Firrgeh
place	city	ku-latn	Bajarr
place	country	ku-latn	Welat
place	county	ku-latn	Welat
place	house	ku-latn	Xanî
place	houses	ku-latn	Xaniyan
place	island	ku-latn	Girav
place	region	ku-latn	Herêm
place	town	ku-latn	Bajarrok
place	village	ku-latn	Gund
shop	bakery	ku-latn	Firrin
shop	furniture	ku-latn	Mobîlya
shop	gallery	ku-latn	Galerî
shop	insurance	ku-latn	Misogerî
tourism	hotel	ku-latn	Hotel
tourism	information	ku-latn	Agahî
tourism	valley	ku-latn	Newal
tourism	zoo	ku-latn	Baxçeyê heywanan
amenity	airport	lb	Fluchhafen
amenity	auditorium	lb	Auditoire
amenity	bank	lb	Bank
amenity	bureau_de_change	lb	Wiesselbüro
amenity	bus_station	lb	Busarrêt
amenity	cafe	lb	Café
amenity	cinema	lb	Kino
amenity	clinic	lb	Klinik
amenity	crematorium	lb	Crematoire
amenity	dentist	lb	Zänndokter
amenity	doctors	lb	Dokteren
amenity	drinking_water	lb	Drénkwaasser
amenity	driving_school	lb	Fahrschoul
amenity	embassy	lb	Ambassade
amenity	emergency_phone	lb	Noutruff-Telefon
amenity	fire_station	lb	Pompjeeën
amenity	fountain	lb	Sprangbur
amenity	hospital	lb	Klinik
amenity	hotel	lb	Hotel
amenity	ice_cream	lb	Glace
amenity	kindergarten	lb	Spillschoul
amenity	library	lb	Bibliothéik
amenity	market	lb	Maart
amenity	marketplace	lb	Maartplaz
amenity	mountain_rescue	lb	Biergrettung
amenity	office	lb	Büro
amenity	park	lb	Park
amenity	parking	lb	Parking
amenity	pharmacy	lb	Apdikt
amenity	police	lb	Police
amenity	post_office	lb	Postbüro
amenity	preschool	lb	Spillschoul
amenity	prison	lb	Prisong
amenity	pub	lb	Bistro
amenity	restaurant	lb	Restaurant
amenity	sauna	lb	Sauna
amenity	school	lb	Schoul
amenity	shop	lb	Geschäft
amenity	studio	lb	Studio
amenity	supermarket	lb	Supermarché
amenity	taxi	lb	Taxi
amenity	telephone	lb	Telefonscabine
amenity	theatre	lb	Theater
amenity	toilets	lb	Toiletten
amenity	townhall	lb	Stadhaus
amenity	university	lb	Universitéit
amenity	vending_machine	lb	Verkaafsautomat
building	bunker	lb	Bunker
building	chapel	lb	Kapell
building	church	lb	Kierch
building	city_hall	lb	Stadhaus
building	flats	lb	Appartementer
building	hotel	lb	Hotel
building	house	lb	Haus
building	office	lb	Bürosgebai
building	school	lb	Schoulgebai
building	stadium	lb	Stadion
building	store	lb	Geschäft
building	terrace	lb	Terrasse
building	tower	lb	Tuerm
building	train_station	lb	Gare (Eisebunn)
highway	footway	lb	Fousswee
highway	gate	lb	Paard
highway	motorway	lb	Autobunn
highway	path	lb	Pad
highway	pedestrian	lb	Fousswee
highway	primary	lb	Haaptstrooss
highway	primary_link	lb	Haaptstrooss
highway	road	lb	Strooss
highway	secondary_link	lb	Niewestrooss
highway	steps	lb	Trap
historic	archaeological_site	lb	Archeologesche Site
historic	battlefield	lb	Schluechtfeld
historic	building	lb	Gebai
historic	castle	lb	Schlass
historic	church	lb	Kierch
historic	house	lb	Haus
historic	monument	lb	Monument
historic	museum	lb	Musée
historic	ruins	lb	Ruinen
historic	tower	lb	Tuerm
landuse	cemetery	lb	Kierfecht
landuse	farm	lb	Bauerenhaff
landuse	forest	lb	Bësch
landuse	military	lb	Militairegebitt
landuse	mountain	lb	Bierg
landuse	park	lb	Park
landuse	railway	lb	Eisebunn
landuse	vineyard	lb	Wéngert
landuse	wood	lb	Bësch
leisure	garden	lb	Gaart
leisure	golf_course	lb	Golfterrain
leisure	marina	lb	Yachthafen
leisure	miniature_golf	lb	Minigolf
leisure	nature_reserve	lb	Naturschutzgebitt
leisure	playground	lb	Spillplaz
leisure	stadium	lb	Stadion
leisure	swimming_pool	lb	Schwëmm
natural	beach	lb	Plage
natural	channel	lb	Kanal
natural	crater	lb	Krater
natural	fjord	lb	Fjord
natural	geyser	lb	Geysir
natural	glacier	lb	Gletscher
natural	hill	lb	Hiwwel
natural	island	lb	Insel
natural	marsh	lb	Mouer
natural	moor	lb	Mouer
natural	point	lb	Punkt
natural	river	lb	Floss
natural	rock	lb	Steng
natural	spring	lb	Quell
natural	tree	lb	Bam
natural	valley	lb	Dall
natural	volcano	lb	Vulkan
natural	water	lb	Waasser
natural	wood	lb	Bësch
place	airport	lb	Fluchhafen
place	country	lb	Land
place	farm	lb	Bauerenhaff
place	house	lb	Haus
place	houses	lb	Haiser
place	island	lb	Insel
place	municipality	lb	Gemeng
place	region	lb	Regioun
place	sea	lb	Mier
place	town	lb	Stad
place	village	lb	Duerf
railway	disused	lb	Fréier Eisebunn
railway	station	lb	Gare (Eisebunn)
railway	subway	lb	Metro-Statioun
railway	tram	lb	Tram
shop	bakery	lb	Bäckerei
shop	books	lb	Bichergeschäft
shop	car_dealer	lb	Autoshändler
shop	car_repair	lb	Garage
shop	chemist	lb	Apdikt
shop	clothes	lb	Kleedergeschäft
shop	dry_cleaning	lb	Botzerei
shop	florist	lb	Fleurist
shop	furniture	lb	Miwwelgeschäft
shop	gallery	lb	Galerie
shop	hairdresser	lb	Coiffeur
shop	insurance	lb	Versécherungsbüro
shop	jewelry	lb	Bijouterie
shop	laundry	lb	Botzerei
shop	optician	lb	Optiker
shop	photo	lb	Fotosgeschäft
shop	shoes	lb	Schonggeschäft
shop	sports	lb	Sportsgeschäft
shop	supermarket	lb	Supermarché
shop	travel_agency	lb	Reesbüro
tourism	artwork	lb	Konschtwierk
tourism	attraction	lb	Attraktioun
tourism	chalet	lb	Chalet
tourism	hotel	lb	Hotel
tourism	information	lb	Informatioun
tourism	museum	lb	Musée
tourism	picnic_site	lb	Piknikplaz
tourism	valley	lb	Dall
tourism	viewpoint	lb	Aussiichtspunkt
tourism	zoo	lb	Zoo
waterway	canal	lb	Kanal
waterway	river	lb	Floss
waterway	wadi	lb	Wadi
waterway	waterfall	lb	Waasserfall
place	island	ln	Esanga
tourism	alpine_hut	ln	Ndáko mɔkɛ́ na ngómba
tourism	hotel	ln	Ndáko na mobémbo
tourism	valley	ln	Libulú
amenity	airport	lt	Oro uostas
amenity	arts_centre	lt	Menų centras
amenity	atm	lt	Bankomatas
amenity	auditorium	lt	Auditorija
amenity	bank	lt	Bankas
amenity	bar	lt	Baras
amenity	bench	lt	Suoliukas
amenity	bicycle_parking	lt	Dviračių stovėjimo aikštelė
amenity	bicycle_rental	lt	Dviračių nuoma
amenity	brothel	lt	Viešieji namai
amenity	bureau_de_change	lt	Valiutos keitimo punktas
amenity	bus_station	lt	Autobusų stotis
amenity	cafe	lt	Kavinė
amenity	car_rental	lt	Mašinų nuoma
amenity	car_sharing	lt	Dalinimosi automobiliu paslauga
amenity	car_wash	lt	Automobilių plovykla
amenity	casino	lt	Kazino
amenity	cinema	lt	Kino teatras
amenity	clinic	lt	Klinika
amenity	club	lt	Klubas
amenity	college	lt	Koledžas
amenity	community_centre	lt	Bendruomenės centras
amenity	courthouse	lt	Teismo pastatas
amenity	crematorium	lt	Krematoriumas
amenity	dentist	lt	Dantistas
amenity	doctors	lt	Gydytojai
amenity	dormitory	lt	Bendrabutis
amenity	drinking_water	lt	Geriamas vanduo
amenity	driving_school	lt	Vairavimo mokykla
amenity	embassy	lt	Ambasada
amenity	emergency_phone	lt	Pagalbos telefonas
amenity	fast_food	lt	Greitas maistas
amenity	ferry_terminal	lt	Keltų terminalas
amenity	fire_hydrant	lt	Hidrantas
amenity	fire_station	lt	Gaisrinė
amenity	fountain	lt	Fontanas
amenity	fuel	lt	Degalinė
amenity	grave_yard	lt	Kapinės
amenity	gym	lt	Sveikatingumo centras / sporto salė
amenity	hall	lt	Salė
amenity	health_centre	lt	Sveikatingumo centras
amenity	hospital	lt	Ligoninė
amenity	hotel	lt	Viešbutis
amenity	hunting_stand	lt	Medžiotojų bokštelis
amenity	ice_cream	lt	Ledai
amenity	kindergarten	lt	Vaikų darželis
amenity	library	lt	Biblioteka
amenity	market	lt	Turgus
amenity	marketplace	lt	Turgavietė
amenity	mountain_rescue	lt	Pagalba kalnuose
amenity	nightclub	lt	Naktinis klubas
amenity	nursing_home	lt	Slaugos namai
amenity	office	lt	Biuras
amenity	park	lt	Parkas
amenity	parking	lt	Stovėjimo aikštelė
amenity	pharmacy	lt	Vaistinė
amenity	place_of_worship	lt	Maldos namai
amenity	police	lt	Policija
amenity	post_box	lt	Pašto dėžutė
amenity	post_office	lt	Paštas
amenity	preschool	lt	Ikimokyklinis ugdymas
amenity	prison	lt	Kalėjimas
amenity	pub	lt	Aludė
amenity	public_building	lt	Visuomeninis pastatas
amenity	public_market	lt	Visuomeninis turgus
amenity	reception_area	lt	Priėmimo zona
amenity	recycling	lt	Perdirbimo punktas
amenity	restaurant	lt	Restoranas
amenity	retirement_home	lt	Senelių namai
amenity	sauna	lt	Sauna
amenity	school	lt	Mokykla
amenity	shelter	lt	Pastogė
amenity	shop	lt	Parduotuvė
amenity	shopping	lt	Apsipirkimo vieta
amenity	social_club	lt	Socialinių reikalų klubas
amenity	studio	lt	Studija
amenity	supermarket	lt	Prekybos centras
amenity	taxi	lt	Taksi
amenity	telephone	lt	Viešas telefonas
amenity	theatre	lt	Teatras
amenity	toilets	lt	Tualetas
amenity	townhall	lt	Rotušė
amenity	university	lt	Universitetas
amenity	vending_machine	lt	Vendingas
amenity	veterinary	lt	Veterinarijos chirurgija
amenity	village_hall	lt	Nedidelio miestelio valdžios būstinė
amenity	waste_basket	lt	Atliekų krepšelis
amenity	wifi	lt	WiFi prieiga
amenity	youth_centre	lt	Jaunimo centras
boundary	administrative	lt	Administracinė riba
building	apartments	lt	Gyvenamasis kvartalas
building	block	lt	Pastatų blokas
building	bunker	lt	Bunkeris
building	chapel	lt	Koplyčia
building	church	lt	Bažnyčia
building	city_hall	lt	Rotušė
building	commercial	lt	Komercinės paskirties pastatas
building	dormitory	lt	Bendrabutis
building	entrance	lt	Įėjimas į pastatą
building	farm	lt	Ūkio pastatas
building	flats	lt	Butai
building	garage	lt	Garažas
building	hall	lt	Salė
building	hospital	lt	Ligoninės pastatas
building	hotel	lt	Viešbutis
building	house	lt	Namas
building	industrial	lt	Pramoninis pastatas
building	office	lt	Biurų pastatas
building	public	lt	Visuomeninis pastatas
building	residential	lt	Gyvenamasis pastatas
building	retail	lt	Mažmeninės prekybos pastatas
building	school	lt	Mokyklos pastatas
building	shop	lt	Parduotuvė
building	stadium	lt	Stadionas
building	store	lt	Parduotuvė
building	terrace	lt	Terasa
building	tower	lt	Bokštas
building	train_station	lt	Geležinkelio stotis
building	university	lt	Universiteto pastatas
highway	bridleway	lt	Žirgų kelias
highway	bus_guideway	lt	Bėginio autobuso linija
highway	bus_stop	lt	Autobusų stotelė
highway	byway	lt	Keliukas
highway	construction	lt	Statomas greitkelis
highway	cycleway	lt	Dviračių takas
highway	distance_marker	lt	Nuotolio žymeklis
highway	emergency_access_point	lt	Skubios prieigos punktas
highway	footway	lt	Pėsčiųjų takelis
highway	ford	lt	Brasta
highway	gate	lt	Vartai
highway	living_street	lt	Gyvenamoji gatvė
highway	minor	lt	Šalutinis kelias
highway	motorway	lt	Automagistralė
highway	motorway_junction	lt	Automagistralės rampa
highway	motorway_link	lt	Automagistralinis kelias
highway	path	lt	Takelis
highway	pedestrian	lt	Pėsčiųjų kelias
highway	platform	lt	Platforma
highway	primary	lt	Pirmosios reikšmės kelias
highway	primary_link	lt	Pirmosios reikšmės kelias
highway	raceway	lt	Lenktynių trasa
highway	residential	lt	Gyvenamasis (-oji)
highway	road	lt	Kelias
highway	secondary	lt	Antros reikšmės kelias
highway	secondary_link	lt	Antros reikšmės kelias
highway	service	lt	Privažiuojamasis kelias
highway	services	lt	Automagistralės paslaugos
highway	steps	lt	Laiptai
highway	stile	lt	Kopynė
highway	tertiary	lt	Trečios reikšmės kelias
highway	track	lt	Vėžės
highway	trail	lt	Takas
highway	trunk	lt	Magistralinis kelias
highway	trunk_link	lt	Magistralinis kelias
highway	unclassified	lt	Neklasifikuotas kelias
highway	unsurfaced	lt	Kelias be dangos
historic	archaeological_site	lt	Archeologinė vieta
historic	battlefield	lt	Mūšio vieta
historic	boundary_stone	lt	Ribos akmuo
historic	building	lt	Pastatas
historic	castle	lt	Pilis
historic	church	lt	Bažnyčia
historic	house	lt	Namas
historic	icon	lt	Ikona
historic	manor	lt	Dvaras
historic	memorial	lt	Memorialas
historic	mine	lt	Kasykla
historic	monument	lt	Paminklas
historic	museum	lt	Muziejus
historic	ruins	lt	Griuvėsiai
historic	tower	lt	Bokštas
historic	wayside_cross	lt	Pakelės kryžius
historic	wayside_shrine	lt	Koplytstulpis
historic	wreck	lt	Paskendęs laivas
landuse	allotments	lt	Sodai
landuse	basin	lt	Baseinas
landuse	cemetery	lt	Kapinės
landuse	commercial	lt	Komercinis plotas
landuse	conservation	lt	Apsaugos zona
landuse	construction	lt	Statyba
landuse	farm	lt	Ūkis
landuse	farmyard	lt	Ferma
landuse	forest	lt	Miškas
landuse	grass	lt	Žolė
landuse	industrial	lt	Pramoninė zona
landuse	landfill	lt	Sąvartynas
landuse	meadow	lt	Pieva
landuse	military	lt	Karinė zona
landuse	mine	lt	Kasykla
landuse	mountain	lt	Kalnas
landuse	nature_reserve	lt	Gamtos draustinis
landuse	park	lt	Parkas
landuse	piste	lt	Slidinėjimo trasa
landuse	quarry	lt	Karjeras
landuse	railway	lt	Geležinkelis
landuse	recreation_ground	lt	Rekreacinė zona
landuse	reservoir	lt	Rezervuaras
landuse	residential	lt	Gyvenamasis rajonas
landuse	retail	lt	Mažmeninė prekyba
landuse	vineyard	lt	Vynuogynas
landuse	wetland	lt	Pelkė
landuse	wood	lt	Medžiai
leisure	beach_resort	lt	Pajūrio kurortas
leisure	common	lt	Bendra žemė
leisure	fishing	lt	Žvejybos zona
leisure	garden	lt	Sodas
leisure	golf_course	lt	Golfo laukas
leisure	ice_rink	lt	Slidinėjimo vieta (paklojant užšąlantį vandenį)
leisure	marina	lt	Valčių ir nedidelių laivų prieplauka
leisure	miniature_golf	lt	Mini golfas
leisure	nature_reserve	lt	Gamtos draustinis
leisure	park	lt	Parkas
leisure	pitch	lt	Sporto aikštė
leisure	playground	lt	Žaidimų aikštelė
leisure	recreation_ground	lt	Rekreacinis plotas
leisure	slipway	lt	Slipas
leisure	sports_centre	lt	Sporto centras
leisure	stadium	lt	Stadionas
leisure	swimming_pool	lt	Plaukiojimo baseinas
leisure	track	lt	Bėgimo takelis
leisure	water_park	lt	Vandens parkas
natural	bay	lt	Įlanka
natural	beach	lt	Paplūdimys
natural	cave_entrance	lt	Įėjimas į urvą
natural	channel	lt	Kanalas
natural	cliff	lt	Uola
natural	coastline	lt	Pakrantė
natural	crater	lt	Krateris
natural	feature	lt	Ypatybė
natural	fjord	lt	Fiordas
natural	geyser	lt	Geizeris
natural	glacier	lt	Ledynas
natural	hill	lt	Kalva
natural	island	lt	Sala
natural	land	lt	Žemė
natural	marsh	lt	Pelkė
natural	moor	lt	Dažnai užliejama vieta
natural	mud	lt	Purvas
natural	peak	lt	Viršūnė
natural	point	lt	Taškas
natural	reef	lt	Rifas
natural	ridge	lt	Ketera
natural	river	lt	Upė
natural	rock	lt	Uola
natural	scree	lt	Skardis
natural	scrub	lt	Krūmai
natural	shoal	lt	Rėva
natural	spring	lt	Šaltinis
natural	strait	lt	Sąsiauris
natural	tree	lt	Medis
natural	valley	lt	Slėnis
natural	volcano	lt	Ugnikalnis
natural	water	lt	Vanduo
natural	wetland	lt	Pelkė
natural	wetlands	lt	Pelkės
natural	wood	lt	Medžiai
place	airport	lt	Oro uostas
place	city	lt	Miestas
place	country	lt	Šalis
place	county	lt	Apskritis
place	farm	lt	Ūkis
place	hamlet	lt	Kaimelis (Vienkiemis)
place	house	lt	Namas
place	houses	lt	Namai
place	island	lt	Sala
place	islet	lt	Salelė
place	locality	lt	Vietovė
place	moor	lt	Dažnai užliejama vieta
place	municipality	lt	Savivaldybė
place	postcode	lt	Pašto kodas
place	region	lt	Regionas
place	sea	lt	Jūra
place	state	lt	Valstija
place	subdivision	lt	Subdivizija
place	suburb	lt	Priemiestis
place	town	lt	Miestas
place	unincorporated_area	lt	Neįregistruota erdvė
place	village	lt	Kaimas
railway	abandoned	lt	Apleistas geležinkelis
railway	construction	lt	Statomas geležinkelis
railway	disused	lt	Nebenaudojamas geležinkelis
railway	disused_station	lt	Nebenaudojama geležinkelio stotis
railway	funicular	lt	Funikulierius
railway	halt	lt	Traukinio Stotelė
railway	historic_station	lt	Istorinė geležinkelio stotis
railway	junction	lt	Geležinkelio mazgas
railway	level_crossing	lt	Pervaža
railway	light_rail	lt	Lengvasis geležinkelis
railway	monorail	lt	Vienbėgis
railway	narrow_gauge	lt	Siaurukas
railway	platform	lt	Geležinkelio platforma
railway	preserved	lt	Paveldo geležinkelis
railway	station	lt	Geležinkelio stotis
railway	subway	lt	Metro stotis
railway	subway_entrance	lt	Įėjimas į metro
railway	tram	lt	Tramvajus
railway	tram_stop	lt	Tramvajaus stotelė
shop	apparel	lt	Drabužių parduotuvė
shop	art	lt	Meno parduotuvė
shop	bakery	lt	Kepykla
shop	beauty	lt	Grožio salonas
shop	beverages	lt	Gėrimų parduotuvė
shop	bicycle	lt	Dviračių parduotuvė
shop	books	lt	Knygynas
shop	butcher	lt	Mėsininkas
shop	car	lt	Automobilių parduotuvė
shop	car_dealer	lt	Prekiautojas automobiliais
shop	car_parts	lt	Automobilių dalys
shop	carpet	lt	Kilimų parduotuvė
shop	car_repair	lt	Automobilių remontas
shop	charity	lt	Labdaros parduotuvė
shop	chemist	lt	Chemikas
shop	clothes	lt	Drabužių parduotuvė
shop	computer	lt	Kompiuterių parduotuvė
shop	confectionery	lt	Konditerijos parduotuvė
shop	convenience	lt	Parduotuvė
shop	cosmetics	lt	Kosmetikos parduotuvė
shop	department_store	lt	Universalinė parduotuvė
shop	discount	lt	Nukainotų prekių parduotuvė
shop	doityourself	lt	Pasidaryk pats
shop	drugstore	lt	Vaistinė
shop	dry_cleaning	lt	Sausasis valymas
shop	electronics	lt	Elektronikos parduotuvė
shop	estate_agent	lt	Nekilnojamojo turto agentas
shop	farm	lt	Ūkio parduotuvė
shop	fashion	lt	Mados parduotuvė
shop	fish	lt	Žuvies parduotuvė
shop	florist	lt	Gėlininkas
shop	food	lt	Maisto parduotuvė
shop	furniture	lt	Baldai
shop	gallery	lt	Galerija
shop	garden_centre	lt	Sodo prekės
shop	gift	lt	Dovanų parduotuvė
shop	greengrocer	lt	Daržovių ir vaisių pardavėjas
shop	grocery	lt	Gastronomas
shop	hairdresser	lt	Kirpykla
shop	hardware	lt	Aparatūros parduotuvė
shop	hifi	lt	Hi-Fi
shop	insurance	lt	Draudimas
shop	jewelry	lt	Juvelyrikos parduotuvė
shop	kiosk	lt	Kioskas
shop	laundry	lt	Skalbykla
shop	mall	lt	Prekybos centras
shop	market	lt	Turgus
shop	mobile_phone	lt	Mobiliųjų telefonų parduotuvė
shop	motorcycle	lt	Motociklų parduotuvė
shop	music	lt	Muzikos prekių parduotuvė
shop	optician	lt	Optikas
shop	organic	lt	Ekologiškų maisto produktų parduotuvė
shop	pet	lt	Naminių gyvūnėlių parduotuvė
shop	photo	lt	Foto prekių parduotuvė
shop	salon	lt	Salonas
shop	shoes	lt	Batų parduotuvė
shop	shopping_centre	lt	Prekybos centras
shop	sports	lt	Sporto prekių parduotuvė
shop	supermarket	lt	Prekybos centras
shop	toys	lt	Žaislų parduotuvė
shop	travel_agency	lt	Kelionių agentūra
shop	video	lt	Video parduotuvė
tourism	attraction	lt	Lankytina vieta
tourism	camp_site	lt	Stovyklavietė
tourism	caravan_site	lt	Kemperių aikštelė
tourism	chalet	lt	Trobelė
tourism	guest_house	lt	Svečių namai
tourism	hostel	lt	Hostelis
tourism	hotel	lt	Viešbutis
tourism	information	lt	Informacija
tourism	motel	lt	Motelis
tourism	museum	lt	Muziejus
tourism	picnic_site	lt	Poilsiavietė
tourism	valley	lt	Slėnis
tourism	viewpoint	lt	Apžvalgos aikštelė
tourism	zoo	lt	Zoologijos sodas
waterway	canal	lt	Kanalas
waterway	dam	lt	Užtvanka
waterway	ditch	lt	Griovys
waterway	dock	lt	Dokas
waterway	drain	lt	Drenažo griovys
waterway	mooring	lt	Švartavimas
waterway	river	lt	Upė
waterway	riverbank	lt	Upės krantas
waterway	stream	lt	Upeliukas
waterway	waterfall	lt	Krioklys
amenity	airport	lv	Lidosta
amenity	arts_centre	lv	Mākslas centrs
amenity	atm	lv	Bankomāts
amenity	auditorium	lv	Auditorija
amenity	bank	lv	Banka
amenity	bar	lv	Bārs
amenity	bench	lv	Soliņš
amenity	bicycle_parking	lv	Velosipēdu novietne
amenity	bicycle_rental	lv	Velosipēdu noma
amenity	brothel	lv	Bordelis
amenity	bureau_de_change	lv	Valūtas maiņas punkts
amenity	bus_station	lv	Autoosta
amenity	cafe	lv	Kafejnīca
amenity	car_rental	lv	Autonoma
amenity	car_sharing	lv	Auto koplietošana
amenity	car_wash	lv	Automazgātava
amenity	casino	lv	Kazino
amenity	cinema	lv	Kino
amenity	clinic	lv	Klīnika
amenity	club	lv	Klubs
amenity	college	lv	Koledža
amenity	community_centre	lv	Sabiedriskais centrs
amenity	courthouse	lv	Tiesa
amenity	crematorium	lv	Krematorija
amenity	dentist	lv	Zobārsts
amenity	doctors	lv	Ārsti
amenity	dormitory	lv	Kopmītnes
amenity	drinking_water	lv	Dzeramais ūdens
amenity	driving_school	lv	Braukšanas skola
amenity	embassy	lv	Vēstniecība
amenity	emergency_phone	lv	Avārijas telefons
amenity	fast_food	lv	Bistro
amenity	ferry_terminal	lv	Prāmju termināls
amenity	fire_hydrant	lv	Hidrants
amenity	fire_station	lv	Ugunsdzēsēju depo
amenity	fountain	lv	Strūklaka
amenity	fuel	lv	Degviela
amenity	grave_yard	lv	Kapsēta
amenity	gym	lv	Fitnesa centrs / Sporta zāle
amenity	hall	lv	Zāle
amenity	health_centre	lv	Veselības centrs
amenity	hospital	lv	Slimnīca
amenity	hotel	lv	Viesnīca
amenity	hunting_stand	lv	Medību tornis
amenity	ice_cream	lv	Saldējums
amenity	kindergarten	lv	Bērnudārzs
amenity	library	lv	Bibliotēka
amenity	market	lv	Tirgus
amenity	marketplace	lv	Tirgus
amenity	mountain_rescue	lv	Kalnu glābēji
amenity	nightclub	lv	Naktsklubs
amenity	nursing_home	lv	Pansionāts
amenity	office	lv	Birojs
amenity	park	lv	Parks
amenity	parking	lv	Autostāvvieta
amenity	pharmacy	lv	Aptieka
amenity	place_of_worship	lv	Dievnams
amenity	police	lv	Policija
amenity	post_box	lv	Pastkaste
amenity	post_office	lv	Pasts
amenity	preschool	lv	Pirmsskolas apmācība
amenity	prison	lv	Cietums
amenity	pub	lv	Krogs
amenity	public_building	lv	Sabiedriskā ēka
amenity	public_market	lv	Tirgus
amenity	reception_area	lv	Uzņemšanas zona
amenity	recycling	lv	Pārstrādes punkts
amenity	restaurant	lv	Restorāns
amenity	retirement_home	lv	Pansionāts
amenity	sauna	lv	Sauna
amenity	school	lv	Skola
amenity	shelter	lv	Pajumte
amenity	shop	lv	Veikals
amenity	shopping	lv	Iepirkšanās
amenity	social_club	lv	Sociālais klubs
amenity	studio	lv	Studija
amenity	supermarket	lv	Lielveikals
amenity	taxi	lv	Taksometrs
amenity	telephone	lv	Publisks telefons
amenity	theatre	lv	Teātris
amenity	toilets	lv	Tualetes
amenity	townhall	lv	Rātsnams
amenity	university	lv	Universitāte
amenity	vending_machine	lv	Tirdzniecības automāts
amenity	veterinary	lv	Veterinārā ķirurģija
amenity	village_hall	lv	Pagastmāja
amenity	waste_basket	lv	Atkritumu grozs
amenity	wifi	lv	WiFi piekļuves punkts
amenity	youth_centre	lv	Jauniešu centrs
boundary	administrative	lv	Administratīvā robeža
building	bunker	lv	Bunkurs
building	chapel	lv	Kapela
building	church	lv	Baznīca
building	city_hall	lv	Rātsnams
building	commercial	lv	Tirdzniecības ēka
building	dormitory	lv	Kopmītnes
building	entrance	lv	Ēkas ieeja
building	faculty	lv	Fakultātes ēka
building	farm	lv	Saimniecības ēka
building	flats	lv	Dzīvokļi
building	garage	lv	Garāža
building	hall	lv	Zāle
building	hospital	lv	Slimnīcas ēka
building	hotel	lv	Viesnīca
building	house	lv	Māja
building	industrial	lv	Ražošanas ēka
building	office	lv	Biroju ēka
building	public	lv	Sabiedriskā ēka
building	residential	lv	Dzīvojamā ēka
building	retail	lv	Mazumtirdzniecības ēka
building	school	lv	Skolas ēka
building	shop	lv	Veikals
building	stadium	lv	Stadions
building	store	lv	Veikals
building	terrace	lv	Terase
building	tower	lv	Tornis
building	train_station	lv	Dzelzceļa stacija
building	university	lv	Universitātes ēka
highway	bridleway	lv	Izjādes taka
highway	bus_stop	lv	Autobusa pietura
highway	byway	lv	Blakusceļš
highway	construction	lv	Automaģistrāle būvniecības stadijā
highway	cycleway	lv	Veloceliņš
highway	emergency_access_point	lv	Ārkārtas piekļuves punkts
highway	footway	lv	Taka
highway	gate	lv	Vārti
highway	living_street	lv	Dzīvojamā zona
highway	motorway	lv	Automaģistrāle
highway	motorway_junction	lv	Automaģistrāles krustojums
highway	motorway_link	lv	Automaģistrāles pievedceļš
highway	path	lv	Taka
highway	pedestrian	lv	Gājēju ceļš
highway	platform	lv	Platforma
highway	primary	lv	Galvenais valsts ceļš
highway	primary_link	lv	Galvenais valsts ceļš
highway	raceway	lv	Sacensību trase
highway	residential	lv	Dzīvojamā
highway	road	lv	Ceļš
highway	secondary	lv	Sekundāras nozīmes ceļš
highway	secondary_link	lv	Sekundāras nozīmes ceļš
highway	steps	lv	Pakāpieni
highway	tertiary	lv	Pašvaldību autoceļi
highway	track	lv	Zemesceļš
highway	trail	lv	Taka
highway	trunk	lv	Maģistrālais ceļš
highway	trunk_link	lv	Maģistrālais ceļš
highway	unclassified	lv	Neklasificēts ceļš
highway	unsurfaced	lv	Ceļš bez seguma
historic	archaeological_site	lv	Arheoloģisku izrakumu vieta
historic	battlefield	lv	Kaujas lauks
historic	boundary_stone	lv	Robežstabs
historic	building	lv	Ēka
historic	castle	lv	Pils
historic	church	lv	Baznīca
historic	house	lv	Māja
historic	icon	lv	Ikona
historic	manor	lv	Muiža
historic	memorial	lv	Memoriāls
historic	mine	lv	Raktuves
historic	monument	lv	Piemineklis
historic	museum	lv	Muzejs
historic	ruins	lv	Drupas
historic	tower	lv	Tornis
historic	wayside_cross	lv	Krusts ceļmalā
historic	wayside_shrine	lv	Ceļmalas svētnīca
historic	wreck	lv	Vraks
landuse	allotments	lv	Mazdārziņi
landuse	brownfield	lv	Attīrīts būvlaukums
landuse	cemetery	lv	Kapsēta
landuse	commercial	lv	Tirdzniecības zona
landuse	construction	lv	Būvlaukums
landuse	farm	lv	Saimniecība
landuse	farmland	lv	Saimniecības zeme
landuse	farmyard	lv	Saimniecības pagalms
landuse	forest	lv	Mežs
landuse	grass	lv	Zāle
landuse	greenfield	lv	Zaļā zona
landuse	industrial	lv	Rūpniecības zona
landuse	landfill	lv	Atkritumu izgāztuve
landuse	meadow	lv	Pļava
landuse	military	lv	Militārā zona
landuse	mine	lv	Raktuves
landuse	mountain	lv	Kalns
landuse	nature_reserve	lv	Dabas rezervāts
landuse	park	lv	Parks
landuse	piste	lv	Slēpošanas trase
landuse	plaza	lv	Tirgus laukums
landuse	quarry	lv	Karjers
landuse	railway	lv	Dzelzceļš
landuse	reservoir	lv	Ūdenskrātuve
landuse	residential	lv	Dzīvojamā zona
landuse	retail	lv	Mazumtirdzniecība
landuse	vineyard	lv	Vīna dārzs
landuse	wetland	lv	Mitrājs
landuse	wood	lv	Mežs
leisure	beach_resort	lv	Pludmales kūrorts
leisure	fishing	lv	Zvejas apgabals
leisure	garden	lv	Dārzs
leisure	golf_course	lv	Golfa laukums
leisure	ice_rink	lv	Ledus halle
leisure	marina	lv	Osta
leisure	miniature_golf	lv	Minigolfs
leisure	nature_reserve	lv	Dabas rezervāts
leisure	park	lv	Parks
leisure	pitch	lv	Sporta laukums
leisure	playground	lv	Spēļu laukums
leisure	recreation_ground	lv	Atpūtas Zona
leisure	sports_centre	lv	Sporta centrs
leisure	stadium	lv	Stadions
leisure	swimming_pool	lv	Peldbaseins
leisure	track	lv	Skrejceļš
leisure	water_park	lv	Ūdens atrakciju parks
natural	bay	lv	Līcis
natural	beach	lv	Pludmale
natural	cape	lv	Zemesrags
natural	cave_entrance	lv	Ieeja alā
natural	channel	lv	Kanāls
natural	cliff	lv	Klints
natural	coastline	lv	Piekrastes līnija
natural	crater	lv	Krāteris
natural	fjord	lv	Fjords
natural	geyser	lv	Geizers
natural	glacier	lv	Ledājs
natural	heath	lv	Tīrelis
natural	hill	lv	Kalns
natural	island	lv	Sala
natural	land	lv	Zeme
natural	marsh	lv	Purvs
natural	moor	lv	Tīrelis
natural	mud	lv	Dubļi
natural	peak	lv	Smaile
natural	point	lv	Punkts
natural	reef	lv	Rifs
natural	ridge	lv	Grēda
natural	river	lv	Upe
natural	rock	lv	Klints
natural	scree	lv	Nogāze
natural	scrub	lv	Krūmājs
natural	shoal	lv	Sēklis
natural	spring	lv	Avots
natural	strait	lv	Jūras šaurums
natural	tree	lv	Koks
natural	valley	lv	Ieleja
natural	volcano	lv	Vulkāns
natural	water	lv	Ūdens
natural	wetland	lv	Mitrājs
natural	wetlands	lv	Mitrājs
natural	wood	lv	Mežs
place	airport	lv	Lidosta
place	city	lv	Pilsēta
place	country	lv	Valsts
place	county	lv	Apgabals
place	farm	lv	Saimniecība
place	hamlet	lv	Ciems
place	house	lv	Māja
place	houses	lv	Mājas
place	island	lv	Sala
place	islet	lv	Saliņa
place	locality	lv	Vieta
place	moor	lv	Tīrelis
place	municipality	lv	Pašvaldība
place	postcode	lv	Pasta indekss
place	region	lv	Reģions
place	sea	lv	Jūra
place	state	lv	Štats
place	suburb	lv	Piepilsēta
place	town	lv	Pilsēta
place	village	lv	Ciems
railway	abandoned	lv	Pamests dzelzceļš
railway	construction	lv	Dzelzceļš būvniecības stadijā
railway	disused	lv	Nelietots dzelzceļš
railway	disused_station	lv	Nelietota dzelzceļa stacija
railway	funicular	lv	Trošu dzelzceļš
railway	halt	lv	Vilciena pietura
railway	historic_station	lv	Vēsturiska dzelzceļa stacija
railway	junction	lv	Dzelzceļa mezgls
railway	light_rail	lv	Tramvaja sliedes
railway	monorail	lv	Monosliede
railway	narrow_gauge	lv	Šaursliežu dzelzceļš
railway	platform	lv	Dzelzceļa perons
railway	preserved	lv	Iekonservēts Dzelzceļš
railway	station	lv	Dzelzceļa stacija
railway	subway	lv	Metro stacija
railway	subway_entrance	lv	Metro ieeja
railway	tram	lv	Tramvajs
railway	tram_stop	lv	Tramvaja pietura
shop	apparel	lv	Apģērbu veikals
shop	art	lv	Mākslas salons
shop	bakery	lv	Maiznīca
shop	beauty	lv	Kosmētiskais salons
shop	beverages	lv	Dzērienu veikals
shop	bicycle	lv	Velosipēdu veikals
shop	books	lv	Grāmatu veikals
shop	butcher	lv	Miesnieks
shop	car	lv	Auto veikals
shop	car_dealer	lv	Auto tirgotājs
shop	car_parts	lv	Automašīnu rezerves daļas
shop	carpet	lv	Paklāju veikals
shop	car_repair	lv	Auto remonts
shop	charity	lv	Labdarības veikals
shop	clothes	lv	Apģērbu veikals
shop	computer	lv	Datorveikals
shop	confectionery	lv	Konditorejas veikals
shop	copyshop	lv	Kopētava
shop	cosmetics	lv	Kosmētikas veikals
shop	department_store	lv	Universālveikals
shop	drugstore	lv	Aptieka
shop	dry_cleaning	lv	Ķīmiskā tīrīšana
shop	electronics	lv	Elektronikas veikals
shop	estate_agent	lv	Nekustamā īpašuma aģents
shop	fashion	lv	Modes veikals
shop	fish	lv	Zivju veikals
shop	florist	lv	Florists
shop	food	lv	Pārtikas veikals
shop	funeral_directors	lv	Apbedīšanas birojs
shop	furniture	lv	Mēbeles
shop	gallery	lv	Galerija
shop	gift	lv	Dāvanu veikals
shop	greengrocer	lv	Dārzeņu tirgotājs
shop	grocery	lv	Pārtikas preču veikals
shop	hairdresser	lv	Frizētava
shop	hifi	lv	Hi-Fi
shop	insurance	lv	Apdrošināšana
shop	jewelry	lv	Juvelierizstrādājumu veikals
shop	kiosk	lv	Kiosks
shop	laundry	lv	Veļas mazgātava
shop	mall	lv	Tirdzniecības centrs
shop	market	lv	Tirgus
shop	mobile_phone	lv	Mobilo telefonu veikals
shop	motorcycle	lv	Motociklu veikals
shop	music	lv	Mūzikas veikals
shop	optician	lv	Optikas veikals
shop	organic	lv	Bioloģiskās pārtikas veikals
shop	pet	lv	Zooveikals
shop	photo	lv	Fotoveikals
shop	salon	lv	Salons
shop	shoes	lv	Apavu veikals
shop	shopping_centre	lv	Iepirkšanās centrs
shop	sports	lv	Sporta veikals
shop	stationery	lv	Kancelejas preču veikals
shop	supermarket	lv	Lielveikals
shop	toys	lv	Rotaļlietu veikals
shop	travel_agency	lv	Tūrisma aģentūra
tourism	alpine_hut	lv	Kalnu būda
tourism	artwork	lv	Mākslas darbs
tourism	attraction	lv	Atrakcija
tourism	bed_and_breakfast	lv	Guļamvieta un brokastis
tourism	camp_site	lv	Nometnes vieta
tourism	caravan_site	lv	Kempings
tourism	guest_house	lv	Viesu nams
tourism	hostel	lv	Hostelis
tourism	hotel	lv	Viesnīca
tourism	information	lv	Informācija
tourism	motel	lv	Motelis
tourism	museum	lv	Muzejs
tourism	picnic_site	lv	Piknika vieta
tourism	theme_park	lv	Atrakciju parks
tourism	valley	lv	Ieleja
tourism	viewpoint	lv	Skatu punkts
tourism	zoo	lv	Zooloģiskais dārzs
waterway	boatyard	lv	Jahtu piestātne
waterway	canal	lv	Kanāls
waterway	dam	lv	Aizsprosts
waterway	ditch	lv	Grāvis
waterway	dock	lv	Doks
waterway	drain	lv	Grāvis
waterway	lock	lv	Slūžas
waterway	lock_gate	lv	Slūžu vārti
waterway	mineral_spring	lv	Minerālavots
waterway	mooring	lv	Piestātne
waterway	rapids	lv	Krāces
waterway	river	lv	Upe
waterway	riverbank	lv	Upes krasts
waterway	stream	lv	Strauts
waterway	waterfall	lv	Ūdenskritums
waterway	weir	lv	Dambis
amenity	airport	mk	Аеродром
amenity	arts_centre	mk	Дом на уметности
amenity	atm	mk	Банкомат
amenity	auditorium	mk	Аудиториум
amenity	bank	mk	Банка
amenity	bar	mk	Бар
amenity	bench	mk	Клупа
amenity	bicycle_parking	mk	Велосипедско паркирање
amenity	bicycle_rental	mk	Изнајмување велосипеди
amenity	brothel	mk	Бордел
amenity	bureau_de_change	mk	Менувачница
amenity	bus_station	mk	Автобуска станица
amenity	cafe	mk	Кафуле
amenity	car_rental	mk	Рент-а-кар
amenity	car_sharing	mk	Изнајмување автомобил
amenity	car_wash	mk	Автоперална
amenity	casino	mk	Казино
amenity	cinema	mk	Кино
amenity	clinic	mk	Клиника
amenity	club	mk	Клуб
amenity	college	mk	Колеџ
amenity	community_centre	mk	Центар на заедница
amenity	courthouse	mk	Суд
amenity	crematorium	mk	Крематориум
amenity	dentist	mk	Забар
amenity	doctors	mk	Доктори
amenity	dormitory	mk	Студентски дом
amenity	drinking_water	mk	Питка вода
amenity	driving_school	mk	Автошкола
amenity	embassy	mk	Амбасада
amenity	emergency_phone	mk	Итен телефон
amenity	fast_food	mk	Брза храна
amenity	ferry_terminal	mk	Ферибот-терминал
amenity	fire_hydrant	mk	Противпожарен хидрант
amenity	fire_station	mk	Пожарна
amenity	fountain	mk	Фонтана
amenity	fuel	mk	Гориво
amenity	grave_yard	mk	Гробишта
amenity	gym	mk	Теретана / фитнес
amenity	hall	mk	Соборна сала
amenity	health_centre	mk	Здравствен центар
amenity	hospital	mk	Болница
amenity	hotel	mk	Хотел
amenity	hunting_stand	mk	Ловечка кула
amenity	ice_cream	mk	Сладолед
amenity	kindergarten	mk	Градинка
amenity	library	mk	Библиотека
amenity	market	mk	Пазар
amenity	marketplace	mk	Пазар
amenity	mountain_rescue	mk	Планинарско спасување
amenity	nightclub	mk	Ноќен клуб
amenity	nursery	mk	Јасли
amenity	nursing_home	mk	Старечки дом
amenity	office	mk	Канцеларија
amenity	park	mk	Парк
amenity	parking	mk	Паркинг
amenity	pharmacy	mk	Аптека
amenity	place_of_worship	mk	Верски објект
amenity	police	mk	Полиција
amenity	post_box	mk	Поштенско сандаче
amenity	post_office	mk	Пошта
amenity	preschool	mk	Претшколска установа
amenity	prison	mk	Затвор
amenity	pub	mk	Пивница
amenity	public_building	mk	Јавен објект
amenity	public_market	mk	Градски пазар
amenity	reception_area	mk	Рецепција
amenity	recycling	mk	Рециклирање
amenity	restaurant	mk	Ресторан
amenity	retirement_home	mk	Старечки дом
amenity	sauna	mk	Сауна
amenity	school	mk	Училиште
amenity	shelter	mk	Засолниште
amenity	shop	mk	Дуќан
amenity	shopping	mk	Дуќани
amenity	social_club	mk	Друштвен клуб
amenity	studio	mk	Студио
amenity	supermarket	mk	Супермаркет
amenity	taxi	mk	Такси
amenity	telephone	mk	Телефонска говорница
amenity	theatre	mk	Театар
amenity	toilets	mk	Тоалет
amenity	townhall	mk	Градски дом
amenity	university	mk	Универзитет
amenity	vending_machine	mk	Вендинг-машина
amenity	veterinary	mk	Ветеринарна клиника
amenity	village_hall	mk	Месна заедница
amenity	waste_basket	mk	Корпа за отпадоци
amenity	wifi	mk	Безжичен интернет
amenity	youth_centre	mk	Младински центар
boundary	administrative	mk	Административна граница
building	apartments	mk	Станбен блок
building	block	mk	Блок згради
building	bunker	mk	Бункер
building	chapel	mk	Капела
building	church	mk	Црква
building	city_hall	mk	Градски дом
building	commercial	mk	Комерцијална зграда
building	dormitory	mk	Студентски дом
building	entrance	mk	Влез во зграда
building	faculty	mk	Факултетски објект
building	farm	mk	Земјоделски објект
building	flats	mk	Станови
building	garage	mk	Гаража
building	hall	mk	Сала
building	hospital	mk	Болничка зграда
building	hotel	mk	Хотел
building	house	mk	Куќа
building	industrial	mk	Индустриски објект
building	office	mk	Деловна зграда
building	public	mk	Јавен објект
building	residential	mk	Станбена зграда
building	retail	mk	Продажен објект
building	school	mk	Школско здание
building	shop	mk	Дуќан
building	stadium	mk	Стадион
building	store	mk	Продавница
building	terrace	mk	Тераса
building	tower	mk	Кула
building	train_station	mk	Железничка станица
building	university	mk	Универзитетска зграда
highway	bridleway	mk	Коњски пат
highway	bus_guideway	mk	Автобуски шини
highway	bus_stop	mk	Автобуска постојка
highway	byway	mk	Спореден пат
highway	construction	mk	Автопат во изградба
highway	cycleway	mk	Велосипедска патека
highway	distance_marker	mk	Бележник на растојание
highway	emergency_access_point	mk	Прва помош
highway	footway	mk	Тротоар
highway	ford	mk	Брод
highway	gate	mk	Порта
highway	living_street	mk	Маалска улица
highway	minor	mk	Помал спореден пат
highway	motorway	mk	Автопат
highway	motorway_junction	mk	Клучка
highway	motorway_link	mk	Приклучен пат
highway	path	mk	Патека
highway	pedestrian	mk	Пешачка патека
highway	platform	mk	Платформа
highway	primary	mk	Главен пат
highway	primary_link	mk	Главен пат
highway	raceway	mk	Тркачка патека
highway	residential	mk	Станбен
highway	road	mk	Пат
highway	secondary	mk	Спореден пат
highway	secondary_link	mk	Спореден пат
highway	service	mk	Помошен пат
highway	services	mk	Крајпатен сервис
highway	steps	mk	Скалила
highway	stile	mk	Тарабен премин
highway	tertiary	mk	Третостепен пат
highway	track	mk	Полски пат
highway	trail	mk	Патека
highway	trunk	mk	Магистрала
highway	trunk_link	mk	Магистрала
highway	unclassified	mk	Некласификуван пат
highway	unsurfaced	mk	Неасфалтиран пат
historic	archaeological_site	mk	Археолошки локалитет
historic	battlefield	mk	Бојно поле
historic	boundary_stone	mk	Граничен камен
historic	building	mk	Градба
historic	castle	mk	Замок
historic	church	mk	Црква
historic	house	mk	Куќа
historic	icon	mk	Икона
historic	manor	mk	Велепоседнички дом
historic	memorial	mk	Споменик
historic	mine	mk	Рудник
historic	monument	mk	Споменик
historic	museum	mk	Музеј
historic	ruins	mk	Рушевини
historic	tower	mk	Кула
historic	wayside_cross	mk	Крајпатен крст
historic	wayside_shrine	mk	Параклис
historic	wreck	mk	Бродолом
landuse	allotments	mk	Парцели
landuse	basin	mk	Басен
landuse	brownfield	mk	Угар
landuse	cemetery	mk	Гробишта
landuse	commercial	mk	Комерцијално подрачје
landuse	conservation	mk	Заштитено земјиште
landuse	construction	mk	Градилиште
landuse	farm	mk	Фарма
landuse	farmland	mk	Обработливо земјиште
landuse	farmyard	mk	Земјоделски двор
landuse	forest	mk	Шума
landuse	grass	mk	Трева
landuse	greenfield	mk	Неискористено земјиште
landuse	industrial	mk	Индустриско подрачје
landuse	landfill	mk	Депонија
landuse	meadow	mk	Ливада
landuse	military	mk	Воено подрачје
landuse	mine	mk	Рудник
landuse	mountain	mk	Планина
landuse	nature_reserve	mk	Природен резерват
landuse	park	mk	Парк
landuse	piste	mk	Писта
landuse	plaza	mk	Плоштадче
landuse	quarry	mk	Каменолом
landuse	railway	mk	Железница
landuse	recreation_ground	mk	Рекреативен терен
landuse	reservoir	mk	Резервоар
landuse	residential	mk	Станбено подрачје
landuse	retail	mk	Дуќани
landuse	village_green	mk	Селско зеленило
landuse	vineyard	mk	Лозници
landuse	wetland	mk	Мочуриште
landuse	wood	mk	Шума
leisure	beach_resort	mk	Крајбрежно одморалиште
leisure	common	mk	Општествена земја
leisure	fishing	mk	Рибарење
leisure	garden	mk	Градина
leisure	golf_course	mk	Голф-терен
leisure	ice_rink	mk	Лизгалиште
leisure	marina	mk	Марина
leisure	miniature_golf	mk	Миниголф
leisure	nature_reserve	mk	Природен резерват
leisure	park	mk	Парк
leisure	pitch	mk	Спортски терен
leisure	playground	mk	Детско игралиште
leisure	recreation_ground	mk	Разонодно место
leisure	slipway	mk	Испуст
leisure	sports_centre	mk	Спортски центар
leisure	stadium	mk	Стадион
leisure	swimming_pool	mk	Базен
leisure	track	mk	Спортска патека
leisure	water_park	mk	Аквапарк
natural	bay	mk	Залив
natural	beach	mk	Плажа
natural	cape	mk	‘Рт
natural	cave_entrance	mk	Влез во пештера
natural	channel	mk	Канал
natural	cliff	mk	Гребен
natural	coastline	mk	Крајбрежје
natural	crater	mk	Кратер
natural	feature	mk	Елемент
natural	fell	mk	Фел
natural	fjord	mk	Фјорд
natural	geyser	mk	Гејзер
natural	glacier	mk	Глечер
natural	heath	mk	Голет
natural	hill	mk	Рид
natural	island	mk	Остров
natural	land	mk	Земја
natural	marsh	mk	Бара
natural	moor	mk	Пустара
natural	mud	mk	Кал
natural	peak	mk	Врв
natural	point	mk	Точка
natural	reef	mk	Гребен
natural	ridge	mk	Срт
natural	river	mk	Река
natural	rock	mk	Карпа
natural	scree	mk	Сип
natural	scrub	mk	Честак
natural	shoal	mk	Плитко место
natural	spring	mk	Извор
natural	strait	mk	Проток
natural	tree	mk	Дрво
natural	valley	mk	Долина
natural	volcano	mk	Вулкан
natural	water	mk	Вода
natural	wetland	mk	Мочуриште
natural	wetlands	mk	Мочуриште
natural	wood	mk	Шума
place	airport	mk	Аеродром
place	city	mk	Град
place	country	mk	Земја
place	county	mk	Грофовија
place	farm	mk	Фарма
place	hamlet	mk	Селце
place	house	mk	Куќа
place	houses	mk	Куќи
place	island	mk	Остров
place	islet	mk	Островче
place	locality	mk	Месност
place	moor	mk	Пустара
place	municipality	mk	Општина
place	postcode	mk	Поштенски број
place	region	mk	Регион
place	sea	mk	Море
place	state	mk	Покраина
place	subdivision	mk	Админ. подрачје
place	suburb	mk	Населба
place	town	mk	Град
place	unincorporated_area	mk	Нездружено подрачје
place	village	mk	Село
railway	abandoned	mk	Напуштена железничка линија
railway	construction	mk	Железничка линија во изградба
railway	disused	mk	Напуштена железничка линија
railway	disused_station	mk	Напуштена железничка станица
railway	funicular	mk	Жичена железница
railway	halt	mk	Железничка постојка
railway	historic_station	mk	Историска железничка станица
railway	junction	mk	Железнички јазол
railway	level_crossing	mk	Надвозник
railway	light_rail	mk	Лека железница
railway	monorail	mk	Едношинска линија
railway	narrow_gauge	mk	Теснолинејка
railway	platform	mk	Железнички перон
railway	preserved	mk	Зачувана железничка линија
railway	spur	mk	Железнички огранок
railway	station	mk	Железничка станица
railway	subway	mk	Метро станица
railway	subway_entrance	mk	Влез во метро
railway	switch	mk	Железнички пунктови
railway	tram	mk	Трамвајска линија
railway	tram_stop	mk	Трамвајска постојка
railway	yard	mk	Железничко депо
shop	alcohol	mk	Алкохол на црно
shop	apparel	mk	Облека
shop	art	mk	Уметнички дуќан
shop	bakery	mk	Пекара
shop	beauty	mk	Козметика
shop	beverages	mk	Пијалоци
shop	bicycle	mk	Продавница за велосипеди
shop	books	mk	Книжарница
shop	butcher	mk	Месарница
shop	car	mk	Автосалон
shop	car_dealer	mk	Автосалон
shop	car_parts	mk	Автоделови
shop	carpet	mk	Дуќан за теписи
shop	car_repair	mk	Автосервис
shop	charity	mk	Добротворна продавница
shop	chemist	mk	Аптека
shop	clothes	mk	Дуќан за облека
shop	computer	mk	Продавница за сметачи
shop	confectionery	mk	Слаткарница
shop	convenience	mk	Бакалница
shop	copyshop	mk	Фотокопир
shop	cosmetics	mk	Козметика
shop	department_store	mk	Стоковна куќа
shop	discount	mk	Распродажен дуќан
shop	doityourself	mk	Направи-сам
shop	drugstore	mk	Аптека
shop	dry_cleaning	mk	Хемиско чистење
shop	electronics	mk	Електронска опрема
shop	estate_agent	mk	Недвижности
shop	farm	mk	Земјоделски дуќан
shop	fashion	mk	Бутик
shop	fish	mk	Рибарница
shop	florist	mk	Цвеќара
shop	food	mk	Продавница за храна
shop	funeral_directors	mk	Погребална служба
shop	furniture	mk	Мебел
shop	gallery	mk	Галерија
shop	garden_centre	mk	Градинарски центар
shop	general	mk	Колонијал
shop	gift	mk	Дуќан за подароци
shop	greengrocer	mk	Пиљара
shop	grocery	mk	Бакалница
shop	hairdresser	mk	Фризер
shop	hardware	mk	Алат и опрема
shop	hifi	mk	Аудиосистеми
shop	insurance	mk	Осигурително
shop	jewelry	mk	Јувелир
shop	kiosk	mk	Трафика
shop	laundry	mk	Пералница
shop	mall	mk	Трговски центар
shop	market	mk	Пазар
shop	mobile_phone	mk	Мобилни телефони
shop	motorcycle	mk	Моторцикли
shop	music	mk	Музички дуќан
shop	newsagent	mk	Весникара
shop	optician	mk	Оптичар
shop	organic	mk	Здрава храна
shop	outdoor	mk	Дуќан на отворено
shop	pet	mk	Домашни миленици
shop	photo	mk	Фотографски дуќан
shop	salon	mk	Салон
shop	shoes	mk	Обувки
shop	shopping_centre	mk	Трговски центар
shop	sports	mk	Спортски дуќан
shop	stationery	mk	Прибор и репроматеријали
shop	supermarket	mk	Супермаркет
shop	toys	mk	Продавница за играчки
shop	travel_agency	mk	Туристичка агенција
shop	video	mk	Видеотека
shop	wine	mk	Алкохолни пијалоци
tourism	alpine_hut	mk	Планинска куќарка
tourism	artwork	mk	Уметничко дело
tourism	attraction	mk	Атракција
tourism	bed_and_breakfast	mk	Полупансион
tourism	cabin	mk	Колиба
tourism	camp_site	mk	Камп
tourism	caravan_site	mk	Автокамп
tourism	chalet	mk	Брвнара
tourism	guest_house	mk	Пансион
tourism	hostel	mk	Хостел
tourism	hotel	mk	Хотел
tourism	information	mk	Информации
tourism	lean_to	mk	Прилепена стреа
tourism	motel	mk	Мотел
tourism	museum	mk	Музеј
tourism	picnic_site	mk	Излетничко место
tourism	theme_park	mk	Забавен парк
tourism	valley	mk	Долина
tourism	viewpoint	mk	Видиковец
tourism	zoo	mk	Зоолошка
waterway	boatyard	mk	Чамцоградилиште
waterway	canal	mk	Канал
waterway	connector	mk	Слив
waterway	dam	mk	Брана
waterway	derelict_canal	mk	Запуштен канал
waterway	ditch	mk	Канач
waterway	dock	mk	Док
waterway	drain	mk	Одвод
waterway	lock	mk	Каналска брана
waterway	lock_gate	mk	Каналска капија
waterway	mineral_spring	mk	Минерален извор
waterway	mooring	mk	Сидриште
waterway	rapids	mk	Брзак
waterway	river	mk	Река
waterway	riverbank	mk	Кеј
waterway	stream	mk	Поток
waterway	wadi	mk	Вади
waterway	waterfall	mk	Водопад
waterway	water_point	mk	Пристап до вода
waterway	weir	mk	Јаз
amenity	airport	ms	Lapangan Terbang
amenity	arts_centre	ms	Pusat Seni
amenity	atm	ms	ATM
amenity	auditorium	ms	Auditorium
amenity	bank	ms	Bank
amenity	bar	ms	Kedai Arak
amenity	bench	ms	Bangku
amenity	bicycle_parking	ms	Letak Basikal
amenity	bicycle_rental	ms	Sewa Basikal
amenity	brothel	ms	Rumah Pelacuran
amenity	bureau_de_change	ms	Pengurup Wang
amenity	bus_station	ms	Stesen Bas
amenity	cafe	ms	Kafe
amenity	car_rental	ms	Sewa Kereta
amenity	car_sharing	ms	Kongsi Kereta
amenity	car_wash	ms	Cuci Kereta
amenity	casino	ms	Kasino
amenity	cinema	ms	Pawagam
amenity	clinic	ms	Klinik
amenity	club	ms	Kelab
amenity	college	ms	Maktab
amenity	community_centre	ms	Pusat Komuniti
amenity	courthouse	ms	Mahkamah
amenity	crematorium	ms	Bakar Mayat
amenity	dentist	ms	Doktor Gigi
amenity	doctors	ms	Doktor
amenity	dormitory	ms	Asrama
amenity	drinking_water	ms	Air Minuman
amenity	driving_school	ms	Sekolah Memandu
amenity	embassy	ms	Kedutaan
amenity	emergency_phone	ms	Telefon Kecemasan
amenity	fast_food	ms	Makanan Segera
amenity	ferry_terminal	ms	Terminal Feri
amenity	fire_hydrant	ms	Pili Bomba
amenity	fire_station	ms	Balai Bomba
amenity	fountain	ms	Air Pancutan
amenity	fuel	ms	Minyak
amenity	grave_yard	ms	Perkuburan
amenity	gym	ms	Pusat Senaman / Gim
amenity	hall	ms	Dewan
amenity	health_centre	ms	Pusat Kesihatan
amenity	hospital	ms	Hospital
amenity	hotel	ms	Hotel
amenity	hunting_stand	ms	Pondok Memburu
amenity	ice_cream	ms	Aiskrim
amenity	kindergarten	ms	Tadika
amenity	library	ms	Perpustakaan
amenity	market	ms	Pasar
amenity	marketplace	ms	Tempat Pasar
amenity	mountain_rescue	ms	Penyelamat Gunung
amenity	nightclub	ms	Kelab Malam
amenity	nursery	ms	Tabika
amenity	nursing_home	ms	Rumah Penjagaan
amenity	office	ms	Pejabat
amenity	park	ms	Taman
amenity	parking	ms	Letak Kereta
amenity	pharmacy	ms	Farmasi
amenity	place_of_worship	ms	Tempat Ibadat
amenity	police	ms	Polis
amenity	post_box	ms	Peti Surat
amenity	post_office	ms	Pejabat Pos
amenity	preschool	ms	Prasekolah
amenity	prison	ms	Penjara
amenity	pub	ms	Pab
amenity	public_building	ms	Bangunan Awam
amenity	public_market	ms	Pasar Awam
amenity	reception_area	ms	Sambut Tetamu
amenity	recycling	ms	Kitar Semula
amenity	restaurant	ms	Kedai Makan
amenity	retirement_home	ms	Rumah Persaraan
amenity	sauna	ms	Sauna
amenity	school	ms	Sekolah
amenity	shelter	ms	Perteduhan
amenity	shop	ms	Kedai
amenity	shopping	ms	Beli-Belah
amenity	social_club	ms	Kelab Sosial
amenity	studio	ms	Studio
amenity	supermarket	ms	Pasar Raya
amenity	taxi	ms	Teksi
amenity	telephone	ms	Telefon Awam
amenity	theatre	ms	Teater
amenity	toilets	ms	Tandas
amenity	townhall	ms	Dewan Bandar
amenity	university	ms	Universiti
amenity	vending_machine	ms	Mesin Layan Diri
amenity	veterinary	ms	Doktor Haiwan
amenity	village_hall	ms	Balai Raya
amenity	waste_basket	ms	Bakul Sampah
amenity	wifi	ms	Capaian WiFi
amenity	youth_centre	ms	Pusat Belia
boundary	administrative	ms	Sempadan Pentadbiran
building	apartments	ms	Blok Rumah Pangsa
building	block	ms	Blok Bangunan
building	bunker	ms	Bunker
building	chapel	ms	Gereja Kecil
building	church	ms	Gereja
building	city_hall	ms	Dewan Bandaraya
building	commercial	ms	Bangunan Perdagangan
building	dormitory	ms	Asrama
building	entrance	ms	Pintu Masuk Bangunan
building	faculty	ms	Bangunan Fakulti
building	farm	ms	Bangunan Ladang
building	flats	ms	Rumah Pangsa
building	garage	ms	Garaj
building	hall	ms	Dewan
building	hospital	ms	Bangunan Hospital
building	hotel	ms	Hotel
building	house	ms	Rumah
building	industrial	ms	Bangunan Industri
building	office	ms	Bangunan Pejabat
building	public	ms	Bangunan Awam
building	residential	ms	Bangunan Perumahan
building	retail	ms	Bangunan Peruncitan
building	school	ms	Bangunan Sekolah
building	shop	ms	Kedai
building	stadium	ms	Stadium
building	store	ms	Gedung
building	terrace	ms	Teres
building	tower	ms	Menara
building	train_station	ms	Stesen Keretapi
building	university	ms	Bangunan Universiti
highway	bridleway	ms	Lorong Kuda
highway	bus_guideway	ms	Lorong Bas Berpandu
highway	bus_stop	ms	Perhentian Bas
highway	byway	ms	Jalan Kecil
highway	construction	ms	Lebuhraya dalam Pembinaan
highway	cycleway	ms	Lorong Basikal
highway	distance_marker	ms	Penanda Jarak
highway	emergency_access_point	ms	Titik Capaian Kecemasan
highway	footway	ms	Lorong Pejalan Kaki
highway	ford	ms	Harungan
highway	gate	ms	Pintu Besar
highway	living_street	ms	Jalan Masyarakat
highway	minor	ms	Jalan Sampingan
highway	motorway	ms	Lebuhraya
highway	motorway_junction	ms	Simpang Lebuhraya
highway	motorway_link	ms	Jalan Lebuhraya
highway	path	ms	Lorong
highway	pedestrian	ms	Laluan Pejalan Kaki
highway	platform	ms	Platform
highway	primary	ms	Jalan Utama
highway	primary_link	ms	Jalan Utama
highway	raceway	ms	Jalan Lumba
highway	residential	ms	Perumahan
highway	road	ms	Jalan Raya
highway	secondary	ms	Jalan Sekunder
highway	secondary_link	ms	Jalan Sekunder
highway	service	ms	Jalan Perkhidmatan
highway	services	ms	Perkhidmatan Lebuhraya
highway	steps	ms	Tangga
highway	stile	ms	Tangga Pagar
highway	tertiary	ms	Jalan Tertier
highway	track	ms	Laluan
highway	trail	ms	Denai
highway	trunk	ms	Jalan Utama
highway	trunk_link	ms	Jalan Utama
highway	unclassified	ms	Jalan Tidak Terkelas
highway	unsurfaced	ms	Jalan Tanpa Turapan
historic	archaeological_site	ms	Tapak Kaji Purba
historic	battlefield	ms	Medan Pertempuran
historic	boundary_stone	ms	Batu Sempadan
historic	building	ms	Bangunan
historic	castle	ms	Istana
historic	church	ms	Gereja
historic	house	ms	Rumah
historic	icon	ms	Patung
historic	manor	ms	Manor
historic	memorial	ms	Peringatan
historic	mine	ms	Lombong
historic	monument	ms	Tugu
historic	museum	ms	Muzium
historic	ruins	ms	Puing
historic	tower	ms	Menara
historic	wayside_cross	ms	Salib Tepi Jalan
historic	wayside_shrine	ms	Tempat Suci Tepi Jalan
landuse	basin	ms	Lembangan
landuse	cemetery	ms	Perkuburan
landuse	commercial	ms	Kawasan Perdagangan
landuse	conservation	ms	Pemuliharaan
landuse	construction	ms	Pembinaan
landuse	farm	ms	Ladang
landuse	farmland	ms	Tanah Ladang
landuse	farmyard	ms	Laman Ladang
landuse	forest	ms	Hutan
landuse	grass	ms	Rumput
landuse	landfill	ms	Kambus Tanah
landuse	meadow	ms	Padang Rumput
landuse	military	ms	Kawasan Tentera
landuse	mine	ms	Lombong
landuse	mountain	ms	Gunung
landuse	nature_reserve	ms	Cagar Alam
landuse	park	ms	Taman
landuse	plaza	ms	Plaza
landuse	quarry	ms	Kuari
landuse	railway	ms	Landasan Keretapi
landuse	recreation_ground	ms	Taman Istirahat
landuse	reservoir	ms	Takungan
landuse	residential	ms	Kawasan Perumahan
landuse	retail	ms	Peruncitan
landuse	wetland	ms	Tanah Lembap
landuse	wood	ms	Hutan Kecil
leisure	beach_resort	ms	Peranginan Pantai
leisure	common	ms	Tanah Awam
leisure	fishing	ms	Tempat Memancing
leisure	garden	ms	Kebun
leisure	golf_course	ms	Padang Golf
leisure	ice_rink	ms	Gelanggang Ais
leisure	marina	ms	Marina
leisure	nature_reserve	ms	Cagar Alam
leisure	park	ms	Taman
leisure	playground	ms	Taman Permainan
leisure	sports_centre	ms	Pusat Sukan
leisure	stadium	ms	Stadium
leisure	swimming_pool	ms	Kolam Renang
leisure	water_park	ms	Taman Air
natural	bay	ms	Teluk
natural	beach	ms	Pantai
natural	cape	ms	Tanjung
natural	cave_entrance	ms	Liang Gua
natural	channel	ms	Alur
natural	cliff	ms	Cenuram
natural	crater	ms	Kawah
natural	feature	ms	Rupa Muka
natural	geyser	ms	Geiser
natural	glacier	ms	Glasier
natural	heath	ms	Kerangas
natural	hill	ms	Bukit
natural	island	ms	Pulau
natural	land	ms	Daratan
natural	moor	ms	Mur
natural	mud	ms	Lumpur
natural	peak	ms	Puncak
natural	reef	ms	Terumbu
natural	ridge	ms	Rabung
natural	river	ms	Sungai
natural	rock	ms	Batu
natural	scree	ms	Batu Runtuh
natural	scrub	ms	Belukar
natural	shoal	ms	Beting
natural	spring	ms	Mata Air
natural	strait	ms	Selat
natural	tree	ms	Pokok
natural	valley	ms	Lembah
natural	volcano	ms	Gunung Berapi
natural	water	ms	Air
place	airport	ms	Lapangan Terbang
place	city	ms	Bandar
place	country	ms	Negara
place	county	ms	Kaunti
place	farm	ms	Ladang
place	house	ms	Rumah
place	houses	ms	Rumah-Rumah
place	island	ms	Pulau
place	moor	ms	Mur
place	municipality	ms	Perbandaran
place	postcode	ms	Poskod
place	region	ms	Kawasan
place	sea	ms	Laut
place	state	ms	Negeri
place	suburb	ms	Subbandar
place	town	ms	Pekan
place	village	ms	Desa
railway	halt	ms	Perhentian Keretapi
railway	historic_station	ms	Stesen Keretapi Bersejarah
railway	monorail	ms	Monorel
railway	station	ms	Stesen Keretapi
railway	subway	ms	Stesen Bawah Tanah
railway	subway_entrance	ms	Pintu Masuk Bawah Tanah
shop	apparel	ms	Kedai Busana
shop	art	ms	Kedai Seni
shop	bicycle	ms	Kedai Basikal
shop	books	ms	Kedai Buku
shop	butcher	ms	Kedai Daging
shop	car	ms	Kedai Kereta
shop	clothes	ms	Kedai Pakaian
shop	computer	ms	Kedai Komputer
shop	department_store	ms	Gedung Serbaneka
shop	discount	ms	Kedai Diskaun
shop	drugstore	ms	Kedai Ubat
shop	electronics	ms	Kedai Elektronik
shop	farm	ms	Kedai Ladang
shop	fish	ms	Kedai Ikan
shop	florist	ms	Kedai Bunga
shop	food	ms	Kedai Makanan
shop	furniture	ms	Perabot
shop	grocery	ms	Kedai Runcit
shop	hifi	ms	Hi-Fi
shop	jewelry	ms	Kedai Barang Kemas
shop	market	ms	Pasar
shop	mobile_phone	ms	Kedai Telefon Bimbit
shop	organic	ms	Kedai Makanan Organik
shop	photo	ms	Kedai Foto
shop	shoes	ms	Kedai Kasut
shop	shopping_centre	ms	Pusat Beli-Belah
shop	supermarket	ms	Pasar Raya
shop	toys	ms	Kedai Mainan
shop	travel_agency	ms	Agensi Pelancongan
shop	video	ms	Kedai Video
tourism	hostel	ms	Hostel
tourism	hotel	ms	Hotel
tourism	information	ms	Maklumat
tourism	theme_park	ms	Taman Tema
tourism	valley	ms	Lembah
tourism	zoo	ms	Taman Haiwan
waterway	river	ms	Sungai
waterway	wadi	ms	Wadi
waterway	waterfall	ms	Air Terjun
amenity	doctors	myv	Рачт
amenity	embassy	myv	Кучолкс кудо
amenity	grave_yard	myv	Калмозэрь
amenity	pharmacy	myv	Оптека
amenity	post_office	myv	Почта
amenity	sauna	myv	Баня
amenity	school	myv	Школа
amenity	taxi	myv	Такси
amenity	theatre	myv	Театра
amenity	townhall	myv	Ош кудо
building	church	myv	Церкова
building	city_hall	myv	Ош кудо
building	tower	myv	Башня
highway	bus_stop	myv	Бузонь лотксема тарка
highway	ford	myv	Келямо тарка
highway	motorway	myv	Покш ки
highway	road	myv	Ки
highway	steps	myv	Кузтемат
highway	trail	myv	Ян
landuse	forest	myv	Вирь
landuse	meadow	myv	Лём
landuse	mountain	myv	Ине пандо
landuse	railway	myv	Чугункань ки
leisure	fishing	myv	Калонь кундсема тарка
leisure	park	myv	Парк
natural	cave_entrance	myv	Мода курго
natural	coastline	myv	Иневедь чире
natural	hill	myv	Пандо
natural	land	myv	Мода
natural	mud	myv	Рудаз
natural	river	myv	Лей
natural	spring	myv	Лисьмапря
natural	tree	myv	Чувто
natural	volcano	myv	Тол пандо
natural	water	myv	Ведь
natural	wood	myv	Вирне
place	airport	myv	Аэропорт
place	city	myv	Ош
place	country	myv	Мастор
place	county	myv	Мастор
place	farm	myv	Хверма
place	hamlet	myv	Церковавтомо веле
place	house	myv	Кудо
place	houses	myv	Кудот
place	island	myv	Усия
place	sea	myv	Иневедь
place	state	myv	Штат
place	town	myv	Ошкэ
place	village	myv	Веле
railway	tram	myv	Трамвай
tourism	museum	myv	Музей
tourism	zoo	myv	Зоопарк
waterway	canal	myv	Канал
waterway	dam	myv	Сёлт
waterway	river	myv	Лей
waterway	stream	myv	Чудикерькс
amenity	atm	mzn	شه‌پیل‌ده
amenity	brothel	mzn	لَم‌پشت
amenity	supermarket	mzn	دوکـّون
amenity	townhall	mzn	شهرداری
amenity	waste_basket	mzn	آشخال‌دون
landuse	railway	mzn	ریل
natural	channel	mzn	کانال
natural	coastline	mzn	دریو کینار
natural	volcano	mzn	تَش‌فیشون
place	farm	mzn	باغ
shop	books	mzn	کتاب بروتن جاء
shop	kiosk	mzn	تلفون خِنِه
shop	supermarket	mzn	دوکـّون
amenity	airport	nds	Flegerhaven
amenity	arts_centre	nds	Kunstcenter
amenity	atm	nds	Geldautomaat
amenity	auditorium	nds	Auditorium
amenity	bank	nds	Bank
amenity	bar	nds	Bar
amenity	bench	nds	Bank
amenity	bicycle_parking	nds	Rad-Parkplatz
amenity	brothel	nds	Bordell
amenity	bureau_de_change	nds	Wesselkontoor
amenity	cafe	nds	Café
amenity	car_rental	nds	Auto-Utlehner
amenity	car_wash	nds	Autowaschstraat
amenity	casino	nds	Kasino
amenity	cinema	nds	Kino
amenity	clinic	nds	Krankenhuus
amenity	club	nds	Club
amenity	college	nds	Hoogschool
amenity	courthouse	nds	Gericht
amenity	crematorium	nds	Krematorium
amenity	dentist	nds	Tähndokter
amenity	doctors	nds	Dokter
amenity	dormitory	nds	Studentenhuus
amenity	drinking_water	nds	Drinkwater
amenity	driving_school	nds	Fohrschool
amenity	embassy	nds	Baadschop
amenity	emergency_phone	nds	Noodtelefoon
amenity	fast_food	nds	Fast Food
amenity	ferry_terminal	nds	Fährterminal
amenity	fire_hydrant	nds	Hydrant
amenity	fire_station	nds	Füürwehr
amenity	fountain	nds	Fontään
amenity	fuel	nds	Tanksteed
amenity	grave_yard	nds	Karkhoff
amenity	gym	nds	Fitnesscenter
amenity	hall	nds	Hall
amenity	hospital	nds	Krankenhuus
amenity	hotel	nds	Hotel
amenity	hunting_stand	nds	Hoogstand
amenity	ice_cream	nds	Iesladen
amenity	kindergarten	nds	Kinnergoorn
amenity	library	nds	Bökeree
amenity	market	nds	Markt
amenity	marketplace	nds	Marktplatz
amenity	nightclub	nds	Nachtclub
amenity	nursery	nds	Kita
amenity	nursing_home	nds	Pleeghuus
amenity	office	nds	Kontoor
amenity	park	nds	Park
amenity	parking	nds	Parkplatz
amenity	pharmacy	nds	Avtheek
amenity	police	nds	Polizei
amenity	post_box	nds	Postkassen
amenity	post_office	nds	Postamt
amenity	preschool	nds	Vörschool
amenity	prison	nds	Gefängnis
amenity	pub	nds	Kroog
amenity	restaurant	nds	Restaurant
amenity	retirement_home	nds	Olenhuus
amenity	sauna	nds	Sauna
amenity	school	nds	School
amenity	shelter	nds	Schuulruum
amenity	shop	nds	Laden
amenity	shopping	nds	Ladens
amenity	social_club	nds	Sozialvereen
amenity	studio	nds	Eenkamer-Appartement
amenity	supermarket	nds	Supermarkt
amenity	taxi	nds	Taxi
amenity	theatre	nds	Theater
amenity	toilets	nds	Toiletten
amenity	university	nds	Universität
amenity	village_hall	nds	Gemeendehuus
amenity	wifi	nds	Wifi-Togang
amenity	youth_centre	nds	Jöögdcenter
building	apartments	nds	Wahnblock
building	bunker	nds	Bunker
building	chapel	nds	Kapell
building	church	nds	Kark
building	city_hall	nds	Raadhuus
building	dormitory	nds	Studentenhuus
building	farm	nds	Buuree-Bowark
building	flats	nds	Wahnungen
building	garage	nds	Garaasch
building	hall	nds	Hall
building	hospital	nds	Krankenhuus
building	hotel	nds	Hotel
building	house	nds	Huus
building	industrial	nds	Industriebowark
building	public	nds	Apenboor Bowark
building	residential	nds	Wahnhuus
building	school	nds	School-Bowark
building	shop	nds	Laden
building	stadium	nds	Stadion
building	store	nds	Laden
building	terrace	nds	Terrass
building	tower	nds	Toorn
highway	bridleway	nds	Riedpadd
highway	bus_stop	nds	Busstopp
highway	byway	nds	Siedenweg
highway	cycleway	nds	Radweg
highway	footway	nds	Footpadd
highway	ford	nds	Foord
highway	gate	nds	Heck
highway	living_street	nds	Wahnstraat
highway	minor	nds	Blangenstraat
highway	motorway	nds	Autobahn
highway	motorway_junction	nds	Autobahnkrüüz
highway	motorway_link	nds	Autobahnopfohrt
highway	path	nds	Padd
highway	pedestrian	nds	Footpadd
highway	platform	nds	Plattform
highway	raceway	nds	Rennbahn
highway	residential	nds	Wahnstraat
highway	road	nds	Straat
highway	steps	nds	Trepp
highway	stile	nds	Stegel
highway	track	nds	Feldweg
highway	trail	nds	Padd
historic	building	nds	Bowark
historic	castle	nds	Slott
historic	church	nds	Kark
historic	house	nds	Huus
historic	memorial	nds	Gedenksteed
historic	mine	nds	Mien
historic	monument	nds	Monument
historic	museum	nds	Museum
historic	ruins	nds	Ruinen
historic	tower	nds	Toorn
historic	wreck	nds	Wrack
landuse	basin	nds	Becken
landuse	cemetery	nds	Karkhoff
landuse	farm	nds	Buurhoff
landuse	farmland	nds	Ackerland
landuse	farmyard	nds	Buurhoff
landuse	forest	nds	Woold
landuse	grass	nds	Gras
landuse	industrial	nds	Industrierebeed
landuse	landfill	nds	Deponie
landuse	meadow	nds	Wisch
landuse	military	nds	Militärrebeed
landuse	mine	nds	Mien
landuse	mountain	nds	Barg
landuse	park	nds	Park
landuse	piste	nds	Piste
landuse	plaza	nds	Platz
landuse	quarry	nds	Steenkuhl
landuse	reservoir	nds	Reservoir
landuse	residential	nds	Wahnrebeed
landuse	vineyard	nds	Wiengoorn
landuse	wood	nds	Holt
leisure	common	nds	Buurmeen
leisure	garden	nds	Goorn
leisure	golf_course	nds	Golfbahn
leisure	ice_rink	nds	Iesbahn
leisure	marina	nds	Jachthaven
leisure	miniature_golf	nds	Minigolf
leisure	park	nds	Park
leisure	playground	nds	Speelplatz
leisure	slipway	nds	Slipphelling
leisure	sports_centre	nds	Sportzentrum
leisure	stadium	nds	Stadion
leisure	water_park	nds	Waterpark
natural	bay	nds	Bucht
natural	beach	nds	Strand
natural	cape	nds	Kap
natural	cave_entrance	nds	Höhleningang
natural	channel	nds	Kanaal
natural	coastline	nds	Küstenlien
natural	crater	nds	Krater
natural	fell	nds	Fjell
natural	fjord	nds	Fjord
natural	geyser	nds	Geiser
natural	glacier	nds	Gletscher
natural	heath	nds	Heid
natural	hill	nds	lütt Barg
natural	island	nds	Eiland
natural	land	nds	Land
natural	marsh	nds	Moor
natural	moor	nds	Moor
natural	mud	nds	Mudd
natural	peak	nds	Bargtopp
natural	reef	nds	Riff
natural	ridge	nds	Bargkamm
natural	river	nds	Stroom
natural	rock	nds	Steen
natural	scrub	nds	Krattbusch
natural	shoal	nds	Sandbank
natural	spring	nds	Born
natural	strait	nds	Straat
natural	tree	nds	Boom
natural	valley	nds	Daal
natural	volcano	nds	Vulkaan
natural	water	nds	Water
natural	wood	nds	Woold
place	airport	nds	Flegerhaven
place	city	nds	Stadt
place	country	nds	Land
place	county	nds	Distrikt
place	farm	nds	Buurhoff
place	hamlet	nds	Drubbel
place	house	nds	Huus
place	houses	nds	Hüüs
place	island	nds	Eiland
place	islet	nds	lütt Eiland
place	moor	nds	Moor
place	municipality	nds	Gemeen
place	sea	nds	See
place	state	nds	Staat
place	suburb	nds	Vöroort
place	town	nds	Stadt
place	village	nds	Dörp
railway	abandoned	nds	Opgeven Iesenbahn
railway	funicular	nds	Seelbahn
railway	monorail	nds	Monorail
railway	tram	nds	Stratenbahn
railway	tram_stop	nds	Stratenbahn-Stopp
shop	art	nds	Kunstladen
shop	bakery	nds	Bäckeree
shop	bicycle	nds	Radladen
shop	books	nds	Bookladen
shop	butcher	nds	Slachter
shop	car	nds	Autohuus
shop	car_dealer	nds	Autoverköper
shop	car_repair	nds	Autowarksteed
shop	chemist	nds	Avtheek
shop	computer	nds	Computerladen
shop	cosmetics	nds	Kosmetikladen
shop	drugstore	nds	Drogeree
shop	fish	nds	Fischhöker
shop	florist	nds	Blomenladen
shop	furniture	nds	Möbelladen
shop	gallery	nds	Galerie
shop	garden_centre	nds	Goorncenter
shop	gift	nds	Geschenkladen
shop	greengrocer	nds	Gröönhöker
shop	hairdresser	nds	Putzbüdel
shop	insurance	nds	Versekerung
shop	jewelry	nds	Juwelier
shop	kiosk	nds	Kiosk
shop	laundry	nds	Wäscheree
shop	mall	nds	Inkööpcenter
shop	market	nds	Markt
shop	motorcycle	nds	Motoorradladen
shop	newsagent	nds	Kiosk
shop	optician	nds	Optiker
shop	photo	nds	Fotoladen
shop	salon	nds	Salon
shop	shoes	nds	Schohladen
shop	supermarket	nds	Supermarkt
shop	toys	nds	Speeltüügladen
tourism	alpine_hut	nds	Barghütt
tourism	artwork	nds	Kunst
tourism	cabin	nds	Hütt
tourism	guest_house	nds	Gasthuus
tourism	hostel	nds	Jöögdharbarg
tourism	hotel	nds	Hotel
tourism	motel	nds	Motel
tourism	museum	nds	Museum
tourism	valley	nds	Daal
tourism	zoo	nds	Zoo
waterway	canal	nds	Kanaal
waterway	dam	nds	Damm
waterway	derelict_canal	nds	Opgeven Kanaal
waterway	ditch	nds	Sloot
waterway	dock	nds	Dock
waterway	lock	nds	Slüüs
waterway	lock_gate	nds	Slüsendoor
waterway	mineral_spring	nds	Mineralborn
waterway	river	nds	Stroom
waterway	riverbank	nds	Stroomöver
waterway	stream	nds	Beek
waterway	wadi	nds	Wadi
waterway	waterfall	nds	Waterfall
waterway	weir	nds	Wehr
amenity	airport	nl	Luchthaven
amenity	arts_centre	nl	Kunstcollectief
amenity	atm	nl	Geldautomaat
amenity	auditorium	nl	Auditorium
amenity	bank	nl	Bank
amenity	bar	nl	Bar
amenity	bench	nl	Bankje
amenity	bicycle_parking	nl	Fietsenstalling
amenity	bicycle_rental	nl	Fietsverhuur
amenity	brothel	nl	Bordeel
amenity	bureau_de_change	nl	Wisselkantoor
amenity	bus_station	nl	Busstation
amenity	cafe	nl	Café
amenity	car_rental	nl	Autoverhuur
amenity	car_sharing	nl	Autodelen
amenity	car_wash	nl	Autowasstraat
amenity	casino	nl	Casino
amenity	cinema	nl	Bioscoop
amenity	clinic	nl	Kliniek
amenity	club	nl	Club
amenity	college	nl	Hogeschool
amenity	community_centre	nl	Gemeenschapscentrum
amenity	courthouse	nl	Rechtbank
amenity	crematorium	nl	Crematorium
amenity	dentist	nl	Tandarts
amenity	doctors	nl	Dokter
amenity	dormitory	nl	Studentenhuis
amenity	drinking_water	nl	Drinkwater
amenity	driving_school	nl	Rijschool
amenity	embassy	nl	Ambassade
amenity	emergency_phone	nl	Noodtelefoon
amenity	fast_food	nl	Fast food
amenity	ferry_terminal	nl	Veerterminal
amenity	fire_hydrant	nl	Brandkraan
amenity	fire_station	nl	Brandweer
amenity	fountain	nl	Fontein
amenity	fuel	nl	Brandstof
amenity	grave_yard	nl	Begraafplaats
amenity	gym	nl	Fitnesscentrum
amenity	hall	nl	Hal
amenity	health_centre	nl	Gezondheidscentrum
amenity	hospital	nl	Ziekenhuis
amenity	hotel	nl	Hotel
amenity	hunting_stand	nl	Jachttoren
amenity	ice_cream	nl	IJs
amenity	kindergarten	nl	Kleuterschool
amenity	library	nl	Bibliotheek
amenity	market	nl	Markt
amenity	marketplace	nl	Marktplein
amenity	mountain_rescue	nl	Reddingsdienst
amenity	nightclub	nl	Nachtclub
amenity	nursery	nl	Peuterspeelzaal
amenity	nursing_home	nl	Verpleeghuis
amenity	office	nl	Kantoor
amenity	park	nl	Park
amenity	parking	nl	Parkeren
amenity	pharmacy	nl	Apotheek
amenity	place_of_worship	nl	Religieuze samenkomstplaats
amenity	police	nl	Politie
amenity	post_box	nl	Brievenbus
amenity	post_office	nl	Postkantoor
amenity	preschool	nl	Peuterspeelzaal of kleuterschool
amenity	prison	nl	Gevangenis
amenity	pub	nl	Café
amenity	public_building	nl	Openbaar gebouw
amenity	public_market	nl	Openbare markt
amenity	reception_area	nl	Receptie
amenity	recycling	nl	Recyclingpunt
amenity	restaurant	nl	Restaurant
amenity	retirement_home	nl	Bejaardenhuis
amenity	sauna	nl	Sauna
amenity	school	nl	School
amenity	shelter	nl	Beschutting
amenity	shop	nl	Winkel
amenity	shopping	nl	Winkelen
amenity	social_club	nl	Sociale club
amenity	studio	nl	Eenkamerappartement
amenity	supermarket	nl	Supermarkt
amenity	taxi	nl	Taxi
amenity	telephone	nl	Openbare telefoon
amenity	theatre	nl	Theater
amenity	toilets	nl	Toiletten
amenity	townhall	nl	Gemeentehuis
amenity	university	nl	Universiteit
amenity	vending_machine	nl	Automaat
amenity	veterinary	nl	Dierenarts
amenity	village_hall	nl	Gemeentehuis
amenity	waste_basket	nl	Prullenbak
amenity	wifi	nl	Wifi-toegang
amenity	youth_centre	nl	Jeugdcentrum
boundary	administrative	nl	Administratieve grens
building	apartments	nl	Appartementen
building	block	nl	Bouwblok
building	bunker	nl	Bunker
building	chapel	nl	Kapel
building	church	nl	Kerk
building	city_hall	nl	Gemeentehuis
building	commercial	nl	Commercieel gebouw
building	dormitory	nl	Studentenhuis
building	entrance	nl	Ingang
building	faculty	nl	Faculteitsgebouw
building	farm	nl	Agrarisch gebouw
building	flats	nl	Flats
building	garage	nl	Garage
building	hall	nl	Hal
building	hospital	nl	Ziekenhuis
building	hotel	nl	Hotel
building	house	nl	Huis
building	industrial	nl	Industrieel gebouw
building	office	nl	Kantoorgebouw
building	public	nl	Openbaar gebouw
building	residential	nl	Woningen
building	retail	nl	Winkelpand
building	school	nl	Schoolgebouw
building	shop	nl	Winkel
building	stadium	nl	Stadion
building	store	nl	Winkel
building	terrace	nl	Terras
building	tower	nl	Toren
building	train_station	nl	Spoorwegstation
building	university	nl	Universiteitsgebouw
highway	bridleway	nl	Ruiterpad
highway	bus_guideway	nl	Vrijliggende busbaan
highway	bus_stop	nl	Bushalte
highway	byway	nl	Onverharde weg
highway	construction	nl	Snelweg in aanbouw
highway	cycleway	nl	Fietspad
highway	distance_marker	nl	Afstandsmarkering
highway	emergency_access_point	nl	Noodafslag
highway	footway	nl	Voetpad
highway	ford	nl	Voorde
highway	gate	nl	Slagboom
highway	living_street	nl	Woonerf
highway	minor	nl	Lokale weg
highway	motorway	nl	Autosnelweg
highway	motorway_junction	nl	Autosnelwegknooppunt
highway	motorway_link	nl	Autosnelwegverbindingsweg
highway	path	nl	Pad
highway	pedestrian	nl	Voetpad
highway	platform	nl	Perron
highway	primary	nl	Primaire weg
highway	primary_link	nl	Primaire weg
highway	raceway	nl	Racecircuit
highway	residential	nl	Woonerf
highway	road	nl	Weg
highway	secondary	nl	Secundaire weg
highway	secondary_link	nl	Secundaire weg
highway	service	nl	Parallelweg
highway	services	nl	Autosnelwegdienstverlening
highway	steps	nl	Trap
highway	stile	nl	Overstap
highway	tertiary	nl	Tertiaire weg
highway	track	nl	Pad
highway	trail	nl	Pad
highway	trunk	nl	Autosnelweg
highway	trunk_link	nl	Autoweg
highway	unclassified	nl	Ongeclassificeerde weg
highway	unsurfaced	nl	Onverharde weg
historic	archaeological_site	nl	Archeologische vindplaats
historic	battlefield	nl	Slagveld
historic	boundary_stone	nl	Grenspaal
historic	building	nl	Gebouw
historic	castle	nl	Kasteel
historic	church	nl	Kerk
historic	house	nl	Huis
historic	icon	nl	Icoon
historic	manor	nl	Landgoed
historic	memorial	nl	Herdenkingsmonument
historic	mine	nl	Mijn
historic	monument	nl	Monoment
historic	museum	nl	Museum
historic	ruins	nl	Ruïne
historic	tower	nl	Toren
historic	wayside_cross	nl	Kruis langs de weg
historic	wayside_shrine	nl	Altaar langs de weg
historic	wreck	nl	Wrak
landuse	allotments	nl	Volkstuinen
landuse	basin	nl	Waterbekken
landuse	brownfield	nl	Braakliggend terrein
landuse	cemetery	nl	Begraafplaats
landuse	commercial	nl	Commercieel gebied
landuse	conservation	nl	Natuurbehoud
landuse	construction	nl	In aanbouw
landuse	farm	nl	Boerderij
landuse	farmland	nl	Gecultiveerd areaal
landuse	farmyard	nl	Boerenerf
landuse	forest	nl	Bos
landuse	grass	nl	Gras
landuse	greenfield	nl	Stadsgroen
landuse	industrial	nl	Industrieel gebied
landuse	landfill	nl	Stortplaats
landuse	meadow	nl	Weide
landuse	military	nl	Miltair gebied
landuse	mine	nl	Mijn
landuse	mountain	nl	Berg
landuse	nature_reserve	nl	Natuurreservaat
landuse	park	nl	Park
landuse	piste	nl	Piste
landuse	plaza	nl	Plein
landuse	quarry	nl	Steengroeve
landuse	railway	nl	Spoor
landuse	recreation_ground	nl	Recreatiegebied
landuse	reservoir	nl	Reservoir
landuse	residential	nl	Woonwijk
landuse	retail	nl	Winkels
landuse	village_green	nl	Stadsgroen
landuse	vineyard	nl	Wijngaard
landuse	wetland	nl	Moeras
landuse	wood	nl	Hout
leisure	beach_resort	nl	Badplaats
leisure	common	nl	Meent
leisure	fishing	nl	Visgrond
leisure	garden	nl	Tuin
leisure	golf_course	nl	Golfbaan
leisure	ice_rink	nl	IJsbaan
leisure	marina	nl	Jachthaven
leisure	miniature_golf	nl	Midgetgolf
leisure	nature_reserve	nl	Natuurreservaat
leisure	park	nl	Park
leisure	pitch	nl	Sportveld
leisure	playground	nl	Speelplaats
leisure	recreation_ground	nl	Recreatiegebied
leisure	slipway	nl	Trailerhelling
leisure	sports_centre	nl	Sportcentrum
leisure	stadium	nl	Stadion
leisure	swimming_pool	nl	Zwembad
leisure	track	nl	Atletiekbaan
leisure	water_park	nl	Waterspeelpark
natural	bay	nl	Baai
natural	beach	nl	Strand
natural	cape	nl	Kaap
natural	cave_entrance	nl	Grotingang
natural	channel	nl	Kanaal
natural	cliff	nl	Klif
natural	coastline	nl	Kustlijn
natural	crater	nl	Krater
natural	feature	nl	Bezienswaardigheid
natural	fell	nl	Fjell
natural	fjord	nl	Fjord
natural	geyser	nl	Geiser
natural	glacier	nl	Gletsjer
natural	heath	nl	Heide
natural	hill	nl	Heuvel
natural	island	nl	Eiland
natural	land	nl	Land
natural	marsh	nl	Moeras
natural	moor	nl	Veen
natural	mud	nl	Modder
natural	peak	nl	Spits
natural	point	nl	Punt
natural	reef	nl	Rif
natural	ridge	nl	Bergkam
natural	river	nl	Rivier
natural	rock	nl	Rotsen
natural	scree	nl	Puin
natural	scrub	nl	Struikgewas
natural	shoal	nl	Zandbank
natural	spring	nl	Bron
natural	strait	nl	Zeeëngte
natural	tree	nl	Boom
natural	valley	nl	Vallei
natural	volcano	nl	Vulkaan
natural	water	nl	Water
natural	wetland	nl	Moeras
natural	wetlands	nl	Moeras
natural	wood	nl	Bos
place	airport	nl	Luchthaven
place	city	nl	Stad
place	country	nl	Land
place	county	nl	District
place	farm	nl	Boerderij
place	hamlet	nl	Gehucht
place	house	nl	Huis
place	houses	nl	Huizen
place	island	nl	Eiland
place	islet	nl	Eilandje
place	locality	nl	Plaats
place	moor	nl	Veen
place	municipality	nl	Gemeente
place	postcode	nl	Postcode
place	region	nl	Regio
place	sea	nl	Zee
place	state	nl	Staat
place	subdivision	nl	Deelgebied
place	suburb	nl	Buitenwijk
place	town	nl	Stad
place	unincorporated_area	nl	Gemeentevrij gebied
place	village	nl	Dorp
railway	abandoned	nl	Vervallen spoorweg
railway	construction	nl	Spoor in aanbouw
railway	disused	nl	Ongebruikte spoorweg
railway	disused_station	nl	Ongebruikt spoorwegstation
railway	funicular	nl	Kabelspoorweg
railway	halt	nl	Treinhalte
railway	historic_station	nl	Historisch spoorwegstation
railway	junction	nl	Spoorwegkruising
railway	level_crossing	nl	Spoorwegovergang
railway	light_rail	nl	Lightrail
railway	monorail	nl	Monorail
railway	narrow_gauge	nl	Smalspoor
railway	platform	nl	Spoorwegplatform
railway	preserved	nl	Historisch spoor
railway	spur	nl	Parallelspoorweg
railway	station	nl	Spoorwegstation
railway	subway	nl	Metrostation
railway	subway_entrance	nl	Metroingang
railway	switch	nl	Wissel
railway	tram	nl	Tramrails
railway	tram_stop	nl	Tramhalte
railway	yard	nl	Rangeerterrein
shop	alcohol	nl	Slijterij
shop	apparel	nl	Kledingwinkel
shop	art	nl	Kunstwinkel
shop	bakery	nl	Bakkerij
shop	beauty	nl	Schoonheidssalon
shop	beverages	nl	Frisdrankverkooppunt
shop	bicycle	nl	Fietsenwinkel
shop	books	nl	Boekenwinkel
shop	butcher	nl	Slagerij
shop	car	nl	Automaterialenwinkel
shop	car_dealer	nl	Autodealer
shop	car_parts	nl	Autoonderdelen
shop	carpet	nl	Tapijtzaak
shop	car_repair	nl	Autogarage
shop	charity	nl	Liefdadigheidswinkel
shop	chemist	nl	Apotheek
shop	clothes	nl	Kledingwinkel
shop	computer	nl	Computerwinkel
shop	confectionery	nl	Snoepverkooppunt
shop	convenience	nl	Gemakswinkel
shop	copyshop	nl	Copyshop
shop	cosmetics	nl	Cosmeticawinkel
shop	department_store	nl	Warenhuis
shop	discount	nl	Discountwinkel
shop	doityourself	nl	Doe-het-zelf-winkel
shop	drugstore	nl	Drogisterij
shop	dry_cleaning	nl	Stomerij
shop	electronics	nl	Elektronicawinkel
shop	estate_agent	nl	Makelaar
shop	farm	nl	Boerenwinkel
shop	fashion	nl	Kledingwinkel
shop	fish	nl	Viswinkel
shop	florist	nl	Bloemist
shop	food	nl	Etenswarenwinkel
shop	funeral_directors	nl	Uitvaartcentrum
shop	furniture	nl	Meubelzaak
shop	gallery	nl	Galerie
shop	garden_centre	nl	Tuincentrum
shop	general	nl	Algemene winkel
shop	gift	nl	Cadeauwinkel
shop	greengrocer	nl	Groenteboer
shop	grocery	nl	Kruidenierswinkel
shop	hairdresser	nl	Kapper
shop	hardware	nl	Gereedschappenwinkel
shop	hifi	nl	Hi-fi
shop	insurance	nl	Verzekering
shop	jewelry	nl	Juwelier
shop	kiosk	nl	Kioskwinkel
shop	laundry	nl	Wasserij
shop	mall	nl	Overdekt winkelcentrum
shop	market	nl	Markt
shop	mobile_phone	nl	Mobiele telefoons
shop	motorcycle	nl	Motorfietsenwinkel
shop	music	nl	Muziekwinkel
shop	newsagent	nl	Straatkiosk
shop	optician	nl	Opticien
shop	organic	nl	Organische winkel
shop	outdoor	nl	Buitensportwinkel
shop	pet	nl	Dierenwinkel
shop	photo	nl	Fotowinkel
shop	salon	nl	Schoonheidssalon
shop	shoes	nl	Schoenenzaak
shop	shopping_centre	nl	Winkelcentrum
shop	sports	nl	Sportwinkel
shop	stationery	nl	Kantoorartikelenwinkel
shop	supermarket	nl	Supermarkt
shop	toys	nl	Speelgoedwinkel
shop	travel_agency	nl	Reisbureau
shop	video	nl	Videotheek
shop	wine	nl	Slijterij
tourism	alpine_hut	nl	Berghut
tourism	artwork	nl	Kunst
tourism	attraction	nl	Attractie
tourism	bed_and_breakfast	nl	Pension
tourism	cabin	nl	Hut
tourism	camp_site	nl	Kampeerterrein
tourism	caravan_site	nl	Caravankampeerterrein
tourism	chalet	nl	Vakantiehuisje
tourism	guest_house	nl	Gastenverblijf
tourism	hostel	nl	Jeugdherberg
tourism	hotel	nl	Hotel
tourism	information	nl	Gegevens
tourism	lean_to	nl	Open schutplaats
tourism	motel	nl	Motel
tourism	museum	nl	Museum
tourism	picnic_site	nl	Picknickplaats
tourism	theme_park	nl	Pretpark
tourism	valley	nl	Vallei
tourism	viewpoint	nl	Bijzonder uitzicht
tourism	zoo	nl	Dierentuin
waterway	boatyard	nl	Scheepswerf
waterway	canal	nl	Kanaal
waterway	connector	nl	Waterverbinding
waterway	dam	nl	Dam
waterway	derelict_canal	nl	Onbeheerd kanaal
waterway	ditch	nl	Sloot
waterway	dock	nl	Dock
waterway	drain	nl	Afvoerkanaal
waterway	lock	nl	Schutsluis
waterway	lock_gate	nl	Sluisdeur
waterway	mineral_spring	nl	Bron
waterway	mooring	nl	Aanlegplaats
waterway	rapids	nl	Stroomversnelling
waterway	river	nl	Rivier
waterway	riverbank	nl	Rivierbedding
waterway	stream	nl	Stroom
waterway	wadi	nl	Beek
waterway	waterfall	nl	Waterval
waterway	water_point	nl	Waterpunt
waterway	weir	nl	Stuwdam
amenity	airport	no	Flyplass
amenity	arts_centre	no	Kunstsenter
amenity	atm	no	Minibank
amenity	auditorium	no	Auditorium
amenity	bank	no	Bank
amenity	bar	no	Bar
amenity	bench	no	Benk
amenity	bicycle_parking	no	Sykkelparkering
amenity	bicycle_rental	no	Sykkelutleie
amenity	brothel	no	Bordell
amenity	bureau_de_change	no	Vekslingskontor
amenity	bus_station	no	Busstasjon
amenity	cafe	no	Kafé
amenity	car_rental	no	Bilutleie
amenity	car_sharing	no	Bildeling
amenity	car_wash	no	Bilvask
amenity	casino	no	Kasino
amenity	cinema	no	Kino
amenity	clinic	no	Klinikk
amenity	club	no	Klubb
amenity	college	no	Høyskole
amenity	community_centre	no	Samfunnshus
amenity	courthouse	no	Rettsbygning
amenity	crematorium	no	Krematorium
amenity	dentist	no	Tannlege
amenity	doctors	no	Leger
amenity	dormitory	no	Sovesal
amenity	drinking_water	no	Drikkevann
amenity	driving_school	no	Kjøreskole
amenity	embassy	no	Ambassade
amenity	emergency_phone	no	Nødtelefon
amenity	fast_food	no	Hurtigmat
amenity	ferry_terminal	no	Ferjeterminal
amenity	fire_hydrant	no	Brannhydrant
amenity	fire_station	no	Brannstasjon
amenity	fountain	no	Fontene
amenity	fuel	no	Drivstoff
amenity	grave_yard	no	Gravlund
amenity	gym	no	Treningssenter
amenity	hall	no	Spisesal
amenity	health_centre	no	Helsesenter
amenity	hospital	no	Sykehus
amenity	hotel	no	Hotell
amenity	hunting_stand	no	Jaktbod
amenity	ice_cream	no	Iskrem
amenity	kindergarten	no	Barnehage
amenity	library	no	Bibliotek
amenity	market	no	Marked
amenity	marketplace	no	Markedsplass
amenity	mountain_rescue	no	Fjellredning
amenity	nightclub	no	Nattklubb
amenity	nursery	no	Førskole
amenity	nursing_home	no	Pleiehjem
amenity	office	no	Kontor
amenity	park	no	Park
amenity	parking	no	Parkeringsplass
amenity	pharmacy	no	Apotek
amenity	place_of_worship	no	Tilbedelsesplass
amenity	police	no	Politi
amenity	post_box	no	Postboks
amenity	post_office	no	Postkontor
amenity	preschool	no	Førskole
amenity	prison	no	Fengsel
amenity	pub	no	Pub
amenity	public_building	no	Offentlig bygning
amenity	public_market	no	Offentlig marked
amenity	reception_area	no	Oppsamlingsområde
amenity	recycling	no	Resirkuleringspunkt
amenity	restaurant	no	Restaurant
amenity	retirement_home	no	Gamlehjem
amenity	sauna	no	Sauna
amenity	school	no	Skole
amenity	shelter	no	Tilfluktsrom
amenity	shop	no	Butikk
amenity	shopping	no	Handel
amenity	social_club	no	Sosial klubb
amenity	studio	no	Studio
amenity	supermarket	no	Supermarked
amenity	taxi	no	Drosje
amenity	telephone	no	Offentlig telefon
amenity	theatre	no	Teater
amenity	toilets	no	Toaletter
amenity	townhall	no	Rådhus
amenity	university	no	Universitet
amenity	vending_machine	no	Vareautomat
amenity	veterinary	no	Veterinærklinikk
amenity	village_hall	no	Forsamlingshus
amenity	waste_basket	no	Søppelkasse
amenity	wifi	no	WiFi-tilgangspunkt
amenity	youth_centre	no	Ungdomssenter
boundary	administrative	no	Administrativ grense
building	apartments	no	Leilighetsblokk
building	block	no	Bygningsblokk
building	bunker	no	Bunker
building	chapel	no	Kapell
building	church	no	Kirke
building	city_hall	no	Rådhus
building	commercial	no	Kommersiell bygning
building	dormitory	no	Sovesal
building	entrance	no	Bygningsinngang
building	faculty	no	Fakultetsbygning
building	farm	no	Gårdsbygg
building	flats	no	Leiligheter
building	garage	no	Garasje
building	hall	no	Spisesal
building	hospital	no	Sykehusbygg
building	hotel	no	Hotell
building	house	no	Hus
building	industrial	no	Industribygg
building	office	no	Kontorbygg
building	public	no	Offentlig bygg
building	residential	no	Boligbygg
building	retail	no	Detaljsalgbygg
building	school	no	Skolebygg
building	shop	no	Butikk
building	stadium	no	Stadion
building	store	no	Butikk
building	terrace	no	Terrasse
building	tower	no	Tårn
building	train_station	no	Jernbanestasjon
building	university	no	Universitetsbygg
highway	bridleway	no	Ridevei
highway	bus_guideway	no	Ledet bussfelt
highway	bus_stop	no	Busstopp
highway	byway	no	Stikkvei
highway	construction	no	Motorvei under konstruksjon
highway	cycleway	no	Sykkelsti
highway	distance_marker	no	Avstandsmarkør
highway	emergency_access_point	no	Nødtilgangspunkt
highway	footway	no	Gangsti
highway	ford	no	Vadested
highway	gate	no	Bom
highway	living_street	no	Gatetun
highway	minor	no	Mindre vei
highway	motorway	no	Motorvei
highway	motorway_junction	no	Motorveikryss
highway	motorway_link	no	Vei til motorvei
highway	path	no	Sti
highway	pedestrian	no	Gangvei
highway	platform	no	Perrong
highway	primary	no	Primær vei
highway	primary_link	no	Primær vei
highway	raceway	no	Racerbane
highway	residential	no	Bolig
highway	road	no	Vei
highway	secondary	no	Sekundær vei
highway	secondary_link	no	Sekundær vei
highway	service	no	Tjenestevei
highway	services	no	Motorveitjenester
highway	steps	no	Trapper
highway	stile	no	Stige
highway	tertiary	no	Tertiær vei
highway	track	no	Sti
highway	trail	no	Sti
highway	trunk	no	Hovedvei
highway	trunk_link	no	Hovedvei
highway	unclassified	no	Uklassifisert vei
highway	unsurfaced	no	Vei uten dekke
historic	archaeological_site	no	Arkeologisk plass
historic	battlefield	no	Slagmark
historic	boundary_stone	no	Grensestein
historic	building	no	Bygning
historic	castle	no	Slott
historic	church	no	Kirke
historic	house	no	Hus
historic	icon	no	Ikon
historic	manor	no	Herregård
historic	memorial	no	Minne
historic	mine	no	Gruve
historic	monument	no	Monument
historic	museum	no	Museum
historic	ruins	no	Ruiner
historic	tower	no	Tårn
historic	wayside_cross	no	Veikant kors
historic	wayside_shrine	no	Veikant alter
historic	wreck	no	Vrak
landuse	allotments	no	Kolonihager
landuse	basin	no	Elveområde
landuse	brownfield	no	Tidligere industriområde
landuse	cemetery	no	Gravplass
landuse	commercial	no	Kommersielt område
landuse	conservation	no	Fredet
landuse	construction	no	Kontruksjon
landuse	farm	no	Gård
landuse	farmland	no	Jordbruksland
landuse	farmyard	no	Gårdstun
landuse	forest	no	Skog
landuse	grass	no	Gress
landuse	greenfield	no	Ikke-utviklet område
landuse	industrial	no	Industriområde
landuse	landfill	no	Landfylling
landuse	meadow	no	Eng
landuse	military	no	Militært område
landuse	mine	no	Gruve
landuse	mountain	no	Fjell
landuse	nature_reserve	no	Naturreservat
landuse	park	no	Park
landuse	piste	no	Løype
landuse	plaza	no	Torg
landuse	quarry	no	Steinbrudd
landuse	railway	no	Jernbane
landuse	recreation_ground	no	Idrettsplass
landuse	reservoir	no	Reservoar
landuse	residential	no	Boligområde
landuse	retail	no	Detaljsalg
landuse	village_green	no	landsbypark
landuse	vineyard	no	Vingård
landuse	wetland	no	Våtland
landuse	wood	no	Skog
leisure	beach_resort	no	Strandsted
leisure	common	no	Allmenning
leisure	fishing	no	Fiskeområde
leisure	garden	no	Hage
leisure	golf_course	no	Golfbane
leisure	ice_rink	no	Skøytebane
leisure	marina	no	Båthavn
leisure	miniature_golf	no	Minigolf
leisure	nature_reserve	no	Naturreservat
leisure	park	no	Park
leisure	pitch	no	Sportsarena
leisure	playground	no	Lekeplass
leisure	recreation_ground	no	Idrettsplass
leisure	slipway	no	Slipp
leisure	sports_centre	no	Sportssenter
leisure	stadium	no	Stadion
leisure	swimming_pool	no	Svømmebaseng
leisure	track	no	Løpebane
leisure	water_park	no	Vannpark
natural	bay	no	Bukt
natural	beach	no	Strand
natural	cape	no	Nes
natural	cave_entrance	no	Huleinngang
natural	channel	no	Kanal
natural	cliff	no	Klippe
natural	coastline	no	Kystlinje
natural	crater	no	Krater
natural	feature	no	Egenskap
natural	fell	no	Fjellskrent
natural	fjord	no	Fjord
natural	geyser	no	Geysir
natural	glacier	no	Isbre
natural	heath	no	Vidde
natural	hill	no	Ås
natural	island	no	Øy
natural	land	no	Land
natural	marsh	no	Sump
natural	moor	no	Myr
natural	mud	no	Gjørme
natural	peak	no	Topp
natural	point	no	Punkt
natural	reef	no	Rev
natural	ridge	no	Rygg
natural	river	no	Elv
natural	rock	no	Stein
natural	scree	no	Ur
natural	scrub	no	Kratt
natural	shoal	no	Grunning
natural	spring	no	Kilde
natural	strait	no	Stred
natural	tree	no	Tre
natural	valley	no	Dal
natural	volcano	no	Vulkan
natural	water	no	Vann
natural	wetland	no	Våtmark
natural	wetlands	no	Våtland
natural	wood	no	Skog
place	airport	no	Flyplass
place	city	no	By
place	country	no	Land
place	county	no	Fylke
place	farm	no	Gård
place	hamlet	no	Grend
place	house	no	Hus
place	houses	no	Hus
place	island	no	Øy
place	islet	no	Holme
place	locality	no	Plass
place	moor	no	Myr
place	municipality	no	Kommune
place	postcode	no	Postnummer
place	region	no	Område
place	sea	no	Hav
place	state	no	Delstat
place	subdivision	no	Underavdeling
place	suburb	no	Forstad
place	town	no	Tettsted
place	unincorporated_area	no	Kommunefritt område
place	village	no	Landsby
railway	abandoned	no	Forlatt jernbane
railway	construction	no	Jernbane under konstruksjon
railway	disused	no	Nedlagt jernbane
railway	disused_station	no	Nedlagt jernbanestasjon
railway	funicular	no	Kabelbane
railway	halt	no	Togstopp
railway	historic_station	no	Historisk jernbanestasjon
railway	junction	no	Jernbanekryss
railway	level_crossing	no	Planovergang
railway	light_rail	no	Bybane
railway	monorail	no	Enskinnebane
railway	narrow_gauge	no	Smalspor jernbane
railway	platform	no	Jernbaneperrong
railway	preserved	no	Bevart jernbane
railway	spur	no	Jernbaneforgrening
railway	station	no	Jernbanestasjon
railway	subway	no	T-banestasjon
railway	subway_entrance	no	T-baneinngang
railway	switch	no	Sporveksel
railway	tram	no	Sporvei
railway	tram_stop	no	Trikkestopp
railway	yard	no	Skiftetomt
shop	alcohol	no	Utenfor lisens
shop	apparel	no	Klesbutikk
shop	art	no	Kunstbutikk
shop	bakery	no	Bakeri
shop	beauty	no	Skjønnhetssalong
shop	beverages	no	Drikkevarerbutikk
shop	bicycle	no	Sykkelbutikk
shop	books	no	Bokhandel
shop	butcher	no	Slakter
shop	car	no	Bilbutikk
shop	car_dealer	no	Bilforhandler
shop	car_parts	no	Bildeler
shop	carpet	no	Teppebutikk
shop	car_repair	no	Bilverksted
shop	charity	no	Veldedighetsbutikk
shop	chemist	no	Kjemiker
shop	clothes	no	Klesbutikk
shop	computer	no	Databutikk
shop	confectionery	no	Konditori
shop	convenience	no	Nærbutikk
shop	copyshop	no	Kopieringsbutikk
shop	cosmetics	no	Kosmetikkforretning
shop	department_store	no	Varehus
shop	discount	no	Tilbudsbutikk
shop	doityourself	no	Gjør-det-selv
shop	drugstore	no	Apotek
shop	dry_cleaning	no	Renseri
shop	electronics	no	Elektronikkforretning
shop	estate_agent	no	Eiendomsmegler
shop	farm	no	Gårdsbutikk
shop	fashion	no	Motebutikk
shop	fish	no	Fiskebutikk
shop	florist	no	Blomsterbutikk
shop	food	no	Matbutikk
shop	funeral_directors	no	Begravelsesforretning
shop	furniture	no	Møbler
shop	gallery	no	Galleri
shop	garden_centre	no	Hagesenter
shop	general	no	Landhandel
shop	gift	no	Gavebutikk
shop	greengrocer	no	Grønnsakshandel
shop	grocery	no	Dagligvarebutikk
shop	hairdresser	no	Frisør
shop	hardware	no	Jernvarehandel
shop	hifi	no	Hi-Fi
shop	insurance	no	Forsikring
shop	jewelry	no	Gullsmed
shop	kiosk	no	Kiosk
shop	laundry	no	Vaskeri
shop	mall	no	Kjøpesenter
shop	market	no	Marked
shop	mobile_phone	no	Mobiltelefonbutikk
shop	motorcycle	no	Motorsykkelbutikk
shop	music	no	Musikkbutikk
shop	newsagent	no	Nyhetsbyrå
shop	optician	no	Optiker
shop	organic	no	Organisk matbutikk
shop	outdoor	no	Utendørs butikk
shop	pet	no	Dyrebutikk
shop	photo	no	Fotobutikk
shop	salon	no	Salong
shop	shoes	no	Skobutikk
shop	shopping_centre	no	Kjøpesenter
shop	sports	no	Sportsbutikk
shop	stationery	no	Papirbutikk
shop	supermarket	no	Supermarked
shop	toys	no	Lekebutikk
shop	travel_agency	no	Reisebyrå
shop	video	no	Videobutikk
shop	wine	no	Utenfor lisens
tourism	alpine_hut	no	Fjellhytte
tourism	artwork	no	Kunstverk
tourism	attraction	no	Attraksjon
tourism	bed_and_breakfast	no	Bed and Breakfast
tourism	cabin	no	Hytte
tourism	camp_site	no	Teltplass
tourism	caravan_site	no	Campingplass
tourism	chalet	no	Fjellhytte
tourism	guest_house	no	Gjestehus
tourism	hostel	no	Vandrerhjem
tourism	hotel	no	Hotell
tourism	information	no	Informasjon
tourism	lean_to	no	Lenne inntil
tourism	motel	no	Motell
tourism	museum	no	Museum
tourism	picnic_site	no	Piknikplass
tourism	theme_park	no	Fornøyelsespark
tourism	valley	no	Dal
tourism	viewpoint	no	Utsiktspunkt
tourism	zoo	no	Dyrepark
waterway	boatyard	no	Båthan
waterway	canal	no	Kanal
waterway	connector	no	Vannveiforbindelse
waterway	dam	no	Demning
waterway	derelict_canal	no	Nedlagt kanal
waterway	ditch	no	Grøft
waterway	dock	no	Dokk
waterway	drain	no	Avløp
waterway	lock	no	Sluse
waterway	lock_gate	no	Sluseport
waterway	mineral_spring	no	Mineralkilde
waterway	mooring	no	Fortøyning
waterway	rapids	no	Stryk
waterway	river	no	Elv
waterway	riverbank	no	Elvebredd
waterway	stream	no	Strøm
waterway	wadi	no	Elveleie
waterway	waterfall	no	Foss
waterway	water_point	no	Vannpunkt
waterway	weir	no	Overløpskant
amenity	airport	pl	Lonisko
amenity	arts_centre	pl	Centrum sztuki
amenity	atm	pl	Bankomat
amenity	auditorium	pl	Audytorium
amenity	bank	pl	Bank
amenity	bar	pl	Bar
amenity	bench	pl	Ławka
amenity	bicycle_parking	pl	Parking rowerowy
amenity	bicycle_rental	pl	Wypożyczalnia rowerów
amenity	brothel	pl	Dom publiczny
amenity	bureau_de_change	pl	Kantor
amenity	bus_station	pl	Stacja autobusowa
amenity	cafe	pl	Kawiarnia
amenity	car_rental	pl	Wynajem samochodów
amenity	car_sharing	pl	Dzielenie się samochodami
amenity	car_wash	pl	Myjnia samochodowa
amenity	casino	pl	Kasyno
amenity	cinema	pl	Kino
amenity	clinic	pl	Przychodnia
amenity	club	pl	Klub
amenity	college	pl	Uczelnia
amenity	community_centre	pl	Centrum społeczności
amenity	courthouse	pl	Sąd
amenity	crematorium	pl	Krematorium
amenity	dentist	pl	Gabinet dentystyczny
amenity	doctors	pl	Lekarze
amenity	dormitory	pl	Bursa
amenity	drinking_water	pl	Źródło wody pitnej
amenity	driving_school	pl	Nauka jazdy
amenity	embassy	pl	Ambasada
amenity	emergency_phone	pl	Telefon alarmowy
amenity	fast_food	pl	Fast Food
amenity	ferry_terminal	pl	Terminal promowy
amenity	fire_hydrant	pl	Hydrant
amenity	fire_station	pl	Remiza strażacka
amenity	fountain	pl	Fontanna
amenity	fuel	pl	Stacja benzynowa
amenity	grave_yard	pl	Mniejszy cmentarz
amenity	gym	pl	Centrum Fitness / Sala Gimnastyczna
amenity	hall	pl	Hala
amenity	health_centre	pl	Ośrodek zdrowia
amenity	hospital	pl	Szpital
amenity	hotel	pl	Hotel
amenity	hunting_stand	pl	Ambona myśliwska
amenity	ice_cream	pl	Lodziarnia
amenity	kindergarten	pl	Przedszkole
amenity	library	pl	Biblioteka
amenity	market	pl	Targowisko
amenity	marketplace	pl	Plac targowy
amenity	mountain_rescue	pl	Ratownictwo górskie
amenity	nightclub	pl	Klub nocny
amenity	nursery	pl	Żłobek
amenity	nursing_home	pl	Dom opieki
amenity	office	pl	Biuro
amenity	park	pl	Park
amenity	parking	pl	Parking
amenity	pharmacy	pl	Apteka
amenity	place_of_worship	pl	Miejsce kultu
amenity	police	pl	Posterunek policji
amenity	post_box	pl	Skrzynka pocztowa
amenity	post_office	pl	Poczta
amenity	preschool	pl	Przedszkole
amenity	prison	pl	Więzienie
amenity	pub	pl	Pub
amenity	public_building	pl	Budynek publiczny
amenity	public_market	pl	Rynek publiczny
amenity	reception_area	pl	Recepcja
amenity	recycling	pl	Miejsce recyklingu
amenity	restaurant	pl	Restauracja
amenity	retirement_home	pl	Dom starców
amenity	sauna	pl	Sauna
amenity	school	pl	Szkoła
amenity	shelter	pl	Schron
amenity	shop	pl	Sklep
amenity	shopping	pl	Zakupy
amenity	social_club	pl	Klub towarzyski
amenity	studio	pl	Studio
amenity	supermarket	pl	Supermarket
amenity	taxi	pl	Postój taksówek
amenity	telephone	pl	Budka telefoniczna
amenity	theatre	pl	Teatr
amenity	toilets	pl	Toaleta publiczna
amenity	townhall	pl	Urząd miejski
amenity	university	pl	Uniwersytet
amenity	vending_machine	pl	Automat do sprzedaży
amenity	veterinary	pl	Chirurgia weterynaryjna
amenity	village_hall	pl	Urząd gminy
amenity	waste_basket	pl	Kosz na śmieci
amenity	wifi	pl	Dostęp do WiFi
amenity	youth_centre	pl	Centrum młodzieżowe
boundary	administrative	pl	Granica administracyjna
building	apartments	pl	Blok mieszkalny
building	block	pl	Budynek bloku
building	bunker	pl	Bunkier
building	chapel	pl	Kaplica
building	church	pl	Kościół
building	city_hall	pl	Ratusz
building	commercial	pl	Budynek handlowy
building	dormitory	pl	Bursa
building	entrance	pl	Wejście do budynku
building	faculty	pl	Budynek prawny
building	farm	pl	Budynek gospodarczy
building	flats	pl	Mieszkania
building	garage	pl	Garaż
building	hall	pl	Hala
building	hospital	pl	Budynek szpitala
building	hotel	pl	Hotel
building	house	pl	Dom
building	industrial	pl	Budynek przemysłowy
building	office	pl	Budynek biurowy
building	public	pl	Budynek publiczny
building	residential	pl	Budynek mieszkalny
building	retail	pl	Budynek detaliczny
building	school	pl	Budynek szkoły
building	shop	pl	Sklep
building	stadium	pl	Stadion
building	store	pl	Składnica
building	terrace	pl	Taras
building	tower	pl	Wieża
building	train_station	pl	Stacja kolejowa
building	university	pl	Budynek uniwersytetu
highway	bridleway	pl	Droga dla koni
highway	bus_guideway	pl	Droga dla autobusów
highway	bus_stop	pl	Przystanek autobusowy
highway	byway	pl	Boczna droga
highway	construction	pl	Droga budowana
highway	cycleway	pl	Ścieżka rowerowa
highway	distance_marker	pl	Znak odległości
highway	emergency_access_point	pl	Punkt awaryjny
highway	footway	pl	Chodnik
highway	ford	pl	Bród
highway	gate	pl	Bramka
highway	living_street	pl	Strefa zamieszkania
highway	minor	pl	Drobna droga
highway	motorway	pl	Autostrada
highway	motorway_junction	pl	Skrzyżowanie autostrad
highway	motorway_link	pl	Autostrada – dojazd
highway	path	pl	Ścieżka
highway	pedestrian	pl	Droga dla pieszych
highway	platform	pl	Podwyższenie
highway	primary	pl	Droga krajowa
highway	primary_link	pl	Droga krajowa – dojazd
highway	raceway	pl	Tor wyścigowy
highway	residential	pl	Droga osiedlowa
highway	road	pl	Droga
highway	secondary	pl	Droga wojewódzka
highway	secondary_link	pl	Droga wojewódzka – dojazd
highway	service	pl	Droga serwisowa
highway	services	pl	Usługi autostrady
highway	steps	pl	Schody
highway	stile	pl	Przełaz
highway	tertiary	pl	Droga powiatowa
highway	track	pl	Droga gruntowa
highway	trail	pl	Szlak
highway	trunk	pl	Droga ekspresowa
highway	trunk_link	pl	Droga ekspresowa – dojazd
highway	unclassified	pl	Droga gminna
highway	unsurfaced	pl	Nierówna droga
historic	archaeological_site	pl	Wykopaliska archeologiczne
historic	battlefield	pl	Miejsce historycznej bitwy
historic	boundary_stone	pl	Graniczny głaz
historic	building	pl	Budynek
historic	castle	pl	Zamek
historic	church	pl	Kościół
historic	house	pl	Dom
historic	icon	pl	Ikona
historic	manor	pl	Dwór
historic	memorial	pl	Mniejszy pomnik
historic	mine	pl	Kopalnia
historic	monument	pl	Pomnik
historic	museum	pl	Muzeum
historic	ruins	pl	Ruiny
historic	tower	pl	Wieża
historic	wayside_cross	pl	Przydrożny krzyż
historic	wayside_shrine	pl	Przydrożna kaplica
historic	wreck	pl	Wrak
landuse	allotments	pl	Ogródki działkowe
landuse	basin	pl	Dorzecze
landuse	brownfield	pl	Grunty poprzemysłowe
landuse	cemetery	pl	Cmentarz
landuse	commercial	pl	Obszar handlowo-usługowy
landuse	conservation	pl	Konserwacja
landuse	construction	pl	Teren budowy
landuse	farm	pl	Farma
landuse	farmland	pl	Grunty rolne
landuse	farmyard	pl	Podwórze gospodarskie
landuse	forest	pl	Las
landuse	grass	pl	Trawa
landuse	greenfield	pl	Tereny niezagospodarowane
landuse	industrial	pl	Teren przemysłowy
landuse	landfill	pl	Wysypisko śmieci
landuse	meadow	pl	Łąka
landuse	military	pl	Teren wojskowy
landuse	mine	pl	Kopalnia
landuse	mountain	pl	Góra
landuse	nature_reserve	pl	Rezerwat przyrody
landuse	park	pl	Park
landuse	piste	pl	Trasa
landuse	plaza	pl	Plac
landuse	quarry	pl	Kamieniołom
landuse	railway	pl	Teren kolejowy
landuse	recreation_ground	pl	Ziemia rekreacyjna
landuse	reservoir	pl	Sztuczny zbiornik wodny
landuse	residential	pl	Zabudowa mieszkaniowa
landuse	retail	pl	Handel detaliczny
landuse	village_green	pl	Park miejski
landuse	vineyard	pl	Winnica
landuse	wetland	pl	Tereny podmokłe
landuse	wood	pl	Puszcza
leisure	beach_resort	pl	Strzeżona plaża
leisure	common	pl	Błonie
leisure	fishing	pl	Łowisko
leisure	garden	pl	Ogród
leisure	golf_course	pl	Pole golfowe
leisure	ice_rink	pl	Lodowisko
leisure	marina	pl	Marina
leisure	miniature_golf	pl	Pole do miniaturowego golfa
leisure	nature_reserve	pl	Rezerwat naturalny
leisure	park	pl	Park
leisure	pitch	pl	Boisko sportowe
leisure	playground	pl	Plac zabaw
leisure	recreation_ground	pl	Pole rekreacyjne
leisure	slipway	pl	Pochylnia
leisure	sports_centre	pl	Centrum sportowe
leisure	stadium	pl	Stadion
leisure	swimming_pool	pl	Basen
leisure	track	pl	Bieżnia
leisure	water_park	pl	Park wodny
natural	bay	pl	Zatoka
natural	beach	pl	Plaża
natural	cape	pl	Przylądek
natural	cave_entrance	pl	Wejście do jaskini
natural	channel	pl	Kanał
natural	cliff	pl	Urwisko
natural	coastline	pl	Linia brzegowa
natural	crater	pl	Krater
natural	feature	pl	Obiekt
natural	fell	pl	Hale górskie
natural	fjord	pl	Fiord
natural	geyser	pl	Gejzer
natural	glacier	pl	Lodowiec
natural	heath	pl	Wrzosowisko
natural	hill	pl	Wzgórze
natural	island	pl	Wyspa
natural	land	pl	Ląd
natural	marsh	pl	Bagno
natural	moor	pl	Torfowisko
natural	mud	pl	Muł
natural	peak	pl	Szczyt
natural	point	pl	Punkt
natural	reef	pl	Rafa
natural	ridge	pl	Grzbiet
natural	river	pl	Rzeka
natural	rock	pl	Skała
natural	scree	pl	Zsypisko
natural	scrub	pl	Zagajnik
natural	shoal	pl	Mielizna
natural	spring	pl	Źródło
natural	strait	pl	Cieśnina
natural	tree	pl	Drzewo
natural	valley	pl	Dolina
natural	volcano	pl	Wulkan
natural	water	pl	Woda
natural	wetland	pl	Obszar podmokły
natural	wetlands	pl	Obszary podmokłe
natural	wood	pl	Puszcza
place	airport	pl	Lotnisko
place	city	pl	Miasto
place	country	pl	Kraj
place	county	pl	Powiat
place	farm	pl	Farma
place	hamlet	pl	Osada
place	house	pl	Dom
place	houses	pl	Zabudowanie
place	island	pl	Wyspa
place	islet	pl	Wysepka
place	locality	pl	Rejon
place	moor	pl	Torfowisko
place	municipality	pl	Gmina
place	postcode	pl	Kod pocztowy
place	region	pl	Rejon
place	sea	pl	Morze
place	state	pl	Stan
place	subdivision	pl	Dzielnica
place	suburb	pl	Osiedle
place	town	pl	Miasteczko
place	unincorporated_area	pl	Obszar poza miejscowościami
place	village	pl	Wieś
railway	abandoned	pl	Dawna linia kolejowa
railway	construction	pl	Budowana linia kolejowa
railway	disused	pl	Nieczynna trasa kolejowa
railway	disused_station	pl	Nieużywana stacja kolejowa
railway	funicular	pl	Kolejka linowa
railway	halt	pl	Przystanek kolejowy
railway	historic_station	pl	Historyczna stacja kolejowa
railway	junction	pl	Węzeł kolejowy
railway	level_crossing	pl	Przejazd kolejowy
railway	light_rail	pl	Lekka kolej
railway	monorail	pl	Kolej jednoszynowa
railway	narrow_gauge	pl	Kolej wąskotorowa
railway	platform	pl	Peron
railway	preserved	pl	Kolej zabytkowa
railway	spur	pl	Bocznica kolejowa
railway	station	pl	Stacja kolejowa
railway	subway	pl	Stacja metra
railway	subway_entrance	pl	Wejście na stację metra
railway	switch	pl	Zwrotnica
railway	tram	pl	Linia tramwajowa
railway	tram_stop	pl	Przystanek tramwajowy
railway	yard	pl	Stacja postojowa, lokomotywownia
shop	alcohol	pl	Sklep monopolowy
shop	apparel	pl	Sklep odzieżowy
shop	art	pl	Sklep z dziełami sztuki
shop	bakery	pl	Piekarnia
shop	beauty	pl	Salon kosmetyczny
shop	beverages	pl	Sklep z napojami
shop	bicycle	pl	Sklep rowerowy
shop	books	pl	Księgarnia
shop	butcher	pl	Rzeźnik
shop	car	pl	Sklep samochodowy
shop	car_dealer	pl	Salon samochodowy
shop	car_parts	pl	Sklep z częściami samochodowymi
shop	carpet	pl	Sklep z dywanami
shop	car_repair	pl	Naprawa samochodów
shop	charity	pl	Sklep charytatywny
shop	chemist	pl	Drogeria
shop	clothes	pl	Sklep odzieżowy
shop	computer	pl	Sklep komputerowy
shop	confectionery	pl	Cukiernia
shop	convenience	pl	Mały sklep wielobranżowy
shop	copyshop	pl	Ksero
shop	cosmetics	pl	Sklep kosmetyczny
shop	department_store	pl	Dom towarowy
shop	discount	pl	Sklep z produktami po obniżce
shop	doityourself	pl	Sklep budowlany
shop	drugstore	pl	Drogeria
shop	dry_cleaning	pl	Pralnia chemiczna
shop	electronics	pl	Sklep elektroniczny
shop	estate_agent	pl	Biuro nieruchomości
shop	farm	pl	Sklep gospodarski
shop	fashion	pl	Sklep modelarski
shop	fish	pl	Sklep rybny
shop	florist	pl	Kwiaciarnia
shop	food	pl	Sklep spożywczy
shop	funeral_directors	pl	Zakłady pogrzebowe
shop	furniture	pl	Sklep meblowy
shop	gallery	pl	Galeria
shop	garden_centre	pl	Centrum ogrodnicze
shop	general	pl	Sklep ogólny
shop	gift	pl	Sklep z pamiątkami
shop	greengrocer	pl	Warzywniak
shop	grocery	pl	Sklep spożywczy
shop	hairdresser	pl	Fryzjernia
shop	hardware	pl	Sklep ze sprzętem
shop	hifi	pl	Hi-Fi
shop	insurance	pl	Agent ubezpieczeniowy
shop	jewelry	pl	Sklep z biżuterią
shop	kiosk	pl	Kiosk
shop	laundry	pl	Pralnia
shop	mall	pl	Centrum handlowe
shop	market	pl	Targowisko
shop	mobile_phone	pl	Sklep z telefonami komórkowymi
shop	motorcycle	pl	Sklep z motocyklami
shop	music	pl	Sklep muzyczny
shop	newsagent	pl	Kiosk
shop	optician	pl	Optyk
shop	organic	pl	Sklep z produktami organicznymi
shop	outdoor	pl	Sklep turystyczny
shop	pet	pl	Sklep ze zwierzętami
shop	photo	pl	Sklep fotograficzny
shop	salon	pl	Salon
shop	shoes	pl	Sklep obuwniczy
shop	shopping_centre	pl	Centrum handlowe
shop	sports	pl	Sklep sportowy
shop	stationery	pl	Sklep papierniczy
shop	supermarket	pl	Supermarket
shop	toys	pl	Sklep z zabawkami
shop	travel_agency	pl	Biuro podróży
shop	video	pl	Sklep filmowy
shop	wine	pl	Winiarnia
tourism	alpine_hut	pl	Chata alpejska
tourism	artwork	pl	Sztuka
tourism	attraction	pl	Atrakcja turystyczna
tourism	bed_and_breakfast	pl	Bed and Breakfast
tourism	cabin	pl	Kabina
tourism	camp_site	pl	Kemping
tourism	caravan_site	pl	Miejsce na przyczepę campingową
tourism	chalet	pl	Schronisko
tourism	guest_house	pl	Pensjonat
tourism	hostel	pl	Hostel
tourism	hotel	pl	Hotel
tourism	information	pl	Informacja turystyczna
tourism	lean_to	pl	Nachylenie
tourism	motel	pl	Motel
tourism	museum	pl	Muzeum
tourism	picnic_site	pl	Miejsce na piknik
tourism	theme_park	pl	Park tematyczny
tourism	valley	pl	Dolina
tourism	viewpoint	pl	Punkt widokowy
tourism	zoo	pl	Zoo
waterway	boatyard	pl	Stocznia
waterway	canal	pl	Kanał
waterway	connector	pl	Złącze dróg wodnych
waterway	dam	pl	Tama
waterway	derelict_canal	pl	Opuszczony kanał
waterway	ditch	pl	Rów
waterway	dock	pl	Basen portowy
waterway	drain	pl	Rów odpływowy
waterway	lock	pl	Zastawka
waterway	lock_gate	pl	Śluza
waterway	mineral_spring	pl	Źródło mineralne
waterway	mooring	pl	Kotwicowisko
waterway	rapids	pl	Katarakty
waterway	river	pl	Rzeka
waterway	riverbank	pl	Brzeg rzeki
waterway	stream	pl	Strumień
waterway	wadi	pl	Starorzecze
waterway	waterfall	pl	Wodospad
waterway	water_point	pl	Punkt wodny
waterway	weir	pl	Jaz
amenity	airport	ps	هوايي ډګر
amenity	bank	ps	بانک
amenity	bus_station	ps	د بسونو اډه
amenity	cinema	ps	سينما
amenity	clinic	ps	کلينيک
amenity	club	ps	کلب
amenity	college	ps	پوهنځی
amenity	doctors	ps	رنځورګران
amenity	embassy	ps	سفارت
amenity	grave_yard	ps	هديره
amenity	hospital	ps	روغتون
amenity	hotel	ps	هوټل
amenity	ice_cream	ps	آيسکريم
amenity	kindergarten	ps	وړکتون
amenity	library	ps	کتابتون
amenity	office	ps	دفتر
amenity	park	ps	پارک
amenity	pharmacy	ps	درملتون
amenity	police	ps	پوليس
amenity	restaurant	ps	خوړنځی
amenity	school	ps	ښوونځی
amenity	shop	ps	هټۍ
amenity	studio	ps	سټوډيو
amenity	taxi	ps	ټېکسي
amenity	theatre	ps	نندارتون
amenity	toilets	ps	چړچوبي
building	church	ps	کلیسا
building	garage	ps	ګاراژ
building	hospital	ps	د روغتون ودانۍ
building	hotel	ps	هوټل
building	house	ps	کور
building	school	ps	د ښوونځي ودانۍ
building	shop	ps	هټۍ
building	stadium	ps	لوبغالی
building	tower	ps	برج
building	university	ps	د پوهنتون ودانۍ
highway	bus_stop	ps	تمځای
highway	road	ps	واټ
historic	castle	ps	ماڼۍ
historic	church	ps	کليسا
historic	house	ps	کور
historic	museum	ps	موزيم
historic	tower	ps	برج
landuse	cemetery	ps	هديره
landuse	forest	ps	ځنګل
landuse	military	ps	پوځي سيمه
landuse	mine	ps	کان
landuse	mountain	ps	غر
landuse	park	ps	پارک
leisure	garden	ps	بڼ
leisure	park	ps	پارک
leisure	stadium	ps	لوبغالی
natural	channel	ps	کانال
natural	hill	ps	غونډۍ
natural	island	ps	ټاپو
natural	peak	ps	څوکه
natural	tree	ps	ونه
natural	valley	ps	دره
natural	water	ps	اوبه
place	airport	ps	هوايي ډګر
place	city	ps	ښار
place	country	ps	هېواد
place	county	ps	هېواد
place	farm	ps	فارم
place	house	ps	کور
place	houses	ps	کورونه
place	island	ps	ټاپو
place	region	ps	سيمه
place	state	ps	ايالت
place	town	ps	ښارګوټی
place	village	ps	کلی
shop	bakery	ps	بټيارۍ
shop	chemist	ps	کيمياګر
shop	drugstore	ps	درملتون
shop	gallery	ps	انځورتون
shop	jewelry	ps	زرګري
shop	market	ps	بازار
tourism	guest_house	ps	مېلمستون
tourism	hostel	ps	ليليه
tourism	hotel	ps	هوټل
tourism	information	ps	مالومات
tourism	museum	ps	موزيم
tourism	picnic_site	ps	مېله ځای
tourism	valley	ps	دره
tourism	zoo	ps	ژوبڼ
amenity	airport	pt-br	Aeroporto
amenity	arts_centre	pt-br	Centro de Arte
amenity	atm	pt-br	Caixa automático
amenity	auditorium	pt-br	Auditório
amenity	bank	pt-br	Banco
amenity	bar	pt-br	Bar
amenity	bench	pt-br	Banco (de praça)
amenity	bicycle_parking	pt-br	Estacionamento de bicicletas
amenity	bicycle_rental	pt-br	Aluguel de bicicletas
amenity	brothel	pt-br	Bordel
amenity	bureau_de_change	pt-br	Casa de câmbio
amenity	bus_station	pt-br	Estação de Ônibus/Rodoviária
amenity	cafe	pt-br	Café
amenity	car_rental	pt-br	Aluguel de veículos
amenity	car_sharing	pt-br	Aluguel de Carro
amenity	car_wash	pt-br	Lava-Carros
amenity	casino	pt-br	Cassino
amenity	cinema	pt-br	Cinema
amenity	clinic	pt-br	Clínica
amenity	club	pt-br	Clube
amenity	college	pt-br	Faculdade
amenity	community_centre	pt-br	Centro comunitário
amenity	courthouse	pt-br	Fórum
amenity	crematorium	pt-br	Crematório
amenity	dentist	pt-br	Dentista
amenity	doctors	pt-br	Consultórios
amenity	dormitory	pt-br	Dormitório
amenity	drinking_water	pt-br	Água potável
amenity	driving_school	pt-br	Autoescola
amenity	embassy	pt-br	Embaixada
amenity	emergency_phone	pt-br	Telefone de emergência
amenity	fast_food	pt-br	Fast Food
amenity	ferry_terminal	pt-br	Terminal de barca
amenity	fire_hydrant	pt-br	Hidrante
amenity	fire_station	pt-br	Corpo de bombeiros
amenity	fountain	pt-br	Fonte
amenity	fuel	pt-br	Combustível
amenity	grave_yard	pt-br	Cemitério
amenity	gym	pt-br	Ginásio
amenity	hall	pt-br	Salão
amenity	health_centre	pt-br	Centro de saúde
amenity	hospital	pt-br	Hospital
amenity	hotel	pt-br	Hotel
amenity	hunting_stand	pt-br	Stand de caça
amenity	ice_cream	pt-br	Sorveteria
amenity	kindergarten	pt-br	Jardim de infância
amenity	library	pt-br	Biblioteca
amenity	market	pt-br	Mercado
amenity	marketplace	pt-br	Mercado público / feira
amenity	mountain_rescue	pt-br	Abrigo de montanha
amenity	nightclub	pt-br	Casa noturna/Boate
amenity	nursery	pt-br	Berçário
amenity	nursing_home	pt-br	Asilo
amenity	office	pt-br	Escritório
amenity	park	pt-br	Parque
amenity	parking	pt-br	Estacionamento
amenity	pharmacy	pt-br	Farmácia
amenity	place_of_worship	pt-br	Lugar de Adoração
amenity	police	pt-br	Polícia
amenity	post_box	pt-br	Caixa de correio
amenity	post_office	pt-br	Agência de Correios
amenity	preschool	pt-br	Pré-escola/Jardim de Infância
amenity	prison	pt-br	Prisão
amenity	pub	pt-br	Pub
amenity	public_building	pt-br	Edifício público
amenity	public_market	pt-br	Mercado público
amenity	reception_area	pt-br	Área de recepção
amenity	recycling	pt-br	Posto de Reciclagem
amenity	restaurant	pt-br	Restaurante
amenity	retirement_home	pt-br	Asilo
amenity	sauna	pt-br	Sauna
amenity	school	pt-br	Escola
amenity	shelter	pt-br	Refúgio
amenity	shop	pt-br	Loja
amenity	shopping	pt-br	Shopping
amenity	social_club	pt-br	Clube social
amenity	studio	pt-br	Estúdio
amenity	supermarket	pt-br	Supermercado
amenity	taxi	pt-br	Táxi
amenity	telephone	pt-br	Telefone público
amenity	theatre	pt-br	Teatro
amenity	toilets	pt-br	Banheiros
amenity	townhall	pt-br	Prefeitura
amenity	university	pt-br	Universidade
amenity	vending_machine	pt-br	Máquina de venda automática
amenity	veterinary	pt-br	Clínica veterinária
amenity	village_hall	pt-br	Salão de vila
amenity	waste_basket	pt-br	Lata de lixo
amenity	wifi	pt-br	Ponto de Acesso WiFi
amenity	youth_centre	pt-br	Centro juvenil
boundary	administrative	pt-br	Limite Administrativo
building	apartments	pt-br	Bloco de apartamentos
building	block	pt-br	Bloco de Prédios
building	bunker	pt-br	Bunker
building	chapel	pt-br	Capela
building	church	pt-br	Igreja
building	city_hall	pt-br	Prefeitura
building	commercial	pt-br	Edifício comercial
building	dormitory	pt-br	Dormitório
building	entrance	pt-br	Entrada de edifício
building	faculty	pt-br	Prédio de Faculdade
building	farm	pt-br	Paiol
building	flats	pt-br	Apartamentos
building	garage	pt-br	Garagem
building	hall	pt-br	Salão
building	hospital	pt-br	Hospital
building	hotel	pt-br	Hotel
building	house	pt-br	Casa
building	industrial	pt-br	Edifício industrial
building	office	pt-br	Edifício de escritórios
building	public	pt-br	Edifício público
building	residential	pt-br	Edifício residencial
building	retail	pt-br	Prédio de Varejo
building	school	pt-br	Edifício escolar
building	shop	pt-br	Loja
building	stadium	pt-br	Estádio
building	store	pt-br	Loja
building	terrace	pt-br	Terraço
building	tower	pt-br	Torre
building	train_station	pt-br	Estação de Trem
building	university	pt-br	Edifício Universitário
highway	bridleway	pt-br	Pista para cavalos
highway	bus_guideway	pt-br	Corredor de ônibus
highway	bus_stop	pt-br	Ponto de ônibus
highway	byway	pt-br	Trilha larga
highway	construction	pt-br	Estrada em construção
highway	cycleway	pt-br	Ciclovia
highway	distance_marker	pt-br	Marcador de quilometragem
highway	emergency_access_point	pt-br	Acesso de emergência
highway	footway	pt-br	Caminho
highway	ford	pt-br	Travessia de rio
highway	gate	pt-br	Portão
highway	living_street	pt-br	Rua residencial
highway	minor	pt-br	Estrada Secundária
highway	motorway	pt-br	Rodovia expressa
highway	motorway_junction	pt-br	Trevo de Acesso
highway	motorway_link	pt-br	Autoestrada
highway	path	pt-br	Caminho
highway	pedestrian	pt-br	Rua de pedestres
highway	platform	pt-br	Plataforma
highway	primary	pt-br	Via Primária
highway	primary_link	pt-br	Via Primária
highway	raceway	pt-br	Pista de corrida
highway	residential	pt-br	Residencial
highway	road	pt-br	Estrada
highway	secondary	pt-br	Via Secundária
highway	secondary_link	pt-br	Via Secundária
highway	service	pt-br	Rua de serviço
highway	services	pt-br	Serviços de autoestrada
highway	steps	pt-br	Degraus
highway	stile	pt-br	Escada de cerca
highway	tertiary	pt-br	Via terciária
highway	track	pt-br	Trilha
highway	trail	pt-br	Trilha
highway	trunk	pt-br	Via de entroncamento
highway	trunk_link	pt-br	Via Expressa
highway	unclassified	pt-br	Via não classificada
highway	unsurfaced	pt-br	Rua não pavimentada
historic	archaeological_site	pt-br	Sítio arqueológico
historic	battlefield	pt-br	Campo de batalha
historic	boundary_stone	pt-br	Marco
historic	building	pt-br	Edifício
historic	castle	pt-br	Castelo
historic	church	pt-br	Igreja
historic	house	pt-br	Casa histórica
historic	icon	pt-br	Ícone
historic	manor	pt-br	Terra arrendada
historic	memorial	pt-br	Memorial
historic	mine	pt-br	Mina histórica
historic	monument	pt-br	Monumento
historic	museum	pt-br	Museu
historic	ruins	pt-br	Ruínas
historic	tower	pt-br	Torre histórica
historic	wayside_cross	pt-br	Cruz de beira-de-estrada
historic	wayside_shrine	pt-br	Túmulo de beira-de-estrada
historic	wreck	pt-br	Naufrágio
landuse	allotments	pt-br	Horta urbana
landuse	basin	pt-br	Bacia
landuse	brownfield	pt-br	Terreno Industrial
landuse	cemetery	pt-br	Cemitério
landuse	commercial	pt-br	Área comercial
landuse	conservation	pt-br	Conservação
landuse	construction	pt-br	Construção
landuse	farm	pt-br	Fazenda
landuse	farmland	pt-br	Área cultivada
landuse	farmyard	pt-br	Curral
landuse	forest	pt-br	Floresta
landuse	grass	pt-br	Gramado
landuse	greenfield	pt-br	Espaço Verde
landuse	industrial	pt-br	Área industrial
landuse	landfill	pt-br	Aterro sanitário
landuse	meadow	pt-br	Gramado
landuse	military	pt-br	Área militar
landuse	mine	pt-br	Mina
landuse	mountain	pt-br	Montanha
landuse	nature_reserve	pt-br	Reserva Natural
landuse	park	pt-br	Parque
landuse	piste	pt-br	Pista de ski
landuse	plaza	pt-br	Praça
landuse	quarry	pt-br	Pedreira
landuse	railway	pt-br	Terreno de ferrovia
landuse	recreation_ground	pt-br	Área recreacional
landuse	reservoir	pt-br	Represa ou Reservatório de Água
landuse	residential	pt-br	Área residencial
landuse	retail	pt-br	Varejo
landuse	village_green	pt-br	Parque municipal
landuse	vineyard	pt-br	Vinhedo
landuse	wetland	pt-br	Pântano / Mangue
landuse	wood	pt-br	Madeira
leisure	beach_resort	pt-br	Balneário
leisure	common	pt-br	Terreno comum
leisure	fishing	pt-br	Área de pesca
leisure	garden	pt-br	Jardim
leisure	golf_course	pt-br	Campo de Golf
leisure	ice_rink	pt-br	Rinque de patinação no gelo
leisure	marina	pt-br	Marina
leisure	miniature_golf	pt-br	Mini Golfe
leisure	nature_reserve	pt-br	Reserva Ambiental
leisure	park	pt-br	Parque
leisure	pitch	pt-br	Campo esportivo
leisure	playground	pt-br	Playground
leisure	recreation_ground	pt-br	Área recreativa
leisure	slipway	pt-br	Rampa de barco
leisure	sports_centre	pt-br	Centro Esportivo
leisure	stadium	pt-br	Estádio
leisure	swimming_pool	pt-br	Piscina
leisure	track	pt-br	Pista de corrida
leisure	water_park	pt-br	Parque aquático
natural	bay	pt-br	Baía
natural	beach	pt-br	Praia
natural	cape	pt-br	Cabo
natural	cave_entrance	pt-br	Entrada de Gruta
natural	channel	pt-br	Canal
natural	cliff	pt-br	Penhasco
natural	coastline	pt-br	Litoral
natural	crater	pt-br	Cratera
natural	feature	pt-br	Recurso natural
natural	fell	pt-br	Colina
natural	fjord	pt-br	Fiorde
natural	geyser	pt-br	Gêiser
natural	glacier	pt-br	Geleira
natural	heath	pt-br	Charneca
natural	hill	pt-br	Colina/Morro
natural	island	pt-br	Ilha
natural	land	pt-br	Solo
natural	marsh	pt-br	Pântano
natural	moor	pt-br	Brejo
natural	mud	pt-br	Lama
natural	peak	pt-br	Pico
natural	point	pt-br	Ponto
natural	reef	pt-br	Recife
natural	ridge	pt-br	Cordilheira
natural	river	pt-br	Rio
natural	rock	pt-br	Rocha
natural	scree	pt-br	Cascalho
natural	scrub	pt-br	Arbusto
natural	shoal	pt-br	Barra
natural	spring	pt-br	Nascente
natural	strait	pt-br	Estreito
natural	tree	pt-br	Árvore
natural	valley	pt-br	Vale
natural	volcano	pt-br	Vulcão
natural	water	pt-br	Água
natural	wetland	pt-br	Pântano / Mangue
natural	wetlands	pt-br	Pântano
natural	wood	pt-br	Madeira
place	airport	pt-br	Aeroporto
place	city	pt-br	Cidade
place	country	pt-br	País
place	county	pt-br	Município
place	farm	pt-br	Fazenda
place	hamlet	pt-br	Aldeia
place	house	pt-br	Casa
place	houses	pt-br	Casas
place	island	pt-br	Ilha
place	islet	pt-br	Ilhota
place	locality	pt-br	Localidade
place	moor	pt-br	Pântano
place	municipality	pt-br	Municipalidade
place	postcode	pt-br	CEP
place	region	pt-br	Região
place	sea	pt-br	Mar
place	state	pt-br	Estado
place	subdivision	pt-br	Subdivisão
place	suburb	pt-br	Bairro
place	town	pt-br	Cidade
place	unincorporated_area	pt-br	Área não incorporada
place	village	pt-br	Vila
railway	abandoned	pt-br	Trilhos abandonados
railway	construction	pt-br	Via férrea em construção
railway	disused	pt-br	Ferrovia em desuso
railway	disused_station	pt-br	Estação férrea em desuso
railway	funicular	pt-br	Funicular
railway	halt	pt-br	Parada de trem
railway	historic_station	pt-br	Estação de trem histórica
railway	junction	pt-br	Cruzamento de ferrovia
railway	level_crossing	pt-br	Passagem em nível
railway	light_rail	pt-br	Trem metropolitano
railway	monorail	pt-br	Monotrilho
railway	narrow_gauge	pt-br	Ferrovia estreita
railway	platform	pt-br	Plataforma de trem
railway	preserved	pt-br	Ferrovia preservada
railway	spur	pt-br	Ramificação de linha
railway	station	pt-br	Estação de Trem
railway	subway	pt-br	Estação de metrô
railway	subway_entrance	pt-br	Entrada do metrô
railway	switch	pt-br	Chave de ferrovia
railway	tram	pt-br	Rota de bonde
railway	tram_stop	pt-br	Parada de bonde
railway	yard	pt-br	Estação de classificação
shop	alcohol	pt-br	Loja de bebidas alcoolicas
shop	apparel	pt-br	Loja de roupa
shop	art	pt-br	Loja de artigos de arte
shop	bakery	pt-br	Padaria
shop	beauty	pt-br	Salão de Beleza
shop	beverages	pt-br	Loja/depósito de bebidas
shop	bicycle	pt-br	Loja de bicicletas
shop	books	pt-br	Livraria
shop	butcher	pt-br	Açougue
shop	car	pt-br	Loja de carros
shop	car_dealer	pt-br	Concessionária de automóveis
shop	car_parts	pt-br	Autopeças
shop	carpet	pt-br	Loja de tapetes
shop	car_repair	pt-br	Oficina mecânica
shop	charity	pt-br	Loja beneficente
shop	chemist	pt-br	Farmacêutico
shop	clothes	pt-br	Loja de roupas
shop	computer	pt-br	Loja de computação
shop	confectionery	pt-br	Confeitaria
shop	convenience	pt-br	Loja de conveniência
shop	copyshop	pt-br	Gráfica/copiadora
shop	cosmetics	pt-br	Loja de cosméticos
shop	department_store	pt-br	Loja de departamentos
shop	discount	pt-br	Loja de descontos
shop	doityourself	pt-br	Faça você mesmo
shop	drugstore	pt-br	Drogaria
shop	dry_cleaning	pt-br	Lavagem a seco
shop	electronics	pt-br	Loja de Eletrônicos
shop	estate_agent	pt-br	Imobiliária
shop	farm	pt-br	Loja de produtos agrícolas
shop	fashion	pt-br	Loja de roupas
shop	fish	pt-br	Peixaria
shop	florist	pt-br	Florista
shop	food	pt-br	Loja de alimentação
shop	funeral_directors	pt-br	Capela Mortuária
shop	furniture	pt-br	Móveis
shop	gallery	pt-br	Galeria
shop	garden_centre	pt-br	Viveiro
shop	general	pt-br	Loja de artigos gerais
shop	gift	pt-br	Loja de presentes
shop	greengrocer	pt-br	Sacolão/Hortifrutti
shop	grocery	pt-br	Loja de alimentos
shop	hairdresser	pt-br	Cabelereiro
shop	hardware	pt-br	Material/Equipamentos de construção
shop	hifi	pt-br	Loja de artigos de som
shop	insurance	pt-br	Seguradora
shop	jewelry	pt-br	Joalheria
shop	kiosk	pt-br	Quiosque
shop	laundry	pt-br	Lavanderia
shop	mall	pt-br	Shopping Center
shop	market	pt-br	Mercado
shop	mobile_phone	pt-br	Loja de celulares
shop	motorcycle	pt-br	Loja de motocicletas
shop	music	pt-br	Loja de música
shop	newsagent	pt-br	Jornaleiro
shop	optician	pt-br	Ótica / Oculista
shop	organic	pt-br	Loja de alimentos orgânicos
shop	outdoor	pt-br	Loja ao ar livre
shop	pet	pt-br	Pet Shop
shop	photo	pt-br	Loja fotográfica
shop	salon	pt-br	Salão de beleza
shop	shoes	pt-br	Sapataria
shop	shopping_centre	pt-br	Shopping Center
shop	sports	pt-br	Loja de artigos esportivos
shop	stationery	pt-br	Papelaria
shop	supermarket	pt-br	Supermercado
shop	toys	pt-br	Loja de brinquedos
shop	travel_agency	pt-br	Agência de viagens
shop	video	pt-br	Loja de vídeo
shop	wine	pt-br	Loja de vinhos
tourism	alpine_hut	pt-br	Cabana alpina
tourism	artwork	pt-br	Ilustração
tourism	attraction	pt-br	Atração
tourism	bed_and_breakfast	pt-br	Cama e café da manhã
tourism	cabin	pt-br	Cabana
tourism	camp_site	pt-br	Acampamento
tourism	caravan_site	pt-br	Acampamento de Caravanas
tourism	chalet	pt-br	Chalé
tourism	guest_house	pt-br	Albergue
tourism	hostel	pt-br	Abrigo
tourism	hotel	pt-br	Hotel
tourism	information	pt-br	Informações
tourism	lean_to	pt-br	Inclinado Para
tourism	motel	pt-br	Motel
tourism	museum	pt-br	Museu
tourism	picnic_site	pt-br	Área de Piquenique
tourism	theme_park	pt-br	Parque temático
tourism	valley	pt-br	Vale
tourism	viewpoint	pt-br	Mirador
tourism	zoo	pt-br	Zoológico
waterway	boatyard	pt-br	Estaleiro
waterway	canal	pt-br	Canal
waterway	connector	pt-br	Eclusa
waterway	dam	pt-br	Represa
waterway	derelict_canal	pt-br	Canal Abandonado
waterway	ditch	pt-br	Vala
waterway	dock	pt-br	Doca
waterway	drain	pt-br	Canal
waterway	lock	pt-br	Dique
waterway	lock_gate	pt-br	Portão de Dique
waterway	mineral_spring	pt-br	Fonte mineral
waterway	mooring	pt-br	Ancoradouro
waterway	rapids	pt-br	Corredeiras
waterway	river	pt-br	Rio
waterway	riverbank	pt-br	Margem de rio
waterway	stream	pt-br	Córrego
waterway	wadi	pt-br	Uádi
waterway	waterfall	pt-br	Queda de água
waterway	water_point	pt-br	Ponto de água
waterway	weir	pt-br	Açude
amenity	airport	pt	Aeroporto
amenity	bank	pt	Banco
amenity	bar	pt	Bar
amenity	cafe	pt	Café
amenity	casino	pt	Casino
amenity	college	pt	Colégio
amenity	dentist	pt	Dentista
amenity	doctors	pt	Médicos
amenity	emergency_phone	pt	Telefone de Emergência
amenity	fast_food	pt	Fast Food
amenity	fountain	pt	Fonte
amenity	fuel	pt	Combustível
amenity	grave_yard	pt	Cemitério
amenity	hospital	pt	Hospital
amenity	hotel	pt	Hotel
amenity	library	pt	Biblioteca
amenity	market	pt	Mercado
amenity	office	pt	Escritório
amenity	pharmacy	pt	Farmácia
amenity	police	pt	Polícia
amenity	prison	pt	Prisão
amenity	restaurant	pt	Restaurante
amenity	sauna	pt	Sauna
amenity	school	pt	Escola
amenity	shop	pt	Loja
amenity	studio	pt	Estúdio
amenity	supermarket	pt	Supermercado
amenity	taxi	pt	Táxi
amenity	telephone	pt	Telefone público
amenity	theatre	pt	Teatro
amenity	university	pt	Universidade
amenity	wifi	pt	Acesso WiFi
building	apartments	pt	Bloco de apartamentos
building	chapel	pt	Capela
building	church	pt	Igreja
building	city_hall	pt	Câmara Municipal
building	garage	pt	Garagem
building	hotel	pt	Hotel
building	house	pt	Casa
building	shop	pt	Loja
building	stadium	pt	Estádio
building	store	pt	Loja
building	terrace	pt	Terraço
building	tower	pt	Torre
highway	gate	pt	Porta
highway	road	pt	Estrada
highway	secondary_link	pt	Estrada Secundária
highway	steps	pt	Passos
highway	stile	pt	Escada
highway	trail	pt	Trilha
historic	castle	pt	Castelo
historic	church	pt	Igreja
historic	house	pt	Casa
historic	memorial	pt	Memorial
historic	mine	pt	Mina
historic	monument	pt	Monumento
historic	museum	pt	Museu
historic	ruins	pt	Ruínas
historic	tower	pt	Torre
landuse	allotments	pt	Lotes
landuse	cemetery	pt	Cemitério
landuse	commercial	pt	Área comercial
landuse	conservation	pt	Conservação
landuse	forest	pt	Floresta
landuse	grass	pt	Erva
landuse	meadow	pt	Pradaria
landuse	military	pt	Área militar
landuse	mine	pt	Mina
landuse	mountain	pt	Montanha
landuse	park	pt	Parque
leisure	fishing	pt	Área de Pesca
leisure	garden	pt	Jardim
leisure	golf_course	pt	Campo de golf
leisure	marina	pt	Marina
leisure	miniature_golf	pt	Mini-Golf
leisure	nature_reserve	pt	Reserva Natural
leisure	park	pt	Parque
leisure	playground	pt	Parque
leisure	sports_centre	pt	Centro Desportivo
leisure	stadium	pt	Estádio
leisure	swimming_pool	pt	Piscina
leisure	water_park	pt	Parque aquático
natural	bay	pt	Baía
natural	beach	pt	Praia
natural	cape	pt	Cabo
natural	cave_entrance	pt	Entrada de gruta
natural	channel	pt	Canal
natural	coastline	pt	Litoral
natural	geyser	pt	Geiser
natural	island	pt	Ilha
natural	land	pt	Terra
natural	marsh	pt	Pântano
natural	peak	pt	Pico
natural	point	pt	Ponto
natural	reef	pt	Recife
natural	river	pt	Rio
natural	tree	pt	Árvore
natural	valley	pt	Vale
natural	volcano	pt	Vulcão
natural	water	pt	Água
place	airport	pt	Aeroporto
place	city	pt	Cidade
place	country	pt	País
place	county	pt	Município
place	farm	pt	Fazenda
place	hamlet	pt	Aldeia
place	house	pt	Casa
place	houses	pt	Casas
place	island	pt	Ilha
place	islet	pt	Ilhota
place	locality	pt	Localidade
place	region	pt	Região
place	sea	pt	Mar
place	state	pt	Estado
place	subdivision	pt	Subdivisão
place	suburb	pt	Subúrbio
place	town	pt	Cidade
place	village	pt	Vila
railway	funicular	pt	Funicular
shop	bakery	pt	Padaria
shop	books	pt	Livraria
shop	car	pt	Oficina
shop	car_repair	pt	Oficina
shop	computer	pt	Loja de informática
shop	cosmetics	pt	Loja de cosméticos
shop	electronics	pt	Loja de electrónica
shop	florist	pt	Florista
shop	hifi	pt	Hi-Fi
shop	jewelry	pt	Joalharia
shop	laundry	pt	Lavandaria
shop	music	pt	Loja de música
shop	pet	pt	Loja de animais
shop	shopping_centre	pt	Centro Comercial
shop	supermarket	pt	Supermercado
tourism	attraction	pt	Atracção
tourism	cabin	pt	Cabana
tourism	chalet	pt	Chalé
tourism	hotel	pt	Hotel
tourism	information	pt	Informação
tourism	motel	pt	Motel
tourism	museum	pt	Museu
tourism	theme_park	pt	Parque temático
tourism	valley	pt	Vale
tourism	zoo	pt	Jardim zoológico
waterway	canal	pt	Canal
waterway	dock	pt	Doca
waterway	river	pt	Rio
amenity	airport	ru	Аэропорт
amenity	arts_centre	ru	Дом искусств
amenity	atm	ru	Банкомат
amenity	auditorium	ru	Аудитория
amenity	bank	ru	Банк
amenity	bar	ru	Бар
amenity	bench	ru	Скамья
amenity	bicycle_parking	ru	Велопарковка
amenity	bicycle_rental	ru	Прокат велосипедов
amenity	brothel	ru	Бордель
amenity	bureau_de_change	ru	Обмен валют
amenity	bus_station	ru	Автобусная станция
amenity	cafe	ru	Кафе
amenity	car_rental	ru	Аренда автомобилей
amenity	car_sharing	ru	Каршаринг
amenity	car_wash	ru	Автомойка
amenity	casino	ru	Казино
amenity	cinema	ru	Кинотеатр
amenity	clinic	ru	Поликлиника
amenity	club	ru	Клуб
amenity	college	ru	Колледж
amenity	community_centre	ru	Общественный центр
amenity	courthouse	ru	Помещение суда
amenity	crematorium	ru	Крематоорий
amenity	dentist	ru	Стоматология
amenity	doctors	ru	Врач
amenity	dormitory	ru	Общежитие
amenity	drinking_water	ru	Питьевая вода
amenity	driving_school	ru	Автошкола
amenity	embassy	ru	Посольство
amenity	emergency_phone	ru	Телефон экстренных служб
amenity	fast_food	ru	Палатка с едой
amenity	ferry_terminal	ru	Паромная станция
amenity	fire_hydrant	ru	Пожарный гидрант
amenity	fire_station	ru	Пожарная охрана
amenity	fountain	ru	фонтан
amenity	fuel	ru	Заправка
amenity	grave_yard	ru	Место захоронения
amenity	gym	ru	тренажерный зал
amenity	hall	ru	Холл
amenity	health_centre	ru	Оздоровительный центр
amenity	hospital	ru	Госпиталь
amenity	hotel	ru	Гостинница
amenity	hunting_stand	ru	охотничья вышка
amenity	ice_cream	ru	Мороженное
amenity	kindergarten	ru	Детский сад
amenity	library	ru	Библиотека
amenity	market	ru	Магазин
amenity	marketplace	ru	Рыночная площадь
amenity	mountain_rescue	ru	Горная спасательная служба
amenity	nightclub	ru	ночной клуб
amenity	nursery	ru	Пансионат
amenity	nursing_home	ru	Дом престарелых
amenity	office	ru	Офис
amenity	park	ru	Парк
amenity	parking	ru	Стоянка
amenity	pharmacy	ru	Аптека
amenity	place_of_worship	ru	Место поклонения
amenity	police	ru	Милиция
amenity	post_box	ru	Почтовый ящик
amenity	post_office	ru	Почтовое отделение
amenity	preschool	ru	Дошкольное учреждение
amenity	prison	ru	Тюрьма
amenity	pub	ru	Паб
amenity	public_building	ru	общественное здание
amenity	public_market	ru	Городской рынок
amenity	reception_area	ru	Приёмная
amenity	recycling	ru	Место утилизации
amenity	restaurant	ru	Ресторан
amenity	retirement_home	ru	Дом престарелых
amenity	sauna	ru	Сауна
amenity	school	ru	школа
amenity	shelter	ru	Укрытие
amenity	shop	ru	Магазин
amenity	shopping	ru	Торговый центр
amenity	social_club	ru	Сообщество
amenity	studio	ru	Студия
amenity	supermarket	ru	Супермаркет
amenity	taxi	ru	Такси
amenity	telephone	ru	Телефон
amenity	theatre	ru	Театр
amenity	toilets	ru	Туалет
amenity	townhall	ru	Городская администрация
amenity	university	ru	Университет
amenity	vending_machine	ru	торговый автомат
amenity	veterinary	ru	Ветеринарная клиника
amenity	village_hall	ru	Усадьба
amenity	waste_basket	ru	Мусорка
amenity	wifi	ru	Вай-Фай
amenity	youth_centre	ru	Молодёжный центр
boundary	administrative	ru	Административная граница
building	apartments	ru	Многоквартирный дом
building	block	ru	Ряд зданий
building	bunker	ru	Бункер
building	chapel	ru	Церковь
building	church	ru	Церковь
building	city_hall	ru	Мэрия
building	commercial	ru	Офисное здание
building	dormitory	ru	Общежитие
building	entrance	ru	Вход в здание
building	faculty	ru	Факультетское здание
building	farm	ru	Ферма
building	flats	ru	Квартиры
building	garage	ru	Гараж
building	hall	ru	Холл
building	hospital	ru	Здание больницы
building	hotel	ru	Гостиница
building	house	ru	Дом
building	industrial	ru	Промышленное здание
building	office	ru	Офисное здание
building	public	ru	Общественное здание
building	residential	ru	Жилой дом
building	retail	ru	Здание на продажу
building	school	ru	Школа
building	shop	ru	Магазин
building	stadium	ru	Стадион
building	store	ru	Магазин
building	terrace	ru	Ряд жилых домов
building	tower	ru	Башня
building	train_station	ru	трамвайная остановка
building	university	ru	Университет
highway	bridleway	ru	Конный путь
highway	bus_guideway	ru	Автобусная полоса-рельс
highway	bus_stop	ru	Автобусная остановка
highway	byway	ru	Закоулок
highway	construction	ru	Ремонт дороги
highway	cycleway	ru	Велодорожка
highway	distance_marker	ru	Километровый столб
highway	emergency_access_point	ru	Пункт первой помощи
highway	footway	ru	Тротуар
highway	ford	ru	Брод
highway	gate	ru	Ворота
highway	living_street	ru	Жилая улица
highway	minor	ru	Второстепенная дорога
highway	motorway	ru	Автомагистраль
highway	motorway_junction	ru	Перекрёсток
highway	motorway_link	ru	Развязка на автомагистрали
highway	path	ru	Тропа
highway	pedestrian	ru	Дорога для пешеходов
highway	platform	ru	Платформа
highway	primary	ru	Главная дорога
highway	primary_link	ru	Главная дорога
highway	raceway	ru	Гоночная трасса
highway	residential	ru	Улица обычная
highway	road	ru	Дорога
highway	secondary	ru	Второстепенная дорога
highway	secondary_link	ru	Примыкающая дорога
highway	service	ru	Подъездная дорога
highway	services	ru	Придорожный сервис
highway	steps	ru	Ступеньки
highway	stile	ru	Турникет
highway	tertiary	ru	Дорога третьего класса
highway	track	ru	Неофициальная грунтовка
highway	trail	ru	Тропа
highway	trunk	ru	Трасса
highway	trunk_link	ru	Развязка
highway	unclassified	ru	Дорога местная
highway	unsurfaced	ru	Дорога без покрытия
historic	archaeological_site	ru	Раскопки
historic	battlefield	ru	Поле боя
historic	boundary_stone	ru	Пограничный камень
historic	building	ru	Здание
historic	castle	ru	Крепость
historic	church	ru	Церковь
historic	house	ru	Дом
historic	icon	ru	Икона
historic	manor	ru	Поместье
historic	memorial	ru	Памятник
historic	mine	ru	Рудник
historic	monument	ru	Памятник
historic	museum	ru	Музей
historic	ruins	ru	Развалины
historic	tower	ru	Башня
historic	wayside_cross	ru	Придорожный крест
historic	wayside_shrine	ru	Придорожная святыня
historic	wreck	ru	Остов судна
landuse	allotments	ru	Сады-огороды
landuse	basin	ru	Бассейн
landuse	brownfield	ru	Заброшенная зона
landuse	cemetery	ru	Кладбище
landuse	commercial	ru	Офисная территория
landuse	conservation	ru	Законсервированная зона
landuse	construction	ru	Стройка
landuse	farm	ru	Ферма
landuse	farmland	ru	Сельхозугодья
landuse	farmyard	ru	Сельхоздворы
landuse	forest	ru	Дикий лес
landuse	grass	ru	Трава
landuse	greenfield	ru	Неосвоенная территория
landuse	industrial	ru	Промзона
landuse	landfill	ru	Свалка
landuse	meadow	ru	Луг
landuse	military	ru	Военная зона
landuse	mine	ru	Шахта
landuse	mountain	ru	Гора
landuse	nature_reserve	ru	Заповедник
landuse	park	ru	Парк
landuse	piste	ru	Лыжня
landuse	plaza	ru	Открытая площадка
landuse	quarry	ru	Карьер
landuse	railway	ru	Железная дорога
landuse	recreation_ground	ru	Зона отдыха
landuse	reservoir	ru	водохранилище
landuse	residential	ru	Жилой район
landuse	retail	ru	Торговая территория
landuse	village_green	ru	Зелёная деревня
landuse	vineyard	ru	Виноградник
landuse	wetland	ru	Заболоченность
landuse	wood	ru	Обслуживаемый лес
leisure	beach_resort	ru	Пляж с насаждениями
leisure	common	ru	Альменда
leisure	fishing	ru	Рыбалка
leisure	garden	ru	Сад
leisure	golf_course	ru	Поле для гольфа
leisure	ice_rink	ru	Каток
leisure	marina	ru	Пристань для яхт
leisure	miniature_golf	ru	Минигольф
leisure	nature_reserve	ru	Заповедник
leisure	park	ru	Парк
leisure	pitch	ru	Спортивный газон
leisure	playground	ru	Детская игровая площадка
leisure	recreation_ground	ru	Зона отдыха
leisure	slipway	ru	Эллинг
leisure	sports_centre	ru	Спортивный центр
leisure	stadium	ru	Стадион
leisure	swimming_pool	ru	Бассейн
leisure	track	ru	Спортивная дорожка
leisure	water_park	ru	Аквапарк
natural	bay	ru	Залив
natural	beach	ru	Пляж
natural	cape	ru	Мыс
natural	cave_entrance	ru	Вход в пещеру
natural	channel	ru	Канал
natural	cliff	ru	обрыв
natural	coastline	ru	Береговая линия
natural	crater	ru	Кратер
natural	feature	ru	Природный объект
natural	fell	ru	Холм
natural	fjord	ru	Фьорд
natural	geyser	ru	Гейзер
natural	glacier	ru	Ледник
natural	heath	ru	Пустошь
natural	hill	ru	Холм
natural	island	ru	Остров
natural	land	ru	Земля
natural	marsh	ru	Болото
natural	moor	ru	Торфяник
natural	mud	ru	Грязь
natural	peak	ru	Вершина горы
natural	point	ru	Мыс
natural	reef	ru	Риф
natural	ridge	ru	Хребет
natural	river	ru	Река
natural	rock	ru	Скала
natural	scree	ru	Осыпь камней
natural	scrub	ru	Кустарник
natural	shoal	ru	Мелководье
natural	spring	ru	Родник
natural	strait	ru	Пролив
natural	tree	ru	Дерево
natural	valley	ru	Долина
natural	volcano	ru	Вулкан
natural	water	ru	Водоём
natural	wetland	ru	Заболоченная территория
natural	wetlands	ru	Заболоченные земли
natural	wood	ru	Естественный лес
place	airport	ru	Аэропорт
place	city	ru	Город
place	country	ru	Страна
place	county	ru	Уезд
place	farm	ru	Ферма
place	hamlet	ru	Посёлок
place	house	ru	Дом
place	houses	ru	Дома
place	island	ru	Остров
place	islet	ru	Маленький остров
place	locality	ru	Населённый пункт
place	moor	ru	Торфяник
place	municipality	ru	Муниципалитет
place	postcode	ru	Индекс
place	region	ru	Регион
place	sea	ru	Море
place	state	ru	Область/Штат
place	subdivision	ru	Подразделение
place	suburb	ru	Пригород
place	town	ru	Городок
place	unincorporated_area	ru	Загородная зона
place	village	ru	Деревня
railway	abandoned	ru	Разобранные железнодорожные пути
railway	construction	ru	Ремонт ж/д путей
railway	disused	ru	Заброшеная ж/д ветка
railway	disused_station	ru	Заброшеная ж/д станция
railway	funicular	ru	Фуникулер
railway	halt	ru	Станция ж/д
railway	historic_station	ru	Историческая ж.д. станция
railway	junction	ru	Стрелка ж/д
railway	level_crossing	ru	Железнодорожный переезд
railway	light_rail	ru	Легкорельсовый ж/д транспорт
railway	monorail	ru	Монорельс
railway	narrow_gauge	ru	Узкоколейка
railway	platform	ru	Железнодорожная платформа
railway	preserved	ru	Историческая ж/д
railway	spur	ru	Ответвление ж/д пути
railway	station	ru	Железнодорожная станция
railway	subway	ru	Станция метро
railway	subway_entrance	ru	Вход в метро
railway	switch	ru	Железнодорожная стрелка
railway	tram	ru	Трамвай
railway	tram_stop	ru	Трамвайная остановка
railway	yard	ru	Депо
shop	alcohol	ru	Винный магазин
shop	apparel	ru	Магазин одежды
shop	art	ru	Художественный салон
shop	bakery	ru	Булочная
shop	beauty	ru	Салон красоты
shop	beverages	ru	Магазин напитков
shop	bicycle	ru	Веломагазин
shop	books	ru	Книжный магазин
shop	butcher	ru	Мясная лавка
shop	car	ru	Автосалон
shop	car_dealer	ru	Автомагазин
shop	car_parts	ru	Автомагазин
shop	carpet	ru	Ковры
shop	car_repair	ru	Автомастерская
shop	charity	ru	Секонд-хэнд
shop	chemist	ru	м-н бытовой химии
shop	clothes	ru	Магазин одежды
shop	computer	ru	Компьютерный магазин
shop	confectionery	ru	Кондитерская
shop	convenience	ru	Ларёк
shop	copyshop	ru	Услуги копирования
shop	cosmetics	ru	Косметика
shop	department_store	ru	Универсам
shop	discount	ru	Магазин распродаж
shop	doityourself	ru	Сделай-Сам
shop	drugstore	ru	Аптека
shop	dry_cleaning	ru	Химчистка
shop	electronics	ru	Магазин электротоваров
shop	estate_agent	ru	Продажа недвижимости
shop	farm	ru	Сельпо
shop	fashion	ru	Магазин модной одежды
shop	fish	ru	Рыбный магазин
shop	florist	ru	Цветочный магазин
shop	food	ru	Продукты
shop	funeral_directors	ru	Похоронное бюро
shop	furniture	ru	Мебель
shop	gallery	ru	Галерея
shop	garden_centre	ru	Садовый центр
shop	general	ru	Магазин
shop	gift	ru	Магазин подарков
shop	greengrocer	ru	Овощной магазин
shop	grocery	ru	Бакалея
shop	hairdresser	ru	Парикмахерская
shop	hardware	ru	Хозяйственные магазины
shop	hifi	ru	Магазин аудио/видео аппаратуры
shop	insurance	ru	Страховая компания
shop	jewelry	ru	Ювелирный магазин
shop	kiosk	ru	Киоск
shop	laundry	ru	Прачечная
shop	mall	ru	Молл
shop	market	ru	Рынок
shop	mobile_phone	ru	Магазин мобильных телефонов
shop	motorcycle	ru	Магазин по продаже мотоциклов
shop	music	ru	Музыкальный магазин
shop	newsagent	ru	Киоск
shop	optician	ru	оптика
shop	organic	ru	Продуктовый магазин
shop	outdoor	ru	Открытый рынок
shop	pet	ru	Зоомагазин
shop	photo	ru	фотомагазин
shop	salon	ru	Салон
shop	shoes	ru	Обувной магазин
shop	shopping_centre	ru	Торговый центр
shop	sports	ru	Спортивный магазин
shop	stationery	ru	Канцелярские товары
shop	supermarket	ru	Супермаркет
shop	toys	ru	Магазин игрушек
shop	travel_agency	ru	Туристической агентство
shop	video	ru	Магазин видеозаписей
shop	wine	ru	Винный магазин
tourism	alpine_hut	ru	Высокогорная гостиница
tourism	artwork	ru	Произведения искусства
tourism	attraction	ru	Аттракцион
tourism	bed_and_breakfast	ru	Полупансион
tourism	cabin	ru	Каюта
tourism	camp_site	ru	Лагерь
tourism	caravan_site	ru	Караван-сарай
tourism	chalet	ru	Шале
tourism	guest_house	ru	Домик для гостей
tourism	hostel	ru	Хостел
tourism	hotel	ru	Гостиница
tourism	information	ru	Информация
tourism	lean_to	ru	Наклон
tourism	motel	ru	Мотель
tourism	museum	ru	Музей
tourism	picnic_site	ru	Место для пикника
tourism	theme_park	ru	Аттракционы
tourism	valley	ru	Долина
tourism	viewpoint	ru	Смотровая площадка
tourism	zoo	ru	Зоопарк
waterway	boatyard	ru	Верфь
waterway	canal	ru	Канал
waterway	connector	ru	Слияние рек
waterway	dam	ru	Дамба
waterway	derelict_canal	ru	Пересохший канал
waterway	ditch	ru	Водоотлив
waterway	dock	ru	Док
waterway	drain	ru	Сточная канава
waterway	lock	ru	Шлюз
waterway	lock_gate	ru	Шлюз
waterway	mineral_spring	ru	Минеральный родник
waterway	mooring	ru	Место швартовки
waterway	rapids	ru	Речной порог
waterway	river	ru	Река
waterway	riverbank	ru	Берег реки
waterway	stream	ru	Ручей
waterway	wadi	ru	Высохшее русло
waterway	waterfall	ru	Водопад
waterway	water_point	ru	Пункт водоснабжения
waterway	weir	ru	Плотина
amenity	bank	rue	Банка
amenity	bar	rue	Бар
amenity	cafe	rue	Кафе
amenity	crematorium	rue	Крематорій
amenity	post_office	rue	Пошта
amenity	school	rue	Школа
amenity	supermarket	rue	Супермаркет
amenity	toilets	rue	Тоалета
leisure	garden	rue	Загорода
leisure	park	rue	Парк
leisure	stadium	rue	Штадіон
natural	island	rue	Остров
natural	river	rue	Ріка
natural	tree	rue	Стром
place	houses	rue	Будовы
place	island	rue	Остров
place	moor	rue	Мур
place	state	rue	Штат
place	town	rue	Місто
tourism	bed_and_breakfast	rue	Ложко і фрыштик
tourism	chalet	rue	Велика хата
tourism	guest_house	rue	Пензіон
tourism	hotel	rue	Готел
tourism	motel	rue	Мотел
tourism	museum	rue	Музей
tourism	theme_park	rue	Тематічный парк
tourism	zoo	rue	Зоопарк
amenity	airport	sk	Letisko
amenity	arts_centre	sk	Kultúrne stredisko
amenity	atm	sk	Bankomat
amenity	bank	sk	Banka
amenity	bar	sk	Bar
amenity	bench	sk	Lavička
amenity	bicycle_parking	sk	Parkovisko bicyklov
amenity	bicycle_rental	sk	Požičovňa bicyklov
amenity	brothel	sk	Nevestinec
amenity	bureau_de_change	sk	Zmenáreň
amenity	bus_station	sk	Autobusová stanica
amenity	cafe	sk	Kaviareň
amenity	car_rental	sk	Požičovňa áut
amenity	car_sharing	sk	Autopožičovňa
amenity	car_wash	sk	Autoumývareň
amenity	casino	sk	Kasíno
amenity	cinema	sk	Kino
amenity	clinic	sk	Poliklinika
amenity	club	sk	Klub
amenity	college	sk	Vysoká škola
amenity	community_centre	sk	Kultúrne stredisko
amenity	courthouse	sk	Súd
amenity	crematorium	sk	Krematórium
amenity	dentist	sk	Zubár
amenity	doctors	sk	Lekár
amenity	dormitory	sk	Študentský domov
amenity	drinking_water	sk	Pitná voda
amenity	driving_school	sk	Autoškola
amenity	embassy	sk	Veľvyslanectvo
amenity	emergency_phone	sk	Núdzový telefón
amenity	fast_food	sk	Rýchle občerstvenie
amenity	ferry_terminal	sk	Terminál trajektu
amenity	fire_hydrant	sk	Požiarny hydrant
amenity	fire_station	sk	Požiarna stanica
amenity	fountain	sk	Fontána
amenity	fuel	sk	Benzínová pumpa
amenity	grave_yard	sk	Cintorín
amenity	gym	sk	Fitnes centrum / telocvičňa
amenity	health_centre	sk	Zdravotné stredisko
amenity	hospital	sk	Nemocnica
amenity	hotel	sk	Hotel
amenity	hunting_stand	sk	Poľovnícky posed
amenity	ice_cream	sk	Zmrzlina
amenity	kindergarten	sk	Materská škola
amenity	library	sk	Knižnica
amenity	market	sk	Obchod
amenity	marketplace	sk	Tržnica
amenity	mountain_rescue	sk	Horská služba
amenity	nightclub	sk	Nočný klub
amenity	nursery	sk	Jasle
amenity	nursing_home	sk	Sanatórium
amenity	office	sk	Úrad
amenity	park	sk	Park
amenity	parking	sk	Parkovisko
amenity	pharmacy	sk	lekáreň
amenity	place_of_worship	sk	Kostol
amenity	police	sk	Polícia
amenity	post_box	sk	Poštová schránka
amenity	post_office	sk	Pošta
amenity	preschool	sk	Škôlka
amenity	prison	sk	Väzenie
amenity	pub	sk	Krčma
amenity	public_building	sk	Verejná budova
amenity	recycling	sk	Recyklačké miesto
amenity	restaurant	sk	Reštaurácia
amenity	retirement_home	sk	Domov dôchodcov
amenity	sauna	sk	Sauna
amenity	school	sk	Škola
amenity	shelter	sk	Altánok
amenity	shop	sk	Obchod
amenity	social_club	sk	Spoločenský klub
amenity	studio	sk	Ateliér
amenity	supermarket	sk	Supermarket
amenity	taxi	sk	Taxi
amenity	telephone	sk	Verejný telefón
amenity	theatre	sk	Divadlo
amenity	toilets	sk	WC
amenity	townhall	sk	Radnica
amenity	university	sk	Univerzita
amenity	vending_machine	sk	Predajný automat
amenity	veterinary	sk	Veterinárna ordinácia
amenity	waste_basket	sk	Odpadkový kôš
amenity	wifi	sk	Prístup Wi-Fi
amenity	youth_centre	sk	Mládežnícke centrum
boundary	administrative	sk	Administratívne hranice
building	apartments	sk	Bytový dom
building	bunker	sk	Bunker
building	chapel	sk	Kaplnka
building	church	sk	Kostol,cirkev
building	city_hall	sk	Radnica,magistrát
building	commercial	sk	Komerčné budovy
building	dormitory	sk	Študentský domov
building	faculty	sk	Budovy fakulty
building	farm	sk	Hospodárska budova
building	flats	sk	Byty
building	garage	sk	Garáž
building	hall	sk	Sála
building	hospital	sk	Nemocničné budovy
building	hotel	sk	Hotel
building	house	sk	Dom
building	industrial	sk	Priemyselné budovy
building	office	sk	Administratívna budova
building	public	sk	Verejná budova
building	residential	sk	Obytné budovy
building	retail	sk	Maloobchodné budovy
building	school	sk	Škola
building	shop	sk	Obchod
building	stadium	sk	Štadión
building	store	sk	Obchod
building	terrace	sk	Radová zástavba
building	tower	sk	Veža
building	train_station	sk	Železničná stanica
building	university	sk	Univerzitné budovy
highway	bridleway	sk	Cesta pre kone
highway	bus_guideway	sk	Bus so sprievodcom
highway	bus_stop	sk	Zastávka autobusu
highway	byway	sk	Byway (súkromná cesta)
highway	construction	sk	Cesta vo výstavbe
highway	cycleway	sk	Cyklistický chodník
highway	distance_marker	sk	Distance Marker (kilometrovník)
highway	emergency_access_point	sk	Stanica prvej pomoci
highway	footway	sk	Chodník
highway	ford	sk	Brod
highway	gate	sk	Brána
highway	living_street	sk	Obytná zóna
highway	minor	sk	Vedľajšia cesta
highway	motorway	sk	Diaľnica
highway	motorway_junction	sk	Motorway Junction (Diaľničná križovatka)
highway	motorway_link	sk	Diaľnica
highway	path	sk	Cesta
highway	pedestrian	sk	Chodník pre chodcov
highway	platform	sk	Nástupište
highway	primary	sk	Cesta I. triedy
highway	primary_link	sk	Cesta I. triedy
highway	residential	sk	Residential(Obytný)
highway	road	sk	Cesta
highway	secondary	sk	Cesta II. triedy
highway	secondary_link	sk	Cesta II. triedy
highway	service	sk	Service Road (prístupová komunikácia)
highway	steps	sk	Schody
highway	stile	sk	Schodíky cez ohradu
highway	tertiary	sk	Cesta III. triedy
highway	track	sk	Nespevnené cesty
highway	trunk	sk	Cesta pre motorové vozidlá
highway	trunk_link	sk	Cesta pre motorové vozidlá
highway	unclassified	sk	Neklasifikovaná cesta
highway	unsurfaced	sk	Nespevnená cesta
historic	archaeological_site	sk	Archeologické nálezisko
historic	battlefield	sk	Bojisko
historic	boundary_stone	sk	Hraničný kameň
historic	building	sk	Budova
historic	castle	sk	Hrad
historic	church	sk	Kostol
historic	house	sk	Dom
historic	icon	sk	Ikona
historic	manor	sk	Šľachtické sídlo
historic	memorial	sk	Pomník
historic	mine	sk	Baňa
historic	monument	sk	Pamätník
historic	museum	sk	Múzeum
historic	ruins	sk	Ruina
historic	tower	sk	Veža
historic	wayside_cross	sk	Božie muky
historic	wayside_shrine	sk	Malá kaplnka pri ceste
historic	wreck	sk	Zrúcanina
landuse	allotments	sk	Záhradkárske osady
landuse	basin	sk	Basin (Vodná nádrž)
landuse	cemetery	sk	Cintorín
landuse	commercial	sk	Obchodná štvrť
landuse	construction	sk	Stavba
landuse	farm	sk	Farma
landuse	farmyard	sk	Dvor
landuse	forest	sk	Les
landuse	grass	sk	Tráva
landuse	industrial	sk	Priemyslová oblasť
landuse	landfill	sk	Skládka odpadu
landuse	meadow	sk	Lúka
landuse	military	sk	Vojenský priestor
landuse	mine	sk	Baňa
landuse	mountain	sk	Hora
landuse	nature_reserve	sk	Prírodná rezervácia
landuse	park	sk	Park
landuse	piste	sk	Zjazdovka
landuse	plaza	sk	Námestie
landuse	quarry	sk	Lom
landuse	railway	sk	Železnica
landuse	residential	sk	Residential Area (Obytná oblasť)
landuse	retail	sk	Retail (Obchodná zóna)
landuse	village_green	sk	Verejná zeleň
landuse	vineyard	sk	Vinica
landuse	wetland	sk	Mokrina
landuse	wood	sk	Drevo
leisure	common	sk	Verejné priestranstvo
leisure	fishing	sk	Rybolov (športový)
leisure	garden	sk	Záhrada
leisure	golf_course	sk	Golfové ihrisko
leisure	ice_rink	sk	Umelé klzisko
leisure	marina	sk	Prístav pre jachty
leisure	miniature_golf	sk	Mini golf
leisure	nature_reserve	sk	Prírodná rezervácia
leisure	park	sk	Park
leisure	pitch	sk	Športové ihrisko
leisure	playground	sk	Detské ihrisko
leisure	recreation_ground	sk	Rekreačná oblasť
leisure	slipway	sk	Lodný sklz
leisure	sports_centre	sk	Športové stredisko
leisure	stadium	sk	Štadión
leisure	swimming_pool	sk	Plaváreň
leisure	track	sk	Bežecká dráha
leisure	water_park	sk	Aquapark
natural	bay	sk	Zátoka, záliv
natural	beach	sk	Pláž
natural	cape	sk	Mys
natural	cave_entrance	sk	Vstup do jaskyne
natural	channel	sk	Kanál
natural	cliff	sk	Útes, kamenná stena
natural	coastline	sk	Pobrežie
natural	crater	sk	Kráter
natural	feature	sk	Vlastnosť
natural	fell	sk	Horská pastvina
natural	fjord	sk	Fjord
natural	geyser	sk	Gejzír
natural	glacier	sk	Ľadovec
natural	heath	sk	Vresovisko
natural	hill	sk	Kopec
natural	island	sk	Ostrov
natural	marsh	sk	Bažina
natural	moor	sk	Močiar
natural	mud	sk	Bahno
natural	peak	sk	Vrchol
natural	point	sk	Bod
natural	reef	sk	Bradlo, Skalisko
natural	ridge	sk	Hrebeň
natural	river	sk	Rieka
natural	rock	sk	Skala
natural	scree	sk	Sutina
natural	scrub	sk	Rúbanisko
natural	shoal	sk	Plytčina
natural	spring	sk	Prameň
natural	strait	sk	Úžina
natural	tree	sk	Strom
natural	valley	sk	Dolina
natural	volcano	sk	Sopka
natural	water	sk	Voda
natural	wetland	sk	Mokrina
natural	wetlands	sk	Mokrina
natural	wood	sk	Les
place	airport	sk	Letisko
place	city	sk	Mesto nad 100 tis.
place	country	sk	Štát
place	county	sk	Okres
place	farm	sk	Farma
place	hamlet	sk	Osada do 200
place	house	sk	Budova
place	houses	sk	Budovy
place	island	sk	Ostrov
place	islet	sk	Ostrovček
place	locality	sk	Oblasť
place	moor	sk	Močiar
place	municipality	sk	Obecný úrad
place	postcode	sk	PSČ
place	region	sk	Región
place	sea	sk	More
place	state	sk	Štát
place	subdivision	sk	Pododdelenie
place	suburb	sk	Mestský obvod
place	town	sk	Mesto 10 tis.-100 tis.
place	unincorporated_area	sk	Nezaradená oblasť
place	village	sk	Obec 200-10 tis.
railway	abandoned	sk	Opustená železnica
railway	construction	sk	Železnica vo výstavbe
railway	disused	sk	Nepoužívaná železnica
railway	disused_station	sk	Nepoužívaná železničná stanica
railway	funicular	sk	Lanová dráha
railway	halt	sk	Zastávka vlaku
railway	historic_station	sk	Zastávka historickej železnice
railway	junction	sk	Železničný uzol
railway	level_crossing	sk	Železničný prejazd
railway	light_rail	sk	Ľahká železnica
railway	monorail	sk	Jednokoľajka
railway	narrow_gauge	sk	Úzkokoľajná železnica
railway	platform	sk	Železničné nástupište
railway	preserved	sk	Historická železnica
railway	spur	sk	Železničná vlečka
railway	station	sk	Železničná stanica
railway	subway	sk	Stanica metra
railway	subway_entrance	sk	Vchod do metra
railway	switch	sk	Železničná výhybka
railway	tram	sk	Električka
railway	tram_stop	sk	Zastávka električky
railway	yard	sk	Železničné depo
shop	alcohol	sk	Mimo povolenia
shop	apparel	sk	Odevy
shop	art	sk	Obchod s umením
shop	bakery	sk	Pekáreň
shop	beauty	sk	Salón krásy
shop	beverages	sk	Občerstvenie
shop	bicycle	sk	Obchod s bicylkami
shop	books	sk	Kníhkupectvo
shop	butcher	sk	Mäsiarstvo
shop	car_dealer	sk	Obchod s autami
shop	car_parts	sk	Mototechna
shop	carpet	sk	Obchod s kobercami
shop	car_repair	sk	Autoservis
shop	charity	sk	Charitatívny obchod
shop	chemist	sk	Lekáreň
shop	clothes	sk	Obchod s konfekciou
shop	computer	sk	Obchod s počítačmi
shop	confectionery	sk	Cukráreň
shop	department_store	sk	Obchodný dom
shop	doityourself	sk	Urob si sám
shop	drugstore	sk	Lekáreň
shop	dry_cleaning	sk	Chemická čistiareň
shop	electronics	sk	Elektro
shop	estate_agent	sk	Realitná kancelária
shop	farm	sk	Poľnonákup
shop	fish	sk	Obchod s rybami
shop	florist	sk	Kvetinárstvo
shop	food	sk	Obchod s potravinami
shop	funeral_directors	sk	Pohrebníctvo
shop	furniture	sk	Nábytok
shop	gallery	sk	Galéria
shop	garden_centre	sk	Záhradnícke centrum
shop	general	sk	Zmiešaný tovar
shop	gift	sk	Suveníry
shop	greengrocer	sk	Obchod so zeleninou
shop	grocery	sk	Potraviny
shop	hairdresser	sk	Kaderníctvo,holičstvo
shop	hardware	sk	Železiarstvo
shop	hifi	sk	Hi-Fi
shop	insurance	sk	Poisťovňa
shop	jewelry	sk	Zlatníctvo
shop	kiosk	sk	Novinový stánok
shop	laundry	sk	Práčovňa
shop	mall	sk	Pešia zóna
shop	mobile_phone	sk	Obchod s mobilnými telefónmi
shop	motorcycle	sk	Motocyklový obchod
shop	music	sk	Hudobniny
shop	optician	sk	Očná optika
shop	organic	sk	Obchod so zdravou výživou
shop	outdoor	sk	Turistický obchod
shop	pet	sk	Chovprodukt
shop	photo	sk	Fotokino
shop	salon	sk	Salón
shop	shoes	sk	Obuva
shop	shopping_centre	sk	Nákupné stredisko
shop	sports	sk	Športový obchod
shop	stationery	sk	Papierníctvo
shop	supermarket	sk	Supermarket
shop	toys	sk	Hračkárstvo
shop	travel_agency	sk	Cestovná kancelária
shop	wine	sk	Mimo povolenia
tourism	alpine_hut	sk	Vysokohorská chata
tourism	artwork	sk	Umelecké dielo
tourism	attraction	sk	Atrakcia
tourism	bed_and_breakfast	sk	Nocľah a raňajky
tourism	cabin	sk	Malá chata
tourism	camp_site	sk	Kemping
tourism	caravan_site	sk	Autokemping
tourism	chalet	sk	Veľká chata
tourism	guest_house	sk	Penzión
tourism	hostel	sk	Ubytovňa, internát
tourism	hotel	sk	Hotel
tourism	information	sk	Informácie
tourism	lean_to	sk	Prístrešok
tourism	motel	sk	Motel
tourism	museum	sk	Múzeum
tourism	picnic_site	sk	Výletné miesto
tourism	theme_park	sk	Zábavný park
tourism	valley	sk	Údolie
tourism	viewpoint	sk	Rozhľadňa, výhliadka
tourism	zoo	sk	Zoo
waterway	boatyard	sk	Lodenica
waterway	canal	sk	Kanál
waterway	dam	sk	Priehrada,hrádza
waterway	derelict_canal	sk	Opustený kanál
waterway	ditch	sk	Priekopa
waterway	dock	sk	Dok
waterway	drain	sk	Odvodňovací kanál
waterway	lock	sk	Plavebná komora
waterway	lock_gate	sk	Brána plavebnej komory
waterway	mineral_spring	sk	Minerálny prameň
waterway	mooring	sk	Kotvisko
waterway	river	sk	Rieka
waterway	riverbank	sk	Breh rieky
waterway	stream	sk	Potok
waterway	wadi	sk	Občasné riečisko(Vádí)
waterway	waterfall	sk	Vodopád
waterway	water_point	sk	Vodný bod
waterway	weir	sk	Splav
amenity	airport	sl	Letališče
amenity	arts_centre	sl	Umetnostni center
amenity	atm	sl	Bankomat
amenity	auditorium	sl	Avditorij
amenity	bank	sl	Banka
amenity	bar	sl	Bar
amenity	bench	sl	Klop
amenity	bicycle_parking	sl	Parkirišče za kolesa
amenity	bicycle_rental	sl	Izposoja koles
amenity	brothel	sl	Javna hiša
amenity	bureau_de_change	sl	Menjalnica
amenity	bus_station	sl	Avtobusna postaja
amenity	cafe	sl	Kavarna
amenity	car_rental	sl	Rent-a-car
amenity	car_sharing	sl	Souporaba avtomobila
amenity	car_wash	sl	Avtopralnica
amenity	casino	sl	Kazino
amenity	cinema	sl	Kinematograf
amenity	clinic	sl	Klinika
amenity	club	sl	Klub
amenity	college	sl	Srednja šola
amenity	community_centre	sl	Center skupnosti
amenity	courthouse	sl	Sodišče
amenity	crematorium	sl	Krematorij
amenity	dentist	sl	Zobozdravnik
amenity	doctors	sl	Zdravniki
amenity	dormitory	sl	Študentski dom
amenity	drinking_water	sl	Pitna voda
amenity	driving_school	sl	Avtošola
amenity	embassy	sl	Veleposlaništvo
amenity	emergency_phone	sl	Klic v sili
amenity	fast_food	sl	Hitra hrana
amenity	ferry_terminal	sl	Trajekt
amenity	fire_hydrant	sl	Hidrant
amenity	fire_station	sl	Gasilska postaja
amenity	fountain	sl	Vodomet
amenity	fuel	sl	Bencinska črpalka
amenity	grave_yard	sl	Pokopališče
amenity	gym	sl	Fitnes / Telovadnica
amenity	hall	sl	Dvorana
amenity	health_centre	sl	Dom zdravja
amenity	hospital	sl	Bolnišnica
amenity	hotel	sl	Hotel
amenity	hunting_stand	sl	Lovska opazovalnica
amenity	ice_cream	sl	Sladoled
amenity	kindergarten	sl	Vrtec
amenity	library	sl	Knjižnica
amenity	market	sl	Trg
amenity	marketplace	sl	Tržnica
amenity	mountain_rescue	sl	GRS - Gorska reševalna služba
amenity	nightclub	sl	Nočni klub
amenity	nursery	sl	Vrtec
amenity	nursing_home	sl	Dom za ostarele
amenity	office	sl	Pisarne
amenity	park	sl	Park
amenity	parking	sl	Parkirišče
amenity	pharmacy	sl	Lekarna
amenity	place_of_worship	sl	Cerkev
amenity	police	sl	Policija
amenity	post_box	sl	Poštni nabiralnik
amenity	post_office	sl	Pošta
amenity	preschool	sl	Vrtec
amenity	prison	sl	Zapor
amenity	pub	sl	Pivnica
amenity	public_building	sl	Javne zgradba
amenity	public_market	sl	Javni trg
amenity	reception_area	sl	Recepcija
amenity	recycling	sl	Reciklirna točka
amenity	restaurant	sl	Restavracija
amenity	retirement_home	sl	Dom za ostarele
amenity	sauna	sl	Savna
amenity	school	sl	Šola
amenity	shelter	sl	Zaklonišče
amenity	shop	sl	Trgovina
amenity	shopping	sl	Nakupovanje
amenity	social_club	sl	Društveni klub
amenity	studio	sl	Studio
amenity	supermarket	sl	Supermarket
amenity	taxi	sl	Taksi
amenity	telephone	sl	Telefonska govorilnica
amenity	theatre	sl	Gledališče
amenity	toilets	sl	Stranišča
amenity	townhall	sl	Mestna hiša
amenity	university	sl	Univerza
amenity	vending_machine	sl	Avtomat
amenity	veterinary	sl	Veterinarska klinika
amenity	village_hall	sl	Vaško središče
amenity	waste_basket	sl	Koš za odpadke
amenity	wifi	sl	Dostop WiFi
amenity	youth_centre	sl	Mladinski center
boundary	administrative	sl	Upravne meje
building	apartments	sl	Stanovanjski blok
building	block	sl	Blok
building	bunker	sl	Bunker
building	chapel	sl	Kapelica
building	church	sl	Cerkev
building	city_hall	sl	Mestna hiša
building	commercial	sl	Poslovna zgradba
building	dormitory	sl	Študentski dom
building	entrance	sl	Vhod
building	faculty	sl	Fakulteta
building	farm	sl	Kmetija
building	flats	sl	Stanovanja
building	garage	sl	Garaža
building	hall	sl	Dvorana
building	hospital	sl	Bolnišnica
building	hotel	sl	Hotel
building	house	sl	Hiša
building	industrial	sl	Industrijski objekt
building	office	sl	Poslovna stavba
building	public	sl	Javne zgradba
building	residential	sl	Stanovanjska stavba
building	retail	sl	Trgovina na drobno
building	school	sl	Šola
building	shop	sl	Trgovina
building	stadium	sl	Stadion
building	store	sl	Trgovina
building	terrace	sl	Terasa
building	tower	sl	Stolp
building	train_station	sl	Železniška postaja
building	university	sl	Univerza
highway	bridleway	sl	Jahalna pot
highway	bus_guideway	sl	Turistični avtobus
highway	bus_stop	sl	Avtobusna postaja
highway	byway	sl	Obvoz
highway	construction	sl	Autocesta v izgradnji
highway	cycleway	sl	Kolesarska steza
highway	distance_marker	sl	Kilometerski stebriček
highway	emergency_access_point	sl	Dostop za interventna vozila
highway	footway	sl	Pešpot
highway	ford	sl	Prehod
highway	gate	sl	Vrata
highway	living_street	sl	Ulica z umirjenim prometom
highway	minor	sl	Manjša cesta
highway	motorway	sl	Avtocesta
highway	motorway_junction	sl	Avtocestno križišče
highway	motorway_link	sl	Avtocestni priključek
highway	path	sl	Pot
highway	pedestrian	sl	Pločnik
highway	platform	sl	Platforma
highway	primary	sl	Glavna cesta
highway	primary_link	sl	Priključek na glavno cesto
highway	raceway	sl	Dirkališče
highway	residential	sl	Stanovanjska
highway	road	sl	Nedoločena cesta
highway	secondary	sl	Regionalna cesta
highway	secondary_link	sl	Priključek na regionalno cesto
highway	service	sl	Servisna cesta
highway	services	sl	Avtocestno postajališče
highway	steps	sl	Stopnice
highway	stile	sl	Prehod preko ograje
highway	tertiary	sl	Lokalna cesta
highway	track	sl	Kolovoz
highway	trail	sl	Sled
highway	trunk	sl	Hitra cesta
highway	trunk_link	sl	Priključek na hitro cesto
highway	unclassified	sl	Neopredeljena cesta
highway	unsurfaced	sl	Makadamska pot
historic	archaeological_site	sl	Arheološko najdbišče
historic	battlefield	sl	Bojišče
historic	boundary_stone	sl	Mejni kamen
historic	building	sl	Zgradba
historic	castle	sl	Grad
historic	church	sl	Cerkev
historic	house	sl	Hiša
historic	icon	sl	Ikona
historic	manor	sl	Graščina
historic	memorial	sl	Spomenik
historic	mine	sl	Rudnik
historic	monument	sl	Spomenik
historic	museum	sl	Muzej
historic	ruins	sl	Ruševine
historic	tower	sl	Stolp
historic	wayside_cross	sl	Križ
historic	wayside_shrine	sl	Kapelica
historic	wreck	sl	Razbitina
landuse	allotments	sl	Vrtički
landuse	basin	sl	Čistilni bazen
landuse	brownfield	sl	Gradbišče
landuse	cemetery	sl	Pokopališče
landuse	commercial	sl	Poslovna cona
landuse	conservation	sl	Zaštićeno področje
landuse	construction	sl	Gradbišče
landuse	farm	sl	Kmetija
landuse	farmland	sl	Kmetijsko zemljišče
landuse	farmyard	sl	Vrt
landuse	forest	sl	Gozd
landuse	grass	sl	Travnik
landuse	greenfield	sl	Pripravljeno za gradbišče
landuse	industrial	sl	Industrijska cona
landuse	landfill	sl	Smetišče
landuse	meadow	sl	Travnik
landuse	military	sl	Vojaško območje
landuse	mine	sl	Minsko polje
landuse	mountain	sl	Planina
landuse	nature_reserve	sl	Naravni rezervat
landuse	park	sl	Park
landuse	piste	sl	Proga
landuse	plaza	sl	Trg
landuse	quarry	sl	Dnevni kop
landuse	railway	sl	Železnica
landuse	recreation_ground	sl	Rekreacijsko območje
landuse	reservoir	sl	Zbiralnik
landuse	residential	sl	Stanovanjska cona
landuse	retail	sl	Trgovine
landuse	village_green	sl	Zelenica
landuse	vineyard	sl	Vinograd
landuse	wetland	sl	Mokrišče
landuse	wood	sl	Pragozd
leisure	beach_resort	sl	kopališče
leisure	common	sl	Javno zemljišče
leisure	fishing	sl	Ribolovno območje
leisure	garden	sl	Vrt
leisure	golf_course	sl	Igrišče za Golf
leisure	ice_rink	sl	Drsališče
leisure	marina	sl	Marina
leisure	miniature_golf	sl	Mini golf
leisure	nature_reserve	sl	Naravni rezervat
leisure	park	sl	Park
leisure	pitch	sl	Športno igrišče
leisure	playground	sl	Otroško igrišče
leisure	recreation_ground	sl	Rekreacijsko območje
leisure	slipway	sl	Rampa
leisure	sports_centre	sl	Športni center
leisure	stadium	sl	Stadion
leisure	swimming_pool	sl	Bazen
leisure	track	sl	Tekaška proga
leisure	water_park	sl	Vodni park
natural	bay	sl	Zaliv
natural	beach	sl	Obala
natural	cape	sl	Rt
natural	cave_entrance	sl	Vhod v jamo
natural	channel	sl	Kanal
natural	cliff	sl	Klif
natural	coastline	sl	Obala
natural	crater	sl	Krater
natural	feature	sl	Znamenitost
natural	fell	sl	Višinski travnik
natural	fjord	sl	Fjord
natural	geyser	sl	Gejzir
natural	glacier	sl	Ledenik
natural	heath	sl	Ravnina
natural	hill	sl	Hrib
natural	island	sl	Otok
natural	land	sl	Otok
natural	marsh	sl	Močvirje
natural	moor	sl	Močvirje
natural	mud	sl	Blato
natural	peak	sl	Vrh
natural	point	sl	Točka
natural	reef	sl	Greben
natural	ridge	sl	Greben
natural	river	sl	Reka
natural	rock	sl	Skala
natural	scree	sl	Melišče
natural	scrub	sl	Grmovje
natural	shoal	sl	Peščena plaža
natural	spring	sl	Izvir
natural	strait	sl	Ožina
natural	tree	sl	Drevo
natural	valley	sl	Dolina
natural	volcano	sl	Vulkan
natural	water	sl	Vodovje
natural	wetland	sl	Mokrišče
natural	wetlands	sl	Mokrišča
natural	wood	sl	Pragozd
place	airport	sl	Letališče
place	city	sl	Mesto
place	country	sl	Država
place	county	sl	Okrožje
place	farm	sl	Kmetija
place	hamlet	sl	Zaselek
place	house	sl	Hiša
place	houses	sl	Hiše
place	island	sl	Otok
place	islet	sl	Otoček
place	locality	sl	Krajevno ime
place	moor	sl	Muring
place	municipality	sl	Občina
place	postcode	sl	Poštna številka
place	region	sl	Regija
place	sea	sl	Morje
place	state	sl	Država (ZDA):
place	subdivision	sl	Pododdelek
place	suburb	sl	Predmestje
place	town	sl	Mesto
place	unincorporated_area	sl	Nikogaršnje območje
place	village	sl	Vas
railway	abandoned	sl	Opuščena železnica
railway	construction	sl	Železnica v izgradnji
railway	disused	sl	Opuščena železnica
railway	disused_station	sl	Opuščena železniška postaja
railway	funicular	sl	Žična vzpenjača
railway	halt	sl	Železniška postaja
railway	historic_station	sl	Zgodovinska železniška postaja
railway	junction	sl	Križišče železnic
railway	level_crossing	sl	Prehod
railway	light_rail	sl	Tramvaj
railway	monorail	sl	Monorail
railway	narrow_gauge	sl	Ozkotirna železnica
railway	platform	sl	Železniški peron
railway	preserved	sl	Ohranjena železniška proga
railway	spur	sl	Tir
railway	station	sl	Železniška postaja
railway	subway	sl	Podzemna postaja
railway	subway_entrance	sl	Vhod na podzemno
railway	switch	sl	Kretnica
railway	tram	sl	Tramvaj
railway	tram_stop	sl	Tramvajska postaja
railway	yard	sl	Železniško dvorišče
shop	alcohol	sl	Trgovina alkoholnih pijač
shop	apparel	sl	Trgovina z oblekami
shop	art	sl	Prodajna galerija
shop	bakery	sl	Pekarna
shop	beauty	sl	Salon lepote
shop	beverages	sl	Trgovina pijač
shop	bicycle	sl	Trgovina koles
shop	books	sl	Knjigarna
shop	butcher	sl	Mesar
shop	car	sl	Avtomobilski salon
shop	car_dealer	sl	Avto trgovec
shop	car_parts	sl	Avtomobilski deli
shop	carpet	sl	Prodajalna preprog
shop	car_repair	sl	Avtoservis
shop	charity	sl	Dobrodelni trgovina
shop	chemist	sl	Kemična trgovina
shop	clothes	sl	Trgovina z oblekami
shop	computer	sl	Računalniška trgovina
shop	confectionery	sl	Trgovina sladkarij
shop	convenience	sl	Minimarket
shop	copyshop	sl	Kopirnica
shop	cosmetics	sl	Drogerija
shop	department_store	sl	Trgovska hiša
shop	discount	sl	Outlet
shop	doityourself	sl	Orodjarna
shop	drugstore	sl	Lekarna
shop	dry_cleaning	sl	Čistilnica
shop	electronics	sl	Elektronska trgovina
shop	estate_agent	sl	Nepremičninska agencija
shop	farm	sl	Kmečka trgovina
shop	fashion	sl	Modna trgovina
shop	fish	sl	Ribarnica
shop	florist	sl	Cvetličarna
shop	food	sl	Prehrambena trgovina
shop	funeral_directors	sl	Pogrebni zavod
shop	furniture	sl	Pohištvo
shop	gallery	sl	Prodajna galerija
shop	garden_centre	sl	Vrtni center
shop	general	sl	Trgovina z mešanim blagom
shop	gift	sl	Prodajalna daril
shop	greengrocer	sl	Sadje in zelenjava
shop	grocery	sl	Živilska trgovona
shop	hairdresser	sl	Frizerski salon
shop	hardware	sl	Železnina
shop	hifi	sl	Trgovina z avdio opremo
shop	insurance	sl	Zavarovalnica
shop	jewelry	sl	Draguljarna
shop	kiosk	sl	Kiosk prodajalna
shop	laundry	sl	Pralnica
shop	mall	sl	Trgovski center
shop	market	sl	Trg
shop	mobile_phone	sl	Trgovina mobilnih telefonov
shop	motorcycle	sl	Trgovina z motorji
shop	music	sl	Trgovina z glasbo
shop	newsagent	sl	Trafika
shop	optician	sl	Optik
shop	organic	sl	Trgovina z ekološko hrano
shop	outdoor	sl	Trgovina na prostem
shop	pet	sl	Trgovina za male živali
shop	photo	sl	Fotograf
shop	salon	sl	Lepotilni salon
shop	shoes	sl	Trgovina s čevlji
shop	shopping_centre	sl	Nakupovalno središče
shop	sports	sl	Športna trgovina
shop	stationery	sl	Papirnica
shop	supermarket	sl	Supermarket
shop	toys	sl	Trgovina igrač
shop	travel_agency	sl	Potovalna agencija
shop	video	sl	Videoteka
shop	wine	sl	Vinoteka
tourism	alpine_hut	sl	Koča
tourism	artwork	sl	Umetnina
tourism	attraction	sl	Zanimivost
tourism	bed_and_breakfast	sl	Nočitev z zajtrkom
tourism	cabin	sl	Nočitev
tourism	camp_site	sl	Kamp
tourism	caravan_site	sl	Kamp
tourism	chalet	sl	Apartma
tourism	guest_house	sl	Penzion
tourism	hostel	sl	Hostel
tourism	hotel	sl	Hotel
tourism	information	sl	Informacije
tourism	lean_to	sl	Bivak
tourism	motel	sl	Motel
tourism	museum	sl	Muzej
tourism	picnic_site	sl	Prostor za piknike
tourism	theme_park	sl	Zabaviščni park
tourism	valley	sl	Dolina
tourism	viewpoint	sl	Razgledna točka
tourism	zoo	sl	Živalski vrt
waterway	boatyard	sl	Ladjedelnica
waterway	canal	sl	Prekop
waterway	connector	sl	Vodne povezave
waterway	dam	sl	Jez
waterway	derelict_canal	sl	Zapuščen prekop
waterway	ditch	sl	Jarek
waterway	dock	sl	Dok
waterway	drain	sl	Jarek
waterway	lock	sl	Zapornica
waterway	lock_gate	sl	Velika zapornica
waterway	mineral_spring	sl	Mineral vrelec
waterway	mooring	sl	Sidrišče
waterway	rapids	sl	Brzice
waterway	river	sl	Reka
waterway	riverbank	sl	Breg
waterway	stream	sl	Potok
waterway	wadi	sl	Vadi
waterway	waterfall	sl	Slap
waterway	water_point	sl	Pitna voda
waterway	weir	sl	Zapornica
amenity	dentist	sq	Dentist
amenity	embassy	sq	Ambasada
amenity	fire_station	sq	Zjarrëfiksat
amenity	theatre	sq	Teatër
amenity	university	sq	Universitet
building	store	sq	Dyqan
historic	church	sq	Kisha
historic	museum	sq	Muze
natural	cave_entrance	sq	Shpella Hyrja
natural	island	sq	Ishull
natural	volcano	sq	Vullkan
natural	water	sq	Ujë
place	airport	sq	Aeroport
place	city	sq	Qyteti
place	country	sq	Veni
place	farm	sq	Ferma
place	house	sq	Shtepi
place	houses	sq	Shtepi
place	island	sq	Ishull
place	municipality	sq	Komuna
place	postcode	sq	Post kodi
place	region	sq	Regjioni
place	sea	sq	Deti
place	state	sq	Shteti
place	town	sq	Veni
place	village	sq	Fshati
shop	bakery	sq	Dyqan buke
shop	computer	sq	Shitore e kompjuterave
tourism	artwork	sq	Puna artistike
tourism	bed_and_breakfast	sq	Bujtin dhe Mengjes
tourism	cabin	sq	Kabine
tourism	camp_site	sq	Ven per kamping
tourism	hostel	sq	Bujtine
tourism	hotel	sq	Hotel
tourism	information	sq	Informacione
tourism	motel	sq	Motel
tourism	museum	sq	Muze
tourism	picnic_site	sq	Vend per Piknik
tourism	valley	sq	Lugine
tourism	zoo	sq	Kopsht zoologjik
amenity	airport	sr-ec	Аеродром
amenity	arts_centre	sr-ec	Уметнички центар
amenity	atm	sr-ec	Банкомат
amenity	auditorium	sr-ec	Дворана
amenity	bank	sr-ec	Банка
amenity	bar	sr-ec	Бар
amenity	bench	sr-ec	Клупа
amenity	bicycle_parking	sr-ec	Бициклистички паркинг
amenity	bicycle_rental	sr-ec	Изнајмљивање бицикла
amenity	brothel	sr-ec	Јавна кућа
amenity	bureau_de_change	sr-ec	Мењачница
amenity	bus_station	sr-ec	Аутобуска станица
amenity	cafe	sr-ec	Кафе
amenity	car_rental	sr-ec	Изнајмљивање аутомобила
amenity	car_sharing	sr-ec	Заједничко коришћење аутомобила
amenity	car_wash	sr-ec	Ауто-перионица
amenity	casino	sr-ec	Казино
amenity	cinema	sr-ec	Биоскоп
amenity	clinic	sr-ec	Клиника
amenity	club	sr-ec	Клуб
amenity	college	sr-ec	Факултет
amenity	community_centre	sr-ec	Друштвени центар
amenity	courthouse	sr-ec	Суд
amenity	crematorium	sr-ec	Крематоријум
amenity	dentist	sr-ec	Зубар
amenity	doctors	sr-ec	Доктор
amenity	dormitory	sr-ec	Студентски дом
amenity	drinking_water	sr-ec	Пијаћа вода
amenity	driving_school	sr-ec	Ауто-школа
amenity	embassy	sr-ec	Амбасада
amenity	emergency_phone	sr-ec	Телефон за хитне случајеве
amenity	fast_food	sr-ec	Брза храна
amenity	ferry_terminal	sr-ec	Скела
amenity	fire_hydrant	sr-ec	Хидрант
amenity	fire_station	sr-ec	Ватрогасна станица
amenity	fountain	sr-ec	Фонтана
amenity	fuel	sr-ec	Бензинска пумпа
amenity	grave_yard	sr-ec	Гробље
amenity	gym	sr-ec	Фитнес центар
amenity	hall	sr-ec	Хала
amenity	health_centre	sr-ec	Дом здравља
amenity	hospital	sr-ec	Болница
amenity	hotel	sr-ec	Хотел
amenity	hunting_stand	sr-ec	Ловачки дом
amenity	ice_cream	sr-ec	Продавница сладоледа
amenity	kindergarten	sr-ec	Обданиште
amenity	library	sr-ec	Библиотека
amenity	market	sr-ec	Пијаца
amenity	marketplace	sr-ec	Пијаца
amenity	mountain_rescue	sr-ec	Горска служба
amenity	nightclub	sr-ec	Ноћни клуб
amenity	nursery	sr-ec	Јаслице
amenity	nursing_home	sr-ec	Старачки дом
amenity	office	sr-ec	Пословница
amenity	park	sr-ec	Парк
amenity	parking	sr-ec	Паркинг
amenity	pharmacy	sr-ec	Апотека
amenity	place_of_worship	sr-ec	Место богослужења
amenity	police	sr-ec	Полиција
amenity	post_box	sr-ec	Поштанско сандуче
amenity	post_office	sr-ec	Пошта
amenity	preschool	sr-ec	Предшколска установа
amenity	prison	sr-ec	Затвор
amenity	pub	sr-ec	Паб
amenity	public_building	sr-ec	Установа
amenity	public_market	sr-ec	Пијаца
amenity	reception_area	sr-ec	Пријемно подручје
amenity	recycling	sr-ec	Место за рециклажу
amenity	restaurant	sr-ec	Ресторан
amenity	retirement_home	sr-ec	Старачки дом
amenity	sauna	sr-ec	Сауна
amenity	school	sr-ec	Школа
amenity	shelter	sr-ec	Склониште
amenity	shop	sr-ec	Продавница
amenity	shopping	sr-ec	Трговачки центар
amenity	social_club	sr-ec	Друштвени клуб
amenity	studio	sr-ec	Студио
amenity	supermarket	sr-ec	Супермаркет
amenity	taxi	sr-ec	Такси
amenity	telephone	sr-ec	Телефонска говорница
amenity	theatre	sr-ec	Позориште
amenity	toilets	sr-ec	Тоалети
amenity	townhall	sr-ec	Градска скупштина
amenity	university	sr-ec	Универзитет
amenity	vending_machine	sr-ec	Аутомат
amenity	veterinary	sr-ec	Ветеринарска хирургија
amenity	village_hall	sr-ec	Сеоски дом
amenity	waste_basket	sr-ec	Корпа за отпатке
amenity	wifi	sr-ec	Ви-Фи приступ
amenity	youth_centre	sr-ec	Дом омладине
boundary	administrative	sr-ec	Административна граница
building	apartments	sr-ec	Стамбени блок
building	block	sr-ec	Блок зграда
building	bunker	sr-ec	Бункер
building	chapel	sr-ec	Капела
building	church	sr-ec	Црква
building	city_hall	sr-ec	Градска скупштина
building	commercial	sr-ec	Пословна зграда
building	dormitory	sr-ec	Студентски дом
building	entrance	sr-ec	Улаз у зграду
building	faculty	sr-ec	Зграда факултета
building	farm	sr-ec	Зграда фарме
building	flats	sr-ec	Станови
building	garage	sr-ec	Гаража
building	hall	sr-ec	Хала
building	hospital	sr-ec	Болница
building	hotel	sr-ec	Хотел
building	house	sr-ec	Кућа
building	industrial	sr-ec	Индустријска зграда
building	office	sr-ec	Пословница
building	public	sr-ec	Јавна зграда
building	residential	sr-ec	Стамбена зграда
building	retail	sr-ec	Малопродајна радња
building	school	sr-ec	Школа
building	shop	sr-ec	Продавница
building	stadium	sr-ec	Стадион
building	store	sr-ec	Продавница
building	terrace	sr-ec	Тераса
building	tower	sr-ec	Торањ
building	train_station	sr-ec	Железничка станица
building	university	sr-ec	Универзитетска зграда
highway	bridleway	sr-ec	Коњичка стаза
highway	bus_guideway	sr-ec	Аутобуска трака
highway	bus_stop	sr-ec	Аутобуска станица
highway	byway	sr-ec	Пречица
highway	construction	sr-ec	Ауто-пут у изградњи
highway	cycleway	sr-ec	Бициклистичка стаза
highway	distance_marker	sr-ec	Ознака удаљености
highway	emergency_access_point	sr-ec	Излаз за случај опасности
highway	footway	sr-ec	Пешачка стаза
highway	ford	sr-ec	Газ
highway	gate	sr-ec	Капија
highway	living_street	sr-ec	Улица смиреног промета
highway	minor	sr-ec	Другоразредни пут
highway	motorway	sr-ec	Ауто-пут
highway	motorway_junction	sr-ec	Петља
highway	motorway_link	sr-ec	Мото-пут
highway	path	sr-ec	Стаза
highway	pedestrian	sr-ec	Пешачка стаза
highway	platform	sr-ec	Платформа
highway	primary	sr-ec	Главни пут
highway	primary_link	sr-ec	Главни пут
highway	raceway	sr-ec	Тркачка стаза
highway	residential	sr-ec	Улица
highway	road	sr-ec	Пут
highway	secondary	sr-ec	Споредни пут
highway	secondary_link	sr-ec	Споредни пут
highway	service	sr-ec	Сервисни пут
highway	services	sr-ec	Услуге на ауто-путу
highway	steps	sr-ec	Степенице
highway	stile	sr-ec	Прелаз преко ограде
highway	tertiary	sr-ec	Локални пут
highway	track	sr-ec	Макадам
highway	trail	sr-ec	Стаза
highway	trunk	sr-ec	Магистрални пут
highway	trunk_link	sr-ec	Магистрални пут
highway	unclassified	sr-ec	Некатегорисани пут
highway	unsurfaced	sr-ec	Неасфалтирани пут
historic	archaeological_site	sr-ec	Археолошко налазиште
historic	battlefield	sr-ec	Бојиште
historic	boundary_stone	sr-ec	Гранични камен
historic	building	sr-ec	Зграда
historic	castle	sr-ec	Дворац
historic	church	sr-ec	Црква
historic	house	sr-ec	Кућа
historic	icon	sr-ec	Икона
historic	manor	sr-ec	Племићко имање
historic	memorial	sr-ec	Споменик
historic	mine	sr-ec	Рудник
historic	monument	sr-ec	Споменик
historic	museum	sr-ec	Музеј
historic	ruins	sr-ec	Рушевине
historic	tower	sr-ec	Торањ
historic	wayside_cross	sr-ec	Крајпуташ
historic	wayside_shrine	sr-ec	Успутно светиште
historic	wreck	sr-ec	Олупина
landuse	allotments	sr-ec	Баште
landuse	basin	sr-ec	Басен
landuse	brownfield	sr-ec	Земљиште за пренамену
landuse	cemetery	sr-ec	Гробље
landuse	commercial	sr-ec	Пословно подручје
landuse	conservation	sr-ec	Заштићено подручје
landuse	construction	sr-ec	Градилиште
landuse	farm	sr-ec	Фарма
landuse	farmland	sr-ec	Поље
landuse	farmyard	sr-ec	Фарма
landuse	forest	sr-ec	Шума
landuse	grass	sr-ec	Трава
landuse	greenfield	sr-ec	Зелено поље
landuse	industrial	sr-ec	Индустријско подручје
landuse	landfill	sr-ec	Депонија
landuse	meadow	sr-ec	Ливада
landuse	military	sr-ec	Војно подручје
landuse	mine	sr-ec	Рудник
landuse	mountain	sr-ec	Планина
landuse	nature_reserve	sr-ec	Резерват природе
landuse	park	sr-ec	Парк
landuse	piste	sr-ec	Скијашка стаза
landuse	plaza	sr-ec	Шеталиште
landuse	quarry	sr-ec	Каменолом
landuse	railway	sr-ec	Железничка пруга
landuse	recreation_ground	sr-ec	Рекреацијско подручје
landuse	reservoir	sr-ec	Резервоар
landuse	residential	sr-ec	Стамбено подручје
landuse	retail	sr-ec	Малопродаја
landuse	village_green	sr-ec	Сеоско поље
landuse	vineyard	sr-ec	Виноград
landuse	wetland	sr-ec	Мочвара
landuse	wood	sr-ec	Шума
leisure	beach_resort	sr-ec	Морско одмаралиште
leisure	common	sr-ec	Општинско земљиште
leisure	fishing	sr-ec	Риболовно подручје
leisure	garden	sr-ec	Башта
leisure	golf_course	sr-ec	Голф терен
leisure	ice_rink	sr-ec	Клизалиште
leisure	marina	sr-ec	Марина
leisure	miniature_golf	sr-ec	Мини голф
leisure	nature_reserve	sr-ec	Резерват природе
leisure	park	sr-ec	Парк
leisure	pitch	sr-ec	Спортско игралиште
leisure	playground	sr-ec	Игралиште
leisure	recreation_ground	sr-ec	Рекреацијско подручје
leisure	slipway	sr-ec	Навоз
leisure	sports_centre	sr-ec	Спортски центар
leisure	stadium	sr-ec	Стадион
leisure	swimming_pool	sr-ec	Базен
leisure	track	sr-ec	Стаза за трчање
leisure	water_park	sr-ec	Водени парк
natural	bay	sr-ec	Залив
natural	beach	sr-ec	Плажа
natural	cape	sr-ec	Рт
natural	cave_entrance	sr-ec	Улаз у пећину
natural	channel	sr-ec	Канал
natural	cliff	sr-ec	Литица
natural	coastline	sr-ec	Обала
natural	crater	sr-ec	Кратер
natural	feature	sr-ec	Обележје
natural	fell	sr-ec	Брдо
natural	fjord	sr-ec	Фјорд
natural	geyser	sr-ec	Гејзир
natural	glacier	sr-ec	Глечер
natural	heath	sr-ec	Равница
natural	hill	sr-ec	Брдо
natural	island	sr-ec	Острво
natural	land	sr-ec	Земљиште
natural	marsh	sr-ec	Мочвара
natural	moor	sr-ec	Мочвара
natural	mud	sr-ec	Блато
natural	peak	sr-ec	Врх
natural	point	sr-ec	Тачка
natural	reef	sr-ec	Гребен
natural	ridge	sr-ec	Гребен
natural	river	sr-ec	Река
natural	rock	sr-ec	Стена
natural	scree	sr-ec	Осулина
natural	scrub	sr-ec	Гуштара
natural	shoal	sr-ec	Спруд
natural	spring	sr-ec	Извор
natural	strait	sr-ec	Мореуз
natural	tree	sr-ec	Дрво
natural	valley	sr-ec	Долина
natural	volcano	sr-ec	Вулкан
natural	water	sr-ec	Вода
natural	wetland	sr-ec	Мочвара
natural	wetlands	sr-ec	Мочвара
natural	wood	sr-ec	Шума
place	airport	sr-ec	Аеродром
place	city	sr-ec	Град
place	country	sr-ec	Држава
place	county	sr-ec	Округ
place	farm	sr-ec	Фарма
place	hamlet	sr-ec	Заселак
place	house	sr-ec	Кућа
place	houses	sr-ec	Куће
place	island	sr-ec	Острво
place	islet	sr-ec	Хрид
place	locality	sr-ec	Локалитет
place	moor	sr-ec	Мочвара
place	municipality	sr-ec	Општина
place	postcode	sr-ec	Поштански број
place	region	sr-ec	Подручје
place	sea	sr-ec	Море
place	state	sr-ec	Савезна држава
place	subdivision	sr-ec	Подгрупа
place	suburb	sr-ec	Предграђе
place	town	sr-ec	Варошица
place	unincorporated_area	sr-ec	Слободна земља
place	village	sr-ec	Село
railway	abandoned	sr-ec	Напуштена железница
railway	construction	sr-ec	Железничка пруга у изградњи
railway	disused	sr-ec	Напуштена железница
railway	disused_station	sr-ec	Напуштена железничка станица
railway	funicular	sr-ec	Жичана железница
railway	halt	sr-ec	Железничко стајалиште
railway	historic_station	sr-ec	Историјска железничка станица
railway	junction	sr-ec	Железнички чвор
railway	level_crossing	sr-ec	Пружни прелаз
railway	light_rail	sr-ec	Лака железница
railway	monorail	sr-ec	Једнотрачна пруга
railway	narrow_gauge	sr-ec	Ускотрачна пруга
railway	platform	sr-ec	Железничка платформа
railway	preserved	sr-ec	Очувана железница
railway	spur	sr-ec	Пруга
railway	station	sr-ec	Железничка станица
railway	subway	sr-ec	Метро станица
railway	subway_entrance	sr-ec	Улаз у метро
railway	switch	sr-ec	Скретница
railway	tram	sr-ec	Трамвај
railway	tram_stop	sr-ec	Трамвајско стајалиште
railway	yard	sr-ec	Ранжирна станица
shop	alcohol	sr-ec	Трговина пићем
shop	apparel	sr-ec	Трговина одећом
shop	art	sr-ec	Атеље
shop	bakery	sr-ec	Пекара
shop	beauty	sr-ec	Парфимерија
shop	beverages	sr-ec	Продавница пића
shop	bicycle	sr-ec	Продавница бицикала
shop	books	sr-ec	Књижара
shop	butcher	sr-ec	Месара
shop	car	sr-ec	Ауто-кућа
shop	car_dealer	sr-ec	Ауто-дилер
shop	car_parts	sr-ec	Ауто-делови
shop	carpet	sr-ec	Продавница тепиха
shop	car_repair	sr-ec	Ауто-сервис
shop	charity	sr-ec	Добротворна продавница
shop	chemist	sr-ec	Апотекар
shop	clothes	sr-ec	Бутик
shop	computer	sr-ec	Рачунарска опрема
shop	confectionery	sr-ec	Посластичарница
shop	convenience	sr-ec	Потрепштине
shop	copyshop	sr-ec	Копирница
shop	cosmetics	sr-ec	Козметичарска радња
shop	department_store	sr-ec	Робна кућа
shop	discount	sr-ec	Дисконт
shop	doityourself	sr-ec	Уради сам
shop	drugstore	sr-ec	Дрогерија
shop	dry_cleaning	sr-ec	Хемијско чишћење
shop	electronics	sr-ec	Електронска опрема
shop	estate_agent	sr-ec	Агент за некретнине
shop	farm	sr-ec	Пољопривредна апотека
shop	fashion	sr-ec	Модна продавница
shop	fish	sr-ec	Рибарница
shop	florist	sr-ec	Цвећара
shop	food	sr-ec	Бакалница
shop	funeral_directors	sr-ec	Погребно предузеће
shop	furniture	sr-ec	Намештај
shop	gallery	sr-ec	Галерија
shop	garden_centre	sr-ec	Вртни центар
shop	general	sr-ec	Продавница мешовите робе
shop	gift	sr-ec	Сувенирница
shop	greengrocer	sr-ec	Пиљарница
shop	grocery	sr-ec	Бакалница
shop	hairdresser	sr-ec	Фризерски салон
shop	hardware	sr-ec	Гвожђара
shop	hifi	sr-ec	Музичка опрема
shop	insurance	sr-ec	Осигурање
shop	jewelry	sr-ec	Златара
shop	kiosk	sr-ec	Киоск
shop	laundry	sr-ec	Перионица рубља
shop	mall	sr-ec	Тржни центар
shop	market	sr-ec	Маркет
shop	mobile_phone	sr-ec	Продавница мобилних телефона
shop	motorcycle	sr-ec	Продавница мотоцикала
shop	music	sr-ec	Музичка продавница
shop	newsagent	sr-ec	Новинар
shop	optician	sr-ec	Оптичар
shop	organic	sr-ec	Продавница здраве хране
shop	outdoor	sr-ec	Штанд
shop	pet	sr-ec	Продавница кућних љубимаца
shop	photo	sr-ec	Фотографска радња
shop	salon	sr-ec	Салон
shop	shoes	sr-ec	Продавница обуће
shop	shopping_centre	sr-ec	Тржни центар
shop	sports	sr-ec	Спортска опрема
shop	stationery	sr-ec	Папирница
shop	supermarket	sr-ec	Супермаркет
shop	toys	sr-ec	Продавница играчака
shop	travel_agency	sr-ec	Туристичка агенција
shop	video	sr-ec	Видеотека
shop	wine	sr-ec	Трговина пићем
tourism	alpine_hut	sr-ec	Планинарски дом
tourism	artwork	sr-ec	Галерија
tourism	attraction	sr-ec	Атракција
tourism	bed_and_breakfast	sr-ec	Полупансион
tourism	cabin	sr-ec	Колиба
tourism	camp_site	sr-ec	Камп
tourism	caravan_site	sr-ec	Камп-приколице
tourism	chalet	sr-ec	Планинска колиба
tourism	guest_house	sr-ec	Гостинска кућа
tourism	hostel	sr-ec	Хостел
tourism	hotel	sr-ec	Хотел
tourism	information	sr-ec	Подаци
tourism	lean_to	sr-ec	Склониште
tourism	motel	sr-ec	Мотел
tourism	museum	sr-ec	Музеј
tourism	picnic_site	sr-ec	Место за пикник
tourism	theme_park	sr-ec	Тематски парк
tourism	valley	sr-ec	Долина
tourism	viewpoint	sr-ec	Видиковац
tourism	zoo	sr-ec	Зоолошки врт
waterway	boatyard	sr-ec	Бродоградилиште
waterway	canal	sr-ec	Канал
waterway	connector	sr-ec	Спој водних путева
waterway	dam	sr-ec	Брана
waterway	derelict_canal	sr-ec	Одбачени канал
waterway	ditch	sr-ec	Јарак
waterway	dock	sr-ec	Док
waterway	drain	sr-ec	Одвод
waterway	lock	sr-ec	Брана
waterway	lock_gate	sr-ec	Врата бране
waterway	mineral_spring	sr-ec	Минерални извор
waterway	mooring	sr-ec	Сидриште
waterway	rapids	sr-ec	Брзаци
waterway	river	sr-ec	Река
waterway	riverbank	sr-ec	Речна обала
waterway	stream	sr-ec	Поток
waterway	wadi	sr-ec	Суво корито реке
waterway	waterfall	sr-ec	Водопад
waterway	water_point	sr-ec	Тачка водотока
waterway	weir	sr-ec	Брана
amenity	airport	sr-el	Aerodrom
amenity	arts_centre	sr-el	Umetnički centar
amenity	atm	sr-el	Bankomat
amenity	auditorium	sr-el	Dvorana
amenity	bank	sr-el	Banka
amenity	bar	sr-el	Bar
amenity	bench	sr-el	Klupa
amenity	bicycle_parking	sr-el	Biciklistički parking
amenity	bicycle_rental	sr-el	Iznajmljivanje bicikla
amenity	brothel	sr-el	Javna kuća
amenity	bureau_de_change	sr-el	Menjačnica
amenity	bus_station	sr-el	Autobuska stanica
amenity	cafe	sr-el	Kafe
amenity	car_rental	sr-el	Iznajmljivanje automobila
amenity	car_sharing	sr-el	Zajedničko korišćenje automobila
amenity	car_wash	sr-el	Auto-perionica
amenity	casino	sr-el	Kazino
amenity	cinema	sr-el	Bioskop
amenity	clinic	sr-el	Klinika
amenity	club	sr-el	Klub
amenity	college	sr-el	Fakultet
amenity	community_centre	sr-el	Društveni centar
amenity	courthouse	sr-el	Sud
amenity	crematorium	sr-el	Krematorijum
amenity	dentist	sr-el	Zubar
amenity	doctors	sr-el	Doktor
amenity	dormitory	sr-el	Studentski dom
amenity	drinking_water	sr-el	Pijaća voda
amenity	driving_school	sr-el	Auto-škola
amenity	embassy	sr-el	Ambasada
amenity	emergency_phone	sr-el	Telefon za hitne slučajeve
amenity	fast_food	sr-el	Brza hrana
amenity	ferry_terminal	sr-el	Skela
amenity	fire_hydrant	sr-el	Hidrant
amenity	fire_station	sr-el	Vatrogasna stanica
amenity	fountain	sr-el	Fontana
amenity	fuel	sr-el	Benzinska pumpa
amenity	grave_yard	sr-el	Groblje
amenity	gym	sr-el	Fitnes centar
amenity	hall	sr-el	Hala
amenity	health_centre	sr-el	Dom zdravlja
amenity	hospital	sr-el	Bolnica
amenity	hotel	sr-el	Hotel
amenity	hunting_stand	sr-el	Lovački dom
amenity	ice_cream	sr-el	Prodavnica sladoleda
amenity	kindergarten	sr-el	Obdanište
amenity	library	sr-el	Biblioteka
amenity	market	sr-el	Pijaca
amenity	marketplace	sr-el	Pijaca
amenity	mountain_rescue	sr-el	Gorska služba
amenity	nightclub	sr-el	Noćni klub
amenity	nursery	sr-el	Jaslice
amenity	nursing_home	sr-el	Starački dom
amenity	office	sr-el	Poslovnica
amenity	park	sr-el	Park
amenity	parking	sr-el	Parking
amenity	pharmacy	sr-el	Apoteka
amenity	place_of_worship	sr-el	Mesto bogosluženja
amenity	police	sr-el	Policija
amenity	post_box	sr-el	Poštansko sanduče
amenity	post_office	sr-el	Pošta
amenity	preschool	sr-el	Predškolska ustanova
amenity	prison	sr-el	Zatvor
amenity	pub	sr-el	Pab
amenity	public_building	sr-el	Ustanova
amenity	public_market	sr-el	Pijaca
amenity	reception_area	sr-el	Prijemno područje
amenity	recycling	sr-el	Mesto za reciklažu
amenity	restaurant	sr-el	Restoran
amenity	retirement_home	sr-el	Starački dom
amenity	sauna	sr-el	Sauna
amenity	school	sr-el	Škola
amenity	shelter	sr-el	Sklonište
amenity	shop	sr-el	Prodavnica
amenity	shopping	sr-el	Trgovački centar
amenity	social_club	sr-el	Društveni klub
amenity	studio	sr-el	Studio
amenity	supermarket	sr-el	Supermarket
amenity	taxi	sr-el	Taksi
amenity	telephone	sr-el	Telefonska govornica
amenity	theatre	sr-el	Pozorište
amenity	toilets	sr-el	Toaleti
amenity	townhall	sr-el	Gradska skupština
amenity	university	sr-el	Univerzitet
amenity	vending_machine	sr-el	Automat
amenity	veterinary	sr-el	Veterinarska hirurgija
amenity	village_hall	sr-el	Seoski dom
amenity	waste_basket	sr-el	Korpa za otpatke
amenity	wifi	sr-el	Vi-Fi pristup
amenity	youth_centre	sr-el	Dom omladine
boundary	administrative	sr-el	Administrativna granica
building	apartments	sr-el	Stambeni blok
building	block	sr-el	Blok zgrada
building	bunker	sr-el	Bunker
building	chapel	sr-el	Kapela
building	church	sr-el	Crkva
building	city_hall	sr-el	Gradska skupština
building	commercial	sr-el	Poslovna zgrada
building	dormitory	sr-el	Studentski dom
building	entrance	sr-el	Ulaz u zgradu
building	faculty	sr-el	Zgrada fakulteta
building	farm	sr-el	Zgrada farme
building	flats	sr-el	Stanovi
building	garage	sr-el	Garaža
building	hall	sr-el	Hala
building	hospital	sr-el	Bolnica
building	hotel	sr-el	Hotel
building	house	sr-el	Kuća
building	industrial	sr-el	Industrijska zgrada
building	office	sr-el	Poslovnica
building	public	sr-el	Javna zgrada
building	residential	sr-el	Stambena zgrada
building	retail	sr-el	Maloprodajna radnja
building	school	sr-el	Škola
building	shop	sr-el	Prodavnica
building	stadium	sr-el	Stadion
building	store	sr-el	Prodavnica
building	terrace	sr-el	Terasa
building	tower	sr-el	Toranj
building	train_station	sr-el	Železnička stanica
building	university	sr-el	Univerzitetska zgrada
highway	bridleway	sr-el	Konjička staza
highway	bus_guideway	sr-el	Autobuska traka
highway	bus_stop	sr-el	Autobuska stanica
highway	byway	sr-el	Prečica
highway	construction	sr-el	Auto-put u izgradnji
highway	cycleway	sr-el	Biciklistička staza
highway	distance_marker	sr-el	Oznaka udaljenosti
highway	emergency_access_point	sr-el	Izlaz za slučaj opasnosti
highway	footway	sr-el	Pešačka staza
highway	ford	sr-el	Gaz
highway	gate	sr-el	Kapija
highway	living_street	sr-el	Ulica smirenog prometa
highway	minor	sr-el	Drugorazredni put
highway	motorway	sr-el	Auto-put
highway	motorway_junction	sr-el	Petlja
highway	motorway_link	sr-el	Moto-put
highway	path	sr-el	Staza
highway	pedestrian	sr-el	Pešačka staza
highway	platform	sr-el	Platforma
highway	primary	sr-el	Glavni put
highway	primary_link	sr-el	Glavni put
highway	raceway	sr-el	Trkačka staza
highway	residential	sr-el	Ulica
highway	road	sr-el	Put
highway	secondary	sr-el	Sporedni put
highway	secondary_link	sr-el	Sporedni put
highway	service	sr-el	Servisni put
highway	services	sr-el	Usluge na auto-putu
highway	steps	sr-el	Stepenice
highway	stile	sr-el	Prelaz preko ograde
highway	tertiary	sr-el	Lokalni put
highway	track	sr-el	Makadam
highway	trail	sr-el	Staza
highway	trunk	sr-el	Magistralni put
highway	trunk_link	sr-el	Magistralni put
highway	unclassified	sr-el	Nekategorisani put
highway	unsurfaced	sr-el	Neasfaltirani put
historic	archaeological_site	sr-el	Arheološko nalazište
historic	battlefield	sr-el	Bojište
historic	boundary_stone	sr-el	Granični kamen
historic	building	sr-el	Zgrada
historic	castle	sr-el	Dvorac
historic	church	sr-el	Crkva
historic	house	sr-el	Kuća
historic	icon	sr-el	Ikona
historic	manor	sr-el	Plemićko imanje
historic	memorial	sr-el	Spomenik
historic	mine	sr-el	Rudnik
historic	monument	sr-el	Spomenik
historic	museum	sr-el	Muzej
historic	ruins	sr-el	Ruševine
historic	tower	sr-el	Toranj
historic	wayside_cross	sr-el	Krajputaš
historic	wayside_shrine	sr-el	Usputno svetište
historic	wreck	sr-el	Olupina
landuse	allotments	sr-el	Bašte
landuse	basin	sr-el	Basen
landuse	brownfield	sr-el	Zemljište za prenamenu
landuse	cemetery	sr-el	Groblje
landuse	commercial	sr-el	Poslovno područje
landuse	conservation	sr-el	Zaštićeno područje
landuse	construction	sr-el	Gradilište
landuse	farm	sr-el	Farma
landuse	farmland	sr-el	Polje
landuse	farmyard	sr-el	Farma
landuse	forest	sr-el	Šuma
landuse	grass	sr-el	Trava
landuse	greenfield	sr-el	Zeleno polje
landuse	industrial	sr-el	Industrijsko područje
landuse	landfill	sr-el	Deponija
landuse	meadow	sr-el	Livada
landuse	military	sr-el	Vojno područje
landuse	mine	sr-el	Rudnik
landuse	mountain	sr-el	Planina
landuse	nature_reserve	sr-el	Rezervat prirode
landuse	park	sr-el	Park
landuse	piste	sr-el	Skijaška staza
landuse	plaza	sr-el	Šetalište
landuse	quarry	sr-el	Kamenolom
landuse	railway	sr-el	Železnička pruga
landuse	recreation_ground	sr-el	Rekreacijsko područje
landuse	reservoir	sr-el	Rezervoar
landuse	residential	sr-el	Stambeno područje
landuse	retail	sr-el	Maloprodaja
landuse	village_green	sr-el	Seosko polje
landuse	vineyard	sr-el	Vinograd
landuse	wetland	sr-el	Močvara
landuse	wood	sr-el	Šuma
leisure	beach_resort	sr-el	Morsko odmaralište
leisure	common	sr-el	Opštinsko zemljište
leisure	fishing	sr-el	Ribolovno područje
leisure	garden	sr-el	Bašta
leisure	golf_course	sr-el	Golf teren
leisure	ice_rink	sr-el	Klizalište
leisure	marina	sr-el	Marina
leisure	miniature_golf	sr-el	Mini golf
leisure	nature_reserve	sr-el	Rezervat prirode
leisure	park	sr-el	Park
leisure	pitch	sr-el	Sportsko igralište
leisure	playground	sr-el	Igralište
leisure	recreation_ground	sr-el	Rekreacijsko područje
leisure	slipway	sr-el	Navoz
leisure	sports_centre	sr-el	Sportski centar
leisure	stadium	sr-el	Stadion
leisure	swimming_pool	sr-el	Bazen
leisure	track	sr-el	Staza za trčanje
leisure	water_park	sr-el	Vodeni park
natural	bay	sr-el	Zaliv
natural	beach	sr-el	Plaža
natural	cape	sr-el	Rt
natural	cave_entrance	sr-el	Ulaz u pećinu
natural	channel	sr-el	Kanal
natural	cliff	sr-el	Litica
natural	coastline	sr-el	Obala
natural	crater	sr-el	Krater
natural	feature	sr-el	Obeležje
natural	fell	sr-el	Brdo
natural	fjord	sr-el	Fjord
natural	geyser	sr-el	Gejzir
natural	glacier	sr-el	Glečer
natural	heath	sr-el	Ravnica
natural	hill	sr-el	Brdo
natural	island	sr-el	Ostrvo
natural	land	sr-el	Zemljište
natural	marsh	sr-el	Močvara
natural	moor	sr-el	Močvara
natural	mud	sr-el	Blato
natural	peak	sr-el	Vrh
natural	point	sr-el	Tačka
natural	reef	sr-el	Greben
natural	ridge	sr-el	Greben
natural	river	sr-el	Reka
natural	rock	sr-el	Stena
natural	scree	sr-el	Osulina
natural	scrub	sr-el	Guštara
natural	shoal	sr-el	Sprud
natural	spring	sr-el	Izvor
natural	strait	sr-el	Moreuz
natural	tree	sr-el	Drvo
natural	valley	sr-el	Dolina
natural	volcano	sr-el	Vulkan
natural	water	sr-el	Voda
natural	wetland	sr-el	Močvara
natural	wetlands	sr-el	Močvara
natural	wood	sr-el	Šuma
place	airport	sr-el	Aerodrom
place	city	sr-el	Grad
place	country	sr-el	Država
place	county	sr-el	Okrug
place	farm	sr-el	Farma
place	hamlet	sr-el	Zaselak
place	house	sr-el	Kuća
place	houses	sr-el	Kuće
place	island	sr-el	Ostrvo
place	islet	sr-el	Hrid
place	locality	sr-el	Lokalitet
place	moor	sr-el	Močvara
place	municipality	sr-el	Opština
place	postcode	sr-el	Poštanski broj
place	region	sr-el	Područje
place	sea	sr-el	More
place	state	sr-el	Savezna država
place	subdivision	sr-el	Podgrupa
place	suburb	sr-el	Predgrađe
place	town	sr-el	Varošica
place	unincorporated_area	sr-el	Slobodna zemlja
place	village	sr-el	Selo
railway	abandoned	sr-el	Napuštena železnica
railway	construction	sr-el	Železnička pruga u izgradnji
railway	disused	sr-el	Napuštena železnica
railway	disused_station	sr-el	Napuštena železnička stanica
railway	funicular	sr-el	Žičana železnica
railway	halt	sr-el	Železničko stajalište
railway	historic_station	sr-el	Istorijska železnička stanica
railway	junction	sr-el	Železnički čvor
railway	level_crossing	sr-el	Pružni prelaz
railway	light_rail	sr-el	Laka železnica
railway	monorail	sr-el	Jednotračna pruga
railway	narrow_gauge	sr-el	Uskotračna pruga
railway	platform	sr-el	Železnička platforma
railway	preserved	sr-el	Očuvana železnica
railway	spur	sr-el	Pruga
railway	station	sr-el	Železnička stanica
railway	subway	sr-el	Metro stanica
railway	subway_entrance	sr-el	Ulaz u metro
railway	switch	sr-el	Skretnica
railway	tram	sr-el	Tramvaj
railway	tram_stop	sr-el	Tramvajsko stajalište
railway	yard	sr-el	Ranžirna stanica
shop	alcohol	sr-el	Trgovina pićem
shop	apparel	sr-el	Trgovina odećom
shop	art	sr-el	Atelje
shop	bakery	sr-el	Pekara
shop	beauty	sr-el	Parfimerija
shop	beverages	sr-el	Prodavnica pića
shop	bicycle	sr-el	Prodavnica bicikala
shop	books	sr-el	Knjižara
shop	butcher	sr-el	Mesara
shop	car	sr-el	Auto-kuća
shop	car_dealer	sr-el	Auto-diler
shop	car_parts	sr-el	Auto-delovi
shop	carpet	sr-el	Prodavnica tepiha
shop	car_repair	sr-el	Auto-servis
shop	charity	sr-el	Dobrotvorna prodavnica
shop	chemist	sr-el	Apotekar
shop	clothes	sr-el	Butik
shop	computer	sr-el	Računarska oprema
shop	confectionery	sr-el	Poslastičarnica
shop	convenience	sr-el	Potrepštine
shop	copyshop	sr-el	Kopirnica
shop	cosmetics	sr-el	Kozmetičarska radnja
shop	department_store	sr-el	Robna kuća
shop	discount	sr-el	Diskont
shop	doityourself	sr-el	Uradi sam
shop	drugstore	sr-el	Drogerija
shop	dry_cleaning	sr-el	Hemijsko čišćenje
shop	electronics	sr-el	Elektronska oprema
shop	estate_agent	sr-el	Agent za nekretnine
shop	farm	sr-el	Poljoprivredna apoteka
shop	fashion	sr-el	Modna prodavnica
shop	fish	sr-el	Ribarnica
shop	florist	sr-el	Cvećara
shop	food	sr-el	Bakalnica
shop	funeral_directors	sr-el	Pogrebno preduzeće
shop	furniture	sr-el	Nameštaj
shop	gallery	sr-el	Galerija
shop	garden_centre	sr-el	Vrtni centar
shop	general	sr-el	Prodavnica mešovite robe
shop	gift	sr-el	Suvenirnica
shop	greengrocer	sr-el	Piljarnica
shop	grocery	sr-el	Bakalnica
shop	hairdresser	sr-el	Frizerski salon
shop	hardware	sr-el	Gvožđara
shop	hifi	sr-el	Muzička oprema
shop	insurance	sr-el	Osiguranje
shop	jewelry	sr-el	Zlatara
shop	kiosk	sr-el	Kiosk
shop	laundry	sr-el	Perionica rublja
shop	mall	sr-el	Tržni centar
shop	market	sr-el	Market
shop	mobile_phone	sr-el	Prodavnica mobilnih telefona
shop	motorcycle	sr-el	Prodavnica motocikala
shop	music	sr-el	Muzička prodavnica
shop	newsagent	sr-el	Novinar
shop	optician	sr-el	Optičar
shop	organic	sr-el	Prodavnica zdrave hrane
shop	outdoor	sr-el	Štand
shop	pet	sr-el	Prodavnica kućnih ljubimaca
shop	photo	sr-el	Fotografska radnja
shop	salon	sr-el	Salon
shop	shoes	sr-el	Prodavnica obuće
shop	shopping_centre	sr-el	Tržni centar
shop	sports	sr-el	Sportska oprema
shop	stationery	sr-el	Papirnica
shop	supermarket	sr-el	Supermarket
shop	toys	sr-el	Prodavnica igračaka
shop	travel_agency	sr-el	Turistička agencija
shop	video	sr-el	Videoteka
shop	wine	sr-el	Trgovina pićem
tourism	alpine_hut	sr-el	Planinarski dom
tourism	artwork	sr-el	Galerija
tourism	attraction	sr-el	Atrakcija
tourism	bed_and_breakfast	sr-el	Polupansion
tourism	cabin	sr-el	Koliba
tourism	camp_site	sr-el	Kamp
tourism	caravan_site	sr-el	Kamp-prikolice
tourism	chalet	sr-el	Planinska koliba
tourism	guest_house	sr-el	Gostinska kuća
tourism	hostel	sr-el	Hostel
tourism	hotel	sr-el	Hotel
tourism	information	sr-el	Podaci
tourism	lean_to	sr-el	Sklonište
tourism	motel	sr-el	Motel
tourism	museum	sr-el	Muzej
tourism	picnic_site	sr-el	Mesto za piknik
tourism	theme_park	sr-el	Tematski park
tourism	valley	sr-el	Dolina
tourism	viewpoint	sr-el	Vidikovac
tourism	zoo	sr-el	Zoološki vrt
waterway	boatyard	sr-el	Brodogradilište
waterway	canal	sr-el	Kanal
waterway	connector	sr-el	Spoj vodnih puteva
waterway	dam	sr-el	Brana
waterway	derelict_canal	sr-el	Odbačeni kanal
waterway	ditch	sr-el	Jarak
waterway	dock	sr-el	Dok
waterway	drain	sr-el	Odvod
waterway	lock	sr-el	Brana
waterway	lock_gate	sr-el	Vrata brane
waterway	mineral_spring	sr-el	Mineralni izvor
waterway	mooring	sr-el	Sidrište
waterway	rapids	sr-el	Brzaci
waterway	river	sr-el	Reka
waterway	riverbank	sr-el	Rečna obala
waterway	stream	sr-el	Potok
waterway	wadi	sr-el	Suvo korito reke
waterway	waterfall	sr-el	Vodopad
waterway	water_point	sr-el	Tačka vodotoka
waterway	weir	sr-el	Brana
amenity	airport	sv	Flygplats
amenity	arts_centre	sv	Konstcenter
amenity	atm	sv	Bankomat
amenity	auditorium	sv	Auditorium
amenity	bank	sv	Bank
amenity	bar	sv	Bar
amenity	bench	sv	Bänk
amenity	bicycle_parking	sv	Cykelparkering
amenity	bicycle_rental	sv	Cykeluthyrning
amenity	brothel	sv	Bordell
amenity	bureau_de_change	sv	Växlingskontor
amenity	bus_station	sv	Busstation
amenity	cafe	sv	Kafé
amenity	car_rental	sv	Biluthyrning
amenity	car_sharing	sv	Bilpool
amenity	car_wash	sv	Biltvätt
amenity	casino	sv	Kasino
amenity	cinema	sv	Biograf
amenity	clinic	sv	Klinik
amenity	club	sv	Klubb
amenity	college	sv	Gymnasium
amenity	courthouse	sv	Tingshus
amenity	crematorium	sv	Krematorium
amenity	dentist	sv	Tandläkare
amenity	doctors	sv	Läkare
amenity	dormitory	sv	Studenthem
amenity	drinking_water	sv	Dricksvatten
amenity	driving_school	sv	Körskola
amenity	embassy	sv	Ambassad
amenity	emergency_phone	sv	Nödtelefon
amenity	fast_food	sv	Snabbmat
amenity	ferry_terminal	sv	Färjeterminal
amenity	fire_hydrant	sv	Brandpost
amenity	fire_station	sv	Brandstation
amenity	fountain	sv	Fontän
amenity	fuel	sv	Bränsle
amenity	grave_yard	sv	Begravningsplats
amenity	gym	sv	Fitnesscenter / Gym
amenity	hall	sv	Samlingslokal
amenity	health_centre	sv	Vårdcentral
amenity	hospital	sv	Sjukhus
amenity	hotel	sv	Hotell
amenity	hunting_stand	sv	Jakttorn
amenity	ice_cream	sv	Glass
amenity	kindergarten	sv	Dagis
amenity	library	sv	Bibliotek
amenity	market	sv	Torghandel
amenity	marketplace	sv	Marknad
amenity	mountain_rescue	sv	Fjällräddning
amenity	nightclub	sv	Nattklubb
amenity	nursery	sv	Förskola
amenity	nursing_home	sv	Vårdhem
amenity	office	sv	Kontor
amenity	park	sv	Park
amenity	parking	sv	Parkeringsplats
amenity	pharmacy	sv	Apotek
amenity	place_of_worship	sv	Plats för tillbedjan
amenity	police	sv	Polis
amenity	post_box	sv	Brevlåda
amenity	post_office	sv	Postkontor
amenity	preschool	sv	Förskola
amenity	prison	sv	Fängelse
amenity	pub	sv	Pub
amenity	public_building	sv	Offentlig byggnad
amenity	public_market	sv	Marknadsplats
amenity	recycling	sv	Återvinningsstation
amenity	restaurant	sv	Restaurang
amenity	retirement_home	sv	Äldreboende
amenity	sauna	sv	Bastu
amenity	school	sv	Skola
amenity	shelter	sv	Hydda
amenity	shop	sv	Affär
amenity	shopping	sv	Handel
amenity	social_club	sv	Social klubb
amenity	studio	sv	Studio
amenity	supermarket	sv	Stormarknad
amenity	taxi	sv	Taxi
amenity	telephone	sv	Telefonkiosk
amenity	theatre	sv	Teater
amenity	toilets	sv	Toaletter
amenity	townhall	sv	Rådhus
amenity	university	sv	Universitet
amenity	vending_machine	sv	Varumaskin
amenity	veterinary	sv	Veterinär
amenity	waste_basket	sv	Papperskorg
amenity	wifi	sv	WLAN-accesspunkt
amenity	youth_centre	sv	Ungdomscenter
boundary	administrative	sv	Administrativ gräns
building	apartments	sv	Flerfamiljshus
building	bunker	sv	Bunker
building	chapel	sv	Kapell
building	church	sv	Kyrka
building	city_hall	sv	Rådhus
building	dormitory	sv	Studenthem
building	faculty	sv	Fakultetsbyggnad
building	farm	sv	Ekonomibyggnad
building	flats	sv	Lägenheter
building	garage	sv	Garage
building	hospital	sv	Sjukhusbyggnad
building	hotel	sv	Hotell
building	house	sv	Hus
building	industrial	sv	Industribyggnad
building	office	sv	Kontorsbyggnad
building	public	sv	Offentlig byggnad
building	school	sv	Skolbyggnad
building	shop	sv	Affär
building	stadium	sv	Stadium
building	store	sv	Affär
building	terrace	sv	Terass
building	tower	sv	Torn
building	train_station	sv	Järnvägsstation
building	university	sv	Universitetsbyggnad
highway	bridleway	sv	Ridstig
highway	bus_stop	sv	Busshållplats
highway	byway	sv	Omfartsväg
highway	construction	sv	Väg under konstruktion
highway	cycleway	sv	Cykelspår
highway	footway	sv	Gångväg
highway	ford	sv	Vadställe
highway	gate	sv	Grind
highway	living_street	sv	Gårdsgata
highway	minor	sv	Mindre väg
highway	motorway	sv	Motorväg
highway	motorway_junction	sv	Motorvägskorsning
highway	path	sv	Stig
highway	pedestrian	sv	Gågata
highway	platform	sv	Perrong
highway	raceway	sv	Tävlingsbana
highway	residential	sv	Bostäder
highway	road	sv	Väg
highway	service	sv	Serviceväg
highway	steps	sv	Trappa
highway	trail	sv	Vandringsled
highway	unsurfaced	sv	Oasfalterad väg
historic	archaeological_site	sv	Arkeologisk plats
historic	battlefield	sv	Slagfält
historic	boundary_stone	sv	Gränssten
historic	building	sv	Byggnad
historic	castle	sv	Slott
historic	church	sv	Kyrka
historic	house	sv	Hus
historic	icon	sv	Ikon
historic	manor	sv	Herrgård
historic	memorial	sv	Minnesmärke
historic	mine	sv	Gruva
historic	monument	sv	Monument
historic	museum	sv	Museum
historic	ruins	sv	Ruin
historic	tower	sv	Torn
historic	wreck	sv	Vrak
landuse	allotments	sv	Kolonilotter
landuse	cemetery	sv	Begravningsplats
landuse	commercial	sv	Kommersiellt område
landuse	farm	sv	Bondgård
landuse	farmland	sv	Jordbruksmark
landuse	farmyard	sv	Gårdstun
landuse	forest	sv	Skog
landuse	grass	sv	Gräs
landuse	industrial	sv	Industriområde
landuse	landfill	sv	Soptipp
landuse	meadow	sv	Äng
landuse	military	sv	Militärområde
landuse	mine	sv	Gruva
landuse	mountain	sv	Berg
landuse	nature_reserve	sv	Naturreservat
landuse	park	sv	Park
landuse	piste	sv	Pist
landuse	plaza	sv	Torg
landuse	quarry	sv	Stenbrott
landuse	railway	sv	Järnväg
landuse	reservoir	sv	Reservoar
landuse	residential	sv	Bostadsområde
landuse	vineyard	sv	Vingård
landuse	wetland	sv	Våtmark
landuse	wood	sv	Skog
leisure	beach_resort	sv	Badort
leisure	common	sv	Allmänning
leisure	fishing	sv	Fiskevatten
leisure	garden	sv	Trädgård
leisure	golf_course	sv	Golfbana
leisure	ice_rink	sv	Isrink
leisure	marina	sv	Marina
leisure	miniature_golf	sv	Minigolf
leisure	nature_reserve	sv	Naturreservat
leisure	park	sv	Park
leisure	pitch	sv	Idrottsplan
leisure	playground	sv	Lekplats
leisure	recreation_ground	sv	Rekreationsområde
leisure	slipway	sv	Stapelbädd
leisure	sports_centre	sv	Sporthall
leisure	stadium	sv	Stadium
leisure	swimming_pool	sv	Simbassäng
leisure	track	sv	Löparbana
leisure	water_park	sv	Vattenpark
natural	bay	sv	Bukt
natural	beach	sv	Strand
natural	cape	sv	Udde
natural	cave_entrance	sv	Grottmynning
natural	channel	sv	Kanal
natural	cliff	sv	Klippa
natural	coastline	sv	Kustlinje
natural	crater	sv	Krater
natural	feature	sv	Funktioner
natural	fell	sv	Fjäll
natural	fjord	sv	Fjord
natural	geyser	sv	Gejser
natural	glacier	sv	Glaciär
natural	heath	sv	Ljunghed
natural	hill	sv	Kulle
natural	island	sv	Ö
natural	land	sv	Land
natural	marsh	sv	Träsk
natural	moor	sv	Hed
natural	mud	sv	Lera
natural	peak	sv	Topp
natural	reef	sv	Rev
natural	ridge	sv	Bergskam
natural	river	sv	Flod
natural	rock	sv	Klippa
natural	scree	sv	Taluskon
natural	scrub	sv	Buskskog
natural	shoal	sv	Sandbank
natural	spring	sv	Källa
natural	strait	sv	Sund
natural	tree	sv	Träd
natural	valley	sv	Dal
natural	volcano	sv	Vulkan
natural	water	sv	Vatten
natural	wetland	sv	Våtmark
natural	wetlands	sv	Våtmark
natural	wood	sv	Skog
place	airport	sv	Flygplats
place	city	sv	Stad
place	country	sv	Land
place	county	sv	Län
place	farm	sv	Bondgård
place	hamlet	sv	By
place	house	sv	Hus
place	houses	sv	Hus
place	island	sv	Ö
place	islet	sv	Holme
place	locality	sv	Läge
place	moor	sv	Hed
place	municipality	sv	Kommun
place	postcode	sv	Postnummer
place	region	sv	Region
place	sea	sv	Hav
place	state	sv	Delstat
place	subdivision	sv	Underavdelning
place	suburb	sv	Förort
place	town	sv	Ort
place	unincorporated_area	sv	Kommunfritt område
place	village	sv	Mindre ort
railway	abandoned	sv	Övergiven järnväg
railway	construction	sv	Järnväg under anläggande
railway	disused	sv	Nedlagd järnväg
railway	disused_station	sv	Nedlagd järnvägsstation
railway	funicular	sv	Bergbana
railway	halt	sv	Tågstopp
railway	historic_station	sv	Historisk Järnvägsstation
railway	junction	sv	Järnvägsknutpunkt
railway	light_rail	sv	Spårvagn
railway	monorail	sv	Enspårsbana
railway	narrow_gauge	sv	Smalspårsjärnväg
railway	platform	sv	Tågperrong
railway	preserved	sv	Bevarad järnväg
railway	spur	sv	Sidospår
railway	station	sv	Tågstation
railway	subway	sv	Tunnelbanestation
railway	subway_entrance	sv	Tunnelbaneingång
railway	switch	sv	Järnvägsväxel
railway	tram	sv	Spårväg
railway	tram_stop	sv	Spårvagnshållplats
railway	yard	sv	Bangård
shop	art	sv	Konstaffär
shop	bakery	sv	Bageri
shop	beauty	sv	Skönhetssalong
shop	bicycle	sv	Cykelaffär
shop	books	sv	Bokhandel
shop	butcher	sv	Slaktare
shop	car	sv	Bilhandlare
shop	car_dealer	sv	Bilförsäljare
shop	car_parts	sv	Bildelar
shop	carpet	sv	Mattaffär
shop	car_repair	sv	Bilverkstad
shop	charity	sv	Välgörenhetsbutik
shop	chemist	sv	Apotek
shop	clothes	sv	Klädbutik
shop	computer	sv	Datorbutik
shop	confectionery	sv	Godisbutik
shop	convenience	sv	Närköp
shop	cosmetics	sv	Parfymeri
shop	department_store	sv	Varuhus
shop	doityourself	sv	Gör-det-själv
shop	drugstore	sv	Apotek
shop	dry_cleaning	sv	Kemtvätt
shop	electronics	sv	Elektronikbutik
shop	estate_agent	sv	Egendomsmäklare
shop	fashion	sv	Modebutik
shop	fish	sv	Fiskhandlare
shop	florist	sv	Blommor
shop	food	sv	Mataffär
shop	funeral_directors	sv	Begravningsbyrå
shop	furniture	sv	Möbler
shop	gallery	sv	Galleri
shop	general	sv	Landhandel
shop	gift	sv	Presentaffär
shop	greengrocer	sv	Grönsakshandlare
shop	grocery	sv	Livsmedelsbutik
shop	hairdresser	sv	Frisör
shop	hardware	sv	Järnhandel
shop	hifi	sv	Hi-Fi
shop	insurance	sv	Försäkring
shop	jewelry	sv	Guldsmed
shop	kiosk	sv	Kiosk
shop	laundry	sv	Tvättservice
shop	mall	sv	Köpcentrum
shop	market	sv	Marknad
shop	mobile_phone	sv	Mobiltelefonbutik
shop	motorcycle	sv	Motorcykelhandlare
shop	music	sv	Musikaffär
shop	newsagent	sv	Tidningskiosk
shop	optician	sv	Optiker
shop	organic	sv	Ekologiska livsmedelsaffär
shop	pet	sv	Djuraffär
shop	photo	sv	Fotoaffär
shop	salon	sv	Salong
shop	shoes	sv	Skoaffär
shop	shopping_centre	sv	Köpcentrum
shop	sports	sv	Sportaffär
shop	stationery	sv	Pappershandel
shop	supermarket	sv	Snabbköp
shop	toys	sv	Leksaksaffär
shop	travel_agency	sv	Resebyrå
shop	video	sv	Videobutik
shop	wine	sv	Alkoholbutik
tourism	alpine_hut	sv	Fjällbod
tourism	artwork	sv	Konstverk
tourism	attraction	sv	Attraktion
tourism	bed_and_breakfast	sv	Bad and breakfast
tourism	cabin	sv	Stuga
tourism	camp_site	sv	Campingplats
tourism	caravan_site	sv	Husvagnsuppställningsplats
tourism	chalet	sv	Stuga
tourism	guest_house	sv	Gäststuga
tourism	hostel	sv	Vandrarhem
tourism	hotel	sv	Hotell
tourism	information	sv	Turistinformation
tourism	lean_to	sv	Skjul
tourism	motel	sv	Motell
tourism	museum	sv	Museum
tourism	picnic_site	sv	Picknickplats
tourism	theme_park	sv	Nöjespark
tourism	valley	sv	Dal
tourism	viewpoint	sv	Utsiktspunkt
tourism	zoo	sv	Djurpark
waterway	boatyard	sv	Båtvarv
waterway	canal	sv	Kanal
waterway	dam	sv	Damm
waterway	derelict_canal	sv	Nerlagd kanal
waterway	ditch	sv	Dike
waterway	dock	sv	Docka
waterway	drain	sv	Avlopp
waterway	lock	sv	Sluss
waterway	lock_gate	sv	Slussport
waterway	mineral_spring	sv	Mineralvattenskälla
waterway	mooring	sv	Förtöjning
waterway	rapids	sv	Fors
waterway	river	sv	Älv
waterway	riverbank	sv	Älvbank
waterway	stream	sv	Ström
waterway	wadi	sv	Uttorkad flod
waterway	waterfall	sv	Vattenfall
waterway	weir	sv	Överfallsvärn
amenity	airport	te	విమానాశ్రయం
amenity	bank	te	బ్యాంకు
amenity	college	te	కళాశాల
amenity	drinking_water	te	త్రాగు నీరు
amenity	fuel	te	ఇంధనం
amenity	hospital	te	ఆసుపత్రి
amenity	library	te	గ్రంథాలయం
amenity	office	te	కార్యాలయం
amenity	park	te	పార్కు
amenity	post_box	te	తపాలా పెట్టె
amenity	prison	te	జైలు
amenity	school	te	బడి
amenity	toilets	te	మరుగుదొడ్లు
amenity	university	te	విశ్వవిద్యాలయం
building	church	te	చర్చి
historic	church	te	చర్చి
historic	ruins	te	శిథిలాలు
landuse	forest	te	అడవి
landuse	grass	te	పచ్చిక
landuse	industrial	te	పారిశ్రామిక ప్రదేశం
landuse	mountain	te	పర్వతం
landuse	park	te	పార్కు
leisure	garden	te	తోట
leisure	park	te	పార్కు
natural	cave_entrance	te	గుహ ద్వారం
natural	hill	te	గుట్ట
natural	mud	te	బురద
natural	tree	te	చెట్టు
place	airport	te	విమానాశ్రయం
place	city	te	నగరం
place	country	te	దేశం
place	house	te	ఇల్లు
place	houses	te	ఇళ్ళు
place	island	te	దీవి
place	sea	te	సముద్రం
place	state	te	రాష్ట్రం
place	town	te	పట్టణం
place	village	te	గ్రామం
shop	laundry	te	చాకలి
shop	market	te	అంగడి
tourism	hotel	te	హోటెల్
tourism	information	te	సమాచారం
tourism	zoo	te	జంతుప్రదర్శనశాల
waterway	canal	te	కాలువ
waterway	river	te	నది
amenity	airport	tl	Paliparan
amenity	arts_centre	tl	Lunduyan ng Sining
amenity	atm	tl	ATM
amenity	auditorium	tl	Awditoryum
amenity	bank	tl	Bangko
amenity	bar	tl	Tindahang Inuman ng Alak
amenity	bench	tl	Bangko
amenity	bicycle_parking	tl	Paradahan ng Bisikleta
amenity	bicycle_rental	tl	Arkilahan ng Bisikleta
amenity	brothel	tl	Bahay-aliwan
amenity	bureau_de_change	tl	Tanggapang Palitan ng Pera
amenity	bus_station	tl	Himpilan ng Bus
amenity	cafe	tl	Kapihan
amenity	car_rental	tl	Arkilahan ng Kotse
amenity	car_sharing	tl	Paghihiraman ng Kotse
amenity	car_wash	tl	Paliguan ng Kotse
amenity	casino	tl	Bahay-pasugalan
amenity	cinema	tl	Sinehan
amenity	clinic	tl	Klinika
amenity	club	tl	Kapisanan
amenity	college	tl	Dalubhasaan
amenity	community_centre	tl	Lunduyan ng Pamayanan
amenity	courthouse	tl	Gusali ng Hukuman
amenity	crematorium	tl	Krematoryum
amenity	dentist	tl	Dentista
amenity	doctors	tl	Mga manggagamot
amenity	dormitory	tl	Dormitoryo
amenity	drinking_water	tl	Naiinom na Tubig
amenity	driving_school	tl	Paaralan ng Pagmamaneho
amenity	embassy	tl	Embahada
amenity	emergency_phone	tl	Teleponong Pangsakuna
amenity	fast_food	tl	Kainang Pangmabilisan
amenity	ferry_terminal	tl	Himpilan ng Barkong Pangtawid
amenity	fire_hydrant	tl	Panubig ng Bumbero
amenity	fire_station	tl	Himpilan ng Bumbero
amenity	fountain	tl	Bukal
amenity	fuel	tl	Panggatong
amenity	grave_yard	tl	Sementeryo
amenity	gym	tl	Lunduyang Pangkalusugan / Himnasyo
amenity	hall	tl	Bulwagan
amenity	health_centre	tl	Lunduyan ng Kalusugan
amenity	hospital	tl	Ospital
amenity	hotel	tl	Otel
amenity	hunting_stand	tl	Pook-tayuan na Pangpangangaso
amenity	ice_cream	tl	Sorbetes
amenity	kindergarten	tl	Kindergarten
amenity	library	tl	Aklatan
amenity	market	tl	Pamilihan
amenity	marketplace	tl	Palengke
amenity	mountain_rescue	tl	Pagliligtas na Pangbundok
amenity	nightclub	tl	Alibangbang
amenity	nursery	tl	Alagaan ng mga Bata
amenity	nursing_home	tl	Alagaan ng mga Matatanda
amenity	office	tl	Tanggapan
amenity	park	tl	Liwasan
amenity	parking	tl	Paradahan
amenity	pharmacy	tl	Botika
amenity	place_of_worship	tl	Sambahan
amenity	police	tl	Pulis
amenity	post_box	tl	Kahon ng Liham
amenity	post_office	tl	Tanggapan ng Sulat
amenity	preschool	tl	Paunang Paghahanda para sa Paaralan
amenity	prison	tl	Bilangguan
amenity	pub	tl	Pangmadlang Bahay
amenity	public_building	tl	Pangmadlang Gusali
amenity	public_market	tl	Pangmadlang Pamilihan
amenity	reception_area	tl	Tanggapang Pook
amenity	recycling	tl	Pook ng Muling Paggamit
amenity	restaurant	tl	Kainan
amenity	retirement_home	tl	Tahanan ng Pagreretiro
amenity	sauna	tl	Silid-suuban
amenity	school	tl	Paaralan
amenity	shelter	tl	Kanlungan
amenity	shop	tl	Tindahan
amenity	shopping	tl	Pamimili
amenity	social_club	tl	Kapisanang Panglipunan
amenity	studio	tl	Istudyo
amenity	supermarket	tl	Malaking Pamilihan
amenity	taxi	tl	Taksi
amenity	telephone	tl	Teleponong Pangmadla
amenity	theatre	tl	Tanghalan
amenity	toilets	tl	Mga banyo
amenity	townhall	tl	Bulwagan ng Bayan
amenity	university	tl	Pamantasan
amenity	vending_machine	tl	Makinang Nagbebenta
amenity	veterinary	tl	Paninistis na Pangbeterinarya
amenity	village_hall	tl	Bulwagan ng Nayon
amenity	waste_basket	tl	Basurahan
amenity	wifi	tl	Puntahang WiFi
amenity	youth_centre	tl	Lunduyan ng Kabataan
boundary	administrative	tl	Hangganang Pampangangasiwa
building	apartments	tl	Bloke ng Apartamento
building	block	tl	Bloke ng Gusali
building	bunker	tl	Hukay na Pangsundalo
building	chapel	tl	Kapilya
building	church	tl	Simbahan
building	city_hall	tl	Gusaling Panglungsod
building	commercial	tl	Gusaling Pangkalakal
building	dormitory	tl	Dormitoryo
building	entrance	tl	Pasukan ng Gusali
building	faculty	tl	Gusali ng mga Guro
building	farm	tl	Gusaling Pambukid
building	flats	tl	Mga bahay-latagan
building	garage	tl	Garahe
building	hall	tl	Bulwagan
building	hospital	tl	Gusali ng Hospital
building	hotel	tl	Otel
building	house	tl	Bahay
building	industrial	tl	Gusaling Pang-industriya
building	office	tl	Gusaling Tanggapan
building	public	tl	Pangmadlang Gusali
building	residential	tl	Gusaling Tirahan
building	retail	tl	Gusaling Tingian
building	school	tl	Gusali ng Paaralan
building	shop	tl	Tindahan
building	stadium	tl	Istadyum
building	store	tl	Bilihan
building	terrace	tl	Balkonahe
building	tower	tl	Tore
building	train_station	tl	Himpilan ng Tren
building	university	tl	Gusali ng Pamantasan
highway	bridleway	tl	Daanan ng Kabayo
highway	bus_guideway	tl	Daanan ng Ginagabayang Bus
highway	bus_stop	tl	Hintuan ng Bus
highway	byway	tl	Landas na Hindi Madaanan
highway	construction	tl	Ginagawang Punong Lansangan
highway	cycleway	tl	Daanan ng Bisikleta
highway	distance_marker	tl	Pananda ng Layo
highway	emergency_access_point	tl	Tuldok na Puntahan na Pangsakuna
highway	footway	tl	Makitid na Lakaran ng Tao
highway	ford	tl	Bagtasan ng Tao
highway	gate	tl	Tarangkahan
highway	living_street	tl	Buhay na Lansangan
highway	minor	tl	Kalsadang Hindi Pangunahin
highway	motorway	tl	Daanan ng Sasakyang De-motor
highway	motorway_junction	tl	Sugpungan ng Daanan ng Sasakyang De-motor
highway	motorway_link	tl	Lansangang Daanan ng Sasakyang De-motor
highway	path	tl	Landas
highway	pedestrian	tl	Tawiran ng Taong Naglalakad
highway	platform	tl	Palapag
highway	primary	tl	Pangunahing Kalsada
highway	primary_link	tl	Pangunahing Kalsada
highway	raceway	tl	Kanal na Daluyan ng Tubig
highway	residential	tl	Pamahayan
highway	road	tl	Lansangan
highway	secondary	tl	Pampangalawang Lansangan
highway	secondary_link	tl	Pampangalawang Lansangan
highway	service	tl	Kalyeng Pampalingkuran
highway	services	tl	Mga Palingkuran sa Daanan ng Sasakyang De-motor
highway	steps	tl	Mga hakbang
highway	stile	tl	Hagdanan ng Bakod
highway	tertiary	tl	Pampangatlong Kalsada
highway	track	tl	Pinak
highway	trail	tl	Bulaos
highway	trunk	tl	Pangunahing Ruta
highway	trunk_link	tl	Pangunahing Ruta
highway	unclassified	tl	Kalsadang Walang Kaurian
highway	unsurfaced	tl	Kalsadang Hindi Patag
historic	archaeological_site	tl	Pook na Pang-arkeolohiya
historic	battlefield	tl	Pook ng Labanan
historic	boundary_stone	tl	Bato ng Hangganan
historic	building	tl	Gusali
historic	castle	tl	Kastilyo
historic	church	tl	Simbahan
historic	house	tl	Bahay
historic	icon	tl	Kinatawang Larawan
historic	manor	tl	Manor
historic	memorial	tl	Muog na Pang-alaala
historic	mine	tl	Minahan
historic	monument	tl	Bantayog
historic	museum	tl	Museo
historic	ruins	tl	Mga Guho
historic	tower	tl	Tore
historic	wayside_cross	tl	Krus sa Gilid ng Kalsada
historic	wayside_shrine	tl	Dambana sa Gilid ng Kalsada
historic	wreck	tl	Wasak na Sasakyan
landuse	allotments	tl	Mga Laang Bahagi
landuse	basin	tl	Lunas ng Ilog
landuse	brownfield	tl	Lupain ng Kayumangging Bukirin
landuse	cemetery	tl	Libingan
landuse	commercial	tl	Pook na Pangkalakalan
landuse	conservation	tl	Lupaing Iniligtas
landuse	construction	tl	Konstruksyon
landuse	farm	tl	Bukid
landuse	farmland	tl	Lupaing Sakahan
landuse	farmyard	tl	Bakuran ng Bahay sa Bukid
landuse	forest	tl	Gubat
landuse	grass	tl	Damo
landuse	greenfield	tl	Lupain ng Lunting Bukirin
landuse	industrial	tl	Pook na Pang-industriya
landuse	landfill	tl	Tabon na Lupain
landuse	meadow	tl	Kaparangan
landuse	military	tl	Pook ng Militar
landuse	mine	tl	Minahan
landuse	mountain	tl	Bundok
landuse	nature_reserve	tl	Lupaing Laan sa Kalikasan
landuse	park	tl	Liwasan
landuse	piste	tl	Piste ng Iski
landuse	plaza	tl	Plasa
landuse	quarry	tl	Hukay na Tibagan
landuse	railway	tl	Daambakal
landuse	recreation_ground	tl	Lupaing Libangan
landuse	reservoir	tl	Tinggalan ng Tubig
landuse	residential	tl	Pook na Panirahan
landuse	retail	tl	Tingi
landuse	village_green	tl	Nayong Lunti
landuse	vineyard	tl	Ubasan
landuse	wetland	tl	Babad na Lupain
landuse	wood	tl	Kahoy
leisure	beach_resort	tl	Liwaliwang Dalampasigan
leisure	common	tl	Karaniwang Lupain
leisure	fishing	tl	Pook na Palaisdaan
leisure	garden	tl	Halamanan
leisure	golf_course	tl	Kurso ng Golp
leisure	ice_rink	tl	Pook Pang-iskeyting
leisure	marina	tl	Marina
leisure	miniature_golf	tl	Munting Golp
leisure	nature_reserve	tl	Lupaing Laan sa Kalikasan
leisure	park	tl	Liwasan
leisure	pitch	tl	Hagisang Pampalakasan
leisure	playground	tl	Palaruan
leisure	recreation_ground	tl	Lupaing Libangan
leisure	slipway	tl	Andamyong Pagawaan ng Barko
leisure	sports_centre	tl	Lunduyang Pampalakasan
leisure	stadium	tl	Istadyum
leisure	swimming_pool	tl	Palanguyan
leisure	track	tl	Landas na Takbuhan
leisure	water_park	tl	Liwasang Tubigan
natural	bay	tl	Look
natural	beach	tl	Dalampasigan
natural	cape	tl	Tangway
natural	cave_entrance	tl	Pasukan ng Yungib
natural	channel	tl	Bambang
natural	cliff	tl	Bangin
natural	coastline	tl	Baybay-dagat
natural	crater	tl	Uka
natural	feature	tl	Tampok
natural	fell	tl	Pulak
natural	fjord	tl	Tubigang Mabangin
natural	geyser	tl	Geyser
natural	glacier	tl	Tipak ng Yelong Bundok
natural	heath	tl	Lupain ng Halamang Erika
natural	hill	tl	Burol
natural	island	tl	Pulo
natural	land	tl	Lupain
natural	marsh	tl	Latian
natural	moor	tl	Lupang Pugalan ng Tubig
natural	mud	tl	Putik
natural	peak	tl	Tugatog
natural	point	tl	Tuldok
natural	reef	tl	Bahura
natural	ridge	tl	Tagaytay
natural	river	tl	Ilog
natural	rock	tl	Bato
natural	scree	tl	Batuhang Buhaghag
natural	scrub	tl	Palumpong
natural	shoal	tl	Banlik
natural	spring	tl	Bukal
natural	strait	tl	Kipot
natural	tree	tl	Puno
natural	valley	tl	Lambak
natural	volcano	tl	Bulkan
natural	water	tl	Tubig
natural	wetland	tl	Babad na Lupain
natural	wetlands	tl	Mga Babad na Lupain
natural	wood	tl	Kahoy
place	airport	tl	Paliparan
place	city	tl	Lungsod
place	country	tl	Bansa
place	county	tl	Kondehan
place	farm	tl	Bukid
place	hamlet	tl	Maliit na Nayon
place	house	tl	Bahay
place	houses	tl	Mga Bahay
place	island	tl	Pulo
place	islet	tl	Munting Pulo
place	locality	tl	Lokalidad
place	moor	tl	Lupang Pugalan ng Tubig
place	municipality	tl	Munisipalidad
place	postcode	tl	Kodigo ng Koreo
place	region	tl	Rehiyon
place	sea	tl	Dagat
place	state	tl	Estado
place	subdivision	tl	Kabahaging kahatian
place	suburb	tl	Kanugnog ng lungsod
place	town	tl	Bayan
place	unincorporated_area	tl	Pook na hindi pa kasanib
place	village	tl	Nayon
railway	abandoned	tl	Pinabayaang daambakal
railway	construction	tl	Kinukumpuning Daambakal
railway	disused	tl	Hindi Ginagamit na Daambakal
railway	disused_station	tl	Hindi Ginagamit na Himpilan ng Daambakal
railway	funicular	tl	Daambakal sa Matarik na Lupa
railway	halt	tl	Hintuan ng Tren
railway	historic_station	tl	Makasaysayang Himpilan ng Daambakal
railway	junction	tl	Panulukan ng Daambakal
railway	level_crossing	tl	Patag na Tawiran
railway	light_rail	tl	Banayad na Riles
railway	monorail	tl	Isahang Riles
railway	narrow_gauge	tl	Daambakal na may Makitid na Luwang
railway	platform	tl	Plataporma ng Daambakal
railway	preserved	tl	Pinangangalagaang Daambakal
railway	spur	tl	Tahid ng Daambakal
railway	station	tl	Himpilan ng Daambakal
railway	subway	tl	Himpilan ng Pang-ilalim na Daambakal
railway	subway_entrance	tl	Pasukan sa Pang-ilalim na Daambakal
railway	switch	tl	Mga Tuldok na Pangdaambakal
railway	tram	tl	Riles ng Trambya
railway	tram_stop	tl	Hintuan ng Trambya
railway	yard	tl	Bakuran ng Daambakal
shop	alcohol	tl	Wala sa Lisensiya
shop	apparel	tl	Tindahan ng Kasuotan
shop	art	tl	Tindahan ng Sining
shop	bakery	tl	Panaderya
shop	beauty	tl	Tindahan ng Pampaganda
shop	beverages	tl	Tindahan ng mga Inumin
shop	bicycle	tl	Tindahan ng Bisikleta
shop	books	tl	Tindahan ng Aklat
shop	butcher	tl	Mangangatay
shop	car	tl	Tindahan ng Kotse
shop	car_dealer	tl	Mangangalakal ng Kotse
shop	car_parts	tl	Mga Bahagi ng Kotse
shop	carpet	tl	Tindahan ng Karpet
shop	car_repair	tl	Kumpunihan ng Kotse
shop	charity	tl	Tindahang Pangkawanggawa
shop	chemist	tl	Kimiko
shop	clothes	tl	Tindahan ng mga Damit
shop	computer	tl	Tindahan ng Kompyuter
shop	confectionery	tl	Tindahan ng Kendi
shop	convenience	tl	Tindahang Maginhawa
shop	copyshop	tl	Tindahang Kopyahan
shop	cosmetics	tl	Tindahan ng mga Pampaganda
shop	department_store	tl	Tindahang Kagawaran
shop	discount	tl	Tindahan ng mga Bagay na may Bawas-Presyo
shop	doityourself	tl	Gawin ng Sarili Mo
shop	drugstore	tl	Tindahan ng Gamot
shop	dry_cleaning	tl	Paglilinis na Tuyo
shop	electronics	tl	Tindahan ng Elektroniks
shop	estate_agent	tl	Ahente ng Lupain
shop	farm	tl	Tindahang Pambukid
shop	fashion	tl	Tindahan ng Moda
shop	fish	tl	Tindahan ng Isda
shop	florist	tl	Nagtitinda ng Bulaklak
shop	food	tl	Tindahan ng Pagkain
shop	funeral_directors	tl	Mga Direktor ng Punerarya
shop	furniture	tl	Muwebles
shop	gallery	tl	Galeriya
shop	garden_centre	tl	Lunduyang Halamanan
shop	general	tl	Tindahang Panglahat
shop	gift	tl	Tindahan ng Regalo
shop	greengrocer	tl	Tagapagtinda ng Prutas at Gulay
shop	grocery	tl	Tindahan ng Groserya
shop	hairdresser	tl	Tagapag-ayos ng Buhok
shop	hardware	tl	Tindahan ng Hardwer
shop	hifi	tl	Hi-Fi
shop	insurance	tl	Seguro
shop	jewelry	tl	Tindahan ng Alahas
shop	kiosk	tl	Tindahan ng Kubol
shop	laundry	tl	Labahan
shop	mall	tl	Pasyalang Pangmadla
shop	market	tl	Pamilihan
shop	mobile_phone	tl	Tindahan ng Teleponong Selular
shop	motorcycle	tl	Tindahan ng Motorsiklo
shop	music	tl	Tindahan ng Tugtugin
shop	newsagent	tl	Ahente ng Balita
shop	optician	tl	Optiko
shop	organic	tl	Tindahan ng Pagkaing Organiko
shop	outdoor	tl	Tindahang Panlabas
shop	pet	tl	Tindahan ng Alagang Hayop
shop	photo	tl	Tindahan ng Litrato
shop	salon	tl	Salon
shop	shoes	tl	Tindahan ng Sapatos
shop	shopping_centre	tl	Lunduyang Pamilihan
shop	sports	tl	Tindahang Pampalakasan
shop	stationery	tl	Tindahan ng Papel
shop	supermarket	tl	Malaking Pamilihan
shop	toys	tl	Tindahan ng Laruan
shop	travel_agency	tl	Ahensiya ng Paglalakbay
shop	video	tl	Tindahan ng Bidyo
shop	wine	tl	Wala sa Lisensiya
tourism	alpine_hut	tl	Kubong Pambundok
tourism	artwork	tl	Likhang Sining
tourism	attraction	tl	Pang-akit
tourism	bed_and_breakfast	tl	Kama at Almusal
tourism	cabin	tl	Dampa
tourism	camp_site	tl	Pook ng Kampo
tourism	caravan_site	tl	Lugar ng Karabana
tourism	chalet	tl	Kubo ng Pastol
tourism	guest_house	tl	Bahay na Pampanauhin
tourism	hostel	tl	Hostel
tourism	hotel	tl	Otel
tourism	information	tl	Kabatiran
tourism	lean_to	tl	Sibi
tourism	motel	tl	Motel
tourism	museum	tl	Museo
tourism	picnic_site	tl	Pook na Pampiknik
tourism	theme_park	tl	Liwasang may Tema
tourism	valley	tl	Lambak
tourism	viewpoint	tl	Tuldok ng pananaw
tourism	zoo	tl	Hayupan
waterway	boatyard	tl	Bakuran ng bangka
waterway	canal	tl	Paralanan
waterway	connector	tl	Pandugtong sa Daanan ng Tubig
waterway	dam	tl	Saplad
waterway	derelict_canal	tl	Pinabayaang Paralanan
waterway	ditch	tl	Bambang
waterway	dock	tl	Pantalan
waterway	drain	tl	Limasan
waterway	lock	tl	Kandado
waterway	lock_gate	tl	Tarangkahan ng Kandado
waterway	mineral_spring	tl	Balong na Mineral
waterway	mooring	tl	Pugalan
waterway	rapids	tl	Mga lagaslasan
waterway	river	tl	Ilog
waterway	riverbank	tl	Pampang ng Ilog
waterway	stream	tl	Batis
waterway	wadi	tl	Tuyot na Ilog
waterway	waterfall	tl	Talon
waterway	water_point	tl	Tuldok ng Tubigan
waterway	weir	tl	Pilapil
amenity	airport	tr	Havaalanı
amenity	arts_centre	tr	Sanat Merkezi
amenity	atm	tr	Bankamatik
amenity	auditorium	tr	Oditoryum
amenity	bank	tr	Banka
amenity	bar	tr	Bar
amenity	bench	tr	Bank
amenity	bicycle_parking	tr	Bisiklet Parkı
amenity	bicycle_rental	tr	Bisiklet kiralama
amenity	brothel	tr	Genelev
amenity	bureau_de_change	tr	Döviz bürosu
amenity	bus_station	tr	Otogar
amenity	cafe	tr	Cafe
amenity	car_rental	tr	Araba Kiralama
amenity	car_sharing	tr	Araç Paylaşımı
amenity	car_wash	tr	Oto Yıkama
amenity	casino	tr	Kasino
amenity	cinema	tr	Sinema
amenity	clinic	tr	Klinik
amenity	club	tr	Kulüp
amenity	college	tr	Lise
amenity	courthouse	tr	Adliye
amenity	crematorium	tr	Krematoryum
amenity	dentist	tr	Diş hekimi
amenity	doctors	tr	Doktorlar
amenity	dormitory	tr	Yurt
amenity	drinking_water	tr	İçme Suyu
amenity	driving_school	tr	Sürücü Kursu
amenity	embassy	tr	Elçilik
amenity	emergency_phone	tr	Acil Telefon
amenity	fast_food	tr	Büfe / Fast Food
amenity	ferry_terminal	tr	Feribot Terminali
amenity	fire_hydrant	tr	Yangın musluğu
amenity	fire_station	tr	Itfaiye
amenity	fountain	tr	Fıskiye
amenity	fuel	tr	Petrol ofisi
amenity	grave_yard	tr	Mezarlık
amenity	gym	tr	Fitness Merkezi / Spor Salonu
amenity	hall	tr	Toplantı salonu
amenity	health_centre	tr	Sağlık Merkezi
amenity	hospital	tr	Hastane
amenity	hotel	tr	Hotel
amenity	hunting_stand	tr	Avcılık Standı
amenity	ice_cream	tr	Dondurma
amenity	kindergarten	tr	Kreş
amenity	library	tr	Kütüphane
amenity	market	tr	Pazar yeri
amenity	marketplace	tr	Pazar yeri
amenity	nightclub	tr	Gece Kulübü
amenity	nursery	tr	Kreş
amenity	nursing_home	tr	Huzurevi
amenity	office	tr	Ofis
amenity	park	tr	Park
amenity	parking	tr	Otopark
amenity	pharmacy	tr	Eczane
amenity	place_of_worship	tr	İbadethane / Tapınak
amenity	police	tr	Polis
amenity	post_box	tr	Posta kutusu
amenity	post_office	tr	Postane
amenity	preschool	tr	Anaokulu
amenity	prison	tr	Cezaevi
amenity	pub	tr	Birahane
amenity	public_building	tr	Kamu Binası
amenity	public_market	tr	Halk Pazarı
amenity	reception_area	tr	Resepsiyon Alanı
amenity	recycling	tr	Geri dönüşüm noktası
amenity	restaurant	tr	Restoran
amenity	retirement_home	tr	Bakımevi
amenity	sauna	tr	Hamam / Sauna
amenity	school	tr	Okul
amenity	shelter	tr	Korunak
amenity	shop	tr	Dükkan
amenity	shopping	tr	Alışveriş Merkezi
amenity	social_club	tr	Sosyal kulübü
amenity	studio	tr	Stüdyo
amenity	supermarket	tr	Süpermarket
amenity	taxi	tr	Taksi
amenity	telephone	tr	Telefon
amenity	theatre	tr	Tiyatro
amenity	toilets	tr	Tuvalet
amenity	townhall	tr	Belediye binası
amenity	university	tr	Üniversite
amenity	vending_machine	tr	Satış makinesi
amenity	veterinary	tr	Veteriner
amenity	village_hall	tr	Köy odası
amenity	waste_basket	tr	Çöp sepeti
amenity	wifi	tr	WiFi erisim noktası
amenity	youth_centre	tr	Gençlik Merkezi
boundary	administrative	tr	İdari Sınır
building	apartments	tr	Apartman
building	chapel	tr	Şapel
building	church	tr	Kilise
building	city_hall	tr	Belediye binası
building	dormitory	tr	Yurt
building	entrance	tr	Bina Girişi
building	faculty	tr	Fakülte Binası
building	farm	tr	Çiftlik Binası
building	flats	tr	Daire
building	garage	tr	Garaj
building	hall	tr	Toplantı Merkezi
building	hospital	tr	Hastane Binası
building	hotel	tr	Hotel
building	house	tr	Ev
building	industrial	tr	Sınai Bina
building	office	tr	Ofis Binası
building	public	tr	Kamu Binası
building	school	tr	Okul Binası
building	shop	tr	Dükkan
building	stadium	tr	Stadyum
building	store	tr	Mağaza
building	terrace	tr	Teras
building	tower	tr	Kule
building	train_station	tr	Gar
building	university	tr	Üniversite Binası
highway	bridleway	tr	At yürüyüş yolu
highway	bus_guideway	tr	Güdümlü otobüs yolu
highway	bus_stop	tr	Otobüs durağı
highway	byway	tr	Yan yolu
highway	construction	tr	İnşaa halinde yolu
highway	cycleway	tr	Bisiklet Yolu
highway	distance_marker	tr	Mil taşı
highway	emergency_access_point	tr	Acil Erişim Noktası
highway	footway	tr	Yaya yolu
highway	ford	tr	Akarsu geçidi
highway	gate	tr	Kapı
highway	living_street	tr	Yaşam sokağı
highway	minor	tr	Ufak yol
highway	motorway	tr	Otoyol
highway	motorway_junction	tr	Otoyol Kavşağı
highway	motorway_link	tr	Otoyol bağlantısı
highway	path	tr	Patika
highway	pedestrian	tr	Trafiğe kapalı yolu
highway	platform	tr	Peron
highway	primary	tr	Devlet Yolu
highway	primary_link	tr	Devlet Yolu bağlantısı
highway	raceway	tr	Koşu yolu
highway	residential	tr	Sokak
highway	road	tr	Yol
highway	secondary	tr	İl yolu
highway	secondary_link	tr	İl yolunun bağlantısı
highway	service	tr	Servis Yolu
highway	services	tr	Dinleme Tesisi
highway	steps	tr	Merdiven
highway	stile	tr	Çit basamağı
highway	tertiary	tr	Köy arası yolu
highway	track	tr	Toprak yolu
highway	trail	tr	İz
highway	trunk	tr	Bölünmüş anayol
highway	trunk_link	tr	Bölünmüş anayol bağlantısı
highway	unclassified	tr	Sınıflandırılmamış yolu
highway	unsurfaced	tr	Ham yolu
historic	archaeological_site	tr	Arkeolojik Alan
historic	battlefield	tr	Savaş alanı
historic	boundary_stone	tr	Sınır Taşı
historic	building	tr	Bina
historic	castle	tr	Kale
historic	church	tr	Kilise
historic	house	tr	Tarihi Konak
historic	icon	tr	Simge
historic	memorial	tr	Anıt
historic	mine	tr	Maden Ocağı
historic	monument	tr	Anıt
historic	museum	tr	Müze
historic	ruins	tr	Harabe
historic	tower	tr	Kule
historic	wreck	tr	Batık Gemi
landuse	allotments	tr	Bostan
landuse	basin	tr	Havuz
landuse	brownfield	tr	Nadas
landuse	cemetery	tr	Mezarlık
landuse	commercial	tr	Ticari Bölge
landuse	construction	tr	İnşaat
landuse	farm	tr	Çiftlik
landuse	farmland	tr	Tarım arazisi
landuse	farmyard	tr	Çiftlik avlusu
landuse	forest	tr	Orman
landuse	grass	tr	Çim
landuse	industrial	tr	Sanayi
landuse	landfill	tr	Çöplük
landuse	meadow	tr	Çayır
landuse	military	tr	Askeri Bölge
landuse	mine	tr	Maden Ocağı
landuse	mountain	tr	Dağ
landuse	nature_reserve	tr	Doğa Koruma Alanı
landuse	park	tr	Park
landuse	plaza	tr	Meydan
landuse	quarry	tr	Ocak
landuse	railway	tr	Demiryolu
landuse	recreation_ground	tr	Eğlence Parkı
landuse	reservoir	tr	Baraj Gölü
landuse	residential	tr	Yerleşim Bölgesi
landuse	retail	tr	Esnaf
landuse	village_green	tr	Kırsal Yeşillik
landuse	vineyard	tr	Bağ
landuse	wetland	tr	Sulak Alan
landuse	wood	tr	Orman
leisure	beach_resort	tr	Plajlı tatilköyü
leisure	fishing	tr	Balıkçılık alanı
leisure	garden	tr	Bahçe
leisure	golf_course	tr	Golf Sahası
leisure	ice_rink	tr	Buz pateni
leisure	marina	tr	Marina
leisure	miniature_golf	tr	Minyatür Golf
leisure	nature_reserve	tr	Doğa Koruma Alanı
leisure	park	tr	Park
leisure	pitch	tr	Spor sahası
leisure	playground	tr	Çocuk parkı
leisure	recreation_ground	tr	Eğlence parkı
leisure	slipway	tr	Kızak yolu
leisure	sports_centre	tr	Spor Merkezi
leisure	stadium	tr	Stadyum
leisure	swimming_pool	tr	Yüzme Havuzu
leisure	track	tr	Koşuş yolu
leisure	water_park	tr	Su Parkı
natural	bay	tr	Koy / körfez
natural	beach	tr	Plaj
natural	cape	tr	Burun
natural	cave_entrance	tr	Mağara girişi
natural	channel	tr	Kanal
natural	cliff	tr	Uçurum
natural	coastline	tr	Sahil şeridi
natural	crater	tr	Krater
natural	feature	tr	Özelliği
natural	fell	tr	Ağaçsız tepe
natural	fjord	tr	Haliç
natural	geyser	tr	Gayzer
natural	glacier	tr	Buzul
natural	heath	tr	Fundalık
natural	hill	tr	Tepe
natural	island	tr	Ada
natural	land	tr	Kara
natural	marsh	tr	Bataklık
natural	moor	tr	Bataklık
natural	mud	tr	Balçık
natural	peak	tr	Tepe / zirve
natural	point	tr	Nokta
natural	reef	tr	Resif
natural	ridge	tr	Sırt
natural	river	tr	Nehir
natural	rock	tr	Kayaç
natural	scree	tr	Kayşat
natural	scrub	tr	Çalılık
natural	shoal	tr	Sığlık
natural	spring	tr	Pınar
natural	strait	tr	Boğaz
natural	tree	tr	Ağaç
natural	valley	tr	Dere/vadi
natural	volcano	tr	Yanardağ
natural	water	tr	Su
natural	wetland	tr	Sulak alan
natural	wetlands	tr	Sulak Alanlar
natural	wood	tr	Orman
place	airport	tr	Havaalanı
place	city	tr	Büyükşehir / il merkezi
place	country	tr	Ülke
place	county	tr	İlçe
place	farm	tr	Tarla
place	hamlet	tr	Mezra
place	house	tr	Ev
place	houses	tr	Evler
place	island	tr	Ada
place	islet	tr	Adacık
place	locality	tr	Yer/mevkii
place	moor	tr	Bataklık
place	municipality	tr	Belediye
place	postcode	tr	Posta kodu
place	region	tr	Bölge
place	sea	tr	Deniz
place	state	tr	İl
place	subdivision	tr	Alt bölümü
place	suburb	tr	Mahalle / Banliyö
place	town	tr	Şehir / ilçe merkezi
place	unincorporated_area	tr	Arazi
place	village	tr	Köy
railway	abandoned	tr	Terkedilmiş Demiryolu
railway	construction	tr	Yapım aşamasında Demiryolu
railway	disused	tr	Kullanılmayan Demiryolu
railway	disused_station	tr	Kullanılmayan Tren İstasyonu
railway	funicular	tr	Füniküler hattı
railway	halt	tr	Tren Durağı
railway	historic_station	tr	Tarihi tren istasyonu
railway	junction	tr	Demiryolu Kavşağı
railway	level_crossing	tr	Demiryolu Geçidi
railway	light_rail	tr	Dar raylı demiryolu
railway	platform	tr	Peron
railway	station	tr	Tren istasyonu
railway	subway	tr	Metro istasyonu
railway	subway_entrance	tr	Metro Giriş
railway	switch	tr	Demiryolu makası
railway	tram	tr	Tramvay
railway	tram_stop	tr	Tramvay Durağı
shop	alcohol	tr	Tekel bayii
shop	art	tr	Sanat Galerisi
shop	bakery	tr	Fırın
shop	beauty	tr	Güzellik Salonu
shop	bicycle	tr	Bisikletçi
shop	books	tr	Kitap Evi
shop	butcher	tr	Kasap
shop	car	tr	Araba Galerisi
shop	car_dealer	tr	Araba Satıcısı
shop	car_parts	tr	Araba Parçası Dükkanı
shop	carpet	tr	Halı Dükkanı
shop	car_repair	tr	Oto tamir
shop	chemist	tr	Eczacı
shop	clothes	tr	Giysi Dükkanı
shop	computer	tr	Bilgisayar Mağazası
shop	copyshop	tr	Fotokopi Merkezi
shop	cosmetics	tr	Kozmetik Mağazası
shop	discount	tr	İndirimli Ürünler Mağazası
shop	drugstore	tr	Eczane
shop	dry_cleaning	tr	Kuru Temizleme
shop	electronics	tr	Elektronik Mağazası
shop	estate_agent	tr	Emlakçı
shop	farm	tr	Tarım Ürünleri Dükkanı
shop	fish	tr	Balık Dükkanı
shop	florist	tr	Çiçekçi
shop	food	tr	Yiyecek Dükkanı
shop	furniture	tr	Mobilya
shop	gallery	tr	Galeri
shop	garden_centre	tr	Bahçe Merkezi
shop	gift	tr	Hediye eşya
shop	greengrocer	tr	Manav
shop	hairdresser	tr	Kuaför
shop	hardware	tr	Hırdavatçı
shop	insurance	tr	Sigorta
shop	jewelry	tr	Kuyumcu
shop	laundry	tr	Çamaşırhane
shop	mall	tr	Alışveriş merkezi
shop	market	tr	Market
shop	mobile_phone	tr	Cep Telefonu Dükkanı
shop	motorcycle	tr	Motosiklet Dükkanı
shop	music	tr	Müzik Mağazası
shop	newsagent	tr	Gazete bayii
shop	optician	tr	Gözlükçü
shop	organic	tr	Organik Yiyecek Dükkanı
shop	outdoor	tr	Outdoor Sporları Mağazası
shop	pet	tr	Hayvan Mağazası
shop	photo	tr	Fotoğrafçı
shop	salon	tr	Kuaför
shop	shoes	tr	Ayakkabı Dükkanı
shop	shopping_centre	tr	Alışveriş Merkezi
shop	sports	tr	Spor Malzemeleri Mağazası
shop	supermarket	tr	Süpermarket
shop	toys	tr	Oyuncakçı
shop	travel_agency	tr	Seyahat Acentası
shop	video	tr	Video-CD Dükkanı
shop	wine	tr	Şarap evi
tourism	alpine_hut	tr	Dağ evi
tourism	artwork	tr	Sanat eseri
tourism	attraction	tr	Gezelim görelim yeri
tourism	bed_and_breakfast	tr	Oda Kahvaltı
tourism	cabin	tr	Dam
tourism	camp_site	tr	Kamp yeri
tourism	caravan_site	tr	Karavan yeri
tourism	chalet	tr	Yayla evi
tourism	guest_house	tr	Konuk Evi
tourism	hostel	tr	Hostel
tourism	hotel	tr	Hotel
tourism	information	tr	Turist Enformasyon
tourism	lean_to	tr	Ek binası
tourism	motel	tr	Motel
tourism	museum	tr	Müze
tourism	picnic_site	tr	Piknik yeri
tourism	theme_park	tr	Lunapark
tourism	valley	tr	Dere/vadi
tourism	viewpoint	tr	Panoramik view
tourism	zoo	tr	Hayvanat bahçesi
waterway	canal	tr	Kanal
waterway	dam	tr	Baraj
waterway	ditch	tr	Sulama kanalı
waterway	dock	tr	İskele
waterway	drain	tr	Atık su kanalı
waterway	mineral_spring	tr	Maden Suyu
waterway	river	tr	Nehir
waterway	riverbank	tr	Irmak kenarı
waterway	stream	tr	Çay
waterway	wadi	tr	Vadi
waterway	waterfall	tr	Şelale
amenity	airport	uk	Аеропорт
amenity	arts_centre	uk	Мистецький центр
amenity	atm	uk	Банкомат
amenity	auditorium	uk	Конференц-зала
amenity	bank	uk	Банк
amenity	bar	uk	Бар
amenity	bench	uk	Лавка
amenity	bicycle_parking	uk	Місце стоянки для велосипедів
amenity	bicycle_rental	uk	Прокат велосипедів
amenity	brothel	uk	Бордель
amenity	bureau_de_change	uk	Обмін валют
amenity	bus_station	uk	Автовокзал
amenity	cafe	uk	Кафе
amenity	car_rental	uk	Прокат автомобілів
amenity	car_sharing	uk	Прокат авто
amenity	car_wash	uk	Автомийка
amenity	casino	uk	Казино
amenity	cinema	uk	Кинотеатр
amenity	clinic	uk	Клініка
amenity	club	uk	Клуб
amenity	college	uk	Коледж
amenity	community_centre	uk	Громадський центр
amenity	courthouse	uk	Суд
amenity	crematorium	uk	Крематорій
amenity	dentist	uk	Стоматологія
amenity	doctors	uk	Лікарі
amenity	dormitory	uk	Гуртожиток
amenity	drinking_water	uk	Питна вода
amenity	driving_school	uk	Автошкола
amenity	embassy	uk	Амбасада
amenity	emergency_phone	uk	Телефон для екстрених викликів
amenity	fast_food	uk	Забігайлівка
amenity	ferry_terminal	uk	Поромна станція
amenity	fire_hydrant	uk	Пожежний гідрант
amenity	fire_station	uk	Пожежна станція
amenity	fountain	uk	Фонтан
amenity	fuel	uk	Пальне
amenity	grave_yard	uk	Цвинтар
amenity	gym	uk	Тренажерний зал
amenity	hall	uk	Зала
amenity	health_centre	uk	Центр здоров'я
amenity	hospital	uk	Лікарня
amenity	hotel	uk	Готель
amenity	hunting_stand	uk	Мисливська вежа
amenity	ice_cream	uk	Морозиво
amenity	kindergarten	uk	Дитячий садок
amenity	library	uk	Бібліотека
amenity	market	uk	Ринок
amenity	marketplace	uk	Ринок
amenity	mountain_rescue	uk	Гірські рятувальники
amenity	nightclub	uk	Нічний клуб
amenity	nursery	uk	Дитсадок
amenity	nursing_home	uk	Будинок престарілих
amenity	office	uk	Офіс
amenity	park	uk	Парк
amenity	parking	uk	Автостоянка
amenity	pharmacy	uk	Аптека
amenity	place_of_worship	uk	Культова споруда
amenity	police	uk	Міліція (Поліція)
amenity	post_box	uk	Поштова скриня
amenity	post_office	uk	Пошта
amenity	preschool	uk	Дошкільний заклад
amenity	prison	uk	В'язниця
amenity	pub	uk	Паб
amenity	public_building	uk	Громадський заклад
amenity	public_market	uk	Базар
amenity	reception_area	uk	Зона прийому
amenity	recycling	uk	Місце переробки відходів
amenity	restaurant	uk	Ресторан
amenity	retirement_home	uk	Будинки для людей похилого віку
amenity	sauna	uk	Сауна
amenity	school	uk	Школа
amenity	shelter	uk	Укриття
amenity	shop	uk	Магазин
amenity	shopping	uk	Шопінг
amenity	social_club	uk	Клуб за інтересами
amenity	studio	uk	Студія
amenity	supermarket	uk	Супермаркет
amenity	taxi	uk	Таксі
amenity	telephone	uk	Телефон
amenity	theatre	uk	Театр
amenity	toilets	uk	Туалет
amenity	townhall	uk	Міськвиконком
amenity	university	uk	Університет
amenity	vending_machine	uk	Торговий автомат
amenity	veterinary	uk	Ветлікарня
amenity	village_hall	uk	Сільрада
amenity	waste_basket	uk	Контейнер для сміття
amenity	wifi	uk	WiFi-зона
amenity	youth_centre	uk	Молодіжний центр
boundary	administrative	uk	Адміністративний кордон
building	apartments	uk	Житловий масив
building	block	uk	Квартал
building	bunker	uk	Бункер
building	chapel	uk	Каплиця
building	church	uk	Храм
building	city_hall	uk	Мерія
building	commercial	uk	Комерційна нерухомість
building	dormitory	uk	Гуртожиток
building	entrance	uk	Вхід у будівлю
building	faculty	uk	Факультет
building	farm	uk	Ферма
building	flats	uk	Оселі
building	garage	uk	Гараж
building	hall	uk	Зала
building	hospital	uk	Лікарня
building	hotel	uk	Готель
building	house	uk	Будинок
building	industrial	uk	Промислова споруда
building	office	uk	Офісний будинок
building	public	uk	Суспільна будівля
building	residential	uk	Житловий будинок
building	retail	uk	Центр роздрібної торгівлі
building	school	uk	Школа
building	shop	uk	Магазин
building	stadium	uk	Стадіон
building	store	uk	Склад
building	terrace	uk	Тераса
building	tower	uk	Башта
building	train_station	uk	Залізнична станція
building	university	uk	Університет
highway	bridleway	uk	Дорога для їзди верхи
highway	bus_guideway	uk	Рейковий автобус
highway	bus_stop	uk	Автобусна зупинка
highway	byway	uk	Боковий шлях
highway	construction	uk	Будівництво автомагітсралі
highway	cycleway	uk	Велосипедна доріжка
highway	distance_marker	uk	Верстовий камінь
highway	emergency_access_point	uk	Пункт швидкої допомоги
highway	footway	uk	Пішохідна доріжка
highway	ford	uk	Броди
highway	gate	uk	Ворота
highway	living_street	uk	Житлова зона
highway	minor	uk	Другорядна дорога
highway	motorway	uk	Автомагістраль
highway	motorway_junction	uk	В'їзд на автомагістраль
highway	motorway_link	uk	З’єднання з автомагістраллю
highway	path	uk	алея
highway	pedestrian	uk	Пішохідна дорога
highway	platform	uk	Платформа
highway	primary	uk	Головна дорога
highway	primary_link	uk	З’єднання з головною дорогою
highway	raceway	uk	Гоночна траса
highway	residential	uk	Жила вулиця
highway	road	uk	Дорога
highway	secondary	uk	Другорядна дорога
highway	secondary_link	uk	З’єднання з другорядною дорогою
highway	service	uk	Службова дорога
highway	services	uk	Придорожній сервіс
highway	steps	uk	Стежка
highway	stile	uk	Турнікет
highway	tertiary	uk	Третьорядна дорога
highway	track	uk	Неасфальтований шлях.
highway	trail	uk	Стежка
highway	trunk	uk	Шосе
highway	trunk_link	uk	З’їзд з/на шосе
highway	unclassified	uk	Дорога без класифікації
highway	unsurfaced	uk	Дорога без покриття
historic	archaeological_site	uk	Археологічні дослідження
historic	battlefield	uk	Поле битви
historic	boundary_stone	uk	Прикордонний камінь
historic	building	uk	Будівля
historic	castle	uk	За́мок
historic	church	uk	Храм
historic	house	uk	Дім
historic	icon	uk	Ікона
historic	manor	uk	Маєток
historic	memorial	uk	Меморіал
historic	mine	uk	Копальня
historic	monument	uk	Пам’ятник
historic	museum	uk	Музей
historic	ruins	uk	Руїни
historic	tower	uk	Башта
historic	wayside_cross	uk	Придорожній хрест
historic	wayside_shrine	uk	Придорожній храм
historic	wreck	uk	Місце катастрофи
landuse	allotments	uk	Сади-городи
landuse	basin	uk	Резервуар
landuse	brownfield	uk	Очищена територія під забудову
landuse	cemetery	uk	Кладовище
landuse	commercial	uk	Торгівельно-офісна територія
landuse	conservation	uk	Заповідник
landuse	construction	uk	Будівництво
landuse	farm	uk	Ферма
landuse	farmland	uk	Ферма
landuse	farmyard	uk	Фермерське подвір'я
landuse	forest	uk	Ліс
landuse	grass	uk	Трава
landuse	greenfield	uk	Знесення під забудову
landuse	industrial	uk	Промзона
landuse	landfill	uk	Звалище
landuse	meadow	uk	Луг
landuse	military	uk	Військова зона
landuse	mine	uk	Копальня
landuse	mountain	uk	Гори
landuse	nature_reserve	uk	Заповідник
landuse	park	uk	Парк
landuse	piste	uk	Лижня
landuse	plaza	uk	Ринкова площа
landuse	quarry	uk	Кар’єр
landuse	railway	uk	Залізниця
landuse	recreation_ground	uk	База відпочинку
landuse	reservoir	uk	Водосховище
landuse	residential	uk	Житловий квартал
landuse	retail	uk	Роздрібна торгівля
landuse	village_green	uk	Сільська галявина
landuse	vineyard	uk	Виноградник
landuse	wetland	uk	Болота
landuse	wood	uk	Гай
leisure	beach_resort	uk	Пляжний курорт
leisure	common	uk	Громадська земля
leisure	fishing	uk	Район риболовлі
leisure	garden	uk	Сад
leisure	golf_course	uk	Поле для гольфу
leisure	ice_rink	uk	Ковзанка
leisure	marina	uk	Гавань для екскурсійних суден
leisure	miniature_golf	uk	Міні-гольф
leisure	nature_reserve	uk	Заповідник
leisure	park	uk	Парк
leisure	pitch	uk	Спортмайданчик
leisure	playground	uk	Дитячий майданчик
leisure	recreation_ground	uk	База відпочинку
leisure	slipway	uk	Сліп (спуск на воду)
leisure	sports_centre	uk	Спортивний центр
leisure	stadium	uk	Стадіон
leisure	swimming_pool	uk	Басейн
leisure	track	uk	Бігова доріжка
leisure	water_park	uk	Аквапарку
natural	bay	uk	Затока
natural	beach	uk	Пляж
natural	cape	uk	Мис
natural	cave_entrance	uk	Входу в печеру
natural	channel	uk	Канал
natural	cliff	uk	Скеля
natural	coastline	uk	Узбережжя
natural	crater	uk	Кратер
natural	feature	uk	Елемент
natural	fell	uk	Вирубка
natural	fjord	uk	Фіорд
natural	geyser	uk	Гейзер
natural	glacier	uk	Льодовик
natural	heath	uk	Степ
natural	hill	uk	Пагорб
natural	island	uk	Острів
natural	land	uk	Земля
natural	marsh	uk	Болото
natural	moor	uk	Торф
natural	mud	uk	Грязюка
natural	peak	uk	Пік
natural	point	uk	Точка
natural	reef	uk	Риф
natural	ridge	uk	Гірський хребет
natural	river	uk	Ріка
natural	rock	uk	Скеля
natural	scree	uk	Щебінь
natural	scrub	uk	Чагарник
natural	shoal	uk	Мілина
natural	spring	uk	Джерело
natural	strait	uk	Перешийок
natural	tree	uk	Дерево
natural	valley	uk	Долина
natural	volcano	uk	Вулкан
natural	water	uk	Вода
natural	wetland	uk	Водно-болотні угіддя
natural	wetlands	uk	Водно-болотні угіддя
natural	wood	uk	Гай
place	airport	uk	Аеропорт
place	city	uk	Місто
place	country	uk	Країна
place	county	uk	Район
place	farm	uk	Ферма
place	hamlet	uk	Хутір
place	house	uk	Будинок
place	houses	uk	Дома
place	island	uk	Острів
place	islet	uk	Острівець
place	locality	uk	Населений пункт
place	moor	uk	Мур
place	municipality	uk	Муніципалітет
place	postcode	uk	Індекс
place	region	uk	Район
place	sea	uk	Море
place	state	uk	Область/Штат
place	subdivision	uk	Підрозділ
place	suburb	uk	Передмістя
place	town	uk	Місто
place	unincorporated_area	uk	Неприєднанні території
place	village	uk	Село
railway	abandoned	uk	Кинуті колії
railway	construction	uk	Будівництво колії
railway	disused	uk	Покинута колія
railway	disused_station	uk	Покинута залізнична станція
railway	funicular	uk	Фунікулер
railway	halt	uk	Зупинка поїзда
railway	historic_station	uk	Історична залізнична станція
railway	junction	uk	Переїзд
railway	level_crossing	uk	Залізничний переїзд
railway	light_rail	uk	Швидкісний трамвай
railway	monorail	uk	Монорейка
railway	narrow_gauge	uk	Вузькоколійка
railway	platform	uk	Залізнична платформа
railway	preserved	uk	Законсервовані колії
railway	spur	uk	Залізнична гілка
railway	station	uk	Залізнична станція
railway	subway	uk	Станція метро
railway	subway_entrance	uk	Вхід в метро
railway	switch	uk	Стрілка
railway	tram	uk	Трамвайні колії
railway	tram_stop	uk	Трамвайна зупинка
railway	yard	uk	Депо
shop	alcohol	uk	Спритні напої
shop	apparel	uk	Одяг
shop	art	uk	Художній салон
shop	bakery	uk	Хліб
shop	beauty	uk	Салон краси
shop	beverages	uk	Напої
shop	bicycle	uk	Веломагазин
shop	books	uk	Книгарня
shop	butcher	uk	М’ясо
shop	car	uk	Автомагазин
shop	car_dealer	uk	Автосалон
shop	car_parts	uk	Автозапчастини
shop	carpet	uk	Килими
shop	car_repair	uk	Авто майстерня
shop	charity	uk	Соціальний магазин
shop	chemist	uk	Хімтовари
shop	clothes	uk	Одяг
shop	computer	uk	Комп’ютерна крамниця
shop	confectionery	uk	Кондитерська
shop	convenience	uk	Мінімаркет
shop	copyshop	uk	Послуги копіювання
shop	cosmetics	uk	Магазин косметики
shop	department_store	uk	Універмаг
shop	discount	uk	Уцінені товари
shop	doityourself	uk	Зроби сам
shop	drugstore	uk	Аптека
shop	dry_cleaning	uk	Хімчистка
shop	electronics	uk	Магазин електроніки
shop	estate_agent	uk	Агентство нерухомості
shop	farm	uk	Сільпо
shop	fashion	uk	Модний одяг
shop	fish	uk	Риба
shop	florist	uk	Квіти
shop	food	uk	Продовольчі товари
shop	funeral_directors	uk	Ритуальні послуги
shop	furniture	uk	Меблі
shop	gallery	uk	Галерея
shop	garden_centre	uk	Сад та город
shop	general	uk	Універсам
shop	gift	uk	Подарунки
shop	greengrocer	uk	Овочі, фрукти
shop	grocery	uk	Бакалія
shop	hairdresser	uk	Перукар
shop	hardware	uk	Хозтовари
shop	hifi	uk	Аудіо-техніка
shop	insurance	uk	Страхування
shop	jewelry	uk	Ювелірний магазин
shop	kiosk	uk	Кіоск
shop	laundry	uk	Пральня
shop	mall	uk	Торгівельно-розважальний центр
shop	market	uk	Магазин
shop	mobile_phone	uk	Мобільні телефони
shop	motorcycle	uk	Мотоцикли
shop	music	uk	Музика
shop	newsagent	uk	Газетний кіоск
shop	optician	uk	Оптика
shop	organic	uk	Продовольчий магазин
shop	outdoor	uk	Виносна торгівля
shop	pet	uk	Зоомагазин
shop	photo	uk	Фотомагазин
shop	salon	uk	Салон
shop	shoes	uk	Взуття
shop	shopping_centre	uk	Торговий центр
shop	sports	uk	Спортивні товари
shop	stationery	uk	Канцтовари
shop	supermarket	uk	Супермаркет
shop	toys	uk	Іграшки
shop	travel_agency	uk	Туристична агенція
shop	video	uk	Відео
shop	wine	uk	Вино
tourism	alpine_hut	uk	Гірський притулок
tourism	artwork	uk	Образотворче мистецтво
tourism	attraction	uk	Цікаві місця
tourism	bed_and_breakfast	uk	Ліжко та сніданок
tourism	cabin	uk	Кабіна
tourism	camp_site	uk	Турбаза
tourism	caravan_site	uk	Майданчик для трейлерів
tourism	chalet	uk	Шале
tourism	guest_house	uk	Гостьовий будинок
tourism	hostel	uk	Хостел
tourism	hotel	uk	Готель
tourism	information	uk	Інформація
tourism	lean_to	uk	Навіс
tourism	motel	uk	Мотель
tourism	museum	uk	Музей
tourism	picnic_site	uk	Місце для пікніків
tourism	theme_park	uk	Тематичний парк
tourism	valley	uk	Долина
tourism	viewpoint	uk	Оглядовий майданчик
tourism	zoo	uk	Зоопарк
waterway	boatyard	uk	Верф
waterway	canal	uk	Канал
waterway	connector	uk	З’єднання водних шляхів
waterway	dam	uk	Дамба
waterway	derelict_canal	uk	Покинутий канал
waterway	ditch	uk	Рів
waterway	dock	uk	Док
waterway	drain	uk	Дренажний канал
waterway	lock	uk	Шлюз
waterway	lock_gate	uk	Шлюзові ворота
waterway	mineral_spring	uk	Мінеральне джерело
waterway	mooring	uk	Якірна стоянка
waterway	rapids	uk	Пороги
waterway	river	uk	Ріка
waterway	riverbank	uk	Берег ріки
waterway	stream	uk	Струмок
waterway	wadi	uk	Пересохле русло
waterway	waterfall	uk	Водоспад
waterway	water_point	uk	Пункт водопостачання
waterway	weir	uk	Ставок
amenity	airport	vi	Sân bay
amenity	arts_centre	vi	Trung tâm Nghệ thuật
amenity	atm	vi	Máy Rút tiền Tự động
amenity	auditorium	vi	Phòng hội họp
amenity	bank	vi	Ngân hàng
amenity	bar	vi	Quán Rượu
amenity	bench	vi	Ghế
amenity	bicycle_parking	vi	Chỗ Đậu Xe đạp
amenity	bicycle_rental	vi	Chỗ Mướn Xe đạp
amenity	brothel	vi	Nhà chứa
amenity	bureau_de_change	vi	Tiệm Đổi tiền
amenity	bus_station	vi	Trạm Xe buýt
amenity	cafe	vi	Quán Cà phê
amenity	car_rental	vi	Chỗ Mướn Xe
amenity	car_sharing	vi	Chia sẻ Xe cộ
amenity	car_wash	vi	Tiệm Rửa Xe
amenity	casino	vi	Sòng bạc
amenity	cinema	vi	Rạp phim
amenity	clinic	vi	Phòng khám
amenity	club	vi	Câu lạc bộ
amenity	college	vi	Trường Cao đẳng
amenity	community_centre	vi	Trung tâm Cộng đồng
amenity	courthouse	vi	Tòa
amenity	crematorium	vi	Lò Hỏa táng
amenity	dentist	vi	Nha sĩ
amenity	doctors	vi	Bác sĩ
amenity	dormitory	vi	Ký túc xá
amenity	drinking_water	vi	Vòi Nước uống
amenity	driving_school	vi	Trường Lái xe
amenity	embassy	vi	Tòa Đại sứ
amenity	emergency_phone	vi	Điện thoại Khẩn cấp
amenity	fast_food	vi	Nhà hàng Ăn nhanh
amenity	ferry_terminal	vi	Trạm Phà
amenity	fire_hydrant	vi	Vòi nước Máy
amenity	fire_station	vi	Trạm Cứu hỏa
amenity	fountain	vi	Vòi nước
amenity	fuel	vi	Cây xăng
amenity	grave_yard	vi	Nghĩa địa
amenity	gym	vi	Nhà Thể dục
amenity	hall	vi	Hội trường
amenity	health_centre	vi	Trung tâm Y tế
amenity	hospital	vi	Bệnh viện
amenity	hotel	vi	Khách sạn
amenity	hunting_stand	vi	Ghế Dựng để Săn bắn
amenity	ice_cream	vi	Tiệm Kem
amenity	kindergarten	vi	Tiểu học
amenity	library	vi	Thư viện
amenity	market	vi	Chợ
amenity	marketplace	vi	Chợ phiên
amenity	mountain_rescue	vi	Đội Cứu nạn Núi
amenity	nightclub	vi	Câu lạc bộ Đêm
amenity	nursery	vi	Nhà trẻ
amenity	nursing_home	vi	Viện Dưỡng lão
amenity	office	vi	Văn phòng
amenity	park	vi	Công viên
amenity	parking	vi	Chỗ Đậu xe
amenity	pharmacy	vi	Nhà thuốc
amenity	place_of_worship	vi	Nơi Thờ phụng
amenity	police	vi	Cảnh sát
amenity	post_box	vi	Hòm thư
amenity	post_office	vi	Bưu điện
amenity	preschool	vi	Trường Mầm non
amenity	prison	vi	Nhà tù
amenity	pub	vi	Quán rượu
amenity	public_building	vi	Tòa nhà Công cộng
amenity	public_market	vi	Chợ phiên
amenity	reception_area	vi	Phòng Tiếp khách
amenity	recycling	vi	Trung tâm hoặc Thùng Tái sinh
amenity	restaurant	vi	Nhà hàng
amenity	retirement_home	vi	Nhà về hưu
amenity	sauna	vi	Nhà Tắm hơi
amenity	school	vi	Trường học
amenity	shelter	vi	Nơi Trú ẩn
amenity	shop	vi	Tiệm
amenity	shopping	vi	Tiệm
amenity	social_club	vi	Câu lạc bộ Xã hội
amenity	studio	vi	Studio
amenity	supermarket	vi	Siêu thị
amenity	taxi	vi	Taxi
amenity	telephone	vi	Điện thoại Công cộng
amenity	theatre	vi	Nhà hát
amenity	toilets	vi	Vệ sinh
amenity	townhall	vi	Thị sảnh
amenity	university	vi	Trường Đại học
amenity	vending_machine	vi	Máy Bán hàng
amenity	veterinary	vi	Phẫu thuật Thú y
amenity	village_hall	vi	Trụ sở Làng
amenity	waste_basket	vi	Thùng rác
amenity	wifi	vi	Điểm Truy cập Không dây
amenity	youth_centre	vi	Trung tâm Thanh niên
boundary	administrative	vi	Biên giới Hành chính
building	apartments	vi	Khối Căn hộ
building	block	vi	Khối cao ốc
building	bunker	vi	Boong ke
building	chapel	vi	Nhà nguyện
building	church	vi	Nhà thờ
building	city_hall	vi	Trụ sở Thành phố
building	commercial	vi	Tòa nhà Thương mại
building	dormitory	vi	Ký túc xá
building	entrance	vi	Cửa vào
building	faculty	vi	Tòa nhà Trường học
building	farm	vi	Công trình Nông trại
building	flats	vi	Khu chung cư
building	garage	vi	Ga ra
building	hall	vi	Hội trường
building	hospital	vi	Tòa nhà Bệnh viện
building	hotel	vi	Khách sạn
building	house	vi	Nhà ở
building	industrial	vi	Tòa nhà Công nghiệp
building	office	vi	Tòa nhà Văn phòng
building	public	vi	Tòa nhà Công cộng
building	residential	vi	Nhà ở
building	retail	vi	Tòa nhà Cửa hàng
building	school	vi	Nhà trường
building	shop	vi	Tiệm
building	stadium	vi	Sân vận động
building	store	vi	Tiệm
building	terrace	vi	Thềm
building	tower	vi	Tháp
building	train_station	vi	Nhà ga
building	university	vi	Tòa nhà Đại học
highway	bridleway	vi	Đường Cưỡi ngựa
highway	bus_guideway	vi	Làn đường Dẫn Xe buýt
highway	bus_stop	vi	Chỗ Đậu Xe buýt
highway	byway	vi	Đường mòn Đa mốt
highway	construction	vi	Đường Đang Xây
highway	cycleway	vi	Đường Xe đạp
highway	distance_marker	vi	Cây số
highway	emergency_access_point	vi	Địa điểm Truy nhập Khẩn cấp
highway	footway	vi	Đường bộ
highway	ford	vi	Khúc Sông Cạn
highway	gate	vi	Cổng
highway	living_street	vi	Đường Hàng xóm
highway	minor	vi	Đường Nhỏ
highway	motorway	vi	Đường Cao tốc
highway	motorway_junction	vi	Ngã tư Đường Cao tốc
highway	motorway_link	vi	Đường Cao tốc
highway	path	vi	Lối
highway	pedestrian	vi	Đường bộ Lớn
highway	platform	vi	Sân ga
highway	primary	vi	Đường Chính
highway	primary_link	vi	Đường Chính
highway	raceway	vi	Đường đua
highway	residential	vi	Đường Nhà ở
highway	road	vi	Đường
highway	secondary	vi	Đường Lớn
highway	secondary_link	vi	Đường Lớn
highway	service	vi	Đường phụ
highway	services	vi	Dịch vụ Dọc đường Cao tốc
highway	steps	vi	Cầu thang
highway	stile	vi	Cửa xoay
highway	tertiary	vi	Đường Lớn
highway	track	vi	Đường mòn
highway	trail	vi	Đường mòn
highway	trunk	vi	Xa lộ
highway	trunk_link	vi	Xa lộ
highway	unclassified	vi	Đường Không Phân loại
highway	unsurfaced	vi	Đường Không Lát
historic	archaeological_site	vi	Khu vực Khảo cổ
historic	battlefield	vi	Chiến trường
historic	boundary_stone	vi	Mốc Biên giới
historic	building	vi	Tòa nhà
historic	castle	vi	Lâu đài
historic	church	vi	Nhà thờ
historic	house	vi	Nhà ở
historic	icon	vi	Thánh tượng
historic	manor	vi	Trang viên
historic	memorial	vi	Đài Tưởng niệm
historic	mine	vi	Mỏ
historic	monument	vi	Đài Tưởng niệm
historic	museum	vi	Bảo tàng
historic	ruins	vi	Tàn tích
historic	tower	vi	Tháp
historic	wayside_cross	vi	Thánh Giá Dọc đường
historic	wayside_shrine	vi	Đền thánh Dọc đường
historic	wreck	vi	Xác Tàu Đắm
landuse	allotments	vi	Khu Vườn Gia đình
landuse	basin	vi	Lưu vực
landuse	cemetery	vi	Nghĩa địa
landuse	commercial	vi	Khu vực Thương mại
landuse	conservation	vi	Bảo tồn
landuse	construction	vi	Công trường Xây dựng
landuse	farm	vi	Trại
landuse	farmland	vi	Trại
landuse	farmyard	vi	Sân Trại
landuse	forest	vi	Rừng Trồng Cây
landuse	grass	vi	Cỏ
landuse	industrial	vi	Khu vực Công nghiệp
landuse	landfill	vi	Nơi Đổ Rác
landuse	meadow	vi	Đồng cỏ
landuse	military	vi	Khu vực Quân sự
landuse	mine	vi	Mỏ
landuse	mountain	vi	Núi
landuse	nature_reserve	vi	Khu Bảo tồn Thiên niên
landuse	park	vi	Công viên
landuse	piste	vi	Đường Trượt tuyết
landuse	plaza	vi	Quảng trường
landuse	quarry	vi	Mỏ Đá
landuse	railway	vi	Đường sắt
landuse	recreation_ground	vi	Sân chơi
landuse	reservoir	vi	Bể nước
landuse	residential	vi	Khu vực Nhà ở
landuse	retail	vi	Khu vực Buôn bán
landuse	vineyard	vi	Vườn Nho
landuse	wetland	vi	Đầm lầy
landuse	wood	vi	Rừng
leisure	beach_resort	vi	Khu Nghỉ mát Ven biển
leisure	common	vi	Đất Công
leisure	fishing	vi	Hồ Đánh cá
leisure	garden	vi	Vườn
leisure	golf_course	vi	Sân Golf
leisure	ice_rink	vi	Sân băng
leisure	marina	vi	Bến tàu
leisure	miniature_golf	vi	Golf Nhỏ
leisure	nature_reserve	vi	Khu Bảo tồn Thiên niên
leisure	park	vi	Công viên
leisure	pitch	vi	Bãi Thể thao
leisure	playground	vi	Sân chơi
leisure	recreation_ground	vi	Sân Giải trí
leisure	slipway	vi	Bến tàu
leisure	sports_centre	vi	Trung tâm Thể thao
leisure	stadium	vi	Sân vận động
leisure	swimming_pool	vi	Hồ Bơi
leisure	track	vi	Đường Chạy
leisure	water_park	vi	Công viên Nước
natural	bay	vi	Vịnh
natural	beach	vi	Bãi biển
natural	cape	vi	Mũi đất
natural	cave_entrance	vi	Cửa vào Hang
natural	channel	vi	Eo biển
natural	cliff	vi	Vách đá
natural	coastline	vi	Bờ biển
natural	crater	vi	Miệng Núi
natural	fell	vi	Đồi đá
natural	fjord	vi	Vịnh hẹp
natural	geyser	vi	Mạch nước Phun
natural	glacier	vi	Sông băng
natural	heath	vi	Bãi Hoang
natural	hill	vi	Đồi
natural	island	vi	Đảo
natural	land	vi	Đất
natural	marsh	vi	Đầm lầy
natural	moor	vi	Truông
natural	mud	vi	Bùn
natural	peak	vi	Đỉnh
natural	point	vi	Mũi đất
natural	reef	vi	Rạn san hô
natural	ridge	vi	Luống đất
natural	river	vi	Sông
natural	rock	vi	Đá
natural	scree	vi	Bãi Đá
natural	scrub	vi	Đất Bụi rậm
natural	shoal	vi	Bãi cạn
natural	spring	vi	Suối
natural	strait	vi	Eo biển
natural	tree	vi	Cây
natural	valley	vi	Thung lũng
natural	volcano	vi	Núi lửa
natural	water	vi	Nước
natural	wetland	vi	Đầm lầy
natural	wetlands	vi	Đầm lầy
natural	wood	vi	Rừng
place	airport	vi	Sân bay
place	city	vi	Thành phố
place	country	vi	Quốc gia
place	county	vi	Quận hạt
place	farm	vi	Trại
place	hamlet	vi	Xóm
place	house	vi	Nhà ở
place	houses	vi	Dãy Nhà
place	island	vi	Đảo
place	islet	vi	Đảo Nhỏ
place	locality	vi	Địa phương
place	moor	vi	Truông
place	municipality	vi	Đô thị
place	postcode	vi	Mã Bưu chính
place	region	vi	Miền
place	sea	vi	Biển
place	state	vi	Tỉnh bang
place	subdivision	vi	Hàng xóm
place	suburb	vi	Ngoại ô
place	town	vi	Thị xã/trấn
place	unincorporated_area	vi	Khu Chưa Hợp nhất
place	village	vi	Làng
railway	abandoned	vi	Đường sắt bị Bỏ rơi
railway	construction	vi	Đường sắt Đang Xây
railway	disused	vi	Đường sắt Ngừng hoạt động
railway	disused_station	vi	Nhà ga Đóng cửa
railway	funicular	vi	Đường sắt Leo núi
railway	halt	vi	Ga Xép
railway	historic_station	vi	Nhà ga Lịch sử
railway	junction	vi	Ga Đầu mối
railway	level_crossing	vi	Điểm giao Đường sắt
railway	light_rail	vi	Đường sắt Nhẹ
railway	monorail	vi	Đường Một Ray
railway	narrow_gauge	vi	Đường sắt Khổ hẹp
railway	platform	vi	Ke ga
railway	preserved	vi	Đường sắt được Bảo tồn
railway	spur	vi	Đường sắt Phụ
railway	station	vi	Nhà ga
railway	subway	vi	Trạm Xe điện Ngầm
railway	subway_entrance	vi	Cửa vào Nhà ga Xe điện ngầm
railway	switch	vi	Ghi Đường sắt
railway	tram	vi	Đường Xe điện
railway	tram_stop	vi	Ga Xép Điện
railway	yard	vi	Sân ga
shop	alcohol	vi	Tiệm Rượu
shop	apparel	vi	Tiệm May mặc
shop	art	vi	Tiệm Nghệ phẩm
shop	bakery	vi	Tiệm Bánh
shop	beauty	vi	Tiệm Mỹ phẩm
shop	beverages	vi	Tiệm Đồ uống
shop	bicycle	vi	Tiệm Xe đạp
shop	books	vi	Tiệm Sách
shop	butcher	vi	Tiệm Thịt
shop	car	vi	Tiệm Xe hơi
shop	car_dealer	vi	Cửa hàng Xe hơi
shop	car_parts	vi	Phụ tùng Xe hơi
shop	carpet	vi	Tiệm Thảm
shop	car_repair	vi	Tiệm Sửa Xe
shop	charity	vi	Cửa hàng Từ thiện
shop	chemist	vi	Nhà thuốc
shop	clothes	vi	Tiệm Quần áo
shop	computer	vi	Tiệm Máy tính
shop	confectionery	vi	Tiệm Kẹo
shop	convenience	vi	Tiệm Tập hóa
shop	copyshop	vi	Tiệm In ấn
shop	cosmetics	vi	Tiệm Mỹ phẩm
shop	department_store	vi	Cửa hàng Bách hóa
shop	discount	vi	Cửa hàng Giảm giá
shop	doityourself	vi	Tiệm Ngũ kim
shop	drugstore	vi	Nhà thuốc
shop	dry_cleaning	vi	Hấp tẩy
shop	electronics	vi	Tiệm Thiết bị Điện tử
shop	estate_agent	vi	Văn phòng Bất động sản
shop	farm	vi	Tiệm Nông cụ
shop	fashion	vi	Tiệm Thời trang
shop	fish	vi	Tiệm Cá
shop	florist	vi	Tiệm Hoa
shop	food	vi	Tiệm Thực phẩm
shop	funeral_directors	vi	Nhà tang lễ
shop	furniture	vi	Tiệm Đồ đạc
shop	gallery	vi	Thư viện Ảnh
shop	garden_centre	vi	Trung tâm Làm vườn
shop	general	vi	Tiệm Đồ
shop	gift	vi	Tiệm Quà tặng
shop	greengrocer	vi	Tiệm Rau
shop	grocery	vi	Tiệm Tạp phẩm
shop	hairdresser	vi	Tiệm Làm tóc
shop	hardware	vi	Tiệm Ngũ kim
shop	insurance	vi	Bảo hiểm
shop	jewelry	vi	Tiệm Kim hoàn
shop	laundry	vi	Tiệm Giặt Quần áo
shop	mall	vi	Trung tâm Mua sắm
shop	market	vi	Chợ
shop	mobile_phone	vi	Tiệm Điện thoại Di động
shop	motorcycle	vi	Cửa hàng Xe mô tô
shop	music	vi	Tiệm Nhạc
shop	newsagent	vi	Tiệm Báo
shop	optician	vi	Tiệm Kính mắt
shop	organic	vi	Tiệm Thực phẩm Hữu cơ
shop	pet	vi	Tiệm Vật nuôi
shop	photo	vi	Tiệm Rửa Hình
shop	salon	vi	Tiệm Làm tóc
shop	shoes	vi	Tiệm Giày
shop	shopping_centre	vi	Trung tâm Mua sắm
shop	sports	vi	Tiệm Thể thao
shop	stationery	vi	Tiệm Văn phòng phẩm
shop	supermarket	vi	Siêu thị
shop	toys	vi	Tiệm Đồ chơi
shop	travel_agency	vi	Văn phòng Du lịch
shop	video	vi	Tiệm Phim
shop	wine	vi	Tiệm Rượu
tourism	alpine_hut	vi	Túp lều Trên Núi
tourism	artwork	vi	Tác phẩm Nghệ thuật
tourism	attraction	vi	Nơi Du lịch
tourism	bed_and_breakfast	vi	Nhà trọ
tourism	cabin	vi	Túp lều
tourism	camp_site	vi	Nơi Cắm trại
tourism	chalet	vi	Nhà ván
tourism	guest_house	vi	Nhà khách
tourism	hostel	vi	Nhà trọ
tourism	hotel	vi	Khách sạn
tourism	information	vi	Thông tin
tourism	lean_to	vi	Nhà chái
tourism	motel	vi	Khách sạn Dọc đường
tourism	museum	vi	Bảo tàng
tourism	picnic_site	vi	Bàn ăn Ngoài trời
tourism	theme_park	vi	Công viên Giải trí
tourism	valley	vi	Thung lũng
tourism	viewpoint	vi	Thắng cảnh
tourism	zoo	vi	Vườn thú
waterway	boatyard	vi	Bãi Thuyền
waterway	canal	vi	Kênh
waterway	connector	vi	Đường thủy Nối
waterway	dam	vi	Đập
waterway	derelict_canal	vi	Kênh Bỏ rơi
waterway	ditch	vi	Mương
waterway	dock	vi	Vũng tàu
waterway	drain	vi	Cống
waterway	lock	vi	Âu tàu
waterway	mineral_spring	vi	Suối Nước khoáng
waterway	rapids	vi	Thác ghềnh
waterway	river	vi	Sông
waterway	riverbank	vi	Bờ sông
waterway	stream	vi	Dòng suối
waterway	wadi	vi	Dòng sông Vào mùa
waterway	waterfall	vi	Thác
waterway	water_point	vi	Máy bơm nước
waterway	weir	vi	Đập Cột nước Thấp
amenity	airport	zh-hans	机场
amenity	arts_centre	zh-hans	艺术中心
amenity	atm	zh-hans	自动取款机(ATM)
amenity	auditorium	zh-hans	礼堂
amenity	bank	zh-hans	银行
amenity	bar	zh-hans	酒吧
amenity	bench	zh-hans	长凳
amenity	bicycle_parking	zh-hans	自行车停车
amenity	bicycle_rental	zh-hans	自行车租赁
amenity	brothel	zh-hans	妓院
amenity	bureau_de_change	zh-hans	货币兑换
amenity	bus_station	zh-hans	公交主站
amenity	cafe	zh-hans	咖啡馆
amenity	car_rental	zh-hans	租车服务
amenity	car_sharing	zh-hans	汽车共享
amenity	car_wash	zh-hans	洗车
amenity	casino	zh-hans	赌场
amenity	cinema	zh-hans	电影院
amenity	clinic	zh-hans	诊所
amenity	club	zh-hans	俱乐部
amenity	college	zh-hans	学院
amenity	community_centre	zh-hans	社区中心
amenity	courthouse	zh-hans	法庭
amenity	crematorium	zh-hans	火葬场
amenity	dentist	zh-hans	牙医
amenity	doctors	zh-hans	医生
amenity	dormitory	zh-hans	宿舍
amenity	drinking_water	zh-hans	饮用水
amenity	driving_school	zh-hans	驾驶学校
amenity	embassy	zh-hans	大使馆
amenity	emergency_phone	zh-hans	紧急电话
amenity	fast_food	zh-hans	快餐
amenity	ferry_terminal	zh-hans	轮渡码头
amenity	fire_hydrant	zh-hans	消防栓
amenity	fire_station	zh-hans	消防局
amenity	fountain	zh-hans	喷泉
amenity	fuel	zh-hans	燃料
amenity	grave_yard	zh-hans	墓地
amenity	gym	zh-hans	健身中心/健身房
amenity	hall	zh-hans	小山
amenity	health_centre	zh-hans	健康中心
amenity	hospital	zh-hans	医院
amenity	hotel	zh-hans	酒店
amenity	hunting_stand	zh-hans	狩猎台
amenity	ice_cream	zh-hans	冰淇淋
amenity	kindergarten	zh-hans	幼儿园
amenity	library	zh-hans	图书馆
amenity	market	zh-hans	市场
amenity	marketplace	zh-hans	市场
amenity	mountain_rescue	zh-hans	山地救援
amenity	nightclub	zh-hans	夜总会
amenity	nursery	zh-hans	幼儿园
amenity	nursing_home	zh-hans	护理院
amenity	office	zh-hans	办公室
amenity	park	zh-hans	公园
amenity	parking	zh-hans	停车场
amenity	pharmacy	zh-hans	药房
amenity	place_of_worship	zh-hans	宗教场所
amenity	police	zh-hans	警察
amenity	post_box	zh-hans	邮箱
amenity	post_office	zh-hans	邮局
amenity	preschool	zh-hans	学前教育
amenity	prison	zh-hans	监狱
amenity	pub	zh-hans	酒馆
amenity	public_building	zh-hans	公共建筑
amenity	public_market	zh-hans	集市
amenity	reception_area	zh-hans	接待区域
amenity	recycling	zh-hans	回收点
amenity	restaurant	zh-hans	餐厅
amenity	retirement_home	zh-hans	养老院
amenity	sauna	zh-hans	桑拿
amenity	school	zh-hans	学校
amenity	shelter	zh-hans	庇护所
amenity	shop	zh-hans	商店
amenity	shopping	zh-hans	购物
amenity	social_club	zh-hans	社交俱乐部
amenity	studio	zh-hans	工作室
amenity	supermarket	zh-hans	超市
amenity	taxi	zh-hans	出租车
amenity	telephone	zh-hans	公共电话
amenity	theatre	zh-hans	剧院
amenity	toilets	zh-hans	洗手间
amenity	townhall	zh-hans	市政厅
amenity	university	zh-hans	大学
amenity	vending_machine	zh-hans	自动售货机
amenity	veterinary	zh-hans	兽医
amenity	village_hall	zh-hans	村政厅
amenity	waste_basket	zh-hans	废纸篓
amenity	wifi	zh-hans	WiFi 接入
amenity	youth_centre	zh-hans	青少年中心
boundary	administrative	zh-hans	行政区边界
building	apartments	zh-hans	公寓楼
building	block	zh-hans	建筑楼
building	bunker	zh-hans	碉堡
building	chapel	zh-hans	教堂
building	church	zh-hans	教堂
building	city_hall	zh-hans	市政厅
building	commercial	zh-hans	商业建筑物
building	dormitory	zh-hans	宿舍
building	entrance	zh-hans	建筑入口
building	faculty	zh-hans	师资队伍建设
building	farm	zh-hans	农场建筑物
building	flats	zh-hans	公寓
building	garage	zh-hans	车库
building	hall	zh-hans	小山
building	hospital	zh-hans	医院建筑物
building	hotel	zh-hans	酒店
building	house	zh-hans	房屋
building	industrial	zh-hans	工业建筑物
building	office	zh-hans	办公楼
building	public	zh-hans	公共建筑物
building	residential	zh-hans	住宅建筑物
building	retail	zh-hans	零售建筑物
building	school	zh-hans	学校建筑物
building	shop	zh-hans	商店
building	stadium	zh-hans	体育场
building	store	zh-hans	商店
building	terrace	zh-hans	阳台
building	tower	zh-hans	塔
building	train_station	zh-hans	火车站
building	university	zh-hans	大学建筑物
highway	bridleway	zh-hans	马道
highway	bus_guideway	zh-hans	导轨公交专用道
highway	bus_stop	zh-hans	公交停靠站
highway	byway	zh-hans	非机动车道(英国)
highway	construction	zh-hans	在建道路
highway	cycleway	zh-hans	单车径
highway	distance_marker	zh-hans	距离标记
highway	emergency_access_point	zh-hans	紧急接入点
highway	footway	zh-hans	步行道
highway	ford	zh-hans	浅滩
highway	gate	zh-hans	门
highway	living_street	zh-hans	生活街道
highway	minor	zh-hans	次要道路
highway	motorway	zh-hans	高速公路
highway	motorway_junction	zh-hans	高速公路连接线
highway	motorway_link	zh-hans	高速公路
highway	path	zh-hans	小径
highway	pedestrian	zh-hans	行人道路
highway	platform	zh-hans	站台
highway	primary	zh-hans	一级道路
highway	primary_link	zh-hans	一级道路
highway	raceway	zh-hans	滚道
highway	residential	zh-hans	住宅
highway	road	zh-hans	道路
highway	secondary	zh-hans	二级公路
highway	secondary_link	zh-hans	二级公路
highway	service	zh-hans	服务道路
highway	services	zh-hans	高速公路服务区
highway	steps	zh-hans	楼梯
highway	stile	zh-hans	跨越围栏的台阶
highway	tertiary	zh-hans	三级道路
highway	track	zh-hans	辙迹
highway	trail	zh-hans	轨迹
highway	trunk	zh-hans	主干道路
highway	trunk_link	zh-hans	主干道路
highway	unclassified	zh-hans	未分类道路
highway	unsurfaced	zh-hans	无铺面道路
historic	archaeological_site	zh-hans	遗址
historic	battlefield	zh-hans	战场
historic	boundary_stone	zh-hans	界碑
historic	building	zh-hans	建筑物
historic	castle	zh-hans	城堡
historic	church	zh-hans	教堂
historic	house	zh-hans	房屋
historic	icon	zh-hans	圣像画
historic	manor	zh-hans	庄园
historic	memorial	zh-hans	纪念馆
historic	mine	zh-hans	矿井
historic	monument	zh-hans	纪念碑
historic	museum	zh-hans	博物馆
historic	ruins	zh-hans	遗迹
historic	tower	zh-hans	塔
historic	wayside_cross	zh-hans	十字路旁
historic	wayside_shrine	zh-hans	路旁的神社
historic	wreck	zh-hans	废墟
landuse	allotments	zh-hans	拨款
landuse	basin	zh-hans	盆地
landuse	brownfield	zh-hans	棕色地带
landuse	cemetery	zh-hans	公墓
landuse	commercial	zh-hans	商业区
landuse	conservation	zh-hans	保留地
landuse	construction	zh-hans	建设
landuse	farm	zh-hans	农场
landuse	farmland	zh-hans	农田
landuse	farmyard	zh-hans	农家庭院
landuse	forest	zh-hans	森林
landuse	grass	zh-hans	草地
landuse	greenfield	zh-hans	棕色地带
landuse	industrial	zh-hans	工业区
landuse	landfill	zh-hans	垃圾填埋场
landuse	meadow	zh-hans	草甸
landuse	military	zh-hans	军事区
landuse	mine	zh-hans	矿区
landuse	mountain	zh-hans	山
landuse	nature_reserve	zh-hans	自然保护区
landuse	park	zh-hans	公园
landuse	piste	zh-hans	滑雪场
landuse	plaza	zh-hans	广场
landuse	quarry	zh-hans	采石场
landuse	railway	zh-hans	铁路
landuse	recreation_ground	zh-hans	游乐场
landuse	reservoir	zh-hans	水库
landuse	residential	zh-hans	住宅区
landuse	retail	zh-hans	零售
landuse	village_green	zh-hans	绿色村庄
landuse	vineyard	zh-hans	葡萄园
landuse	wetland	zh-hans	湿地
landuse	wood	zh-hans	林
leisure	beach_resort	zh-hans	海滩度假村
leisure	common	zh-hans	公共土地
leisure	fishing	zh-hans	垂钓区
leisure	garden	zh-hans	花园
leisure	golf_course	zh-hans	高尔夫球场
leisure	ice_rink	zh-hans	冰场
leisure	marina	zh-hans	码头
leisure	miniature_golf	zh-hans	迷你高尔夫
leisure	nature_reserve	zh-hans	自然保护区
leisure	park	zh-hans	公园
leisure	pitch	zh-hans	体育场
leisure	playground	zh-hans	游乐场
leisure	recreation_ground	zh-hans	游乐场
leisure	slipway	zh-hans	船入水滑道
leisure	sports_centre	zh-hans	体育馆
leisure	stadium	zh-hans	体育场
leisure	swimming_pool	zh-hans	游泳池
leisure	track	zh-hans	赛道
leisure	water_park	zh-hans	水上乐园
natural	bay	zh-hans	海湾
natural	beach	zh-hans	海滩
natural	cape	zh-hans	海岬
natural	cave_entrance	zh-hans	洞口
natural	channel	zh-hans	海峡
natural	cliff	zh-hans	悬崖
natural	coastline	zh-hans	海岸线
natural	crater	zh-hans	火山口
natural	feature	zh-hans	特征
natural	fell	zh-hans	下跌
natural	fjord	zh-hans	峡湾
natural	geyser	zh-hans	喷泉
natural	glacier	zh-hans	冰川
natural	heath	zh-hans	荒地
natural	hill	zh-hans	小山
natural	island	zh-hans	岛
natural	land	zh-hans	陆地
natural	marsh	zh-hans	沼泽
natural	moor	zh-hans	泊
natural	mud	zh-hans	泥地
natural	peak	zh-hans	山顶
natural	point	zh-hans	点
natural	reef	zh-hans	礁
natural	ridge	zh-hans	岭
natural	river	zh-hans	河
natural	rock	zh-hans	岩
natural	scree	zh-hans	堆积物
natural	scrub	zh-hans	灌木
natural	shoal	zh-hans	浅滩
natural	spring	zh-hans	泉
natural	strait	zh-hans	海峡
natural	tree	zh-hans	树
natural	valley	zh-hans	山谷
natural	volcano	zh-hans	火山
natural	water	zh-hans	水
natural	wetland	zh-hans	湿地
natural	wetlands	zh-hans	湿地
natural	wood	zh-hans	林
place	airport	zh-hans	机场
place	city	zh-hans	城市
place	country	zh-hans	国家
place	county	zh-hans	县
place	farm	zh-hans	农场
place	hamlet	zh-hans	村庄
place	house	zh-hans	房屋
place	houses	zh-hans	房屋
place	island	zh-hans	岛
place	islet	zh-hans	屿
place	locality	zh-hans	地区
place	moor	zh-hans	系泊
place	municipality	zh-hans	都市
place	postcode	zh-hans	邮编
place	region	zh-hans	区
place	sea	zh-hans	海
place	state	zh-hans	国家
place	subdivision	zh-hans	细分
place	suburb	zh-hans	郊区
place	town	zh-hans	镇
place	unincorporated_area	zh-hans	团的区
place	village	zh-hans	村
railway	abandoned	zh-hans	废弃铁路
railway	construction	zh-hans	在建铁路
railway	disused	zh-hans	不使用的铁路
railway	disused_station	zh-hans	不使用的火车站
railway	funicular	zh-hans	缆索铁路
railway	halt	zh-hans	火车停靠站
railway	historic_station	zh-hans	历史火车站
railway	junction	zh-hans	铁路枢纽
railway	level_crossing	zh-hans	平交道口
railway	light_rail	zh-hans	轻轨
railway	monorail	zh-hans	单轨
railway	narrow_gauge	zh-hans	窄轨铁路
railway	platform	zh-hans	站台
railway	preserved	zh-hans	保留铁路
railway	spur	zh-hans	铁路支线
railway	station	zh-hans	火车站
railway	subway	zh-hans	地铁站
railway	subway_entrance	zh-hans	地铁入口
railway	switch	zh-hans	铁路点
railway	tram	zh-hans	缆车
railway	tram_stop	zh-hans	有轨电车停靠站
railway	yard	zh-hans	铁路货场
shop	alcohol	zh-hans	无许可证
shop	apparel	zh-hans	服装店
shop	art	zh-hans	艺术品店
shop	bakery	zh-hans	面包店
shop	beauty	zh-hans	美容店
shop	beverages	zh-hans	饮料店
shop	bicycle	zh-hans	自行车店
shop	books	zh-hans	书店
shop	butcher	zh-hans	屠宰
shop	car	zh-hans	车店
shop	car_dealer	zh-hans	汽车销售
shop	car_parts	zh-hans	汽车零件
shop	carpet	zh-hans	地毯店
shop	car_repair	zh-hans	汽车维修
shop	charity	zh-hans	慈善商店
shop	chemist	zh-hans	化学品店
shop	clothes	zh-hans	服装店
shop	computer	zh-hans	电脑店
shop	confectionery	zh-hans	糖果店
shop	convenience	zh-hans	便利店
shop	copyshop	zh-hans	复印店
shop	cosmetics	zh-hans	化妆品店
shop	department_store	zh-hans	百货商店
shop	discount	zh-hans	折扣精品店
shop	doityourself	zh-hans	DIY
shop	drugstore	zh-hans	药店
shop	dry_cleaning	zh-hans	干洗
shop	electronics	zh-hans	电子产品商店
shop	estate_agent	zh-hans	房产中介
shop	farm	zh-hans	农家店
shop	fashion	zh-hans	时装店
shop	fish	zh-hans	鱼店
shop	florist	zh-hans	鲜花
shop	food	zh-hans	食品店
shop	funeral_directors	zh-hans	丧葬
shop	furniture	zh-hans	家具
shop	gallery	zh-hans	画廊
shop	garden_centre	zh-hans	园艺中心
shop	general	zh-hans	一般商店
shop	gift	zh-hans	礼品店
shop	greengrocer	zh-hans	蔬菜水果店
shop	grocery	zh-hans	杂货店
shop	hairdresser	zh-hans	理发店
shop	hardware	zh-hans	五金店
shop	hifi	zh-hans	Hi-Fi
shop	insurance	zh-hans	保险
shop	jewelry	zh-hans	珠宝店
shop	kiosk	zh-hans	礼品店
shop	laundry	zh-hans	洗衣房
shop	mall	zh-hans	商城
shop	market	zh-hans	市场
shop	mobile_phone	zh-hans	手机店
shop	motorcycle	zh-hans	摩托车店
shop	music	zh-hans	音乐店
shop	newsagent	zh-hans	报摊
shop	optician	zh-hans	配镜
shop	organic	zh-hans	有机食品店
shop	outdoor	zh-hans	户外店
shop	pet	zh-hans	宠物店
shop	photo	zh-hans	照相馆
shop	salon	zh-hans	沙龙
shop	shoes	zh-hans	鞋店
shop	shopping_centre	zh-hans	购物中心
shop	sports	zh-hans	体育用品店
shop	stationery	zh-hans	文具店
shop	supermarket	zh-hans	超市
shop	toys	zh-hans	玩具店
shop	travel_agency	zh-hans	旅行社
shop	video	zh-hans	影视店
shop	wine	zh-hans	无许可证
tourism	alpine_hut	zh-hans	高山小屋
tourism	artwork	zh-hans	艺术品
tourism	attraction	zh-hans	景点
tourism	bed_and_breakfast	zh-hans	床和早餐
tourism	cabin	zh-hans	小木屋
tourism	camp_site	zh-hans	野营地
tourism	caravan_site	zh-hans	拖车营地
tourism	chalet	zh-hans	木屋
tourism	guest_house	zh-hans	宾馆
tourism	hostel	zh-hans	旅馆
tourism	hotel	zh-hans	酒店
tourism	information	zh-hans	信息
tourism	lean_to	zh-hans	主要面向
tourism	motel	zh-hans	汽车旅馆
tourism	museum	zh-hans	博物馆
tourism	picnic_site	zh-hans	野餐地
tourism	theme_park	zh-hans	主题公园
tourism	valley	zh-hans	谷
tourism	viewpoint	zh-hans	景点
tourism	zoo	zh-hans	动物园
waterway	boatyard	zh-hans	船坞
waterway	canal	zh-hans	运河
waterway	connector	zh-hans	航道连接器
waterway	dam	zh-hans	水坝
waterway	derelict_canal	zh-hans	废弃的运河
waterway	ditch	zh-hans	沟
waterway	dock	zh-hans	码头
waterway	drain	zh-hans	渠
waterway	lock	zh-hans	船闸
waterway	lock_gate	zh-hans	船闸
waterway	mineral_spring	zh-hans	矿泉
waterway	mooring	zh-hans	系泊
waterway	rapids	zh-hans	湍流
waterway	river	zh-hans	河
waterway	riverbank	zh-hans	河岸
waterway	stream	zh-hans	溪流
waterway	wadi	zh-hans	干河
waterway	waterfall	zh-hans	瀑布
waterway	water_point	zh-hans	水路点
waterway	weir	zh-hans	堰
amenity	airport	zh-hant	機場
amenity	atm	zh-hant	ATM
amenity	bank	zh-hant	銀行
amenity	bicycle_rental	zh-hant	自行車租賃
amenity	casino	zh-hant	賭場
amenity	cinema	zh-hant	電影院
amenity	clinic	zh-hant	診所
amenity	club	zh-hant	俱樂部
amenity	community_centre	zh-hant	社區中心
amenity	crematorium	zh-hant	火葬場
amenity	dentist	zh-hant	牙醫
amenity	driving_school	zh-hant	駕駛學校
amenity	embassy	zh-hant	大使館
amenity	emergency_phone	zh-hant	緊急電話
amenity	fast_food	zh-hant	快餐
amenity	fire_hydrant	zh-hant	消防栓
amenity	fire_station	zh-hant	消防局
amenity	grave_yard	zh-hant	墓地
amenity	health_centre	zh-hant	健康中心
amenity	hospital	zh-hant	醫院
amenity	hotel	zh-hant	酒店
amenity	ice_cream	zh-hant	冰淇淋
amenity	library	zh-hant	圖書館
amenity	nightclub	zh-hant	夜總會
amenity	office	zh-hant	辦公室
amenity	pharmacy	zh-hant	藥房
amenity	place_of_worship	zh-hant	宗教場所
amenity	police	zh-hant	警察
amenity	post_box	zh-hant	郵箱
amenity	post_office	zh-hant	郵局
amenity	prison	zh-hant	監獄
amenity	sauna	zh-hant	桑拿
amenity	school	zh-hant	學校
amenity	supermarket	zh-hant	超級市場
amenity	taxi	zh-hant	出租車
amenity	telephone	zh-hant	公共電話
amenity	toilets	zh-hant	洗手間
amenity	university	zh-hant	大學
building	church	zh-hant	教堂
historic	museum	zh-hant	博物館
landuse	cemetery	zh-hant	墳場
landuse	military	zh-hant	軍事區
landuse	reservoir	zh-hant	水庫
natural	coastline	zh-hant	海岸線
natural	volcano	zh-hant	火山
place	airport	zh-hant	機場
railway	construction	zh-hant	建造中鐵路
railway	tram_stop	zh-hant	電車站
shop	bakery	zh-hant	麵包店
shop	beauty	zh-hant	美容店
shop	bicycle	zh-hant	自行車店
shop	books	zh-hant	書店
shop	car_parts	zh-hant	汽車零件
shop	car_repair	zh-hant	汽車維修
shop	computer	zh-hant	電腦商店
shop	convenience	zh-hant	便利店
shop	copyshop	zh-hant	複印店
shop	cosmetics	zh-hant	化妝品店
shop	department_store	zh-hant	百貨商店
shop	discount	zh-hant	特價商品店
shop	dry_cleaning	zh-hant	乾洗
shop	electronics	zh-hant	電子產品商店
shop	estate_agent	zh-hant	地產代理
shop	fashion	zh-hant	時裝店
shop	fish	zh-hant	魚店
shop	food	zh-hant	食品店
shop	funeral_directors	zh-hant	殮葬服務
shop	furniture	zh-hant	傢俬
shop	gift	zh-hant	禮品店
shop	hifi	zh-hant	音響店
shop	insurance	zh-hant	保險
shop	jewelry	zh-hant	珠寶店
shop	laundry	zh-hant	洗衣房
shop	mobile_phone	zh-hant	手機店
shop	motorcycle	zh-hant	摩托車店
shop	organic	zh-hant	有機食品店
shop	pet	zh-hant	寵物店
shop	shoes	zh-hant	鞋店
shop	shopping_centre	zh-hant	購物中心
shop	sports	zh-hant	體育用品店
shop	stationery	zh-hant	文具店
shop	supermarket	zh-hant	超級市場
shop	toys	zh-hant	玩具店
shop	travel_agency	zh-hant	旅行社
tourism	artwork	zh-hant	美工
tourism	camp_site	zh-hant	營地
tourism	guest_house	zh-hant	賓館
tourism	hostel	zh-hant	旅舍
tourism	hotel	zh-hant	酒店
tourism	information	zh-hant	資訊
tourism	motel	zh-hant	汽車旅館
tourism	museum	zh-hant	博物館
tourism	picnic_site	zh-hant	野餐地
tourism	zoo	zh-hant	動物園
waterway	dam	zh-hant	水壩
\.

