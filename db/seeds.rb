# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Stations

stationsAll = []
stationsAll = stationsAll.push(
 {name: "12th St. Oakland City Center", address: "1245 Broadway, Oakland, CA 94612", latitude: 37.803664, longitude: -122.271604, abbreviation: "12TH"},
 {name: "16th St. Mission", address: "2000 Mission Street, San Francisco, CA 94110", latitude: 37.765062, longitude: -122.419694, abbreviation: "16TH"},
 {name: "19th St. Oakland", address: "1900 Broadway, Oakland, Ca 94612", latitude: 37.80787, longitude: -122.269029, abbreviation: "19TH"},
 {name: "24th St. Mission", address: "2800 Mission Street, San Francisco, CA 94110", latitude: 37.752254, longitude: -122.418466, abbreviation: "24TH"},
 {name: "Ashby", address: "3100 Adeline Street, Berkeley, CA 94703", latitude: 37.853024, longitude: -122.26978, abbreviation: "ASHB"},
 {name: "Balboa Park", address: "401 Geneva Avenue, San Francisco, CA, 94112", latitude: 37.72198087, longitude: -122.4474142, abbreviation: "BALB"},
 {name: "Bay Fair", address: "15242 Hesperian Blvd., San Leandro, Ca 94578", latitude: 37.697185, longitude: -122.126871, abbreviation: "BAYF"},
 {name: "Castro Valley", address: "3301 Norbridge Dr., Castro Valley, CA 94546", latitude: 37.690754, longitude: -122.075567, abbreviation: "CAST"},
 {name: "Civic Center/UN Plaza", address: "1150 Market Street, San Francisco, CA 94102", latitude: 37.779528, longitude: -122.413756, abbreviation: "CIVC"},
 {name: "Coliseum", address: "7200 San Leandro St., Oakland, CA 94621", latitude: 37.754006, longitude: -122.197273, abbreviation: "COLS"},
 {name: "Colma", address: "365 D Street, Colma, CA 94014", latitude: 37.684638, longitude: -122.466233, abbreviation: "COLM"},
 {name: "Concord", address: "1451 Oakland Avenue, Concord, CA 94520", latitude: 37.973737, longitude: -122.029095, abbreviation: "CONC"},
 {name: "Daly City", address: "500 John Daly Blvd., Daly City, CA 94014", latitude: 37.70612055, longitude: -122.4690807, abbreviation: "DALY"},
 {name: "Downtown Berkeley", address: "2160 Shattuck Avenue, Berkeley, CA 94704", latitude: 37.869867, longitude: -122.268045, abbreviation: "DBRK"},
 {name: "Dublin/Pleasanton", address: "5801 Owens Dr., Pleasanton, CA 94588", latitude: 37.701695, longitude: -121.900367, abbreviation: "DUBL"},
 {name: "El Cerrito del Norte", address: "6400 Cutting Blvd., El Cerrito, CA 94530", latitude: 37.925655, longitude: -122.317269, abbreviation: "DELN"},
 {name: "El Cerrito Plaza", address: "6699 Fairmount Avenue, El Cerrito, CA 94530", latitude: 37.9030588, longitude: -122.2992715, abbreviation: "PLZA"},
 {name: "Embarcadero", address: "298 Market Street, San Francisco, CA 94111", latitude: 37.792976, longitude: -122.396742, abbreviation: "EMBR"},
 {name: "Fremont", address: "2000 BART Way, Fremont, CA 94536", latitude: 37.557355, longitude: -121.9764, abbreviation: "FRMT"},
 {name: "Fruitvale", address: "3401 East 12th Street, Oakland, CA 94601", latitude: 37.774963, longitude: -122.224274, abbreviation: "FTVL"},
 {name: "Glen Park", address: "2901 Diamond Street, San Francisco, CA 94131", latitude: 37.732921, longitude: -122.434092, abbreviation: "GLEN"},
 {name: "Hayward", address: "699 'B' Street, Hayward, CA 94541", latitude: 37.670399, longitude: -122.087967, abbreviation: "HAYW"},
 {name: "Lafayette", address: "3601 Deer Hill Road, Lafayette, CA 94549", latitude: 37.893394, longitude: -122.123801, abbreviation: "LAFY"},
 {name: "Lake Merritt", address: "800 Madison Street, Oakland, CA 94607", latitude: 37.797484, longitude: -122.265609, abbreviation: "LAKE"},
 {name: "MacArthur", address: "555 40th Street, Oakland, CA, 94609", latitude: 37.828415, longitude: -122.267227, abbreviation: "MCAR"},
 {name: "Millbrae", address: "200 North Rollins Road, Millbrae, CA 94030", latitude: 37.599787, longitude: -122.38666, abbreviation: "MLBR"},
 {name: "Montgomery St.", address: "598 Market Street, San Francisco, CA 94104", latitude: 37.789256, longitude: -122.401407, abbreviation: "MONT"},
 {name: "North Berkeley", address: "1750 Sacramento Street, Berkeley, CA 94702", latitude: 37.87404, longitude: -122.283451, abbreviation: "NBRK"},
 {name: "North Concord/Martinez", address: "3700 Port Chicago Highway, Concord, CA, 94520", latitude: 38.003275, longitude: -122.024597, abbreviation: "NCON"},
 {name: "Oakland Int'l Airport", address: "4 Airport Drive, Oakland, CA 94621", latitude: 37.71297174, longitude: -122.21244024, abbreviation: "OAKL"},
 {name: "Orinda", address: "11 Camino Pablo, Orinda, CA 94563", latitude: 37.87836087, longitude: -122.1837911, abbreviation: "ORIN"},
 {name: "Pittsburg/Bay Point", address: "1700 West Leland Road, Pittsburg, CA 94565", latitude: 38.018914, longitude: -121.945154, abbreviation: "PITT"},
 {name: "Pleasant Hill/Contra Costa Centre", address: "1365 Treat Boulevard, Walnut Creek, CA 94597", latitude: 37.928403, longitude: -122.056013, abbreviation: "PHIL"},
 {name: "Powell St.", address: "899 Market Street, San Francisco, CA 94102", latitude: 37.784991, longitude: -122.406857, abbreviation: "POWL"},
 {name: "Richmond", address: "1700 Nevin Avenue, Richmond, CA 94801", latitude: 37.936887, longitude: -122.353165, abbreviation: "RICH"},
 {name: "Rockridge", address: "5660 College Avenue, Oakland, CA 94618", latitude: 37.844601, longitude: -122.251793, abbreviation: "ROCK"},
 {name: "San Bruno", address: "1151 Huntington Avenue, San Bruno, CA 94066", latitude: 37.637753, longitude: -122.416038, abbreviation: "SBRN"},
 {name: "San Francisco Int'l Airport", address: "International Terminal, Level 3, San Francisco Int'l Airport, CA 94128", latitude: 37.616035, longitude: -122.392612, abbreviation: "SFIA"},
 {name: "San Leandro", address: "1401 San Leandro Blvd., San Leandro, CA 94577", latitude: 37.72261921, longitude: -122.1613112, abbreviation: "SANL"},
 {name: "South Hayward", address: "28601 Dixon Street, Hayward Ca, 94544", latitude: 37.63479954, longitude: -122.0575506, abbreviation: "SHAY"},
 {name: "South San Francisco", address: "1333 Mission Road, South San Francisco, CA 94080", latitude: 37.664174, longitude: -122.444116, abbreviation: "SSAN"},
 {name: "Union City", address: "10 Union Square, Union City, CA 94587", latitude: 37.591208, longitude: -122.017867, abbreviation: "UCTY"},
 {name: "Walnut Creek", address: "200 Ygnacio Valley Road, Walnut Creek, CA 94596", latitude: 37.905628, longitude: -122.067423, abbreviation: "WCRK"},
 {name: "West Dublin/Pleasanton", address: "6501 Golden Gate Drive, Dublin, CA 94568", latitude: 37.699759, longitude: -121.928099, abbreviation: "WDUB"},
 {name: "West Oakland", address: "1451 7th Street, Oakland, CA 94607", latitude: 37.80467476, longitude: -122.2945822, abbreviation: "WOAK"},
 )

Station.destroy_all

stationsAll.each{|x| Station.create(x)}

linesAll = []
linesAll.push(
	{name: "Pittsburg/Bay Point - SFIA/Millbrae", abbreviation: "PITT-SFIA", "number"=>1, color: "#ffff33", stations: ["PITT", "NCON", "CONC", "PHIL", "WCRK", "LAFY", "ORIN", "ROCK", "MCAR", "19TH", "12TH", "WOAK", "EMBR", "MONT", "POWL", "CIVC", "16TH", "24TH", "GLEN", "BALB", "DALY", "COLM", "SSAN", "SBRN", "SFIA", "MLBR"]},
	{name: "Millbrae/SFIA - Pittsburg/Bay Point", abbreviation: "SFIA-PITT", "number"=>2, color: "#ffff33", stations: ["MLBR", "SFIA", "SBRN", "SSAN", "COLM", "DALY", "BALB", "GLEN", "24TH", "16TH", "CIVC", "POWL", "MONT", "EMBR", "WOAK", "12TH", "19TH", "MCAR", "ROCK", "ORIN", "LAFY", "WCRK", "PHIL", "CONC", "NCON", "PITT"]},
	{name: "Fremont - Richmond", abbreviation: "FRMT-RICH", "number"=>3, color: "#ff9933", stations: ["FRMT", "UCTY", "SHAY", "HAYW", "BAYF", "SANL", "COLS", "FTVL", "LAKE", "12TH", "19TH", "MCAR", "ASHB", "DBRK", "NBRK", "PLZA", "DELN", "RICH"]},
	{name: "Richmond - Fremont", abbreviation: "RICH-FRMT", "number"=>4, color: "#ff9933", stations: ["RICH", "DELN", "PLZA", "NBRK", "DBRK", "ASHB", "MCAR", "19TH", "12TH", "LAKE", "FTVL", "COLS", "SANL", "BAYF", "HAYW", "SHAY", "UCTY", "FRMT"]},
	{name: "Fremont - Daly City", abbreviation: "FRMT-DALY", "number"=>5, color: "#339933", stations: ["FRMT", "UCTY", "SHAY", "HAYW", "BAYF", "SANL", "COLS", "FTVL", "LAKE", "WOAK", "EMBR", "MONT", "POWL", "CIVC", "16TH", "24TH", "GLEN", "BALB", "DALY"]},
	{name: "Daly City - Fremont", abbreviation: "daly-frmt", "number"=>6, color: "#339933", stations: ["DALY", "BALB", "GLEN", "24TH", "16TH", "CIVC", "POWL", "MONT", "EMBR", "WOAK", "LAKE", "FTVL", "COLS", "SANL", "BAYF", "HAYW", "SHAY", "UCTY", "FRMT"]},
	{name: "Richmond - Daly City/Millbrae", abbreviation: "RICH-MLBR", "number"=>7, color: "#ff0000", stations: ["RICH", "DELN", "PLZA", "NBRK", "DBRK", "ASHB", "MCAR", "19TH", "12TH", "WOAK", "EMBR", "MONT", "POWL", "CIVC", "16TH", "24TH", "GLEN", "BALB", "DALY", "COLM", "SSAN", "SBRN", "MLBR"]},
	{name: "Millbrae/Daly City - Richmond", abbreviation: "MLBR-RICH", "number"=>8, color: "#ff0000", stations: ["MLBR", "SBRN", "SSAN", "COLM", "DALY", "BALB", "GLEN", "24TH", "16TH", "CIVC", "POWL", "MONT", "EMBR", "WOAK", "12TH", "19TH", "MCAR", "ASHB", "DBRK", "NBRK", "PLZA", "DELN", "RICH"]},
	{name: "Dublin/Pleasanton - Daly City", abbreviation: "DUBL-DALY", "number"=>11, color: "#0099cc", stations: ["DUBL", "WDUB", "CAST", "BAYF", "SANL", "COLS", "FTVL", "LAKE", "WOAK", "EMBR", "MONT", "POWL", "CIVC", "16TH", "24TH", "GLEN", "BALB", "DALY"]},
	{name: "Daly City - Dublin/Pleasanton", abbreviation: "DALY-DUBL", "number"=>12, color: "#0099cc", stations: ["DALY", "BALB", "GLEN", "24TH", "16TH", "CIVC", "POWL", "MONT", "EMBR", "WOAK", "LAKE", "FTVL", "COLS", "SANL", "BAYF", "CAST", "WDUB", "DUBL"]},
	{name: "Coliseum - Oakland Int'l Airport", abbreviation: "COLS-OAKL", "number"=>19, color: "#d5cfa3", stations: ["COLS", "OAKL"]},
	{name: "Oakland Int'l Airport - Coliseum", abbreviation: "OAKL-COLS", "number"=>20, color: "#d5cfa3", stations: ["OAKL", "COLS"]}
	)

Line.destroy_all

linesAll.each{|x| Line.create(x)}

