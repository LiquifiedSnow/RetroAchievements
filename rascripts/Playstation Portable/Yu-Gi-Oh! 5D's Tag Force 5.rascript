// Yu-Gi-Oh! 5D's Tag Force 5
// #ID = 6710
function game_state() => dword(0x95fe50)
state_loading = 0x00
state_menu = 0x0c
state_play = 0x02
state_deck = 0x04
state_duel = 0x06

function map_id() => dword(0xF7FFFD20+dword(0xe7b054))
map_bedroom = 0x00
map_gearmill = 0x01
map_fountainplaza = 0x02
map_duelacademy = 0x03
map_marthaplace = 0x04
map_highway = 0x05
map_combatlane = 0x06
map_satellitesquare = 0x07
map_shoreline = 0x08
map_stadium = 0x09
map_downtowndistrict = 0x0a
map_carlyapartment = 0x0b
map_highwayunderpass = 0x0c
map_hospital = 0x0d
map_publicsecuritybureau = 0x0e
map_centralplaza = 0x0f
map_leolunapenthouse = 0x10
map_wrgpeventsite = 0x11
map_outerrim = 0x12
map_junkmarket = 0x13
map_factory = 0x14
map_frontier = 0x15
map_altbedroom = 0x16

function pointer_addr() => dword(0xe7b054)
ptr_load = 0x00
ptr_load2 = 0xffffffff

function save_protect() => game_state() == state_play && prev(pointer_addr()) != ptr_load && prev(pointer_addr()) != ptr_load2
function save_protect_ch() => game_state() == state_duel && prev(pointer_addr()) != ptr_load && prev(pointer_addr()) != ptr_load2

function yusei_normal_heart() => word(0xf7ff2aa2+dword(0xe7b054))
function yusei_normal_heart1max() => yusei_normal_heart() == 0x3e8 && prev(yusei_normal_heart()) < 0x3e8
function yusei_normal_heart2max() => yusei_normal_heart() == 0x7d0 && prev(yusei_normal_heart()) < 0x7d0
function yusei_normal_heart3max() => yusei_normal_heart() == 0xbb8 && prev(yusei_normal_heart()) < 0xbb8
function yusei_normal_heart4max() => yusei_normal_heart() == 0xfa0 && prev(yusei_normal_heart()) < 0xfa0
function yusei_normal_story() => word(0xf7ff2ab4+dword(0xe7b054))
function yusei_normal_story1() => yusei_normal_story() == 2 && prev( yusei_normal_story()) == 1
function yusei_normal_story2() => yusei_normal_story() == 3 && prev( yusei_normal_story()) == 2
function yusei_normal_story3() => yusei_normal_story() == 4 && prev( yusei_normal_story()) == 3
function yusei_normal_story4() => yusei_normal_story() == 5 && prev( yusei_normal_story()) == 4

achievement ("Friendly Yusei", "Obtain your first full heart with [Yusei Fudo]", 5,
trigger = save_protect() && yusei_normal_heart1max())

achievement ("The Creeping Threat", "Complete the first mission with [Yusei Fudo]", 5,
trigger = save_protect() && map_id() == map_combatlane && yusei_normal_story1())

achievement ("Familiar Yusei", "Obtain your second full heart with [Yusei Fudo]", 5,
trigger = save_protect() && yusei_normal_heart2max())

achievement ("New Possibilities Clear Mind", "Complete the second mission with [Yusei Fudo]", 5,
trigger = save_protect() && map_id() == map_highwayunderpass && yusei_normal_story2())

achievement ("Confidant Yusei", "Obtain your third full heart with [Yusei Fudo]", 5,
trigger = save_protect() && yusei_normal_heart3max())

achievement ("A Battle for the Ages", "Complete the third mission with [Yusei Fudo]", 5,
trigger = save_protect() && map_id() == map_highway && yusei_normal_story3())

achievement ("Companion Yusei", "Obtain your fourth full heart with [Yusei Fudo]", 5,
trigger = save_protect() && yusei_normal_heart4max())

achievement ("Showdown! The Chosen Ones", "Complete the final mission with [Yusei Fudo]", 5,
trigger = save_protect() && map_id() == map_outerrim && yusei_normal_story4())

function yusei_poncho_heart() => word(0xf7ff2ae2+dword(0xe7b054))
function yusei_poncho_heart1max() => yusei_poncho_heart() == 0x3e8 && prev(yusei_poncho_heart()) < 0x3e8
function yusei_poncho_heart2max() => yusei_poncho_heart() == 0x7d0 && prev(yusei_poncho_heart()) < 0x7d0
function yusei_poncho_heart3max() => yusei_poncho_heart() == 0xbb8 && prev(yusei_poncho_heart()) < 0xbb8
function yusei_poncho_heart4max() => yusei_poncho_heart() == 0xfa0 && prev(yusei_poncho_heart()) < 0xfa0
function yusei_poncho_story() => word(0xf7ff2af4+dword(0xe7b054))
function yusei_poncho_story1() => yusei_poncho_story() == 2 && prev( yusei_poncho_story()) == 1
function yusei_poncho_story2() => yusei_poncho_story() == 3 && prev( yusei_poncho_story()) == 2
function yusei_poncho_story3() => yusei_poncho_story() == 4 && prev( yusei_poncho_story()) == 3
function yusei_poncho_story4() => yusei_poncho_story() == 5 && prev( yusei_poncho_story()) == 4

achievement ("Friendly Yusei (Poncho)", "Obtain your first full heart with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && yusei_poncho_heart1max())

achievement ("The Forgotten City", "Complete the first mission with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && map_id() == map_frontier && yusei_poncho_story1())

achievement ("Familiar Yusei (Poncho)", "Obtain your second full heart with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && yusei_poncho_heart2max())

achievement ("Yusei Fudo, the Bodyguard", "Complete the second mission with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && map_id() == map_frontier && yusei_poncho_story2())

achievement ("Confidant Yusei (Poncho)", "Obtain your third full heart with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && yusei_poncho_heart3max())

achievement ("A Reunion With an Old Friend", "Complete the third mission with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && map_id() == map_frontier && yusei_poncho_story3())

achievement ("Companion Yusei (Poncho)", "Obtain your fourth full heart with [Yusei Fudo (Poncho)]", 5,
trigger = save_protect() && yusei_poncho_heart4max())

achievement ("Seeking All Manner of Satisfaction", "Complete the final mission with [Yusei Fuso (Poncho)] ", 5,
trigger = save_protect() && map_id() == map_junkmarket && yusei_poncho_story4())

function jack_atlas_normal_heart() => word(0xf7ff2b22+dword(0xe7b054))
function jack_atlas_normal_heart1max() => jack_atlas_normal_heart() == 0x3e8 && prev(jack_atlas_normal_heart()) < 0x3e8
function jack_atlas_normal_heart2max() => jack_atlas_normal_heart() == 0x7d0 && prev(jack_atlas_normal_heart()) < 0x7d0
function jack_atlas_normal_heart3max() => jack_atlas_normal_heart() == 0xbb8 && prev(jack_atlas_normal_heart()) < 0xbb8
function jack_atlas_normal_heart4max() => jack_atlas_normal_heart() == 0xfa0 && prev(jack_atlas_normal_heart()) < 0xfa0
function jack_atlas_normal_story() => word(0xf7ff2b34+dword(0xe7b054))
function jack_atlas_normal_story1() => jack_atlas_normal_story() == 2 && prev(jack_atlas_normal_story()) == 1
function jack_atlas_normal_story2() => jack_atlas_normal_story() == 3 && prev(jack_atlas_normal_story()) == 2
function jack_atlas_normal_story3() => jack_atlas_normal_story() == 4 && prev(jack_atlas_normal_story()) == 3
function jack_atlas_normal_story4() => jack_atlas_normal_story() == 5 && prev(jack_atlas_normal_story()) == 4

achievement ("Friendly Jack", "Obtain your first full heart with [Jack Atlas]", 5,
trigger = save_protect() && jack_atlas_normal_heart1max())

achievement ("Jack Atlas: Suspect?!", "Complete the first mission with [Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && jack_atlas_normal_story1())

achievement ("Familiar Jack", "Obtain your second full heart with [Jack Atlas]", 5,
trigger = save_protect() && jack_atlas_normal_heart2max())

achievement ("Return of the Champion", "Complete the second mission with [Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_combatlane && jack_atlas_normal_story2())

achievement ("Confidant Jack", "Obtain your third full heart with [Jack Atlas]", 5,
trigger = save_protect() && jack_atlas_normal_heart3max())

achievement ("Yliaster's Ambition", "Complete the third mission with [Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_highway && jack_atlas_normal_story3())

achievement ("Companion Jack", "Obtain your fourth full heart with [Jack Atlas]", 5,
trigger = save_protect() && jack_atlas_normal_heart4max())

achievement ("The Spirit of the Awakening Champion!", "Complete the fourth mission with [Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_outerrim && jack_atlas_normal_story4())

function crow_hearts() => word(0xf7ff2b62+dword(0xe7b054))
function crow_heart1max() => crow_hearts() == 0x3e8 && prev(crow_hearts()) < 0x3e8
function crow_heart2max() => crow_hearts() == 0x7d0 && prev(crow_hearts()) < 0x7d0
function crow_heart3max() => crow_hearts() == 0xbb8 && prev(crow_hearts()) < 0xbb8
function crow_heart4max() => crow_hearts() == 0xfa0 && prev(crow_hearts()) < 0xfa0
function crow_story() => word(0xf7ff2b74+dword(0xe7b054))
function crow_story1() => crow_story() == 2 && prev(crow_story()) == 1
function crow_story2() => crow_story() == 3 && prev(crow_story()) == 2
function crow_story3() => crow_story() == 4 && prev(crow_story()) == 3
function crow_story4() => crow_story() == 5 && prev(crow_story()) == 4

achievement ("Friendly Crow", "Obtain your first full heart with [Crow]", 5,
trigger = save_protect() && crow_heart1max())

achievement ("Search! In Pursuit of Jack's Help", "Complete the first mission with [Crow]", 5,
trigger = save_protect() && map_id() == map_satellitesquare && crow_story1())

achievement ("Familiar Crow", "Obtain your second full heart with [Crow]", 5,
trigger = save_protect() && crow_heart2max())

achievement ("Defend to the Bitter End!", "Complete the second mission with [Crow]", 5,
trigger = save_protect() && map_id() == map_downtowndistrict && crow_story2())

achievement ("Confidant Crow", "Obtain your third full heart with [Crow]", 5,
trigger = save_protect() && crow_heart3max())

achievement ("Race on Through!", "Complete the third mission with [Crow]", 5,
trigger = save_protect() && map_id() == map_junkmarket && crow_story3())

achievement ("Companion Crow", "Obtain your fourth full heart with [Crow]", 5,
trigger = save_protect() && crow_heart4max())

achievement ("Hopes Interlinked Take Flight, Black-Winged Dragon!", "Complete the fourth mission with [Crow]", 5,
trigger = save_protect() && map_id() == map_junkmarket && crow_story4())

function akiza_normal_hearts() => word(0xf7ff2ba2+dword(0xe7b054))
function akiza_normal_heart1max() => akiza_normal_hearts() == 0x3e8 && prev(akiza_normal_hearts()) < 0x3e8
function akiza_normal_heart2max() => akiza_normal_hearts() == 0x7d0 && prev(akiza_normal_hearts()) < 0x7d0
function akiza_normal_heart3max() => akiza_normal_hearts() == 0xbb8 && prev(akiza_normal_hearts()) < 0xbb8
function akiza_normal_heart4max() => akiza_normal_hearts() == 0xfa0 && prev(akiza_normal_hearts()) < 0xfa0
function akiza_normal_story() => word(0xf7ff2bb4+dword(0xe7b054))
function akiza_normal_story1() => akiza_normal_story() == 2 && prev(akiza_normal_story()) == 1
function akiza_normal_story2() => akiza_normal_story() == 3 && prev(akiza_normal_story()) == 2
function akiza_normal_story3() => akiza_normal_story() == 4 && prev(akiza_normal_story()) == 3
function akiza_normal_story4() => akiza_normal_story() == 5 && prev(akiza_normal_story()) == 4

achievement ("Friendly Akiza", "Obtain your first full heart with [Akiza Izinski]", 5,
trigger = save_protect() && akiza_normal_heart1max())

achievement ("Yusei Held Prisoner?!", "Complete the first mission with [Akiza Izinski]", 5,
trigger = save_protect() && map_id() == map_combatlane && akiza_normal_story1())

achievement ("Familiar Akiza", "Obtain your second full heart with [Akiza Izinski]", 5,
trigger = save_protect() && akiza_normal_heart2max())

achievement ("An Encounter in Town", "Complete the second mission with [Akiza Izinski]", 5,
trigger = save_protect() && map_id() == map_downtowndistrict && akiza_normal_story2())

achievement ("Confidant Akiza", "Obtain your third full heart with [Akiza Izinski]", 5,
trigger = save_protect() && akiza_normal_heart3max())

achievement ("The Road to Acceleration", "Complete the third mission with [Akiza Izinski]", 5,
trigger = save_protect() && map_id() == map_duelacademy && akiza_normal_story3())

achievement ("Companion Akiza", "Obtain your fourth full heart with [Akiza Izinski]", 5,
trigger = save_protect() && akiza_normal_heart4max())

achievement ("The Bond Between Friends", "Complete the fourth mission with [Akiza Izinski]", 5,
trigger = save_protect() && map_id() == map_combatlane && akiza_normal_story4())

function akiza_academy_hearts() => word(0xf7ff2be2+dword(0xe7b054))
function akiza_academy_heart1max() => akiza_academy_hearts() == 0x3e8 && prev(akiza_academy_hearts()) < 0x3e8
function akiza_academy_heart2max() => akiza_academy_hearts() == 0x7d0 && prev(akiza_academy_hearts()) < 0x7d0
function akiza_academy_heart3max() => akiza_academy_hearts() == 0xbb8 && prev(akiza_academy_hearts()) < 0xbb8
function akiza_academy_heart4max() => akiza_academy_hearts() == 0xfa0 && prev(akiza_academy_hearts()) < 0xfa0
function akiza_academy_story() => word(0xf7ff2bf4+dword(0xe7b054))
function akiza_academy_story1() => akiza_academy_story() == 2 && prev(akiza_academy_story()) == 1
function akiza_academy_story2() => akiza_academy_story() == 3 && prev(akiza_academy_story()) == 2
function akiza_academy_story3() => akiza_academy_story() == 4 && prev(akiza_academy_story()) == 3
function akiza_academy_story4() => akiza_academy_story() == 5 && prev(akiza_academy_story()) == 4

achievement ("Friendly Akiza (Academy)", "Obtain your first full heart with [Akiza (Academy)]", 5,
trigger = save_protect() && akiza_academy_heart1max())

achievement ("What Blossomed Within Me", "Complete the first mission with [Akiza (Academy)]", 5,
trigger = save_protect() && map_id() == map_duelacademy && akiza_academy_story1())

achievement ("Familiar Akiza (Academy)", "Obtain your second full heart with [Akiza (Academy)]", 5,
trigger = save_protect() && akiza_academy_heart2max())

achievement ("That Which Binds Me", "Complete the second mission with [Akiza (Academy)]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && akiza_academy_story2())

achievement ("Confidant Akiza (Academy)", "Obtain your third full heart with [Akiza (Academy)]", 5,
trigger = save_protect() && akiza_academy_heart3max())

achievement ("What Stirs Up Within Me", "Complete the third mission with [Akiza (Academy)]", 5,
trigger = save_protect() && map_id() == map_downtowndistrict && akiza_academy_story3())

achievement ("Companion Akiza (Academy)", "Obtain your fourth full heart with [Akiza (Academy)]", 5,
trigger = save_protect() && akiza_academy_heart4max())

achievement ("What I Have Earned", "Complete the fourth mission with [Akiza (Academy)]", 5,
trigger = save_protect() && map_id() == map_shoreline && akiza_academy_story4())

function leo_normal_hearts() => word(0xf7ff2c22+dword(0xe7b054))
function leo_normal_heart1max() => leo_normal_hearts() == 0x3e8 && prev(leo_normal_hearts()) < 0x3e8
function leo_normal_heart2max() => leo_normal_hearts() == 0x7d0 && prev(leo_normal_hearts()) < 0x7d0
function leo_normal_heart3max() => leo_normal_hearts() == 0xbb8 && prev(leo_normal_hearts()) < 0xbb8
function leo_normal_heart4max() => leo_normal_hearts() == 0xfa0 && prev(leo_normal_hearts()) < 0xfa0
function leo_normal_story() => word(0xf7ff2c34+dword(0xe7b054))
function leo_normal_story1() => leo_normal_story() == 2 && prev(leo_normal_story()) == 1
function leo_normal_story2() => leo_normal_story() == 3 && prev(leo_normal_story()) == 2
function leo_normal_story3() => leo_normal_story() == 4 && prev(leo_normal_story()) == 3
function leo_normal_story4() => leo_normal_story() == 5 && prev(leo_normal_story()) == 4

achievement ("Friendly Leo", "Obtain your first full heart with [Leo]", 5,
trigger = save_protect() && leo_normal_heart1max())

achievement ("Phantoms Don't Scare Me!", "Complete the first mission with [Leo]", 5,
trigger = save_protect() && map_id() == map_junkmarket && leo_normal_story1())

achievement ("Familiar Leo", "Obtain your second full heart with [Leo]", 5,
trigger = save_protect() && leo_normal_heart2max())

achievement ("The Lad Who Protects His Sister", "Complete the second mission with [Leo]", 5,
trigger = save_protect() && map_id() == map_duelacademy && leo_normal_story2())

achievement ("Confidant Leo", "Obtain your third full heart with [Leo]", 5,
trigger = save_protect() && leo_normal_heart3max())

achievement ("Haunted Trap Mansion", "Complete the third mission with [Leo]", 5,
trigger = save_protect() && map_id() == map_centralplaza && leo_normal_story3())

achievement ("Companion Leo", "Obtain your fourth full heart with [Leo]", 5,
trigger = save_protect() && leo_normal_heart4max())

achievement ("Ghost: Vision of the Signer", "Complete the fourth mission with [Leo]", 5,
trigger = save_protect() && map_id() == map_junkmarket && leo_normal_story4())

function leo_academy_hearts() => word(0xf7ff2c62+dword(0xe7b054))
function leo_academy_heart1max() => leo_academy_hearts() == 0x3e8 && prev(leo_academy_hearts()) < 0x3e8
function leo_academy_heart2max() => leo_academy_hearts() == 0x7d0 && prev(leo_academy_hearts()) < 0x7d0
function leo_academy_heart3max() => leo_academy_hearts() == 0xbb8 && prev(leo_academy_hearts()) < 0xbb8
function leo_academy_heart4max() => leo_academy_hearts() == 0xfa0 && prev(leo_academy_hearts()) < 0xfa0
function leo_academy_story() => word(0xf7ff2c74+dword(0xe7b054))
function leo_academy_story1() => leo_academy_story() == 2 && prev(leo_academy_story()) == 1
function leo_academy_story2() => leo_academy_story() == 3 && prev(leo_academy_story()) == 2
function leo_academy_story3() => leo_academy_story() == 4 && prev(leo_academy_story()) == 3
function leo_academy_story4() => leo_academy_story() == 5 && prev(leo_academy_story()) == 4

achievement ("Friendly Leo (Academy)", "Obtain your first full heart with [Leo (Academy)]", 5,
trigger = save_protect() && leo_academy_heart1max())

achievement ("Extracurricular Lesson!", "Complete the first mission with [Leo (Academy)]", 5,
trigger = save_protect() && map_id() == map_marthaplace && leo_academy_story1())

achievement ("Familiar Leo (Academy)", "Obtain your second full heart with [Leo (Academy)]", 5,
trigger = save_protect() && leo_academy_heart2max())

achievement ("A Field Trip!", "Complete the second mission with [Leo (Academy)]", 5,
trigger = save_protect() && map_id() == map_publicsecuritybureau && leo_academy_story2())

achievement ("Confidant Leo (Academy)", "Obtain your third full heart with [Leo (Academy)]", 5,
trigger = save_protect() && leo_academy_heart3max())

achievement ("Research Project!", "Complete the third mission with [Leo (Academy)]", 5,
trigger = save_protect() && map_id() == map_junkmarket && leo_academy_story3())

achievement ("Companion Leo (Academy)", "Obtain your fourth full heart with [Leo (Academy)]", 5,
trigger = save_protect() && leo_academy_heart4max())

achievement ("The Future That Deck Swapping Brings!", "Complete the fourth mission with [Leo (Academy)]", 5,
trigger = save_protect() && map_id() == map_stadium && leo_academy_story4())

function luna_normal_hearts() => word(0xf7ff2ca2+dword(0xe7b054))
function luna_normal_heart1max() => luna_normal_hearts() == 0x3e8 && prev(luna_normal_hearts()) < 0x3e8
function luna_normal_heart2max() => luna_normal_hearts() == 0x7d0 && prev(luna_normal_hearts()) < 0x7d0
function luna_normal_heart3max() => luna_normal_hearts() == 0xbb8 && prev(luna_normal_hearts()) < 0xbb8
function luna_normal_heart4max() => luna_normal_hearts() == 0xfa0 && prev(luna_normal_hearts()) < 0xfa0
function luna_normal_story() => word(0xf7ff2cb4+dword(0xe7b054))
function luna_normal_story1() => luna_normal_story() == 2 && prev(luna_normal_story()) == 1
function luna_normal_story2() => luna_normal_story() == 3 && prev(luna_normal_story()) == 2
function luna_normal_story3() => luna_normal_story() == 4 && prev(luna_normal_story()) == 3
function luna_normal_story4() => luna_normal_story() == 5 && prev(luna_normal_story()) == 4

achievement ("Friendly Luna", "Obtain your first full heart with [Luna]", 5,
trigger = save_protect() && luna_normal_heart1max())

achievement ("Pursuit! Leo Surfaces!", "Complete the first mission with [Luna]", 5,
trigger = save_protect() && map_id() == map_downtowndistrict && luna_normal_story1())

achievement ("Familiar Luna", "Obtain your second full heart with [Luna]", 5,
trigger = save_protect() && luna_normal_heart2max())

achievement ("Between Admiration and Respect", "Complete the second mission with [Luna]", 5,
trigger = save_protect() && map_id() == map_stadium && luna_normal_story2())

achievement ("Confidant Luna", "Obtain your third full heart with [Luna]", 5,
trigger = save_protect() && luna_normal_heart3max())

achievement ("A Wounded Heart", "Complete the second mission with [Luna]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && luna_normal_story3())

achievement ("Companion Luna", "Obtain your fourth full heart with [Luna]", 5,
trigger = save_protect() && luna_normal_heart4max())

achievement ("The Sealed Heart", "Complete the fourth mission with [Luna]", 5,
trigger = save_protect() && map_id() == map_leolunapenthouse && luna_normal_story4())

function luna_academy_hearts() => word(0xf7ff2ce2+dword(0xe7b054))
function luna_academy_heart1max() => luna_academy_hearts() == 0x3e8 && prev(luna_academy_hearts()) < 0x3e8
function luna_academy_heart2max() => luna_academy_hearts() == 0x7d0 && prev(luna_academy_hearts()) < 0x7d0
function luna_academy_heart3max() => luna_academy_hearts() == 0xbb8 && prev(luna_academy_hearts()) < 0xbb8
function luna_academy_heart4max() => luna_academy_hearts() == 0xfa0 && prev(luna_academy_hearts()) < 0xfa0
function luna_academy_story() => word(0xf7ff2cf4+dword(0xe7b054))
function luna_academy_story1() => luna_academy_story() == 2 && prev(luna_academy_story()) == 1
function luna_academy_story2() => luna_academy_story() == 3 && prev(luna_academy_story()) == 2
function luna_academy_story3() => luna_academy_story() == 4 && prev(luna_academy_story()) == 3
function luna_academy_story4() => luna_academy_story() == 5 && prev(luna_academy_story()) == 4

achievement ("Friendly Luna (Academy)", "Obtain your first full heart with [Luna (Academy)]", 5,
trigger = save_protect() && luna_academy_heart1max())

achievement ("Leo's Gone?!", "Complete the first mission with [Luna (Academy)]", 5,
trigger = save_protect() && map_id() == map_leolunapenthouse && luna_academy_story1())

achievement ("Familiar Luna (Academy)", "Obtain your second full heart with [Luna (Academy)]", 5,
trigger = save_protect() && luna_academy_heart2max())

achievement ("Akiza Appears!", "Complete the second mission with [Luna (Academy)]", 5,
trigger = save_protect() && map_id() == map_duelacademy && luna_academy_story2())

achievement ("Confidant Luna (Academy)", "Obtain your third full heart with [Luna (Academy)]", 5,
trigger = save_protect() && luna_academy_heart3max())

achievement ("Luna's Secret's Out?!", "Complete the third mission with [Luna (Academy)]", 5,
trigger = save_protect() && map_id() == map_duelacademy && luna_academy_story3())

achievement ("Companion Luna (Academy)", "Obtain your fourth full heart with [Luna (Academy)]", 5,
trigger = save_protect() && luna_academy_heart4max())

achievement ("Two Leos?!", "Complete the fourth mission with [Luna (Academy)]", 5,
trigger = save_protect() && map_id() == map_stadium && luna_academy_story4())

function carly_normal_hearts() => word(0xf7ff2d22+dword(0xe7b054))
function carly_normal_heart1max() => carly_normal_hearts() == 0x3e8 && prev(carly_normal_hearts()) < 0x3e8
function carly_normal_heart2max() => carly_normal_hearts() == 0x7d0 && prev(carly_normal_hearts()) < 0x7d0
function carly_normal_heart3max() => carly_normal_hearts() == 0xbb8 && prev(carly_normal_hearts()) < 0xbb8
function carly_normal_heart4max() => carly_normal_hearts() == 0xfa0 && prev(carly_normal_hearts()) < 0xfa0
function carly_normal_story() => word(0xf7ff2d34+dword(0xe7b054))
function carly_normal_story1() => carly_normal_story() == 2 && prev(carly_normal_story()) == 1
function carly_normal_story2() => carly_normal_story() == 3 && prev(carly_normal_story()) == 2
function carly_normal_story3() => carly_normal_story() == 4 && prev(carly_normal_story()) == 3
function carly_normal_story4() => carly_normal_story() == 5 && prev(carly_normal_story()) == 4

achievement ("Friendly Carly", "Obtain your first full heart with [Carly Carmine]", 5,
trigger = save_protect() && carly_normal_heart1max())

achievement ("If Anyone up There's Listening...", "Complete the first mission with [Carly Carmine]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && carly_normal_story1())

achievement ("Familiar Carly", "Obtain your second full heart with [Carly Carmine]", 5,
trigger = save_protect() && carly_normal_heart2max())

achievement ("Scoop!", "Complete the second mission with [Carly Carmine]", 5,
trigger = save_protect() && map_id() == map_combatlane && carly_normal_story2())

achievement ("Confidant Carly", "Obtain your third full heart with [Carly Carmine]", 5,
trigger = save_protect() && carly_normal_heart3max())

achievement ("News Flash!", "Complete the third mission with [Carly Carmine]", 5,
trigger = save_protect() && map_id() == map_combatlane && carly_normal_story3())

achievement ("Companion Carly", "Obtain your fourth full heart with [Carly Carmine]", 5,
trigger = save_protect() && carly_normal_heart4max())

achievement ("Success!", "Complete the fourth mission with [Carly Carmine]", 5,
trigger = save_protect() && map_id() == map_highway && carly_normal_story4())

function tetsu_hearts() => word(0xf7ff2da2+dword(0xe7b054))
function tetsu_heart1max() => tetsu_hearts() == 0x3e8 && prev(tetsu_hearts()) < 0x3e8
function tetsu_heart2max() => tetsu_hearts() == 0x7d0 && prev(tetsu_hearts()) < 0x7d0
function tetsu_heart3max() => tetsu_hearts() == 0xbb8 && prev(tetsu_hearts()) < 0xbb8
function tetsu_heart4max() => tetsu_hearts() == 0xfa0 && prev(tetsu_hearts()) < 0xfa0
function tetsu_story() => word(0xf7ff2db4+dword(0xe7b054))
function tetsu_story1() => tetsu_story() == 2 && prev(tetsu_story()) == 1
function tetsu_story2() => tetsu_story() == 3 && prev(tetsu_story()) == 2
function tetsu_story3() => tetsu_story() == 4 && prev(tetsu_story()) == 3
function tetsu_story4() => tetsu_story() == 5 && prev(tetsu_story()) == 4

achievement ("Friendly Tetsu", "Obtain your first full heart with [Tetsu Trudge]", 5,
trigger = save_protect() && tetsu_heart1max())

achievement ("Tetsu's Secret Flower Garden", "Complete the first mission with [Tetsu Trudge]", 5,
trigger = save_protect() && map_id() == map_marthaplace && tetsu_story1())

achievement ("Familiar Tetsu", "Obtain your second full heart with [Tetsu Trudge]", 5,
trigger = save_protect() && tetsu_heart2max())

achievement ("A Chance Encounter: Your Name Is...?", "Complete the second mission with [Tetsu Trudge]", 5,
trigger = save_protect() && map_id() == map_hospital && tetsu_story2())

achievement ("Confidant Tetsu", "Obtain your third full heart with [Tetsu Trudge]", 5,
trigger = save_protect() && tetsu_heart3max())

achievement ("Lovely Lady, You Sure Love Secrets", "Complete the third mission with [Tetsu Trudge]", 5,
trigger = save_protect() && map_id() == map_gearmill && tetsu_story3())

achievement ("Companion Tetsu", "Obtain your fourth full heart with [Tetsu Trudge]", 5,
trigger = save_protect() && tetsu_heart4max())

achievement ("Farewell, My Love!", "Complete the fourth mission with [Tetsu Trudge]", 5,
trigger = save_protect() && map_id() == map_publicsecuritybureau && tetsu_story4())

function mina_hearts() => word(0xf7ff2d62+dword(0xe7b054))
function mina_heart1max() => mina_hearts() == 0x3e8 && prev(mina_hearts()) < 0x3e8
function mina_heart2max() => mina_hearts() == 0x7d0 && prev(mina_hearts()) < 0x7d0
function mina_heart3max() => mina_hearts() == 0xbb8 && prev(mina_hearts()) < 0xbb8
function mina_heart4max() => mina_hearts() == 0xfa0 && prev(mina_hearts()) < 0xfa0
function mina_story() => word(0xf7ff2d74+dword(0xe7b054))
function mina_story1() => mina_story() == 2 && prev(mina_story()) == 1
function mina_story2() => mina_story() == 3 && prev(mina_story()) == 2
function mina_story3() => mina_story() == 4 && prev(mina_story()) == 3
function mina_story4() => mina_story() == 5 && prev(mina_story()) == 4

achievement ("Friendly Mina", "Obtain your first full heart with [Mina Simington]", 5,
trigger = save_protect() && mina_heart1max())

achievement ("The Chief's Journal", "Complete the first mission with [Mina Simington]", 5,
trigger = save_protect() && map_id() == map_shoreline && mina_story1())

achievement ("Familiar Mina", "Obtain your second full heart with [Mina Simington]", 5,
trigger = save_protect() && mina_heart2max())

achievement ("Just Like Begonias", "Complete the second mission with [Mina Simington]", 5,
trigger = save_protect() && map_id() == map_satellitesquare && mina_story2())

achievement ("Confidant Mina", "Obtain your third full heart with [Mina Simington]", 5,
trigger = save_protect() && mina_heart3max())

achievement ("Mina's Wish", "Complete the third mission with [Mina Simington]", 5,
trigger = save_protect() && map_id() == map_gearmill && mina_story3())

achievement ("Companion Mina", "Obtain your fourth full heart with [Mina Simington]", 5,
trigger = save_protect() && mina_heart4max())

achievement ("On a Journey", "Complete the fourth mission with [Mina Simington]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && mina_story4())

function lazar_hearts() => word(0xf7ff2de2+dword(0xe7b054))
function lazar_heart1max() => lazar_hearts() == 0x3e8 && prev(lazar_hearts()) < 0x3e8
function lazar_heart2max() => lazar_hearts() == 0x7d0 && prev(lazar_hearts()) < 0x7d0
function lazar_heart3max() => lazar_hearts() == 0xbb8 && prev(lazar_hearts()) < 0xbb8
function lazar_heart4max() => lazar_hearts() == 0xfa0 && prev(lazar_hearts()) < 0xfa0
function lazar_story() => word(0xf7ff2df4+dword(0xe7b054))
function lazar_story1() => lazar_story() == 2 && prev(lazar_story()) == 1
function lazar_story2() => lazar_story() == 3 && prev(lazar_story()) == 2
function lazar_story3() => lazar_story() == 4 && prev(lazar_story()) == 3
function lazar_story4() => lazar_story() == 5 && prev(lazar_story()) == 4

achievement ("Friendly Lazar", "Obtain your first full heart with [Lazar]", 5,
trigger = save_protect() && lazar_heart1max())

achievement ("Eliminate Shady Characters!", "Complete the first mission with [Lazar]", 5,
trigger = save_protect() && map_id() == map_outerrim && lazar_story1())

achievement ("Familiar Lazar", "Obtain your second full heart with [Lazar]", 5,
trigger = save_protect() && lazar_heart2max())

achievement ("Steal the Latest Program!", "Complete the second mission with [Lazar]", 5,
trigger = save_protect() && map_id() == map_gearmill && lazar_story2())

achievement ("Confidant Lazar", "Obtain your third full heart with [Lazar]", 5,
trigger = save_protect() && lazar_heart3max())

achievement ("Defend the Public Safety Bureau!", "Complete the third mission with [Lazar]", 5,
trigger = save_protect() && map_id() == map_publicsecuritybureau && lazar_story3())

achievement ("Companion Lazar", "Obtain your fourth full heart with [Lazar]", 5,
trigger = save_protect() && lazar_heart4max())

achievement ("Escape from the Secret Factory!", "Complete the fourth mission with [Lazar]", 5,
trigger = save_protect() && map_id() == map_factory && lazar_story4())

function vizor_hearts() => word(0xf7ff2e22+dword(0xe7b054))
function vizor_heart1max() => vizor_hearts() == 0x3e8 && prev(vizor_hearts()) < 0x3e8
function vizor_heart2max() => vizor_hearts() == 0x7d0 && prev(vizor_hearts()) < 0x7d0
function vizor_heart3max() => vizor_hearts() == 0xbb8 && prev(vizor_hearts()) < 0xbb8
function vizor_heart4max() => vizor_hearts() == 0xfa0 && prev(vizor_hearts()) < 0xfa0
function vizor_story() => word(0xf7ff2e34+dword(0xe7b054))
function vizor_story1() => vizor_story() == 2 && prev(vizor_story()) == 1
function vizor_story2() => vizor_story() == 3 && prev(vizor_story()) == 2
function vizor_story3() => vizor_story() == 4 && prev(vizor_story()) == 3
function vizor_story4() => vizor_story() == 5 && prev(vizor_story()) == 4

achievement ("Friendly Vizor", "Obtain your first full heart with [Vizor]", 5,
trigger = save_protect() && vizor_heart1max())

achievement ("A Bond Will Be Forged", "Complete the first mission with [Vizor]", 5,
trigger = save_protect() && map_id() == map_shoreline && vizor_story1())

achievement ("Familiar Vizor", "Obtain your second full heart with [Vizor]", 5,
trigger = save_protect() && vizor_heart2max())

achievement ("The Battle for Friendship", "Complete the second mission with [Vizor]", 5,
trigger = save_protect() && map_id() == map_shoreline && vizor_story2())

achievement ("Confidant Vizor", "Obtain your third full heart with [Vizor]", 5,
trigger = save_protect() && vizor_heart3max())

achievement ("Showdown with the Machine Emperors", "Complete the third mission with [Vizor]", 5,
trigger = save_protect() && map_id() == map_factory && vizor_story3())

achievement ("Companion Vizor", "Obtain your fourth full heart with [Vizor]", 5,
trigger = save_protect() && vizor_heart4max())

achievement ("Spinning A new Hope", "Complete the fourth mission with [Vizor]", 5,
trigger = save_protect() && map_id() == map_highway && vizor_story4())

function sherry_hearts() => word(0xf7ff2e62+dword(0xe7b054))
function sherry_heart1max() => sherry_hearts() == 0x3e8 && prev(sherry_hearts()) < 0x3e8
function sherry_heart2max() => sherry_hearts() == 0x7d0 && prev(sherry_hearts()) < 0x7d0
function sherry_heart3max() => sherry_hearts() == 0xbb8 && prev(sherry_hearts()) < 0xbb8
function sherry_heart4max() => sherry_hearts() == 0xfa0 && prev(sherry_hearts()) < 0xfa0
function sherry_story() => word(0xf7ff2e74+dword(0xe7b054))
function sherry_story1() => sherry_story() == 2 && prev(sherry_story()) == 1
function sherry_story2() => sherry_story() == 3 && prev(sherry_story()) == 2
function sherry_story3() => sherry_story() == 4 && prev(sherry_story()) == 3
function sherry_story4() => sherry_story() == 5 && prev(sherry_story()) == 4

achievement ("Friendly Sherry", "Obtain your first full heart with [Sherry LeBlanc]", 5,
trigger = save_protect() && sherry_heart1max())

achievement ("The Beautiful Avenger", "Complete the first mission with [Sherry LeBlanc]", 5,
trigger = save_protect() && map_id() == map_junkmarket && sherry_story1())

achievement ("Familiar Sherry", "Obtain your second full heart with [Sherry LeBlanc]", 5,
trigger = save_protect() && sherry_heart2max())

achievement ("The Ruthless Avenger", "Complete the second mission with [Sherry LeBlanc]", 5,
trigger = save_protect() && map_id() == map_shoreline && sherry_story2())

achievement ("Confidant Sherry", "Obtain your third full heart with [Sherry LeBlanc]", 5,
trigger = save_protect() && sherry_heart3max())

achievement ("The Tainted Avenger", "Complete the third mission with [Sherry LeBlanc]", 5,
trigger = save_protect() && map_id() == map_publicsecuritybureau && sherry_story3())

achievement ("Companion Sherry", "Obtain your fourth full heart with [Sherry LeBlanc]", 5,
trigger = save_protect() && sherry_heart4max())

achievement ("No Tomorrow for Vengeance", "Complete the fourth mission with [Sherry LeBlanc]", 5,
trigger = save_protect() && map_id() == map_shoreline && sherry_story4())

function kalin_hearts() => word(0xf7ff2ea2+dword(0xe7b054))
function kalin_heart1max() => kalin_hearts() == 0x3e8 && prev(kalin_hearts()) < 0x3e8
function kalin_heart2max() => kalin_hearts() == 0x7d0 && prev(kalin_hearts()) < 0x7d0
function kalin_heart3max() => kalin_hearts() == 0xbb8 && prev(kalin_hearts()) < 0xbb8
function kalin_heart4max() => kalin_hearts() == 0xfa0 && prev(kalin_hearts()) < 0xfa0
function kalin_story() => word(0xf7ff2eb4+dword(0xe7b054))
function kalin_story1() => kalin_story() == 2 && prev(kalin_story()) == 1
function kalin_story2() => kalin_story() == 3 && prev(kalin_story()) == 2
function kalin_story3() => kalin_story() == 4 && prev(kalin_story()) == 3
function kalin_story4() => kalin_story() == 5 && prev(kalin_story()) == 4

achievement ("Friendly Kalin", "Obtain your first full heart with [Kalin Kesseler]", 5,
trigger = save_protect() && kalin_heart1max())

achievement ("The Town of the Wandering Duelist", "Complete the first mission with [Kalin Kesseler]", 5,
trigger = save_protect() && map_id() == map_frontier && kalin_story1())

achievement ("Familiar Kalin", "Obtain your second full heart with [Kalin Kesseler]", 5,
trigger = save_protect() && kalin_heart2max())

achievement ("The Darkness Beyond Victory", "Complete the second mission with [Kalin Kesseler]", 5,
trigger = save_protect() && map_id() == map_frontier && kalin_story2())

achievement ("Confidant Kalin", "Obtain your third full heart with [Kalin Kesseler]", 5,
trigger = save_protect() && kalin_heart3max())

achievement ("Of Friends and Satisfaction Lost", "Complete the third mission with [Kalin Kesseler]", 5,
trigger = save_protect() && map_id() == map_frontier && kalin_story3())

achievement ("Companion Kalin", "Obtain your fourth full heart with [Kalin Kesseler]", 5,
trigger = save_protect() && kalin_heart4max())

achievement ("The Enforcers", "Complete the fourth mission with [Kalin Kesseler]", 5,
trigger = save_protect() && map_id() == map_shoreline && kalin_story4())

function primo_hearts() => word(0xf7ff2ee2+dword(0xe7b054))
function primo_heart1max() => primo_hearts() == 0x3e8 && prev(primo_hearts()) < 0x3e8
function primo_heart2max() => primo_hearts() == 0x7d0 && prev(primo_hearts()) < 0x7d0
function primo_heart3max() => primo_hearts() == 0xbb8 && prev(primo_hearts()) < 0xbb8
function primo_heart4max() => primo_hearts() == 0xfa0 && prev(primo_hearts()) < 0xfa0
function primo_story() => word(0xf7ff2ef4+dword(0xe7b054))
function primo_story1() => primo_story() == 2 && prev(primo_story()) == 1
function primo_story2() => primo_story() == 3 && prev(primo_story()) == 2
function primo_story3() => primo_story() == 4 && prev(primo_story()) == 3
function primo_story4() => primo_story() == 5 && prev(primo_story()) == 4

achievement ("Friendly Primo", "Obtain your first full heart with [Primo]", 5,
trigger = save_protect() && primo_heart1max())

achievement ("Stirrings of a Ghost", "Complete the first mission with [Primo]", 5,
trigger = save_protect() && map_id() == map_publicsecuritybureau && primo_story1())

achievement ("Familiar Primo", "Obtain your second full heart with [Primo]", 5,
trigger = save_protect() && primo_heart2max())

achievement ("The Bustling Coffee Shop", "Complete the second mission with [Primo]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && primo_story2())

achievement ("Confidant Primo", "Obtain your third full heart with [Primo]", 5,
trigger = save_protect() && primo_heart3max())

achievement ("The Puppet Master", "Complete the third mission with [Primo]", 5,
trigger = save_protect() && map_id() == map_factory && primo_story3())

achievement ("Companion Primo", "Obtain your fourth full heart with [Primo]", 5,
trigger = save_protect() && primo_heart4max())

achievement ("The Future of Ambition and Despair", "Complete the fourth mission with [Primo]", 5,
trigger = save_protect() && map_id() == map_highway && primo_story4())

function lester_hearts() => word(0xf7ff2f22+dword(0xe7b054))
function lester_heart1max() => lester_hearts() == 0x3e8 && prev(lester_hearts()) < 0x3e8
function lester_heart2max() => lester_hearts() == 0x7d0 && prev(lester_hearts()) < 0x7d0
function lester_heart3max() => lester_hearts() == 0xbb8 && prev(lester_hearts()) < 0xbb8
function lester_heart4max() => lester_hearts() == 0xfa0 && prev(lester_hearts()) < 0xfa0
function lester_story() => word(0xf7ff2f34+dword(0xe7b054))
function lester_story1() => lester_story() == 2 && prev(lester_story()) == 1
function lester_story2() => lester_story() == 3 && prev(lester_story()) == 2
function lester_story3() => lester_story() == 4 && prev(lester_story()) == 3
function lester_story4() => lester_story() == 5 && prev(lester_story()) == 4

achievement ("Friendly Lester", "Obtain your first full heart with [Lester]", 5,
trigger = save_protect() && lester_heart1max())

achievement ("Where There's Smoke, There's Fire", "Complete the first mission with [Lester]", 5,
trigger = save_protect() && map_id() == map_duelacademy && lester_story1())

achievement ("Familiar Lester", "Obtain your second full heart with [Lester]", 5,
trigger = save_protect() && lester_heart2max())

achievement ("The Future Can Aid the Present", "Complete the second mission with [Lester]", 5,
trigger = save_protect() && map_id() == map_combatlane && lester_story2())

achievement ("Confidant Lester", "Obtain your third full heart with [Lester]", 5,
trigger = save_protect() && lester_heart3max())

achievement ("Fortune and Misfortune, Hapiness and Woe", "Complete the third mission with [Lester]", 5,
trigger = save_protect() && map_id() == map_gearmill && lester_story3())

achievement ("Companion Lester", "Obtain your fourth full heart with [Lester]", 5,
trigger = save_protect() && lester_heart4max())

achievement ("Heart and Soul", "Complete the fourth mission with [Lester]", 5,
trigger = save_protect() && map_id() == map_outerrim && lester_story4())

function jakob_hearts() => word(0xf7ff2f62+dword(0xe7b054))
function jakob_heart1max() => jakob_hearts() == 0x3e8 && prev(jakob_hearts()) < 0x3e8
function jakob_heart2max() => jakob_hearts() == 0x7d0 && prev(jakob_hearts()) < 0x7d0
function jakob_heart3max() => jakob_hearts() == 0xbb8 && prev(jakob_hearts()) < 0xbb8
function jakob_heart4max() => jakob_hearts() == 0xfa0 && prev(jakob_hearts()) < 0xfa0
function jakob_story() => word(0xf7ff2f74+dword(0xe7b054))
function jakob_story1() => jakob_story() == 2 && prev(jakob_story()) == 1
function jakob_story2() => jakob_story() == 3 && prev(jakob_story()) == 2
function jakob_story3() => jakob_story() == 4 && prev(jakob_story()) == 3
function jakob_story4() => jakob_story() == 5 && prev(jakob_story()) == 4

achievement ("Friendly Jakob", "Obtain your first full heart with [Jakob]", 5,
trigger = save_protect() && jakob_heart1max())

achievement ("Surveillance", "Complete the first mission with [Jakob]", 5,
trigger = save_protect() && map_id() == map_fountainplaza && jakob_story1())

achievement ("Familiar Jakob", "Obtain your second full heart with [Jakob]", 5,
trigger = save_protect() && jakob_heart2max())

achievement ("Obstruction", "Complete the second mission with [Jakob]", 5,
trigger = save_protect() && map_id() == map_factory && jakob_story2())

achievement ("Confidant Jakob", "Obtain your third full heart with [Jakob]", 5,
trigger = save_protect() && jakob_heart3max())

achievement ("Correction", "Complete the third mission with [Jakob]", 5,
trigger = save_protect() && map_id() == map_highway && jakob_story3())

achievement ("Companion Jakob", "Obtain your fourth full heart with [Jakob]", 5,
trigger = save_protect() && jakob_heart4max())

achievement ("Punishment", "Complete the fourth mission with [Jakob]", 5,
trigger = save_protect() && map_id() == map_outerrim && jakob_story4())

function fake_jack_hearts() => word(0xf7ff2fa2+dword(0xe7b054))
function fake_jack_heart1max() => fake_jack_hearts() == 0x3e8 && prev(fake_jack_hearts()) < 0x3e8
function fake_jack_heart2max() => fake_jack_hearts() == 0x7d0 && prev(fake_jack_hearts()) < 0x7d0
function fake_jack_heart3max() => fake_jack_hearts() == 0xbb8 && prev(fake_jack_hearts()) < 0xbb8
function fake_jack_heart4max() => fake_jack_hearts() == 0xfa0 && prev(fake_jack_hearts()) < 0xfa0
function fake_jack_story() => word(0xf7ff2fb4+dword(0xe7b054))
function fake_jack_story1() => fake_jack_story() == 2 && prev(fake_jack_story()) == 1
function fake_jack_story2() => fake_jack_story() == 3 && prev(fake_jack_story()) == 2
function fake_jack_story3() => fake_jack_story() == 4 && prev(fake_jack_story()) == 3
function fake_jack_story4() => fake_jack_story() == 5 && prev(fake_jack_story()) == 4

achievement ("Friendly Jack (Fake)", "Obtain your first full heart with [Fake Jack Atlas]", 5,
trigger = save_protect() && fake_jack_heart1max())

achievement ("Opening of the Fortune Cup?!", "Complete the first mission with [Fake Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_stadium && fake_jack_story1())

achievement ("Familiar Jack (Fake)", "Obtain your second full heart with [Fake Jack Atlas]", 5,
trigger = save_protect() && fake_jack_heart2max())

achievement ("The Ancient Forest", "Complete the second mission with [Fake Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_stadium && fake_jack_story2())

achievement ("Confidant Jack (Fake)", "Obtain your third full heart with [Fake Jack Atlas]", 5,
trigger = save_protect() && fake_jack_heart3max())

achievement ("The Truth Revealed?!", "Complete the third mission with [Fake Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_stadium && fake_jack_story3())

achievement ("Companion Jack (Fake)", "Obtain your fourth full heart with [Fake Jack Atlas]", 5,
trigger = save_protect() && fake_jack_heart4max())

achievement ("The Fortune Cup Final?!", "Complete the fourth mission with [Fake Jack Atlas]", 5,
trigger = save_protect() && map_id() == map_stadium && fake_jack_story4())

function ryusei_hearts() => word(0xf7ff42a2+dword(0xe7b054))
function ryusei_heart1max() => ryusei_hearts() == 0x3e8 && prev(ryusei_hearts()) < 0x3e8
function ryusei_heart2max() => ryusei_hearts() == 0x7d0 && prev(ryusei_hearts()) < 0x7d0
function ryusei_heart3max() => ryusei_hearts() == 0xbb8 && prev(ryusei_hearts()) < 0xbb8
function ryusei_heart4max() => ryusei_hearts() == 0xfa0 && prev(ryusei_hearts()) < 0xfa0
function ryusei_story() => word(0xf7ff42b4+dword(0xe7b054))
function ryusei_story1() => ryusei_story() == 2 && prev(ryusei_story()) == 1
function ryusei_story2() => ryusei_story() == 3 && prev(ryusei_story()) == 2
function ryusei_story3() => ryusei_story() == 4 && prev(ryusei_story()) == 3
function ryusei_story4() => ryusei_story() == 5 && prev(ryusei_story()) == 4

achievement ("Friendly Ryusei", "Obtain your first full heart with [Ryusei]", 5,
trigger = save_protect() && ryusei_heart1max())

achievement ("Preliminaries Ryusei", "Complete the first mission with [Ryusei]", 5,
trigger = save_protect() && map_id() == map_combatlane && ryusei_story1())

achievement ("Familiar Ryusei", "Obtain your second full heart with [Ryusei]", 5,
trigger = save_protect() && ryusei_heart2max())

achievement ("Quarter-finals Ryusei", "Complete the second mission with [Ryusei]", 5,
trigger = save_protect() && map_id() == map_combatlane && ryusei_story2())

achievement ("Confidant Ryusei", "Obtain your third full heart with [Ryusei]", 5,
trigger = save_protect() && ryusei_heart3max())

achievement ("Semi-finals Ryusei", "Complete the third mission with [Ryusei]", 5,
trigger = save_protect() && map_id() == map_combatlane && ryusei_story3())

achievement ("Companion Ryusei", "Obtain your fourth full heart with [Ryusei]", 5,
trigger = save_protect() && ryusei_heart4max())

achievement ("Finals Ryusei", "Complete the fourth mission with [Ryusei]", 5,
trigger = save_protect() && map_id() == map_combatlane && ryusei_story4())

function dueluka_hearts() => word(0xf7ff4362+dword(0xe7b054))
function dueluka_heart1max() => dueluka_hearts() == 0x3e8 && prev(dueluka_hearts()) < 0x3e8
function dueluka_heart2max() => dueluka_hearts() == 0x7d0 && prev(dueluka_hearts()) < 0x7d0
function dueluka_heart3max() => dueluka_hearts() == 0xbb8 && prev(dueluka_hearts()) < 0xbb8
function dueluka_heart4max() => dueluka_hearts() == 0xfa0 && prev(dueluka_hearts()) < 0xfa0
function dueluka_story() => word(0xf7ff4374+dword(0xe7b054))
function dueluka_story1() => dueluka_story() == 2 && prev(dueluka_story()) == 1
function dueluka_story2() => dueluka_story() == 3 && prev(dueluka_story()) == 2
function dueluka_story3() => dueluka_story() == 4 && prev(dueluka_story()) == 3
function dueluka_story4() => dueluka_story() == 5 && prev(dueluka_story()) == 4

achievement ("Friendly Dueluka", "Obtain your first full heart with [Dueluka]", 5,
trigger = save_protect() && dueluka_heart1max())

achievement ("Preliminaries Dueluka", "Complete the first mission with [Dueluka]", 5,
trigger = save_protect() && map_id() == map_combatlane && dueluka_story1())

achievement ("Familiar Dueluka", "Obtain your second full heart with [Dueluka]", 5,
trigger = save_protect() && dueluka_heart2max())

achievement ("Quarter-finals Dueluka", "Complete the second mission with [Dueluka]", 5,
trigger = save_protect() && map_id() == map_combatlane && dueluka_story2())

achievement ("Confidant Dueluka", "Obtain your third full heart with [Dueluka]", 5,
trigger = save_protect() && dueluka_heart3max())

achievement ("Semi-finals Dueluka", "Complete the third mission with [Dueluka]", 5,
trigger = save_protect() && map_id() == map_combatlane && dueluka_story3())

achievement ("Companion Dueluka", "Obtain your fourth full heart with [Dueluka]", 5,
trigger = save_protect() && dueluka_heart4max())

achievement ("Finals Dueluka", "Complete the fourth mission with [Dueluka]", 5,
trigger = save_protect() && map_id() == map_combatlane && dueluka_story4())

function duelua_hearts() => word(0xf7ff4322+dword(0xe7b054))
function duelua_heart1max() => duelua_hearts() == 0x3e8 && prev(duelua_hearts()) < 0x3e8
function duelua_heart2max() => duelua_hearts() == 0x7d0 && prev(duelua_hearts()) < 0x7d0
function duelua_heart3max() => duelua_hearts() == 0xbb8 && prev(duelua_hearts()) < 0xbb8
function duelua_heart4max() => duelua_hearts() == 0xfa0 && prev(duelua_hearts()) < 0xfa0
function duelua_story() => word(0xf7ff4334+dword(0xe7b054))
function duelua_story1() => duelua_story() == 2 && prev(duelua_story()) == 1
function duelua_story2() => duelua_story() == 3 && prev(duelua_story()) == 2
function duelua_story3() => duelua_story() == 4 && prev(duelua_story()) == 3
function duelua_story4() => duelua_story() == 5 && prev(duelua_story()) == 4

achievement ("Friendly Duelua", "Obtain your first full heart with [Duelua]", 5,
trigger = save_protect() && duelua_heart1max())

achievement ("Preliminaries Duelua", "Complete the first mission with [Duelua]", 5,
trigger = save_protect() && map_id() == map_combatlane && duelua_story1())

achievement ("Familiar Duelua", "Obtain your second full heart with [Dueluka]", 5,
trigger = save_protect() && duelua_heart2max())

achievement ("Quarter-finals Duelua", "Complete the second mission with [Duelua]", 5,
trigger = save_protect() && map_id() == map_combatlane && duelua_story2())

achievement ("Confidant Duelua", "Obtain your third full heart with [Duelua]", 5,
trigger = save_protect() && duelua_heart3max())

achievement ("Semi-finals Duelua", "Complete the third mission with [Duelua]", 5,
trigger = save_protect() && map_id() == map_combatlane && duelua_story3())

achievement ("Companion Duelua", "Obtain your fourth full heart with [Duelua]", 5,
trigger = save_protect() && duelua_heart4max())

achievement ("Finals Duelua", "Complete the fourth mission with [Duelua]", 5,
trigger = save_protect() && map_id() == map_combatlane && duelua_story4())

function jumbo_hearts() => word(0xf7ff4262+dword(0xe7b054))
function jumbo_heart1max() => jumbo_hearts() == 0x3e8 && prev(jumbo_hearts()) < 0x3e8
function jumbo_heart2max() => jumbo_hearts() == 0x7d0 && prev(jumbo_hearts()) < 0x7d0
function jumbo_heart3max() => jumbo_hearts() == 0xbb8 && prev(jumbo_hearts()) < 0xbb8
function jumbo_heart4max() => jumbo_hearts() == 0xfa0 && prev(jumbo_hearts()) < 0xfa0
function jumbo_story() => word(0xf7ff4274+dword(0xe7b054))
function jumbo_story1() => jumbo_story() == 2 && prev(jumbo_story()) == 1
function jumbo_story2() => jumbo_story() == 3 && prev(jumbo_story()) == 2
function jumbo_story3() => jumbo_story() == 4 && prev(jumbo_story()) == 3
function jumbo_story4() => jumbo_story() == 5 && prev(jumbo_story()) == 4

achievement ("Friendly Jumbo", "Obtain your first full heart with [Jumbo]", 5,
trigger = save_protect() && jumbo_heart1max())

achievement ("Preliminaries Jumbo", "Complete the first mission with [Jumbo]", 5,
trigger = save_protect() && map_id() == map_combatlane && jumbo_story1())

achievement ("Familiar Jumbo", "Obtain your second full heart with [Jumbo]", 5,
trigger = save_protect() && jumbo_heart2max())

achievement ("Quarter-finals Jumbo", "Complete the second mission with [Jumbo]", 5,
trigger = save_protect() && map_id() == map_combatlane && jumbo_story2())

achievement ("Confidant Jumbo", "Obtain your third full heart with [Jumbo]", 5,
trigger = save_protect() && jumbo_heart3max())

achievement ("Semi-finals Jumbo", "Complete the third mission with [Jumbo]", 5,
trigger = save_protect() && map_id() == map_combatlane && jumbo_story3())

achievement ("Companion Jumbo", "Obtain your fourth full heart with [Jumbo]", 5,
trigger = save_protect() && jumbo_heart4max())

achievement ("Finals Jumbo", "Complete the fourth mission with [Jumbo]", 5,
trigger = save_protect() && map_id() == map_combatlane && jumbo_story4())

function nanosa_hearts() => word(0xf7ff43a2+dword(0xe7b054))
function nanosa_heart1max() => nanosa_hearts() == 0x3e8 && prev(nanosa_hearts()) < 0x3e8
function nanosa_heart2max() => nanosa_hearts() == 0x7d0 && prev(nanosa_hearts()) < 0x7d0
function nanosa_heart3max() => nanosa_hearts() == 0xbb8 && prev(nanosa_hearts()) < 0xbb8
function nanosa_heart4max() => nanosa_hearts() == 0xfa0 && prev(nanosa_hearts()) < 0xfa0
function nanosa_story() => word(0xf7ff43b4+dword(0xe7b054))
function nanosa_story1() => nanosa_story() == 2 && prev(nanosa_story()) == 1
function nanosa_story2() => nanosa_story() == 3 && prev(nanosa_story()) == 2
function nanosa_story3() => nanosa_story() == 4 && prev(nanosa_story()) == 3
function nanosa_story4() => nanosa_story() == 5 && prev(nanosa_story()) == 4

achievement ("Friendly Nanosa", "Obtain your first full heart with [Nanosa]", 5,
trigger = save_protect() && nanosa_heart1max())

achievement ("Preliminaries Nanosa", "Complete the first mission with [Nanosa]", 5,
trigger = save_protect() && map_id() == map_combatlane && nanosa_story1())

achievement ("Familiar Nanosa", "Obtain your second full heart with [Nanosa]", 5,
trigger = save_protect() && nanosa_heart2max())

achievement ("Quarter-finals Nanosa", "Complete the second mission with [Nanosa]", 5,
trigger = save_protect() && map_id() == map_combatlane && nanosa_story2())

achievement ("Confidant Nanosa", "Obtain your third full heart with [Nanosa]", 5,
trigger = save_protect() && nanosa_heart3max())

achievement ("Semi-finals Nanosa", "Complete the third mission with [Nanosa]", 5,
trigger = save_protect() && map_id() == map_combatlane && nanosa_story3())

achievement ("Companion Nanosa", "Obtain your fourth full heart with [Nanosa]", 5,
trigger = save_protect() && nanosa_heart4max())

achievement ("Finals Nanosa", "Complete the fourth mission with [Nanosa]", 5,
trigger = save_protect() && map_id() == map_combatlane && nanosa_story4())

function king_jyaku_hearts() => word(0xf7ff42e2+dword(0xe7b054))
function king_jyaku_heart1max() => king_jyaku_hearts() == 0x3e8 && prev(king_jyaku_hearts()) < 0x3e8
function king_jyaku_heart2max() => king_jyaku_hearts() == 0x7d0 && prev(king_jyaku_hearts()) < 0x7d0
function king_jyaku_heart3max() => king_jyaku_hearts() == 0xbb8 && prev(king_jyaku_hearts()) < 0xbb8
function king_jyaku_heart4max() => king_jyaku_hearts() == 0xfa0 && prev(king_jyaku_hearts()) < 0xfa0
function king_jyaku_story() => word(0xf7ff42f4+dword(0xe7b054))
function king_jyaku_story1() => king_jyaku_story() == 2 && prev(king_jyaku_story()) == 1
function king_jyaku_story2() => king_jyaku_story() == 3 && prev(king_jyaku_story()) == 2
function king_jyaku_story3() => king_jyaku_story() == 4 && prev(king_jyaku_story()) == 3
function king_jyaku_story4() => king_jyaku_story() == 5 && prev(king_jyaku_story()) == 4

achievement ("Friendly King Jyaku", "Obtain your first full heart with [King Jyaku]", 5,
trigger = save_protect() && king_jyaku_heart1max())

achievement ("Preliminaries King Jyaku", "Complete the first mission with [King Jyaku]", 5,
trigger = save_protect() && map_id() == map_combatlane && king_jyaku_story1())

achievement ("Familiar King Jyaku", "Obtain your second full heart with [King Jyaku]", 5,
trigger = save_protect() && king_jyaku_heart2max())

achievement ("Quarter-finals King Jyaku", "Complete the second mission with [King Jyaku]", 5,
trigger = save_protect() && map_id() == map_combatlane && king_jyaku_story2())

achievement ("Confidant King Jyaku", "Obtain your third full heart with [King Jyaku]", 5,
trigger = save_protect() && king_jyaku_heart3max())

achievement ("Semi-finals King Jyaku", "Complete the third mission with [King Jyaku]", 5,
trigger = save_protect() && map_id() == map_combatlane && king_jyaku_story3())

achievement ("Companion King Jyaku", "Obtain your fourth full heart with [King Jyaku]", 5,
trigger = save_protect() && king_jyaku_heart4max())

achievement ("Finals King Jyaku", "Complete the fourth mission with [King Jyaku]", 5,
trigger = save_protect() && map_id() == map_combatlane && king_jyaku_story4())

//Extra Duelist 18-83 wins address
function duelist_18() => word(0xF7FF5254+dword(0xe7b054))/word(0xF7FF5254)
function duelist_19() => word(0xF7FF525C+dword(0xe7b054))/word(0xF7FF525C)
function duelist_20() => word(0xF7FF5264+dword(0xe7b054))/word(0xF7FF5264)
function duelist_21() => word(0xF7FF526C+dword(0xe7b054))/word(0xF7FF526C)
function duelist_22() => word(0xF7FF5274+dword(0xe7b054))/word(0xF7FF5274)
function duelist_23() => word(0xF7FF527C+dword(0xe7b054))/word(0xF7FF527C)
function duelist_24() => word(0xF7FF5284+dword(0xe7b054))/word(0xF7FF5284)
function duelist_25() => word(0xF7FF528C+dword(0xe7b054))/word(0xF7FF528C)
function duelist_26() => word(0xF7FF5294+dword(0xe7b054))/word(0xF7FF5294)
function duelist_27() => word(0xF7FF529C+dword(0xe7b054))/word(0xF7FF529C)
function duelist_28() => word(0xF7FF52A4+dword(0xe7b054))/word(0xF7FF52A4)
function duelist_29() => word(0xF7FF52AC+dword(0xe7b054))/word(0xF7FF52AC)
function duelist_30() => word(0xF7FF52B4+dword(0xe7b054))/word(0xF7FF52B4)
function duelist_31() => word(0xF7FF52BC+dword(0xe7b054))/word(0xF7FF52BC)
function duelist_32() => word(0xF7FF52C4+dword(0xe7b054))/word(0xF7FF52C4)
function duelist_33() => word(0xF7FF52CC+dword(0xe7b054))/word(0xF7FF52CC)
function duelist_34() => word(0xF7FF52D4+dword(0xe7b054))/word(0xF7FF52D4)
function duelist_35() => word(0xF7FF52DC+dword(0xe7b054))/word(0xF7FF52DC)
function duelist_36() => word(0xF7FF52E4+dword(0xe7b054))/word(0xF7FF52E4)
function duelist_37() => word(0xF7FF52EC+dword(0xe7b054))/word(0xF7FF52EC)
function duelist_38() => word(0xF7FF52F4+dword(0xe7b054))/word(0xF7FF52F4)
function duelist_39() => word(0xF7FF52FC+dword(0xe7b054))/word(0xF7FF52FC)
function duelist_40() => word(0xF7FF5304+dword(0xe7b054))/word(0xF7FF5304)
function duelist_41() => word(0xF7FF530C+dword(0xe7b054))/word(0xF7FF530C)
function duelist_42() => word(0xF7FF5314+dword(0xe7b054))/word(0xF7FF5314)
function duelist_43() => word(0xF7FF531C+dword(0xe7b054))/word(0xF7FF531C)
function duelist_44() => word(0xF7FF5324+dword(0xe7b054))/word(0xF7FF5324)
function duelist_45() => word(0xF7FF532C+dword(0xe7b054))/word(0xF7FF532C)
function duelist_46() => word(0xF7FF5334+dword(0xe7b054))/word(0xF7FF5334)
function duelist_47() => word(0xF7FF533C+dword(0xe7b054))/word(0xF7FF533C)
function duelist_48() => word(0xF7FF5344+dword(0xe7b054))/word(0xF7FF5344)
function duelist_49() => word(0xF7FF534C+dword(0xe7b054))/word(0xF7FF534C)
function duelist_50() => word(0xF7FF5354+dword(0xe7b054))/word(0xF7FF5354)
function duelist_51() => word(0xF7FF535C+dword(0xe7b054))/word(0xF7FF535C)
function duelist_52() => word(0xF7FF5364+dword(0xe7b054))/word(0xF7FF5364)
function duelist_53() => word(0xF7FF536C+dword(0xe7b054))/word(0xF7FF536C)
function duelist_54() => word(0xF7FF5374+dword(0xe7b054))/word(0xF7FF5374)
function duelist_55() => word(0xF7FF537C+dword(0xe7b054))/word(0xF7FF537C)
function duelist_56() => word(0xF7FF5384+dword(0xe7b054))/word(0xF7FF5384)
function duelist_57() => word(0xF7FF538C+dword(0xe7b054))/word(0xF7FF538C)
function duelist_58() => word(0xF7FF5394+dword(0xe7b054))/word(0xF7FF5394)
function duelist_59() => word(0xF7FF539C+dword(0xe7b054))/word(0xF7FF539C)
function duelist_60() => word(0xF7FF53A4+dword(0xe7b054))/word(0xF7FF53A4)
function duelist_61() => word(0xF7FF53AC+dword(0xe7b054))/word(0xF7FF53AC)
function duelist_62() => word(0xF7FF53B4+dword(0xe7b054))/word(0xF7FF53B4)
function duelist_63() => word(0xF7FF53BC+dword(0xe7b054))/word(0xF7FF53BC)
function duelist_64() => word(0xF7FF53C4+dword(0xe7b054))/word(0xF7FF53C4)
function duelist_65() => word(0xF7FF53CC+dword(0xe7b054))/word(0xF7FF53CC)
function duelist_66() => word(0xF7FF53D4+dword(0xe7b054))/word(0xF7FF53D4)
function duelist_67() => word(0xF7FF53DC+dword(0xe7b054))/word(0xF7FF53DC)
function duelist_68() => word(0xF7FF53E4+dword(0xe7b054))/word(0xF7FF53E4)
function duelist_69() => word(0xF7FF53EC+dword(0xe7b054))/word(0xF7FF53EC)
function duelist_70() => word(0xF7FF53F4+dword(0xe7b054))/word(0xF7FF53F4)
function duelist_71() => word(0xF7FF53FC+dword(0xe7b054))/word(0xF7FF53FC)
function duelist_72() => word(0xF7FF5404+dword(0xe7b054))/word(0xF7FF5404)
function duelist_73() => word(0xF7FF540C+dword(0xe7b054))/word(0xF7FF540C)
function duelist_74() => word(0xF7FF5414+dword(0xe7b054))/word(0xF7FF5414)
function duelist_75() => word(0xF7FF541C+dword(0xe7b054))/word(0xF7FF541C)
function duelist_76() => word(0xF7FF5424+dword(0xe7b054))/word(0xF7FF5424)
function duelist_77() => word(0xF7FF542C+dword(0xe7b054))/word(0xF7FF542C)
function duelist_78() => word(0xF7FF5434+dword(0xe7b054))/word(0xF7FF5434)
function duelist_79() => word(0xF7FF543C+dword(0xe7b054))/word(0xF7FF543C)
function duelist_80() => word(0xF7FF5444+dword(0xe7b054))/word(0xF7FF5444)
function duelist_81() => word(0xF7FF544C+dword(0xe7b054))/word(0xF7FF544C)
function duelist_82() => word(0xF7FF5454+dword(0xe7b054))/word(0xF7FF5454)
function duelist_83() => word(0xF7FF545C+dword(0xe7b054))/word(0xF7FF545C)

function duel_extras() => duelist_18()+duelist_19()+duelist_20()+duelist_21()+duelist_22()+duelist_23()+duelist_24()+duelist_25()+duelist_26()+
                          duelist_27()+duelist_28()+duelist_29()+duelist_30()+duelist_31()+duelist_32()+duelist_33()+duelist_34()+duelist_35()+
                          duelist_36()+duelist_37()+duelist_38()+duelist_39()+duelist_40()+duelist_41()+duelist_42()+duelist_43()+duelist_44()+
                          duelist_45()+duelist_46()+duelist_47()+duelist_48()+duelist_49()+duelist_50()+duelist_51()+duelist_52()+duelist_53()+
                          duelist_54()+duelist_55()+duelist_56()+duelist_57()+duelist_58()+duelist_59()+duelist_60()+duelist_61()+duelist_62()+
                          duelist_63()+duelist_64()+duelist_65()+duelist_66()+duelist_67()+duelist_68()+duelist_69()+duelist_70()+duelist_71()+
                          duelist_72()+duelist_73()+duelist_74()+duelist_75()+duelist_76()+duelist_77()+duelist_78()+duelist_79()+duelist_80()+
                          duelist_81()+duelist_82()+duelist_83()

achievement ("World Challenger", "Defeat all of the Duelist's #18-83 at least once", 25,
trigger = measured(duel_extras() == 66) && prev(duel_extras()) != 66)

function ch_1() => byte(0xF7FF575C+dword(0xe7b054))/byte(0xF7FF575C)
achievement ("Slugger", "[Story Mode] Caused 10,000 or more points of battle damage during a duel", 5, 
trigger = save_protect_ch() && ch_1() == 1 && prev(ch_1()) == 0)

function ch_2() => byte(0xF7FF575D+dword(0xe7b054))/byte(0xF7FF575D)
achievement ("Rebounder", "[Story Mode] Caused 4,000 or more points of deflected battle damage during a duel", 5, 
trigger = save_protect_ch() && ch_2() == 1 && prev(ch_2()) == 0)

function ch_3() => byte(0xF7FF575E+dword(0xe7b054))/byte(0xF7FF575E)
achievement ("Hard Hitting", "[Story Mode] Caused 20,000 or more points of battle damage during a duel", 5, 
trigger = save_protect_ch() && ch_3() == 1 && prev(ch_3()) == 0)

function ch_4() => byte(0xF7FF575F+dword(0xe7b054))/byte(0xF7FF575F)
achievement ("Heavy Hitter", "[Story Mode] Caused 50,000 or more points of battle damage during a duel", 10, 
trigger = save_protect_ch() && ch_4() == 1 && prev(ch_4()) == 0)

function ch_5() => byte(0xF7FF5760+dword(0xe7b054))/byte(0xF7FF5760)
achievement ("Assassination", "[Story Mode] Destroyed 20 of your opponent's monsters in battle during a duel", 5, 
trigger = save_protect_ch() && ch_5() == 1 && prev(ch_5()) == 0)

function ch_6() => byte(0xF7FF5761+dword(0xe7b054))/byte(0xF7FF5761)
achievement ("Destroyer", "[Story Mode] Destroyed 30 of your opponent's monsters in battle during a duel", 5, 
trigger = save_protect_ch() && ch_6() == 1 && prev(ch_6()) == 0)

function ch_7() => byte(0xF7FF5762+dword(0xe7b054))/byte(0xF7FF5762)
achievement ("Remover", "[Story Mode] Removed 10 of your opponent's monsters from play using effects during a duel", 5, 
trigger = save_protect_ch() && ch_7() == 1 && prev(ch_7()) == 0)

function ch_8() => byte(0xF7FF5763+dword(0xe7b054))/byte(0xF7FF5763) 
achievement ("Defensive ", "[Story Mode] Destroyed 10 or more monsters in 1 duel with defensive victories", 5, 
trigger = save_protect_ch() && ch_8() == 1 && prev(ch_8()) == 0)

function ch_9() => byte(0xF7FF5764+dword(0xe7b054))/byte(0xF7FF5764) 
achievement ("Normalized", "[Story Mode] Normal Summoned 10 monsters during a duel", 5, 
trigger = save_protect_ch() && ch_9() == 1 && prev(ch_9()) == 0)

function ch_10() => byte(0xF7FF5765+dword(0xe7b054))/byte(0xF7FF5765) 
achievement ("Flippist", "[Story Mode] Performed 10 Flip Summons during a duel", 5, 
trigger = save_protect_ch() && ch_10() == 1 && prev(ch_10()) == 0)

function ch_11() => byte(0xF7FF5766+dword(0xe7b054))/byte(0xF7FF5766)
achievement ("Fusionist", "[Story Mode] Preformed 10 Fusion Summons during a duel", 5, 
trigger = save_protect_ch() && ch_11() == 1 && prev(ch_11()) == 0)

function ch_12() => byte(0xF7FF5767+dword(0xe7b054))/byte(0xF7FF5767)
achievement ("Ritualist", "[Story Mode] Preformed 10 Ritual Summons during a duel", 5, 
trigger = save_protect_ch() && ch_12() == 1 && prev(ch_12()) == 0)

function ch_13() => byte(0xF7FF5768+dword(0xe7b054))/byte(0xF7FF5768)
achievement ("Specialist", "[Story Mode] Used Special Summons to summon 20 or more monsters during a duel", 10, 
trigger = save_protect_ch() && ch_13() == 1 && prev(ch_13()) == 0)

function ch_14() => byte(0xF7FF5769+dword(0xe7b054))/byte(0xF7FF5769)
achievement ("Special Tokens", "[Story Mode] Special Summoned 15 or more Tokens during a duel", 5, 
trigger = save_protect_ch() && ch_14() == 1 && prev(ch_14()) == 0)

function ch_15() => byte(0xF7FF576A+dword(0xe7b054))/byte(0xF7FF576A)
achievement ("Multi Union", "[Story Mode] Equipped 5 Union monsters during a duel", 10, 
trigger = save_protect_ch() && ch_15() == 1 && prev(ch_15()) == 0)

function ch_16() => byte(0xF7FF576B+dword(0xe7b054))/byte(0xF7FF576B)
achievement ("Toon's Direct", "[Story Mode] Caused 8,000 or points of direct damage with Toon monsters during a duel", 10, 
trigger = save_protect_ch() && ch_16() == 1 && prev(ch_16()) == 0)

function ch_17() => byte(0xF7FF576C+dword(0xe7b054))/byte(0xF7FF576C)
achievement ("Spell Casting", "[Story Mode] Used Spell Cards 20 times during a duel", 5, 
trigger = save_protect_ch() && ch_17() == 1 && prev(ch_17()) == 0)

function ch_18() => byte(0xF7FF576D+dword(0xe7b054))/byte(0xF7FF576D)
achievement ("Quick Spells", "[Story Mode] Used Quick-Play Spell Cards 10 times in your opponent's turn during a duel", 5, 
trigger = save_protect_ch() && ch_18() == 1 && prev(ch_18()) == 0)

function ch_19() => byte(0xF7FF576E+dword(0xe7b054))/byte(0xF7FF576E)
achievement ("Trap Placements", "[Story Mode] Activated 10 Trap Cards during a duel", 5, 
trigger = save_protect_ch() && ch_19() == 1 && prev(ch_19()) == 0)

function ch_20() => byte(0xF7FF576F+dword(0xe7b054))/byte(0xF7FF576F)
achievement ("Reversal", "[Story Mode] Countered your opponent's Spells, Traps, effects, Attacks and Summons 10 times during a duel", 5, 
trigger = save_protect_ch() && ch_20() == 1 && prev(ch_20()) == 0)

function ch_21() => byte(0xF7FF5770+dword(0xe7b054))/byte(0xF7FF5770)
achievement ("Change of Heart", "[Story Mode] Took control of your opponent's monsters 10 times during a duel", 5, 
trigger = save_protect_ch() && ch_21() == 1 && prev(ch_21()) == 0)

function ch_22() => byte(0xF7FF5771+dword(0xe7b054))/byte(0xF7FF5771)
achievement ("Chain-Link", "[Story Mode] Formed a chain of 5 or more chain links during a duel", 25, 
trigger = save_protect_ch() && ch_22() == 1 && prev(ch_22()) == 0)

function ch_23() => byte(0xF7FF5772+dword(0xe7b054))/byte(0xF7FF5772)
achievement ("Spell Counter", "[Story Mode] Used 10 or more Spell Counters during a duel", 5, 
trigger = save_protect_ch() && ch_23() == 1 && prev(ch_23()) == 0)

function ch_24() => byte(0xF7FF5773+dword(0xe7b054))/byte(0xF7FF5773)
achievement ("Throw Away", "[Story Mode] Made your opponent discard 20 or more cards from their hands", 5, 
trigger = save_protect_ch() && ch_24() == 1 && prev(ch_24()) == 0)

function ch_25() => byte(0xF7FF5774+dword(0xe7b054))/byte(0xF7FF5774)
achievement ("Healer", "[Story Mode] Restored 20,000 or more Life Points during a duel", 10, 
trigger = save_protect_ch() && ch_25() == 1 && prev(ch_25()) == 0)

function ch_26() => byte(0xF7FF5775+dword(0xe7b054))/byte(0xF7FF5775)
achievement ("Victory", "[Story Mode] Won the Match", 5, 
trigger = save_protect_ch() && ch_26() == 1 && prev(ch_26()) == 0)

function ch_27() => byte(0xF7FF5776+dword(0xe7b054))/byte(0xF7FF5776)
achievement ("Draw", "[Story Mode] Ended the duel in a draw", 5, 
trigger = save_protect_ch() && ch_27() == 1 && prev(ch_27()) == 0)

function ch_28() => byte(0xF7FF5777+dword(0xe7b054))/byte(0xF7FF5777)
achievement ("Damageless", "[Story Mode] Won the duel without taking any damage", 25, 
trigger = save_protect_ch() && ch_28() == 1 && prev(ch_28()) == 0)

function ch_29() => byte(0xF7FF5778+dword(0xe7b054))/byte(0xF7FF5778)
achievement ("Single Turn Victory", "[Story Mode] Caused 8,000 points or more of damage during turn and won the duel", 5, 
trigger = save_protect_ch() && ch_29() == 1 && prev(ch_29()) == 0)

function ch_30() => byte(0xF7FF5779+dword(0xe7b054))/byte(0xF7FF5779)
achievement ("Single Attack Victory", "[Story Mode] Caused 8,000 points or more of damage with a single attack or effect and won the duel", 10, 
trigger = save_protect_ch() && ch_30() == 1 && prev(ch_30()) == 0)

function ch_31() => byte(0xF7FF577A+dword(0xe7b054))/byte(0xF7FF577A)
achievement ("Out of Luck", "[Story Mode] Made your opponent run out of cards and won the duel", 25, 
trigger = save_protect_ch() && ch_31() == 1 && prev(ch_31()) == 0)

function ch_32() => byte(0xF7FF577B+dword(0xe7b054))/byte(0xF7FF577B)
achievement ("Lucky 7", "[Story Mode] Won within 7 turns", 5, 
trigger = save_protect_ch() && ch_32() == 1 && prev(ch_32()) == 0)

function ch_33() => byte(0xF7FF577C+dword(0xe7b054))/byte(0xF7FF577C)
achievement ("Fast Win", "[Story Mode] Won within 5 turns", 10, 
trigger = save_protect_ch() && ch_33() == 1 && prev(ch_33()) == 0)

function ch_34() => byte(0xF7FF577D+dword(0xe7b054))/byte(0xF7FF577D)
achievement ("Quick Win", "[Story Mode] Won within 3 turns", 25, 
trigger = save_protect_ch() && ch_34() == 1 && prev(ch_34()) == 0)

function ch_35() => byte(0xF7FF577E+dword(0xe7b054))/byte(0xF7FF577E)
achievement ("Defensive Victory", "[Story Mode] Won during your opponent's turn", 5, 
trigger = save_protect_ch() && ch_35() == 1 && prev(ch_35()) == 0)

function ch_36() => byte(0xF7FF577F+dword(0xe7b054))/byte(0xF7FF577F)
achievement ("Exodia the Forbidden One", "[Story Mode] Won the duel using the effects of [Exodia the Forbidden One]", 10, 
trigger = save_protect_ch() && ch_36() == 1 && prev(ch_36()) == 0)

function ch_37() => byte(0xF7FF5780+dword(0xe7b054))/byte(0xF7FF5780)
achievement ("Destiny Board", "[Story Mode] Won the duel using the effects of [Destiny Board]", 10, 
trigger = save_protect_ch() && ch_37() == 1 && prev(ch_37()) == 0)

function ch_38() => byte(0xF7FF5781+dword(0xe7b054))/byte(0xF7FF5781)
achievement ("Final Countdown", "[Story Mode] Won the duel using the effects of [Final Countdown]", 10, 
trigger = save_protect_ch() && ch_38() == 1 && prev(ch_38()) == 0)

function ch_39() => byte(0xF7FF5782+dword(0xe7b054))/byte(0xF7FF5782)
achievement ("Odd Victory", "[Story Mode] Won using a card with a match-winning effect", 10, 
trigger = save_protect_ch() && ch_39() == 1 && prev(ch_39()) == 0)

function ch_40() => byte(0xF7FF5783+dword(0xe7b054))/byte(0xF7FF5783)
achievement ("Yata-Garasu", "[Story Mode] Won with the [Yata-Garasu] lock", 10, 
trigger = save_protect_ch() && ch_40() == 1 && prev(ch_40()) == 0)

function ch_41() => byte(0xF7FF5784+dword(0xe7b054))/byte(0xF7FF5784)
achievement ("Vennominaga", "[Story Mode] Won with [Vennominaga the Deity of Poisonous Snakes] effect", 10, 
trigger = save_protect_ch() && ch_41() == 1 && prev(ch_41()) == 0)

function ch_42() => byte(0xF7FF5785+dword(0xe7b054))/byte(0xF7FF5785)
achievement ("Exodius", "[Story Mode] Won with [Exodius the Ultimate Forbidden Lord] effect", 10,
trigger = save_protect_ch() && ch_42() == 1 && prev(ch_42()) == 0)

function ch_43() => byte(0xF7FF5786+dword(0xe7b054))/byte(0xF7FF5786)
achievement ("Last Turn", "[Story Mode] Won with Last Turn] effect", 10, 
trigger = save_protect_ch() && ch_43() == 1 && prev(ch_43()) == 0)

function ch_44() => byte(0xF7FF5787+dword(0xe7b054))/byte(0xF7FF5787)
achievement ("Skull Servant", "[Story Mode] Defeated your opponent with an attack from [Skull Servant]", 5, 
trigger = save_protect_ch() && ch_44() == 1 && prev(ch_44()) == 0)

function ch_45() => byte(0xF7FF5788+dword(0xe7b054))/byte(0xF7FF5788)
achievement ("Sparks", "[Story Mode] Finished with [Sparks] effect", 5, 
trigger = save_protect_ch() && ch_45() == 1 && prev(ch_45()) == 0)

function ch_46() => byte(0xF7FF5789+dword(0xe7b054))/byte(0xF7FF5789)
achievement ("Slash Draw", "[Story Mode] Finished with [Slash Draw] effect", 5, 
trigger = save_protect_ch() && ch_46() == 1 && prev(ch_46()) == 0)

function ch_47() => byte(0xF7FF578A+dword(0xe7b054))/byte(0xF7FF578A)
achievement ("Ojama Delta Hurricane", "[Story Mode] Successfully activated and maintained the effect of [Ojama Delta Hurricane!!] and won the duel", 10, 
trigger = save_protect_ch() && ch_47() == 1 && prev(ch_47()) == 0)

function ch_48() => byte(0xF7FF578B+dword(0xe7b054))/byte(0xF7FF578B)
achievement ("Mega Ton Magical Cannon", "[Story Mode] Use [Mega Ton Magical Cannon]", 5, 
trigger = save_protect_ch() && ch_48() == 1 && prev(ch_48()) == 0)

function ch_49() => byte(0xF7FF578C+dword(0xe7b054))/byte(0xF7FF578C)
achievement ("Des Coraking", "[Story Mode] Use [Des Croaking]", 5, 
trigger = save_protect_ch() && ch_49() == 1 && prev(ch_49()) == 0)

function ch_50() => byte(0xF7FF578D+dword(0xe7b054))/byte(0xF7FF578D)
achievement ("Short Circuit", "[Story Mode] Use [Short Circuit]", 5, 
trigger = save_protect_ch() && ch_50() == 1 && prev(ch_50()) == 0)

function ch_51() => byte(0xF7FF578E+dword(0xe7b054))/byte(0xF7FF578E)
achievement ("Huge Revolution", "[Story Mode] Successfully activated and maintained the effect of [Huge Revolution] and won the Duel", 5, 
trigger = save_protect_ch() && ch_51() == 1 && prev(ch_51()) == 0)

function ch_52() => byte(0xF7FF578F+dword(0xe7b054))/byte(0xF7FF578F)
achievement ("Dark Scorpion", "[Story Mode] Successfully activated and maintained the effect of [Dark Scorpion Combination]", 5, 
trigger = save_protect_ch() && ch_52() == 1 && prev(ch_52()) == 0)

function ch_53() => byte(0xF7FF5790+dword(0xe7b054))/byte(0xF7FF5790)
achievement ("Dark Scorpion Retreat", "[Story Mode] Use [Dark Scorpion Retreat]", 5, 
trigger = save_protect_ch() && ch_53() == 1 && prev(ch_53()) == 0)

function ch_54() => byte(0xF7FF5791+dword(0xe7b054))/byte(0xF7FF5791)
achievement ("Yu-Jo Friendship", "[Story Mode] Use [Yu-Jo Friendship]", 5, 
trigger = save_protect_ch() && ch_54() == 1 && prev(ch_54()) == 0)

function ch_55() => byte(0xF7FF5792+dword(0xe7b054))/byte(0xF7FF5792)
achievement ("Blasting the Ruins", "[Story Mode] Use [Blasting the Ruins]", 5, 
trigger = save_protect_ch() && ch_55() == 1 && prev(ch_55()) == 0)

function ch_56() => byte(0xF7FF5793+dword(0xe7b054))/byte(0xF7FF5793)
achievement ("The law of the Normal", "[Story Mode] Use [The Law of the Normal]", 5, 
trigger = save_protect_ch() && ch_56() == 1 && prev(ch_56()) == 0)

function ch_57() => byte(0xF7FF5794+dword(0xe7b054))/byte(0xF7FF5794)
achievement ("Inferno Tempest", "[Story Mode] Use [Inferno Tempest]", 5, 
trigger = save_protect_ch() && ch_57() == 1 && prev(ch_57()) == 0)

function ch_58() => byte(0xF7FF5795+dword(0xe7b054))/byte(0xF7FF5795)
achievement ("Fuh-Rin-Ka-Zan", "[Story Mode] Use [Fuh-Rin-Ka-Zan]", 5, 
trigger = save_protect_ch() && ch_58() == 1 && prev(ch_58()) == 0)

function ch_59() => byte(0xF7FF5796+dword(0xe7b054))/byte(0xF7FF5796)
achievement ("Elemental Burst", "[Story Mode] Use [Elemental Burst]", 5, 
trigger = save_protect_ch() && ch_59() == 1 && prev(ch_59()) == 0)

function ch_60() => byte(0xF7FF5797+dword(0xe7b054))/byte(0xF7FF5797)
achievement ("Dragon Laser", "[Story Mode] Use [Dragon Laser]", 5, 
trigger = save_protect_ch() && ch_60() == 1 && prev(ch_60()) == 0)

function ch_61() => byte(0xF7FF5798+dword(0xe7b054))/byte(0xF7FF5798)
achievement ("Magic Triangle of the Ice Barrier", "[Story Mode] Used [Magic Triangle of the Ice Barrier]", 5, 
trigger = save_protect_ch() && ch_61() == 1 && prev(ch_61()) == 0)

function ch_62() => byte(0xF7FF5799+dword(0xe7b054))/byte(0xF7FF5799)
achievement ("XYZ Duelist", "[Story Mode] Summoned every card in the XYZ Series and won the duel", 10, 
trigger = save_protect_ch() && ch_62() == 1 && prev(ch_62()) == 0)

function ch_63() => byte(0xF7FF579A+dword(0xe7b054))/byte(0xF7FF579A)
achievement ("VWXYZ-Dragon Catapult Cannon", "[Story Mode] Successfully Summoned [VWXYZ-Dragon Catapult Cannon] and won the duel", 10, 
trigger = save_protect_ch() && ch_63() == 1 && prev(ch_63()) == 0)

function ch_64() => byte(0xF7FF579B+dword(0xe7b054))/byte(0xF7FF579B)
achievement ("Obelisk", "[Story Mode] Summoned [Obelisk the Tormentor]", 5, 
trigger = save_protect_ch() && ch_64() == 1 && prev(ch_64()) == 0)

function ch_65() => byte(0xF7FF579C+dword(0xe7b054))/byte(0xF7FF579C)
achievement ("Slifer", "[Story Mode] Summoned [Slifer the Sky Dragon]", 5, 
trigger = save_protect_ch() && ch_65() == 1 && prev(ch_65()) == 0)

function ch_66() => byte(0xF7FF579D+dword(0xe7b054))/byte(0xF7FF579D)
achievement ("Winged Dragon", "[Story Mode] Summoned [The Winged Dragon of Ra]", 5, 
trigger = save_protect_ch() && ch_66() == 1 && prev(ch_66()) == 0)

function ch_67() => byte(0xF7FF579E+dword(0xe7b054))/byte(0xF7FF579E)
achievement ("Divine-Beasts", "[Story Mode] Summoned all 3 Divine-Beasts", 10, 
trigger = save_protect_ch() && ch_67() == 1 && prev(ch_67()) == 0)

function ch_68() => byte(0xF7FF579F+dword(0xe7b054))/byte(0xF7FF579F)
achievement ("Chaos Phantom", "[Story Mode] Summoned [Armityle the Chaos Phantom]", 5, 
trigger = save_protect_ch() && ch_68() == 1 && prev(ch_68()) == 0)

function ch_69() => byte(0xF7FF57A0+dword(0xe7b054))/byte(0xF7FF57A0)
achievement ("Uria", "[Story Mode] Successfully Summoned [Uria, Lord of Searing Flames] and won the duel", 5, 
trigger = save_protect_ch() && ch_69() == 1 && prev(ch_69()) == 0)

function ch_70() => byte(0xF7FF57A1+dword(0xe7b054))/byte(0xF7FF57A1)
achievement ("Hamon", "[Story Mode] Successfully Summoned [Hamon, Lord of Striking Thunder] and won the duel", 5, 
trigger = save_protect_ch() && ch_70() == 1 && prev(ch_70()) == 0)

function ch_71() => byte(0xF7FF57A2+dword(0xe7b054))/byte(0xF7FF57A2)
achievement ("Raviel", "[Story Mode] Successfully Summoned [Raviel, Lord of Phantasms] and won the duel", 5, 
trigger = save_protect_ch() && ch_71() == 1 && prev(ch_71()) == 0)

function ch_72() => byte(0xF7FF57A3+dword(0xe7b054))/byte(0xF7FF57A3)
achievement ("Sacred Beast", "[Story Mode] Summoned all the Sacred Beast Cards and won the duel", 10, 
trigger = save_protect_ch() && ch_72() == 1 && prev(ch_72()) == 0)

function ch_73() => byte(0xF7FF57A4+dword(0xe7b054))/byte(0xF7FF57A4)
achievement ("Wicked Dreadroot", "[Story Mode] Summoned [The Wicked Dreadroot]", 5, 
trigger = save_protect_ch() && ch_73() == 1 && prev(ch_73()) == 0)

function ch_74() => byte(0xF7FF57A5+dword(0xe7b054))/byte(0xF7FF57A5)
achievement ("Wicked Avatar", "[Story Mode] Summoned [The Wicked Avatar]", 5, 
trigger = save_protect_ch() && ch_74() == 1 && prev(ch_74()) == 0)

function ch_75() => byte(0xF7FF57A6+dword(0xe7b054))/byte(0xF7FF57A6)
achievement ("Wicked Eraser", "[Story Mode] Summoned [The Wicked Eraser]", 5, 
trigger = save_protect_ch() && ch_75() == 1 && prev(ch_75()) == 0)

function ch_76() => byte(0xF7FF57A7+dword(0xe7b054))/byte(0xF7FF57A7)
achievement ("Wicked Gods", "[Story Mode] Summoned all 3 Wicked Gods", 10, 
trigger = save_protect_ch() && ch_76() == 1 && prev(ch_76()) == 0)

function ch_77() => byte(0xF7FF57A8+dword(0xe7b054))/byte(0xF7FF57A8)
achievement ("Aslla Piscu", "[Story Mode] Summoned [Earthbound Immortal Aslla Piscu]", 5, 
trigger = save_protect_ch() && ch_77() == 1 && prev(ch_77()) == 0)

function ch_78() => byte(0xF7FF57A9+dword(0xe7b054))/byte(0xF7FF57A9)
achievement ("Ccapac Apu", "[Story Mode] Summoned [Earthbound Immortal Ccapac Apu]", 5, 
trigger = save_protect_ch() && ch_78() == 1 && prev(ch_78()) == 0)

function ch_79() => byte(0xF7FF57AA+dword(0xe7b054))/byte(0xF7FF57AA)
achievement ("Cusillu", "[Story Mode] Summoned [Earthbound Immortal Cusillu]", 5,
trigger = save_protect_ch() && ch_79() == 1 && prev(ch_79()) == 0)

function ch_80() => byte(0xF7FF57AB+dword(0xe7b054))/byte(0xF7FF57AB)
achievement ("Chacu Challhua", "[Story Mode] Summoned [Earthbound Immortal Chacu Challhua]", 5, 
trigger = save_protect_ch() && ch_80() == 1 && prev(ch_80()) == 0)

function ch_81() => byte(0xF7FF57AC+dword(0xe7b054))/byte(0xF7FF57AC)
achievement ("Ccarayhua", "[Story Mode] Summoned [Earthbound Immortal Ccarayhua]", 5, 
trigger = save_protect_ch() && ch_81() == 1 && prev(ch_81()) == 0)

function ch_82() => byte(0xF7FF57AD+dword(0xe7b054))/byte(0xF7FF57AD)
achievement ("Uru", "[Story Mode] Summoned [Earthbound Immortal Uru]", 5, 
trigger = save_protect_ch() && ch_82() == 1 && prev(ch_82()) == 0)

function ch_83() => byte(0xF7FF57AE+dword(0xe7b054))/byte(0xF7FF57AE)
achievement ("Wiraqocha Rasca", "[Story Mode] Summoned [Earthbound Immortal Wiraqocha Rasca]", 5, 
trigger = save_protect_ch() && ch_83() == 1 && prev(ch_83()) == 0)

function ch_84() => byte(0xF7FF57AF+dword(0xe7b054))/byte(0xF7FF57AF)
achievement ("Perfectly Ultimate Great Moth", "[Story Mode] Successfully Summoned [Perfectly Ultimate Great Moth] and won the duel", 10, 
trigger = save_protect_ch() && ch_84() == 1 && prev(ch_84()) == 0)

function ch_85() => byte(0xF7FF57B0+dword(0xe7b054))/byte(0xF7FF57B0)
achievement ("Gate Guardian", "[Story Mode] Successfully Summoned [Gate Guardian] and won the duel", 10, 
trigger = save_protect_ch() && ch_85() == 1 && prev(ch_85()) == 0)

function ch_86() => byte(0xF7FF57B1+dword(0xe7b054))/byte(0xF7FF57B1)
achievement ("Valkyrion the Magna Warrior", "[Story Mode] Successfully Summoned [Valkyrion the Magna Warrior] and won the duel", 10, 
trigger = save_protect_ch() && ch_86() == 1 && prev(ch_86()) == 0)

function ch_87() => byte(0xF7FF57B2+dword(0xe7b054))/byte(0xF7FF57B2)
achievement ("Dark Sage", "[Story Mode] Successfully Summoned [Dark Sage] and won the duel", 10, 
trigger = save_protect_ch() && ch_87() == 1 && prev(ch_87()) == 0)

function ch_88() => byte(0xF7FF57B3+dword(0xe7b054))/byte(0xF7FF57B3)
achievement ("Wall Shadow", "[Story Mode] Summoned [Wall Shadow]", 5, 
trigger = save_protect_ch() && ch_88() == 1 && prev(ch_88()) == 0)

function ch_89() => byte(0xF7FF57B4+dword(0xe7b054))/byte(0xF7FF57B4)
achievement ("Blue-Eyes Ultimate Dragon", "[Story Mode] Summoned [Blue-Eyes Ultimate Dragon]", 10, 
trigger = save_protect_ch() && ch_89() == 1 && prev(ch_89()) == 0)

function ch_90() => byte(0xF7FF57B5+dword(0xe7b054))/byte(0xF7FF57B5)
achievement ("Metalzoa", "[Story Mode] Summoned [Metalzoa]", 5, 
trigger = save_protect_ch() && ch_90() == 1 && prev(ch_90()) == 0)

function ch_91() => byte(0xF7FF57B6+dword(0xe7b054))/byte(0xF7FF57B6)
achievement ("Red-Eyes Black Metal Dragon", "[Story Mode] Summoned [Red-Eyes Black Metal Dragon]", 10, 
trigger = save_protect_ch() && ch_91() == 1 && prev(ch_91()) == 0)

function ch_92() => byte(0xF7FF57B7+dword(0xe7b054))/byte(0xF7FF57B7)
achievement ("Exodia Necross", "[Story Mode] Summoned [Exodia Necross]", 5, 
trigger = save_protect_ch() && ch_92() == 1 && prev(ch_92()) == 0)

function ch_93() => byte(0xF7FF57B8+dword(0xe7b054))/byte(0xF7FF57B8)
achievement ("Ojama King", "[Story Mode] Summoned [Ojama King]", 5, 
trigger = save_protect_ch() && ch_93() == 1 && prev(ch_93()) == 0)

function ch_94() => byte(0xF7FF57B9+dword(0xe7b054))/byte(0xF7FF57B9)
achievement ("Mokey Mokey King", "[Story Mode] Summoned [Mokey Mokey King]", 5, 
trigger = save_protect_ch() && ch_94() == 1 && prev(ch_94()) == 0)

function ch_95() => byte(0xF7FF57BA+dword(0xe7b054))/byte(0xF7FF57BA)
achievement ("Chimeratech Overdragon", "[Story Mode] Summoned [Chimeratech Overdragon]", 5, 
trigger = save_protect_ch() && ch_95() == 1 && prev(ch_95()) == 0)

function ch_96() => byte(0xF7FF57BB+dword(0xe7b054))/byte(0xF7FF57BB)
achievement ("Gaia Drake, the Universal Force", "[Story Mode] Summoned [Gaia Drake, the Universal Force]", 10, 
trigger = save_protect_ch() && ch_96() == 1 && prev(ch_96()) == 0)

function ch_97() => byte(0xF7FF57BC+dword(0xe7b054))/byte(0xF7FF57BC)
achievement ("Sun & Moon", "[Story Mode] Summoned [Sun Dragon Inti] and [Moon Dragon Quilla]", 5, 
trigger = save_protect_ch() && ch_97() == 1 && prev(ch_97()) == 0)

function ch_98() => byte(0xF7FF57BD+dword(0xe7b054))/byte(0xF7FF57BD)
achievement ("Infernity Zero", "[Story Mode] Summoned [Infernity Zero]", 5, 
trigger = save_protect_ch() && ch_98() == 1 && prev(ch_98()) == 0)

function ch_99() => byte(0xF7FF57BE+dword(0xe7b054))/byte(0xF7FF57BE)
achievement ("Tech Genus Blade Blaster", "[Story Mode] Summoned [Tech Genus Blade Blaster]", 5, 
trigger = save_protect_ch() && ch_99() == 1 && prev(ch_99()) == 0)

function ch_100() => byte(0xF7FF57BF+dword(0xe7b054))/byte(0xF7FF57BF)
achievement ("Majestic Star Dragon", "[Story Mode] Summoned [Majestic Star Dragon]", 5, 
trigger = save_protect_ch() && ch_100() == 1 && prev(ch_100()) == 0)

function ch_101() => byte(0xF7FF57C0+dword(0xe7b054))/byte(0xF7FF57C0)
achievement ("Majestic Red Dragon", "[Story Mode] Summoned [Majestic Red Dragon]", 5, 
trigger = save_protect_ch() && ch_101() == 1 && prev(ch_101()) == 0)

function ch_102() => byte(0xF7FF57C1+dword(0xe7b054))/byte(0xF7FF57C1)
achievement ("Shooting Star Dragon", "[Story Mode] Summoned [Shooting Star Dragon]", 5, 
trigger = save_protect_ch() && ch_102() == 1 && prev(ch_102()) == 0)

function ch_103() => byte(0xF7FF57C2+dword(0xe7b054))/byte(0xF7FF57C2)
achievement ("Red Nova Dragon", "[Story Mode] Summoned [Red Nova Dragon]", 5, 
trigger = save_protect_ch() && ch_103() == 1 && prev(ch_103()) == 0)

function ch_104() => byte(0xF7FF57C3+dword(0xe7b054))/byte(0xF7FF57C3)
achievement ("Wisel", "[Story Mode] Assembled the [Meklord Emperor Wisel] Series on your side of the field", 5, 
trigger = save_protect_ch() && ch_104() == 1 && prev(ch_104()) == 0)

function ch_105() => byte(0xF7FF57C4+dword(0xe7b054))/byte(0xF7FF57C4)
achievement ("Skiel", "[Story Mode] Assembled the [Meklord Emperor Skiel] Series on your side of the field", 5, 
trigger = save_protect_ch() && ch_105() == 1 && prev(ch_105()) == 0)

function ch_106() => byte(0xF7FF57C5+dword(0xe7b054))/byte(0xF7FF57C5)
achievement ("Grannel", "[Story Mode] Assembled the [Meklord Emperor Grannel] Series on your side of the field", 5, 
trigger = save_protect_ch() && ch_106() == 1 && prev(ch_106()) == 0)

function ch_107() => byte(0xF7FF57C6+dword(0xe7b054))/byte(0xF7FF57C6)
achievement ("Dragon Team", "[Story Mode] Summoned the Dragons of Yusei, Jack, Crow, Akiza, Leo and Luna", 5, 
trigger = save_protect_ch() && ch_107() == 1 && prev(ch_107()) == 0)

function ch_108() => byte(0xF7FF57C7+dword(0xe7b054))/byte(0xF7FF57C7)
achievement ("Dragon Side", "[Story Mode] Summoned the Dragons of Yusei, Jack, Crow, Akiza, Leo and Luna on your side of the field", 5, 
trigger = save_protect_ch() && ch_108() == 1 && prev(ch_108()) == 0)

function ch_109() => byte(0xF7FF57C8+dword(0xe7b054))/byte(0xF7FF57C8)
achievement ("Normal Monsters", "[Story Mode] Won with 25 or more Normal Monsters in Deck", 5, 
trigger = save_protect_ch() && ch_109() == 1 && prev(ch_109()) == 0)

function ch_110() => byte(0xF7FF57C9+dword(0xe7b054))/byte(0xF7FF57C9)
achievement ("Four & Lower", "[Story Mode] Won with 25 or more monsters of level 4 or lower in Deck", 5, 
trigger = save_protect_ch() && ch_110() == 1 && prev(ch_110()) == 0)

function ch_111() => byte(0xF7FF57CA+dword(0xe7b054))/byte(0xF7FF57CA)
achievement ("Five & Higher", "[Story Mode] Won with 25 or more monsters of level 5 or higher in Deck", 5, 
trigger = save_protect_ch() && ch_111() == 1 && prev(ch_111()) == 0)

function ch_112() => byte(0xF7FF57CB+dword(0xe7b054))/byte(0xF7FF57CB)
achievement ("Level One", "[Story Mode] Won with 25 or more level 1 monsters in Deck", 10, 
trigger = save_protect_ch() && ch_112() == 1 && prev(ch_112()) == 0)

function ch_113() => byte(0xF7FF57CC+dword(0xe7b054))/byte(0xF7FF57CC)
achievement ("Some of Everything", "[Story Mode] Won with a Deck that contained monsters of every Level", 10, 
trigger = save_protect_ch() && ch_113() == 1 && prev(ch_113()) == 0)

function ch_114() => byte(0xF7FF57CD+dword(0xe7b054))/byte(0xF7FF57CD)
achievement ("1500 Max", "[Story Mode] Won with 25 or more monsters with at most ATK 1500 in Deck", 5, 
trigger = save_protect_ch() && ch_114() == 1 && prev(ch_114()) == 0)

function ch_115() => byte(0xF7FF57CE+dword(0xe7b054))/byte(0xF7FF57CE)
achievement ("1500 Min", "[Story Mode] Won with 25 or more monsters with at least ATK 1500 in Deck", 5,
trigger = save_protect_ch() && ch_115() == 1 && prev(ch_115()) == 0)

function ch_116() => byte(0xF7FF57CF+dword(0xe7b054))/byte(0xF7FF57CF)
achievement ("ZDPS", "[Story Mode] Won with 25 or more monsters with 0 ATK in Deck", 5, 
trigger = save_protect_ch() && ch_116() == 1 && prev(ch_116()) == 0)

function ch_117() => byte(0xF7FF57D0+dword(0xe7b054))/byte(0xF7FF57D0)
achievement ("Light Deck", "[Story Mode] Won with 25 or more LIGHT monsters in Deck", 5, 
trigger = save_protect_ch() && ch_117() == 1 && prev(ch_117()) == 0)

function ch_118() => byte(0xF7FF57D1+dword(0xe7b054))/byte(0xF7FF57D1)
achievement ("Dark Deck", "[Story Mode] Won with 25 or more DARK monsters in Deck", 5, 
trigger = save_protect_ch() && ch_118() == 1 && prev(ch_118()) == 0)

function ch_119() => byte(0xF7FF57D2+dword(0xe7b054))/byte(0xF7FF57D2)
achievement ("Water Deck", "[Story Mode] Won with 25 or more WATER monsters in Deck", 5, 
trigger = save_protect_ch() && ch_119() == 1 && prev(ch_119()) == 0)

function ch_120() => byte(0xF7FF57D3+dword(0xe7b054))/byte(0xF7FF57D3)
achievement ("Fire Deck", "[Story Mode] Won with 25 or more FIRE monsters in Deck", 5, 
trigger = save_protect_ch() && ch_120() == 1 && prev(ch_120()) == 0)

function ch_121() => byte(0xF7FF57D4+dword(0xe7b054))/byte(0xF7FF57D4)
achievement ("Earth Deck", "[Story Mode] Won with 25 or more EARTH monsters in Deck", 5, 
trigger = save_protect_ch() && ch_121() == 1 && prev(ch_121()) == 0)

function ch_122() => byte(0xF7FF57D5+dword(0xe7b054))/byte(0xF7FF57D5)
achievement ("Wind Deck", "[Story Mode] Won with 25 or more WIND monsters in Deck", 5, 
trigger = save_protect_ch() && ch_122() == 1 && prev(ch_122()) == 0)

function ch_123() => byte(0xF7FF57D6+dword(0xe7b054))/byte(0xF7FF57D6)
achievement ("Dragon Deck", "[Story Mode] Won with 25 or more Dragon monsters in Deck", 5, 
trigger = save_protect_ch() && ch_123() == 1 && prev(ch_123()) == 0)

function ch_124() => byte(0xF7FF57D7+dword(0xe7b054))/byte(0xF7FF57D7)
achievement ("Zombie Deck", "[Story Mode] Won with 25 or more Zombie monsters in Deck", 5, 
trigger = save_protect_ch() && ch_124() == 1 && prev(ch_124()) == 0)

function ch_125() => byte(0xF7FF57D8+dword(0xe7b054))/byte(0xF7FF57D8)
achievement ("Fiend Deck", "[Story Mode] Won with 25 or more Fiend monsters in Deck", 5, 
trigger = save_protect_ch() && ch_125() == 1 && prev(ch_125()) == 0)

function ch_126() => byte(0xF7FF57D9+dword(0xe7b054))/byte(0xF7FF57D9)
achievement ("Pyro Deck", "[Story Mode] Won with 25 or more Pyro monsters in Deck", 5, 
trigger = save_protect_ch() && ch_126() == 1 && prev(ch_126()) == 0)

function ch_127() => byte(0xF7FF57DA+dword(0xe7b054))/byte(0xF7FF57DA)
achievement ("Sea Serpent Deck", "[Story Mode] Won with 25 or more Sea Serpent monsters in Deck", 5, 
trigger = save_protect_ch() && ch_127() == 1 && prev(ch_127()) == 0)

function ch_128() => byte(0xF7FF57DB+dword(0xe7b054))/byte(0xF7FF57DB)
achievement ("Rock Deck", "[Story Mode] Won with 25 or more Rock monsters in Deck", 5, 
trigger = save_protect_ch() && ch_128() == 1 && prev(ch_128()) == 0)

function ch_129() => byte(0xF7FF57DC+dword(0xe7b054))/byte(0xF7FF57DC)
achievement ("Machine Deck", "[Story Mode] Won with 25 or more Machine monsters in Deck", 5, 
trigger = save_protect_ch() && ch_129() == 1 && prev(ch_129()) == 0)

function ch_130() => byte(0xF7FF57DD+dword(0xe7b054))/byte(0xF7FF57DD)
achievement ("Fish Deck", "[Story Mode] Won with 25 or more Fish monsters in Deck", 5, 
trigger = save_protect_ch() && ch_130() == 1 && prev(ch_130()) == 0)

function ch_131() => byte(0xF7FF57DE+dword(0xe7b054))/byte(0xF7FF57DE)
achievement ("Dinosaur Deck", "[Story Mode] Won with 25 or more Dinosaur monsters in Deck", 5, 
trigger = save_protect_ch() && ch_131() == 1 && prev(ch_131()) == 0)

function ch_132() => byte(0xF7FF57DF+dword(0xe7b054))/byte(0xF7FF57DF)
achievement ("Insect Deck", "[Story Mode] Won with 25 or more Insect monsters in Deck", 5, 
trigger = save_protect_ch() && ch_132() == 1 && prev(ch_132()) == 0)

function ch_133() => byte(0xF7FF57E0+dword(0xe7b054))/byte(0xF7FF57E0)
achievement ("Beast Deck", "[Story Mode] Won with 25 or more Beast monsters in Deck", 5, 
trigger = save_protect_ch() && ch_133() == 1 && prev(ch_133()) == 0)

function ch_134() => byte(0xF7FF57E1+dword(0xe7b054))/byte(0xF7FF57E1)
achievement ("Beast-Warrior Deck", "[Story Mode] Won with 25 or more Beast-Warrior monsters in Deck", 5, 
trigger = save_protect_ch() && ch_134() == 1 && prev(ch_134()) == 0)

function ch_135() => byte(0xF7FF57E2+dword(0xe7b054))/byte(0xF7FF57E2)
achievement ("Plant Deck", "[Story Mode] Won with 25 or more Plant monsters in Deck", 5, 
trigger = save_protect_ch() && ch_135() == 1 && prev(ch_135()) == 0)

function ch_136() => byte(0xF7FF57E3+dword(0xe7b054))/byte(0xF7FF57E3)
achievement ("Aqua Deck", "[Story Mode] Won with 25 or more Aqua monsters in Deck", 5, 
trigger = save_protect_ch() && ch_136() == 1 && prev(ch_136()) == 0)

function ch_137() => byte(0xF7FF57E4+dword(0xe7b054))/byte(0xF7FF57E4)
achievement ("Warrior Deck", "[Story Mode] Won with 25 or more Warrior monsters in Deck", 5, 
trigger = save_protect_ch() && ch_137() == 1 && prev(ch_137()) == 0)

function ch_138() => byte(0xF7FF57E5+dword(0xe7b054))/byte(0xF7FF57E5)
achievement ("Winged Beast Deck", "[Story Mode] Won with 25 or more Winged Beast monsters in Deck", 5, 
trigger = save_protect_ch() && ch_138() == 1 && prev(ch_138()) == 0)

function ch_139() => byte(0xF7FF57E6+dword(0xe7b054))/byte(0xF7FF57E6)
achievement ("Fairy Deck", "[Story Mode] Won with 25 or more Fairy monsters in Deck", 5, 
trigger = save_protect_ch() && ch_139() == 1 && prev(ch_139()) == 0)

function ch_140() => byte(0xF7FF57E7+dword(0xe7b054))/byte(0xF7FF57E7)
achievement ("Spellcaster Deck", "[Story Mode] Won with 25 or more Spellcaster monsters in Deck", 5, 
trigger = save_protect_ch() && ch_140() == 1 && prev(ch_140()) == 0)

function ch_141() => byte(0xF7FF57E8+dword(0xe7b054))/byte(0xF7FF57E8)
achievement ("Thunder Deck", "[Story Mode] Won with 25 or more Thunder monsters in Deck", 5, 
trigger = save_protect_ch() && ch_141() == 1 && prev(ch_141()) == 0)

function ch_142() => byte(0xF7FF57E9+dword(0xe7b054))/byte(0xF7FF57E9)
achievement ("Reptile Deck", "[Story Mode] Won with 25 or more Reptile monsters in Deck", 5, 
trigger = save_protect_ch() && ch_142() == 1 && prev(ch_142()) == 0)

function ch_143() => byte(0xF7FF57EA+dword(0xe7b054))/byte(0xF7FF57EA)
achievement ("Psychic Deck", "[Story Mode] Won with 25 or more Psychic monsters in Deck", 5, 
trigger = save_protect_ch() && ch_143() == 1 && prev(ch_143()) == 0)

function ch_144() => byte(0xF7FF57EB+dword(0xe7b054))/byte(0xF7FF57EB)
achievement ("Divine-Beast Deck", "[Story Mode] Won with all types of Divine-Beast monsters in Deck", 5, 
trigger = save_protect_ch() && ch_144() == 1 && prev(ch_144()) == 0)

function ch_145() => byte(0xF7FF57EC+dword(0xe7b054))/byte(0xF7FF57EC)
achievement ("Mix it Up", "[Story Mode] Won with all monster types in Deck", 5, 
trigger = save_protect_ch() && ch_145() == 1 && prev(ch_145()) == 0)

function ch_146() => byte(0xF7FF57ED+dword(0xe7b054))/byte(0xF7FF57ED)
achievement ("LV Deck", "[Story Mode] Won with 25 or more LV monsters in Deck", 5, 
trigger = save_protect_ch() && ch_146() == 1 && prev(ch_146()) == 0)

function ch_147() => byte(0xF7FF57EE+dword(0xe7b054))/byte(0xF7FF57EE)
achievement ("Elemental Hero Deck", "[Story Mode] Won with 25 or more Elemental Hero monsters in Deck", 5, 
trigger = save_protect_ch() && ch_147() == 1 && prev(ch_147()) == 0)

function ch_148() => byte(0xF7FF57EF+dword(0xe7b054))/byte(0xF7FF57EF)
achievement ("Evil Hero Deck", "[Story Mode] Won with 9 or more Evil Hero monsters in Deck", 5, 
trigger = save_protect_ch() && ch_148() == 1 && prev(ch_148()) == 0)

function ch_149() => byte(0xF7FF57F0+dword(0xe7b054))/byte(0xF7FF57F0)
achievement ("Destiny Hero Deck", "[Story Mode] Won with 25 or more Destiny Hero monsters in Deck", 5, 
trigger = save_protect_ch() && ch_149() == 1 && prev(ch_149()) == 0)

function ch_150() => byte(0xF7FF57F1+dword(0xe7b054))/byte(0xF7FF57F1)
achievement ("Spirit Deck", "[Story Mode] Won with 25 or more Spirit monsters in Deck", 5, 
trigger = save_protect_ch() && ch_150() == 1 && prev(ch_150()) == 0)

function ch_151() => byte(0xF7FF57F2+dword(0xe7b054))/byte(0xF7FF57F2)
achievement ("Toon Deck", "[Story Mode] Won with 20 or more Toon monsters in Deck", 5, 
trigger = save_protect_ch() && ch_151() == 1 && prev(ch_151()) == 0)

function ch_152() => byte(0xF7FF57F3+dword(0xe7b054))/byte(0xF7FF57F3)
achievement ("Simplistic", "[Story Mode] Won with a Deck that didn't contain any monsters", 10, 
trigger = save_protect_ch() && ch_152() == 1 && prev(ch_152()) == 0)

function ch_153() => byte(0xF7FF57F4+dword(0xe7b054))/byte(0xF7FF57F4)
achievement ("Monster Free ", "[Story Mode] Won with a Deck/Extra Deck that didn't contain any monsters", 10, 
trigger = save_protect_ch() && ch_153() == 1 && prev(ch_153()) == 0)

function ch_154() => byte(0xF7FF57F5+dword(0xe7b054))/byte(0xF7FF57F5)
achievement ("Trap Free", "[Story Mode] Won with a Deck that didn't contain any Trap Cards", 5, 
trigger = save_protect_ch() && ch_154() == 1 && prev(ch_154()) == 0)

function ch_155() => byte(0xF7FF57F6+dword(0xe7b054))/byte(0xF7FF57F6)
achievement ("Spell Free", "[Story Mode] Won with a Deck that didn't contain any Spell Cards", 5, 
trigger = save_protect_ch() && ch_155() == 1 && prev(ch_155()) == 0)

function ch_156() => byte(0xF7FF57F7+dword(0xe7b054))/byte(0xF7FF57F7)
achievement ("No Assistance", "[Story Mode] Won with a Deck that didn't contain any Spell and Trap Cards", 10, 
trigger = save_protect_ch() && ch_156() == 1 && prev(ch_156()) == 0)

function ch_157() => byte(0xF7FF57F8+dword(0xe7b054))/byte(0xF7FF57F8)
achievement ("Fully Loaded", "[Story Mode] Won with 60-card Deck", 5, 
trigger = save_protect_ch() && ch_157() == 1 && prev(ch_157()) == 0)

function ch_158() => byte(0xF7FF57F9+dword(0xe7b054))/byte(0xF7FF57F9)
achievement ("Rule Follower", "[Story Mode] Won with a Deck/Extra Deck that didn't contain any Forbidden, Limited, or Semi-Limited Cards", 5, 
trigger = save_protect_ch() && ch_158() == 1 && prev(ch_158()) == 0)

function ch_159() => byte(0xF7FF57FA+dword(0xe7b054))/byte(0xF7FF57FA)
achievement ("Rule Breaker", "[Story Mode] Won with a Forbidden Card in Deck/Extra Deck", 5, 
trigger = save_protect_ch() && ch_159() == 1 && prev(ch_159()) == 0)

function ch_160() => byte(0xF7FF57FB+dword(0xe7b054))/byte(0xF7FF57FB)
achievement ("Single Use", "[Story Mode] Won with a Deck/Extra Deck that only contained one copy of each card", 10, 
trigger = save_protect_ch() && ch_160() == 1 && prev(ch_160()) == 0)

function ch_161() => byte(0xF7FF57FC+dword(0xe7b054))/byte(0xF7FF57FC)
achievement ("No Sacrifice", "[Story Mode] Won without Tributing any monsters", 10, 
trigger = save_protect_ch() && ch_161() == 1 && prev(ch_161()) == 0)

function ch_162() => byte(0xF7FF57FD+dword(0xe7b054))/byte(0xF7FF57FD)
achievement ("No Special Summon", "[Story Mode] Won without performing a Special Summon", 10, 
trigger = save_protect_ch() && ch_162() == 1 && prev(ch_162()) == 0)

function ch_163() => byte(0xF7FF57FE+dword(0xe7b054))/byte(0xF7FF57FE)
achievement ("No Normal Summon", "[Story Mode] Won without performing a Normal Summon or set", 10, 
trigger = save_protect_ch() && ch_163() == 1 && prev(ch_163()) == 0)

function ch_164() => byte(0xF7FF57FF+dword(0xe7b054))/byte(0xF7FF57FF)
achievement ("Ten to Zero", "[Story Mode] Won 10 or more coin tosses in a row", 25, 
trigger = save_protect_ch() && ch_164() == 1 && prev(ch_164()) == 0)


function boosters_unlocked() => sum_of(range(0xF7FFBE75,0xF7FFC823,step = 42), addr => byte(addr+dword(0xe7b054))/byte(addr))

achievement ("Daily Shopper", "Unlock all Booster Packs", 10,
trigger = measured(boosters_unlocked() == 60) && prev(boosters_unlocked()) == 59)

//Monster for Dummies Booster Pack - 54 Cards Total 
//Offset - +0xF7FF7315 - Amazoness Archer
//Offset - +0xF7FF791D - Amazoness Blowpiper
//Offset - +0xF7FF7469 - Amazoness Chain Master
//Offset - +0xF7FF7471 - Amazoness Fighter
//Offset - +0xF7FF7919 - Amazoness Paladin
//Offset - +0xF7FFA641 - Amazoness Queen
//Offset - +0xF7FFA639 - Amazoness Sage
//Offset - +0xF7FF7455 - Amazoness Swords Woman
//Offset - +0xF7FF7921 - Amazoness Tiger
//Offset - +0xF7FFA63D - Amazoness Trainee
//Offset - +0xF7FF6975 - Cockroach Knight
//Offset - +0xF7FF6319 - Cocoon of Evolution
//Offset - +0xF7FF6D79 - Cyber Raider
//Offset - +0xF7FF6679 - Dark Artist
//Offset - +0xF7FF6935 - Electric Snake
//Offset - +0xF7FF62DD - Great Moth
//Offset - +0xF7FF6B21 - Greenkappa
//Offset - +0xF7FF6B99 - Hourglass of Courage
//Offset - +0xF7FF6BFD - Invader of the Throne
//Offset - +0xF7FF932D - Jain, Lightsworn Paladin
//Offset - +0xF7FF9529 - Jenis, Lightsworn Mender
//Offset - +0xF7FF6891 - Jinzo #7
//Offset - +0xF7FF62D9 - Larvae Moth
//Offset - +0xF7FF6AA1 - Lava Battleguard
//Offset - +0xF7FF682D - Leghul
//Offset - +0xF7FF6391 - Mask of Darkness
//Offset - +0xF7FF6819 - Metalzoa
//Offset - +0xF7FF6A51 - Minar
//Offset - +0xF7FF6B35 - Morphing Jar
//Offset - +0xF7FF6A09 - Muka Muka
//Offset - +0xF7FF6805 - Mystic Lamp
//Offset - +0xF7FF73B9 - Mystical Beast of Serket
//Offset - +0xF7FF6831 - Ooguchi
//Offset - +0xF7FF6D55 - Panther Warrior
//Offset - +0xF7FF6B09 - Patrol Robo
//Offset - +0xF7FF6305 - Perfectly Ultimate Great Moth
//Offset - +0xF7FF6BE5 - Queen's Double
//Offset - +0xF7FF6999 - Rainbow Flower
//Offset - +0xF7FF6D49 - Red-Eyes Black Metal Dragon
//Offset - +0xF7FFA16D - Rinyan, Lightsworn Rogue
//Offset - +0xF7FF62B9 - Sangan
//Offset - +0xF7FFA169 - Shire, Lightsworn Spirit
//Offset - +0xF7FF6A69 - Skelengel
//Offset - +0xF7FF6821 - Steel Scorpion
//Offset - +0xF7FF6229 - Swamp Battleguard
//Offset - +0xF7FF6DAD - Sword Hunter
//Offset - +0xF7FF6835 - Swordsman from a Foreign Land
//Offset - +0xF7FF6611 - The Little Swordsman of Aile
//Offset - +0xF7FF6255 - The Wicked Worm Beast
//Offset - +0xF7FF689D - Thunder Dragon
//Offset - +0xF7FF6579 - Trap Master
//Offset - +0xF7FF6B15 - Weather Report
//Offset - +0xF7FF69BD - Yado Karu
//Offset - +0xF7FF681D - Zone Eater

function monster_for_dummies() => byte(0xF7FF932D+dword(0xe7b054))/byte(0xF7FF932D)+byte(0xF7FF6B35+dword(0xe7b054))/byte(0xF7FF6B35)+
                                  byte(0xF7FF62B9+dword(0xe7b054))/byte(0xF7FF62B9)+byte(0xF7FFA641+dword(0xe7b054))/byte(0xF7FFA641)+
                                  byte(0xF7FF7455+dword(0xe7b054))/byte(0xF7FF7455)+byte(0xF7FFA63D+dword(0xe7b054))/byte(0xF7FFA63D)+
                                  byte(0xF7FF6391+dword(0xe7b054))/byte(0xF7FF6391)+byte(0xF7FF689D+dword(0xe7b054))/byte(0xF7FF689D)+
                                  byte(0xF7FF7469+dword(0xe7b054))/byte(0xF7FF7469)+byte(0xF7FF7919+dword(0xe7b054))/byte(0xF7FF7919)+
                                  byte(0xF7FFA639+dword(0xe7b054))/byte(0xF7FFA639)+byte(0xF7FF6975+dword(0xe7b054))/byte(0xF7FF6975)+
                                  byte(0xF7FF6B21+dword(0xe7b054))/byte(0xF7FF6B21)+byte(0xF7FF6A09+dword(0xe7b054))/byte(0xF7FF6A09)+
                                  byte(0xF7FFA16D+dword(0xe7b054))/byte(0xF7FFA16D)+byte(0xF7FFA169+dword(0xe7b054))/byte(0xF7FFA169)+
                                  byte(0xF7FF6A69+dword(0xe7b054))/byte(0xF7FF6A69)+byte(0xF7FF6DAD+dword(0xe7b054))/byte(0xF7FF6DAD)+
                                  byte(0xF7FF6255+dword(0xe7b054))/byte(0xF7FF6255)+byte(0xF7FF6579+dword(0xe7b054))/byte(0xF7FF6579)+
                                  byte(0xF7FF7315+dword(0xe7b054))/byte(0xF7FF7315)+byte(0xF7FF791D+dword(0xe7b054))/byte(0xF7FF791D)+
                                  byte(0xF7FF7471+dword(0xe7b054))/byte(0xF7FF7471)+byte(0xF7FF7921+dword(0xe7b054))/byte(0xF7FF7921)+
                                  byte(0xF7FF6319+dword(0xe7b054))/byte(0xF7FF6319)+byte(0xF7FF6D79+dword(0xe7b054))/byte(0xF7FF6D79)+
                                  byte(0xF7FF6679+dword(0xe7b054))/byte(0xF7FF6679)+byte(0xF7FF6935+dword(0xe7b054))/byte(0xF7FF6935)+
                                  byte(0xF7FF62DD+dword(0xe7b054))/byte(0xF7FF62DD)+byte(0xF7FF6B99+dword(0xe7b054))/byte(0xF7FF6B99)+
                                  byte(0xF7FF6BFD+dword(0xe7b054))/byte(0xF7FF6BFD)+byte(0xF7FF9529+dword(0xe7b054))/byte(0xF7FF9529)+
                                  byte(0xF7FF6891+dword(0xe7b054))/byte(0xF7FF6891)+byte(0xF7FF62D9+dword(0xe7b054))/byte(0xF7FF62D9)+
                                  byte(0xF7FF6AA1+dword(0xe7b054))/byte(0xF7FF6AA1)+byte(0xF7FF682D+dword(0xe7b054))/byte(0xF7FF682D)+
                                  byte(0xF7FF6819+dword(0xe7b054))/byte(0xF7FF6819)+byte(0xF7FF6A51+dword(0xe7b054))/byte(0xF7FF6A51)+
                                  byte(0xF7FF6805+dword(0xe7b054))/byte(0xF7FF6805)+byte(0xF7FF73B9+dword(0xe7b054))/byte(0xF7FF73B9)+
                                  byte(0xF7FF6831+dword(0xe7b054))/byte(0xF7FF6831)+byte(0xF7FF6D55+dword(0xe7b054))/byte(0xF7FF6D55)+
                                  byte(0xF7FF6B09+dword(0xe7b054))/byte(0xF7FF6B09)+byte(0xF7FF6305+dword(0xe7b054))/byte(0xF7FF6305)+
                                  byte(0xF7FF6BE5+dword(0xe7b054))/byte(0xF7FF6BE5)+byte(0xF7FF6999+dword(0xe7b054))/byte(0xF7FF6999)+
                                  byte(0xF7FF6D49+dword(0xe7b054))/byte(0xF7FF6D49)+byte(0xF7FF6821+dword(0xe7b054))/byte(0xF7FF6821)+
                                  byte(0xF7FF6229+dword(0xe7b054))/byte(0xF7FF6229)+byte(0xF7FF6835+dword(0xe7b054))/byte(0xF7FF6835)+
                                  byte(0xF7FF6611+dword(0xe7b054))/byte(0xF7FF6611)+byte(0xF7FF6B15+dword(0xe7b054))/byte(0xF7FF6B15)+
                                  byte(0xF7FF69BD+dword(0xe7b054))/byte(0xF7FF69BD)+byte(0xF7FF681D+dword(0xe7b054))/byte(0xF7FF681D)


achievement ("Monsters for Dummies", "Obtain all cards from [Monsters for Dummies] booster", 10,
trigger = save_protect() && measured(monster_for_dummies() == 54) && prev(monster_for_dummies()) != 54)

//Monster for Dummies Booster Pack - 58 Cards Total
//Offset - +0xF7FFA699 - Amazoness Fighting Spirit
//Offset - +0xF7FF7475 - Amazoness Spellcaster
//Offset - +0xF7FFA695 - Amazoness Village
//Offset - +0xF7FF6E95 - Ancient Telescope
//Offset - +0xF7FF66D5 - Black Pendant
//Offset - +0xF7FF6EE9 - Block Attack
//Offset - +0xF7FF6E65 - Blue Medicine
//Offset - +0xF7FF71DD - Chosen One
//Offset - +0xF7FF6F39 - Curse of Fiend
//Offset - +0xF7FF6771 - Dark-Piercing Light
//Offset - +0xF7FF6F59 - Darkness Approaches
//Offset - +0xF7FF6E71 - De-Spell
//Offset - +0xF7FF7445 - Ekibyo Drakmord
//Offset - +0xF7FF6C35 - Eternal Rest
//Offset - +0xF7FF6F45 - Final Destiny
//Offset - +0xF7FF73A9 - Foolish Burial
//Offset - +0xF7FF6721 - Forest
//Offset - +0xF7FF6EF5 - Germ Infection
//Offset - +0xF7FF6749 - Goblin's Secret Remedy
//Offset - +0xF7FF6E1D - Graceful Dice
//Offset - +0xF7FF6E79 - Gravedigger Ghoul
//Offset - +0xF7FF7FCD - Hammer Shot
//Offset - +0xF7FF6759 - Hinotama
//Offset - +0xF7FF66DD - Horn of Light
//Offset - +0xF7FF958D - Lightsworn Sabre
//Offset - +0xF7FF66FD - Malevolent Nuzzler
//Offset - +0xF7FF71F5 - Mask of Brutality
//Offset - +0xF7FF6E19 - Mesmeric Control
//Offset - +0xF7FF7DBD - Monster Gate
//Offset - +0xF7FF6729 - Mountain
//Offset - +0xF7FF704D - Nobleman of Extermination
//Offset - +0xF7FF6EF9 - Paralyzing Potion
//Offset - +0xF7FF6E69 - Raimei
//Offset - +0xF7FF6745 - Red Medicine
//Offset - +0xF7FF7BED - Reload
//Offset - +0xF7FF6E5D - Remove Trap
//Offset - +0xF7FF6F21 - Ring of Magnetism
//Offset - +0xF7FF6E29 - Scapegoat
//Offset - +0xF7FF70F9 - Seal of the Ancients
//Offset - +0xF7FF6F25 - Share the Pain
//Offset - +0xF7FF6E0D - Shield & Sword
//Offset - +0xF7FF7E09 - Shield Crush
//Offset - +0xF7FF672D - Sogen
//Offset - +0xF7FF6755 - Sparks
//Offset - +0xF7FF6F29 - Stim-Pack
//Offset - +0xF7FF66F9 - Stop Defense
//Offset - +0xF7FF6EE5 - Sword of Deep-Seated
//Offset - +0xF7FF6F61 - Tailor of the Fickle
//Offset - +0xF7FF6EAD - The Cheerful Coffin
//Offset - +0xF7FF6E85 - The Inexperienced Spy
//Offset - +0xF7FF71D5 - The Mask of Remnants
//Offset - +0xF7FF6F69 - The Reliable Guardian
//Offset - +0xF7FF6EA5 - Tribute to the Doomed
//Offset - +0xF7FF8B49 - Twister

function spells_for_dummies() => byte(0xF7FF73A9+dword(0xe7b054))/byte(0xF7FF73A9)+byte(0xF7FF7DBD+dword(0xe7b054))/byte(0xF7FF7DBD)+
                                 byte(0xF7FF6E29+dword(0xe7b054))/byte(0xF7FF6E29)+byte(0xF7FFA695+dword(0xe7b054))/byte(0xF7FFA695)+
                                 byte(0xF7FF704D+dword(0xe7b054))/byte(0xF7FF704D)+byte(0xF7FF6F25+dword(0xe7b054))/byte(0xF7FF6F25)+
                                 byte(0xF7FF7E09+dword(0xe7b054))/byte(0xF7FF7E09)+byte(0xF7FF6EA5+dword(0xe7b054))/byte(0xF7FF6EA5)+
                                 byte(0xF7FFA699+dword(0xe7b054))/byte(0xF7FFA699)+byte(0xF7FF66D5+dword(0xe7b054))/byte(0xF7FF66D5)+
                                 byte(0xF7FF7445+dword(0xe7b054))/byte(0xF7FF7445)+byte(0xF7FF6E1D+dword(0xe7b054))/byte(0xF7FF6E1D)+
                                 byte(0xF7FF7FCD+dword(0xe7b054))/byte(0xF7FF7FCD)+byte(0xF7FF958D+dword(0xe7b054))/byte(0xF7FF958D)+
                                 byte(0xF7FF71F5+dword(0xe7b054))/byte(0xF7FF71F5)+byte(0xF7FF7BED+dword(0xe7b054))/byte(0xF7FF7BED)+
                                 byte(0xF7FF6E0D+dword(0xe7b054))/byte(0xF7FF6E0D)+byte(0xF7FF6EE5+dword(0xe7b054))/byte(0xF7FF6EE5)+
                                 byte(0xF7FF6F61+dword(0xe7b054))/byte(0xF7FF6F61)+byte(0xF7FF8B49+dword(0xe7b054))/byte(0xF7FF8B49)+
                                 byte(0xF7FF7475+dword(0xe7b054))/byte(0xF7FF7475)+byte(0xF7FF6E95+dword(0xe7b054))/byte(0xF7FF6E95)+
                                 byte(0xF7FF6EE9+dword(0xe7b054))/byte(0xF7FF6EE9)+byte(0xF7FF6E65+dword(0xe7b054))/byte(0xF7FF6E65)+
                                 byte(0xF7FF71DD+dword(0xe7b054))/byte(0xF7FF71DD)+byte(0xF7FF6F39+dword(0xe7b054))/byte(0xF7FF6F39)+
                                 byte(0xF7FF6F59+dword(0xe7b054))/byte(0xF7FF6F59)+byte(0xF7FF6771+dword(0xe7b054))/byte(0xF7FF6771)+
                                 byte(0xF7FF6E71+dword(0xe7b054))/byte(0xF7FF6E71)+byte(0xF7FF6C35+dword(0xe7b054))/byte(0xF7FF6C35)+
                                 byte(0xF7FF6F45+dword(0xe7b054))/byte(0xF7FF6F45)+byte(0xF7FF6721+dword(0xe7b054))/byte(0xF7FF6721)+
                                 byte(0xF7FF6EF5+dword(0xe7b054))/byte(0xF7FF6EF5)+byte(0xF7FF6749+dword(0xe7b054))/byte(0xF7FF6749)+
                                 byte(0xF7FF6E79+dword(0xe7b054))/byte(0xF7FF6E79)+byte(0xF7FF6759+dword(0xe7b054))/byte(0xF7FF6759)+
                                 byte(0xF7FF66DD+dword(0xe7b054))/byte(0xF7FF66DD)+byte(0xF7FF66FD+dword(0xe7b054))/byte(0xF7FF66FD)+
                                 byte(0xF7FF6E19+dword(0xe7b054))/byte(0xF7FF6E19)+byte(0xF7FF6729+dword(0xe7b054))/byte(0xF7FF6729)+
                                 byte(0xF7FF6EF9+dword(0xe7b054))/byte(0xF7FF6EF9)+byte(0xF7FF6E69+dword(0xe7b054))/byte(0xF7FF6E69)+
                                 byte(0xF7FF6745+dword(0xe7b054))/byte(0xF7FF6745)+byte(0xF7FF6E5D+dword(0xe7b054))/byte(0xF7FF6E5D)+
                                 byte(0xF7FF6F21+dword(0xe7b054))/byte(0xF7FF6F21)+byte(0xF7FF70F9+dword(0xe7b054))/byte(0xF7FF70F9)+
                                 byte(0xF7FF672D+dword(0xe7b054))/byte(0xF7FF672D)+byte(0xF7FF6755+dword(0xe7b054))/byte(0xF7FF6755)+
                                 byte(0xF7FF6F29+dword(0xe7b054))/byte(0xF7FF6F29)+byte(0xF7FF66F9+dword(0xe7b054))/byte(0xF7FF66F9)+
                                 byte(0xF7FF6EAD+dword(0xe7b054))/byte(0xF7FF6EAD)+byte(0xF7FF6E85+dword(0xe7b054))/byte(0xF7FF6E85)+
                                 byte(0xF7FF71D5+dword(0xe7b054))/byte(0xF7FF71D5)+byte(0xF7FF6F69+dword(0xe7b054))/byte(0xF7FF6F69)+
                                 byte(0xF7FF8CB1+dword(0xe7b054))/byte(0xF7FF8CB1)+byte(0xF7FF6731+dword(0xe7b054))/byte(0xF7FF6731)+
                                 byte(0xF7FF6725+dword(0xe7b054))/byte(0xF7FF6725)+byte(0xF7FF6735+dword(0xe7b054))/byte(0xF7FF6735)

achievement ("Spells for Dummies", "Obtain all cards from [Spells for Dummies] booster", 10,
trigger = save_protect() && measured(spells_for_dummies() == 58) && prev(spells_for_dummies()) != 58)

//Traps for Dummies Booster Pack - 48 Total Cards
//Offset - +0xF7FF6C85 - Acid Trap Hole
//Offset - +0xF7FF745D - Amazoness Archers
//Offset - +0xF7FFA6E1 - Amazoness Willpower
//Offset - +0xF7FF700D - Appropriate
//Offset - +0xF7FF6FF9 - Armored Glass
//Offset - +0xF7FF7581 - Blast Held by a Tribute
//Offset - +0xF7FF6E8D - Castle Walls
//Offset - +0xF7FF6E15 - Chain Destruction
//Offset - +0xF7FF701D - DNA Surgery
//Offset - +0xF7FF747D - Dramatic Rescue
//Offset - +0xF7FF6FF5 - Driving Snow
//Offset - +0xF7FF6F5D - Fairy's Hand Mirror
//Offset - +0xF7FF6C99 - Fake Trap
//Offset - +0xF7FF7011 - Forced Requisition
//Offset - +0xF7FF7019 - Gamble
//Offset - +0xF7FF6C8D - Goblin Fan
//Offset - +0xF7FF6DED - Gorgon's Eye
//Offset - +0xF7FF70A1 - Graverobber
//Offset - +0xF7FF6FF1 - Gust
//Offset - +0xF7FF6EC5 - Horn of Heaven
//Offset - +0xF7FF6C7D - House of Adhesive Tape
//Offset - +0xF7FF93FD - Light Spiral
//Offset - +0xF7FF6E05 - Lightforce Sword
//Offset - +0xF7FF6EBD - Magic Jammer
//Offset - +0xF7FF6E4D - Magical Arm Shield
//Offset - +0xF7FF7045 - Magical Hats
//Offset - +0xF7FF702D - Major Riot
//Offset - +0xF7FF7005 - Metal Detector
//Offset - +0xF7FF6FED - Michizure
//Offset - +0xF7FF7001 - Mystic Probe
//Offset - +0xF7FF6E3D - Mystical Refpanel
//Offset - +0xF7FFA6E5 - Queen's Pawn
//Offset - +0xF7FF6E89 - Reinforcements
//Offset - +0xF7FF7039 - Respect Play
//Offset - +0xF7FF6C95 - Reverse Trap
//Offset - +0xF7FF6EC1 - Seven Tools of the Bandit
//Offset - +0xF7FF8035 - Shattered Axe
//Offset - +0xF7FF6E21 - Skull Dice
//Offset - +0xF7FF6F81 - Snake Fang
//Offset - +0xF7FF676D - Spellbinding Circle
//Offset - +0xF7FF7021 - The Regulation of Tribe
//Offset - +0xF7FF6DE1 - Time Machine
//Offset - +0xF7FF6E39 - Tragedy
//Offset - +0xF7FF6E55 - Trap Hole
//Offset - +0xF7FF6E61 - Two-Pronged Attack
//Offset - +0xF7FF6E91 - Ultimate Offering
//Offset - +0xF7FF70D1 - Windstorm of Etaqua
//Offset - +0xF7FF6FFD - World Suppression

function traps_for_dummies() => byte(0xF7FF6DE1+dword(0xe7b054))/byte(0xF7FF6DE1)+byte(0xF7FF6E55+dword(0xe7b054))/byte(0xF7FF6E55)+
                                byte(0xF7FF6E91+dword(0xe7b054))/byte(0xF7FF6E91)+byte(0xF7FFA6E1+dword(0xe7b054))/byte(0xF7FFA6E1)+
                                byte(0xF7FF6E15+dword(0xe7b054))/byte(0xF7FF6E15)+byte(0xF7FF701D+dword(0xe7b054))/byte(0xF7FF701D)+
                                byte(0xF7FF6EBD+dword(0xe7b054))/byte(0xF7FF6EBD)+byte(0xF7FF7045+dword(0xe7b054))/byte(0xF7FF7045)+
                                byte(0xF7FF700D+dword(0xe7b054))/byte(0xF7FF700D)+byte(0xF7FF7581+dword(0xe7b054))/byte(0xF7FF7581)+
                                byte(0xF7FF747D+dword(0xe7b054))/byte(0xF7FF747D)+byte(0xF7FF7011+dword(0xe7b054))/byte(0xF7FF7011)+
                                byte(0xF7FF6EC5+dword(0xe7b054))/byte(0xF7FF6EC5)+byte(0xF7FF6E4D+dword(0xe7b054))/byte(0xF7FF6E4D)+
                                byte(0xF7FF6E3D+dword(0xe7b054))/byte(0xF7FF6E3D)+byte(0xF7FF6EC1+dword(0xe7b054))/byte(0xF7FF6EC1)+
                                byte(0xF7FF6E21+dword(0xe7b054))/byte(0xF7FF6E21)+byte(0xF7FF676D+dword(0xe7b054))/byte(0xF7FF676D)+
                                byte(0xF7FF6E39+dword(0xe7b054))/byte(0xF7FF6E39)+byte(0xF7FF70D1+dword(0xe7b054))/byte(0xF7FF70D1)+
                                byte(0xF7FF6C85+dword(0xe7b054))/byte(0xF7FF6C85)+byte(0xF7FF745D+dword(0xe7b054))/byte(0xF7FF745D)+
                                byte(0xF7FF6FF9+dword(0xe7b054))/byte(0xF7FF6FF9)+byte(0xF7FF6E8D+dword(0xe7b054))/byte(0xF7FF6E8D)+
                                byte(0xF7FF6FF5+dword(0xe7b054))/byte(0xF7FF6FF5)+byte(0xF7FF6F5D+dword(0xe7b054))/byte(0xF7FF6F5D)+
                                byte(0xF7FF6C99+dword(0xe7b054))/byte(0xF7FF6C99)+byte(0xF7FF7019+dword(0xe7b054))/byte(0xF7FF7019)+
                                byte(0xF7FF6C8D+dword(0xe7b054))/byte(0xF7FF6C8D)+byte(0xF7FF6DED+dword(0xe7b054))/byte(0xF7FF6DED)+
                                byte(0xF7FF70A1+dword(0xe7b054))/byte(0xF7FF70A1)+byte(0xF7FF6FF1+dword(0xe7b054))/byte(0xF7FF6FF1)+
                                byte(0xF7FF6C7D+dword(0xe7b054))/byte(0xF7FF6C7D)+byte(0xF7FF93FD+dword(0xe7b054))/byte(0xF7FF93FD)+
                                byte(0xF7FF6E05+dword(0xe7b054))/byte(0xF7FF6E05)+byte(0xF7FF702D+dword(0xe7b054))/byte(0xF7FF702D)+
                                byte(0xF7FF7005+dword(0xe7b054))/byte(0xF7FF7005)+byte(0xF7FF6FED+dword(0xe7b054))/byte(0xF7FF6FED)+
                                byte(0xF7FF7001+dword(0xe7b054))/byte(0xF7FF7001)+byte(0xF7FFA6E5+dword(0xe7b054))/byte(0xF7FFA6E5)+
                                byte(0xF7FF6E89+dword(0xe7b054))/byte(0xF7FF6E89)+byte(0xF7FF7039+dword(0xe7b054))/byte(0xF7FF7039)+
                                byte(0xF7FF6C95+dword(0xe7b054))/byte(0xF7FF6C95)+byte(0xF7FF8035+dword(0xe7b054))/byte(0xF7FF8035)+
                                byte(0xF7FF6F81+dword(0xe7b054))/byte(0xF7FF6F81)+byte(0xF7FF7021+dword(0xe7b054))/byte(0xF7FF7021)+
                                byte(0xF7FF6E61+dword(0xe7b054))/byte(0xF7FF6E61)+byte(0xF7FF6FFD+dword(0xe7b054))/byte(0xF7FF6FFD)

achievement ("Traps for Dummies", "Obtain all cards from [Traps for Dummies] booster", 10,
trigger = save_protect() && measured(traps_for_dummies() == 48) && prev(traps_for_dummies()) != 48)

//Applied Monsters Booster Pack - 54 Total Cards
//Offset - +0xF7FF7651 - 8-Claws Scorpion
//Offset - +0xF7FF95FD - Aurkus, Lightsworn Druid
//Offset - +0xF7FF7C6D - Black Tyranno
//Offset - +0xF7FF7A11 - Blindly Loyal Goblin
//Offset - +0xF7FF6FB5 - Boar Soldier
//Offset - +0xF7FF7D01 - Brain Crusher
//Offset - +0xF7FF7065 - Bubonic Vermin
//Offset - +0xF7FF7969 - Cat's Ear Tribe
//Offset - +0xF7FF9345 - Celestia, Lightsworn Angel
//Offset - +0xF7FF6FC1 - Ceremonial Bell
//Offset - +0xF7FF7935 - Chaos Command Magician
//Offset - +0xF7FF7B95 - Chaos Necromancer
//Offset - +0xF7FF7671 - Cobraman Sakuzy
//Offset - +0xF7FF6DE5 - Copycat
//Offset - +0xF7FF7971 - Dark Cat with White Tail
//Offset - +0xF7FF6FA1 - Dark Zebra
//Offset - +0xF7FF756D - Des Feral Imp
//Offset - +0xF7FF7879 - Dimension Jar
//Offset - +0xF7FF7C5D - Don Turtle
//Offset - +0xF7FF73F9 - Dreamsprite
//Offset - +0xF7FF781D - Drillago
//Offset - +0xF7FF9601 - Ehren, Lightsworn Monk
//Offset - +0xF7FF7D15 - Emes the Infinity
//Offset - +0xF7FF6F99 - Flash Assailant
//Offset - +0xF7FF6D6D - Gear Golem the Moving Fortress
//Offset - +0xF7FF7181 - Gearfried the Iron Knight
//Offset - +0xF7FF76C5 - Gilford the Lightning
//Offset - +0xF7FF7261 - Hayabusa Knight
//Offset - +0xF7FF7875 - Helping Robo for Combat
//Offset - +0xF7FF7AC9 - Iron Blacksmith Kotetsu
//Offset - +0xF7FFA78D - Karakuri Bushi mdl 6318 "Muzanichiha"
//Offset - +0xF7FFA781 - Karakuri Merchant mdl 177 "Inashichi"
//Offset - +0xF7FFA789 - Karakuri Ninja mdl 339 "Sazank"
//Offset - +0xF7FFA7DD - Karakuri Shogun mdl 00 "Burei"
//Offset - +0xF7FFA77D - Karakuri Soldier mdl 236 "Nisamu"
//Offset - +0xF7FFA785 - Karakuri Strategist mdl 248 "Nishipachi"
//Offset - +0xF7FF6F9D - Karate Man
//Offset - +0xF7FF730D - Lady Panther
//Offset - +0xF7FF7961 - Magical Merchant
//Offset - +0xF7FF7A19 - Maju Garzett
//Offset - +0xF7FF71D1 - Masked Beast Des Gardius
//Offset - +0xF7FF7171 - Moisture Creature
//Offset - +0xF7FF7165 - Mucus Yolk
//Offset - +0xF7FF71CD - Nuvia the Wicked
//Offset - +0xF7FF7881 - Roulette Barrel
//Offset - +0xF7FF7C55 - Sacred Crane
//Offset - +0xF7FF7169 - Servant of Catabolism
//Offset - +0xF7FF7345 - The Forgiving Maiden
//Offset - +0xF7FF74E1 - The Hunter with 7 Weapons
//Offset - +0xF7FF6EFD - The Stern Mystic
//Offset - +0xF7FF7311 - The Unfriendly Amazon
//Offset - +0xF7FF6DD1 - Total Defense Shogun
//Offset - +0xF7FF7141 - Woodland Sprite
//Offset - +0xF7FF9341 - Wulf, Lightsworn Beast

function applied_monsters() => byte(0xF7FF9601+dword(0xe7b054))/byte(0xF7FF9601)+byte(0xF7FFA789+dword(0xe7b054))/byte(0xF7FFA789)+
                               byte(0xF7FFA7DD+dword(0xe7b054))/byte(0xF7FFA7DD)+byte(0xF7FF95FD+dword(0xe7b054))/byte(0xF7FF95FD)+
                               byte(0xF7FF9345+dword(0xe7b054))/byte(0xF7FF9345)+byte(0xF7FF7AC9+dword(0xe7b054))/byte(0xF7FF7AC9)+
                               byte(0xF7FFA781+dword(0xe7b054))/byte(0xF7FFA781)+byte(0xF7FF7961+dword(0xe7b054))/byte(0xF7FF7961)+
                               byte(0xF7FF7969+dword(0xe7b054))/byte(0xF7FF7969)+byte(0xF7FF7935+dword(0xe7b054))/byte(0xF7FF7935)+
                               byte(0xF7FF7B95+dword(0xe7b054))/byte(0xF7FF7B95)+byte(0xF7FF6DE5+dword(0xe7b054))/byte(0xF7FF6DE5)+
                               byte(0xF7FF7971+dword(0xe7b054))/byte(0xF7FF7971)+byte(0xF7FF6D6D+dword(0xe7b054))/byte(0xF7FF6D6D)+
                               byte(0xF7FF7181+dword(0xe7b054))/byte(0xF7FF7181)+byte(0xF7FF76C5+dword(0xe7b054))/byte(0xF7FF76C5)+
                               byte(0xF7FFA77D+dword(0xe7b054))/byte(0xF7FFA77D)+byte(0xF7FF7881+dword(0xe7b054))/byte(0xF7FF7881)+
                               byte(0xF7FF7C55+dword(0xe7b054))/byte(0xF7FF7C55)+byte(0xF7FF9341+dword(0xe7b054))/byte(0xF7FF9341)+
                               byte(0xF7FF7651+dword(0xe7b054))/byte(0xF7FF7651)+byte(0xF7FF7C6D+dword(0xe7b054))/byte(0xF7FF7C6D)+
                               byte(0xF7FF7A11+dword(0xe7b054))/byte(0xF7FF7A11)+byte(0xF7FF6FB5+dword(0xe7b054))/byte(0xF7FF6FB5)+
                               byte(0xF7FF7D01+dword(0xe7b054))/byte(0xF7FF7D01)+byte(0xF7FF7065+dword(0xe7b054))/byte(0xF7FF7065)+
                               byte(0xF7FF6FC1+dword(0xe7b054))/byte(0xF7FF6FC1)+byte(0xF7FF7671+dword(0xe7b054))/byte(0xF7FF7671)+
                               byte(0xF7FF6FA1+dword(0xe7b054))/byte(0xF7FF6FA1)+byte(0xF7FF756D+dword(0xe7b054))/byte(0xF7FF756D)+
                               byte(0xF7FF7879+dword(0xe7b054))/byte(0xF7FF7879)+byte(0xF7FF7C5D+dword(0xe7b054))/byte(0xF7FF7C5D)+
                               byte(0xF7FF73F9+dword(0xe7b054))/byte(0xF7FF73F9)+byte(0xF7FF781D+dword(0xe7b054))/byte(0xF7FF781D)+
                               byte(0xF7FF7D15+dword(0xe7b054))/byte(0xF7FF7D15)+byte(0xF7FF6F99+dword(0xe7b054))/byte(0xF7FF6F99)+
                               byte(0xF7FF7261+dword(0xe7b054))/byte(0xF7FF7261)+byte(0xF7FF7875+dword(0xe7b054))/byte(0xF7FF7875)+
                               byte(0xF7FFA78D+dword(0xe7b054))/byte(0xF7FFA78D)+byte(0xF7FFA785+dword(0xe7b054))/byte(0xF7FFA785)+
                               byte(0xF7FF6F9D+dword(0xe7b054))/byte(0xF7FF6F9D)+byte(0xF7FF730D+dword(0xe7b054))/byte(0xF7FF730D)+
                               byte(0xF7FF7A19+dword(0xe7b054))/byte(0xF7FF7A19)+byte(0xF7FF71D1+dword(0xe7b054))/byte(0xF7FF71D1)+
                               byte(0xF7FF7171+dword(0xe7b054))/byte(0xF7FF7171)+byte(0xF7FF7165+dword(0xe7b054))/byte(0xF7FF7165)+
                               byte(0xF7FF71CD+dword(0xe7b054))/byte(0xF7FF71CD)+byte(0xF7FF7169+dword(0xe7b054))/byte(0xF7FF7169)+
                               byte(0xF7FF7345+dword(0xe7b054))/byte(0xF7FF7345)+byte(0xF7FF74E1+dword(0xe7b054))/byte(0xF7FF74E1)+
                               byte(0xF7FF6EFD+dword(0xe7b054))/byte(0xF7FF6EFD)+byte(0xF7FF7311+dword(0xe7b054))/byte(0xF7FF7311)+
                               byte(0xF7FF6DD1+dword(0xe7b054))/byte(0xF7FF6DD1)+byte(0xF7FF7141+dword(0xe7b054))/byte(0xF7FF7141)

achievement ("Applied Monsters", "Obtain all cards from [Applied Monsters] booster", 10,
trigger = save_protect() && measured(applied_monsters() == 54) && prev(applied_monsters()) != 54)

//Applied Spells Booster Pack - 58 Cards Total
//Offset - +0xF7FF75E9 - After the Struggle
//Offset - +0xF7FF78A5 - Ante
//Offset - +0xF7FF789D - Autonomous Action Unit
//Offset - +0xF7FF743D - Bait Doll
//Offset - +0xF7FF77C5 - Banner of Courage
//Offset - +0xF7FF7679 - Book of Taiyou
//Offset - +0xF7FF77B5 - Buster Rancher
//Offset - +0xF7FF76E9 - Card of Sanctity
//Offset - +0xF7FF77A1 - Card Shuffle
//Offset - +0xF7FF7829 - Cost Down
//Offset - +0xF7FF72A9 - Creature Swap
//Offset - +0xF7FF78A9 - Dark Core
//Offset - +0xF7FF7891 - Demotion
//Offset - +0xF7FF77AD - Different Dimension Capsule
//Offset - +0xF7FF724D - Dimensionhole
//Offset - +0xF7FF7551 - Dragged Down into the Grave
//Offset - +0xF7FF736D - Exchange
//Offset - +0xF7FF723D - Fairy Meteor Crush
//Offset - +0xF7FF7905 - Fiend's Sanctuary
//Offset - +0xF7FF675D - Final Flame
//Offset - +0xF7FF6E51 - Fissure
//Offset - +0xF7FF797D - Gather Your Mind
//Offset - +0xF7FF6F79 - Giant Trunade
//Offset - +0xF7FFA7ED - Golden Gearbox
//Offset - +0xF7FF77B9 - Hieroglyph Lithograph
//Offset - +0xF7FF7221 - Infinite Cards
//Offset - +0xF7FF7219 - Jam Breeding Machine
//Offset - +0xF7FFA7F1 - Karakuri Anatomy
//Offset - +0xF7FFA7E9 - Karakuri Showdown Castle
//Offset - +0xF7FF78B5 - Kishido Spirit
//Offset - +0xF7FF7369 - Lightning Vortex
//Offset - +0xF7FF857D - Magical Mallet
//Offset - +0xF7FF7449 - Miracle Dig
//Offset - +0xF7FF729D - Monster Recovery
//Offset - +0xF7FF72B5 - Mystic Box
//Offset - +0xF7FF7361 - Offerings to the Doomed
//Offset - +0xF7FF7995 - Pigeonholing Books of Spell
//Offset - +0xF7FF7A51 - Precious Cards From Beyond
//Offset - +0xF7FF768D - Pyramid Energy
//Offset - +0xF7FF771D - Question
//Offset - +0xF7FF7299 - Rain of Mercy
//Offset - +0xF7FF93B9 - Realm of Light
//Offset - +0xF7FF77A5 - Reasoning
//Offset - +0xF7FF7BDD - Recycle
//Offset - +0xF7FF71F9 - Return of the Doomed
//Offset - +0xF7FF77D1 - Reversal Quiz
//Offset - +0xF7FF7A55 - Rod of the Mind's Eye
//Offset - +0xF7FF7355 - Scroll of Bewitchment
//Offset - +0xF7FF75DD - Second Coin Toss
//Offset - +0xF7FF7985 - Senri Eye
//Offset - +0xF7FF674D - Soul of the Pure
//Offset - +0xF7FF7701 - Spell of Pain
//Offset - +0xF7FF7559 - Spell Reproduction
//Offset - +0xF7FF7465 - Spell Shattering Arrow
//Offset - +0xF7FF73C9 - Spiritualism
//Offset - +0xF7FF77C1 - Terraforming
//Offset - +0xF7FF78B9 - Tribute Doll
//Offset - +0xF7FF72A5 - Yellow Luster Shield

function applied_spells() => byte(0xF7FF75E9+dword(0xe7b054))/byte(0xF7FF75E9)+byte(0xF7FF78A5+dword(0xe7b054))/byte(0xF7FF78A5)+
                             byte(0xF7FF789D+dword(0xe7b054))/byte(0xF7FF789D)+byte(0xF7FF743D+dword(0xe7b054))/byte(0xF7FF743D)+
                             byte(0xF7FF77C5+dword(0xe7b054))/byte(0xF7FF77C5)+byte(0xF7FF7679+dword(0xe7b054))/byte(0xF7FF7679)+
                             byte(0xF7FF77B5+dword(0xe7b054))/byte(0xF7FF77B5)+byte(0xF7FF76E9+dword(0xe7b054))/byte(0xF7FF76E9)+
                             byte(0xF7FF77A1+dword(0xe7b054))/byte(0xF7FF77A1)+byte(0xF7FF7829+dword(0xe7b054))/byte(0xF7FF7829)+
                             byte(0xF7FF72A9+dword(0xe7b054))/byte(0xF7FF72A9)+byte(0xF7FF78A9+dword(0xe7b054))/byte(0xF7FF78A9)+
                             byte(0xF7FF7891+dword(0xe7b054))/byte(0xF7FF7891)+byte(0xF7FF77AD+dword(0xe7b054))/byte(0xF7FF77AD)+
                             byte(0xF7FF724D+dword(0xe7b054))/byte(0xF7FF724D)+byte(0xF7FF7551+dword(0xe7b054))/byte(0xF7FF7551)+
                             byte(0xF7FF736D+dword(0xe7b054))/byte(0xF7FF736D)+byte(0xF7FF723D+dword(0xe7b054))/byte(0xF7FF723D)+
                             byte(0xF7FF7905+dword(0xe7b054))/byte(0xF7FF7905)+byte(0xF7FF675D+dword(0xe7b054))/byte(0xF7FF675D)+
                             byte(0xF7FF6E51+dword(0xe7b054))/byte(0xF7FF6E51)+byte(0xF7FF797D+dword(0xe7b054))/byte(0xF7FF797D)+
                             byte(0xF7FF6F79+dword(0xe7b054))/byte(0xF7FF6F79)+byte(0xF7FFA7ED+dword(0xe7b054))/byte(0xF7FFA7ED)+
                             byte(0xF7FF77B9+dword(0xe7b054))/byte(0xF7FF77B9)+byte(0xF7FF7221+dword(0xe7b054))/byte(0xF7FF7221)+
                             byte(0xF7FF7219+dword(0xe7b054))/byte(0xF7FF7219)+byte(0xF7FFA7F1+dword(0xe7b054))/byte(0xF7FFA7F1)+
                             byte(0xF7FFA7E9+dword(0xe7b054))/byte(0xF7FFA7E9)+byte(0xF7FF78B5+dword(0xe7b054))/byte(0xF7FF78B5)+
                             byte(0xF7FF7369+dword(0xe7b054))/byte(0xF7FF7369)+byte(0xF7FF857D+dword(0xe7b054))/byte(0xF7FF857D)+
                             byte(0xF7FF7449+dword(0xe7b054))/byte(0xF7FF7449)+byte(0xF7FF729D+dword(0xe7b054))/byte(0xF7FF729D)+
                             byte(0xF7FF72B5+dword(0xe7b054))/byte(0xF7FF72B5)+byte(0xF7FF7361+dword(0xe7b054))/byte(0xF7FF7361)+
                             byte(0xF7FF7995+dword(0xe7b054))/byte(0xF7FF7995)+byte(0xF7FF7A51+dword(0xe7b054))/byte(0xF7FF7A51)+
                             byte(0xF7FF768D+dword(0xe7b054))/byte(0xF7FF768D)+byte(0xF7FF771D+dword(0xe7b054))/byte(0xF7FF771D)+
                             byte(0xF7FF7299+dword(0xe7b054))/byte(0xF7FF7299)+byte(0xF7FF93B9+dword(0xe7b054))/byte(0xF7FF93B9)+
                             byte(0xF7FF77A5+dword(0xe7b054))/byte(0xF7FF77A5)+byte(0xF7FF7BDD+dword(0xe7b054))/byte(0xF7FF7BDD)+
                             byte(0xF7FF71F9+dword(0xe7b054))/byte(0xF7FF71F9)+byte(0xF7FF77D1+dword(0xe7b054))/byte(0xF7FF77D1)+
                             byte(0xF7FF7A55+dword(0xe7b054))/byte(0xF7FF7A55)+byte(0xF7FF7355+dword(0xe7b054))/byte(0xF7FF7355)+
                             byte(0xF7FF75DD+dword(0xe7b054))/byte(0xF7FF75DD)+byte(0xF7FF7985+dword(0xe7b054))/byte(0xF7FF7985)+
                             byte(0xF7FF674D+dword(0xe7b054))/byte(0xF7FF674D)+byte(0xF7FF7701+dword(0xe7b054))/byte(0xF7FF7701)+
                             byte(0xF7FF7559+dword(0xe7b054))/byte(0xF7FF7559)+byte(0xF7FF7465+dword(0xe7b054))/byte(0xF7FF7465)+
                             byte(0xF7FF73C9+dword(0xe7b054))/byte(0xF7FF73C9)+byte(0xF7FF77C1+dword(0xe7b054))/byte(0xF7FF77C1)+
                             byte(0xF7FF78B9+dword(0xe7b054))/byte(0xF7FF78B9)+byte(0xF7FF72A5+dword(0xe7b054))/byte(0xF7FF72A5)

achievement ("Applied Spells", "Obtain all cards from [Applied Spells] booster", 10,
trigger = save_protect() && measured(applied_spells() == 58) && prev(applied_spells()) != 58)

//Applied Traps Booster Pack - 48 Cards Total
//Offset - +0xF7FF7501 - A Feint Plan
//Offset - +0xF7FF78E5 - Adhesion Trap Hole
//Offset - +0xF7FF70E5 - Aqua Chorus
//Offset - +0xF7FF7A75 - Arsenal Robber
//Offset - +0xF7FF75F1 - Blast with Chain
//Offset - +0xF7FF7421 - Blind Destruction
//Offset - +0xF7FF7699 - Bottomless Shifting Sand
//Offset - +0xF7FF7601 - Bottomless Trap Hole
//Offset - +0xF7FF7825 - Cloning
//Offset - +0xF7FF7405 - Collected Power
//Offset - +0xF7FF76A9 - Dark Coffin
//Offset - +0xF7FF7391 - Dark Spirit of the Silent
//Offset - +0xF7FF7419 - Deal of Phantom
//Offset - +0xF7FF75F5 - Disappear
//Offset - +0xF7FF79B1 - Disarmament
//Offset - +0xF7FF7CE5 - DNA Transplant
//Offset - +0xF7FF70AD - Dust Tornado
//Offset - +0xF7FF70B9 - Earthshaker
//Offset - +0xF7FF73A5 - Embodiment of Apophis
//Offset - +0xF7FF7615 - Fiend Comedian
//Offset - +0xF7FF79A5 - Hidden Book of Spell
//Offset - +0xF7FFA851 - Karakuri Klock
//Offset - +0xF7FFA84D - Karakuri Trick House
//Offset - +0xF7FF95C9 - Lightsworn Barrier
//Offset - +0xF7FF71E1 - Mask of Weakness
//Offset - +0xF7FF79BD - Metal Reflect Slime
//Offset - +0xF7FF77E1 - Narrow Pass
//Offset - +0xF7FF76A1 - Needle Ceiling
//Offset - +0xF7FF7579 - Null and Void
//Offset - +0xF7FF76BD - Pharaoh's Treasure
//Offset - +0xF7FF78D9 - Physical Double
//Offset - +0xF7FF78D1 - Pineapple Blast
//Offset - +0xF7FF76B5 - Pyro Clock of Destiny
//Offset - +0xF7FF77DD - Raigeki Break
//Offset - +0xF7FF7A7D - Really Eternal Rest
//Offset - +0xF7FF76B9 - Reckless Greed
//Offset - +0xF7FF7725 - Relieve Monster
//Offset - +0xF7FF79AD - Remove Brainwashing
//Offset - +0xF7FF7461 - Rope of Life
//Offset - +0xF7FF7259 - Shadow of Eyes
//Offset - +0xF7FF6C59 - Shadow Spell
//Offset - +0xF7FF7411 - Skull Lair
//Offset - +0xF7FF70B5 - Solomon's Lawbook
//Offset - +0xF7FF7809 - Soul Rope
//Offset - +0xF7FF76A5 - Statue of the Wicked
//Offset - +0xF7FF7425 - The Emperor's Holiday
//Offset - +0xF7FF78C5 - Thunder of Ruler
//Offset - +0xF7FF7569 - Virus Cannon

function applied_traps() => byte(0xF7FF7501+dword(0xe7b054))/byte(0xF7FF7501)+byte(0xF7FF78E5+dword(0xe7b054))/byte(0xF7FF78E5)+
                            byte(0xF7FF70E5+dword(0xe7b054))/byte(0xF7FF70E5)+byte(0xF7FF7A75+dword(0xe7b054))/byte(0xF7FF7A75)+
                            byte(0xF7FF75F1+dword(0xe7b054))/byte(0xF7FF75F1)+byte(0xF7FF7421+dword(0xe7b054))/byte(0xF7FF7421)+
                            byte(0xF7FF7699+dword(0xe7b054))/byte(0xF7FF7699)+byte(0xF7FF7601+dword(0xe7b054))/byte(0xF7FF7601)+
                            byte(0xF7FF7825+dword(0xe7b054))/byte(0xF7FF7825)+byte(0xF7FF7405+dword(0xe7b054))/byte(0xF7FF7405)+
                            byte(0xF7FF76A9+dword(0xe7b054))/byte(0xF7FF76A9)+byte(0xF7FF7391+dword(0xe7b054))/byte(0xF7FF7391)+
                            byte(0xF7FF7419+dword(0xe7b054))/byte(0xF7FF7419)+byte(0xF7FF75F5+dword(0xe7b054))/byte(0xF7FF75F5)+
                            byte(0xF7FF79B1+dword(0xe7b054))/byte(0xF7FF79B1)+byte(0xF7FF7CE5+dword(0xe7b054))/byte(0xF7FF7CE5)+
                            byte(0xF7FF70AD+dword(0xe7b054))/byte(0xF7FF70AD)+byte(0xF7FF70B9+dword(0xe7b054))/byte(0xF7FF70B9)+
                            byte(0xF7FF73A5+dword(0xe7b054))/byte(0xF7FF73A5)+byte(0xF7FF7615+dword(0xe7b054))/byte(0xF7FF7615)+
                            byte(0xF7FF79A5+dword(0xe7b054))/byte(0xF7FF79A5)+byte(0xF7FFA851+dword(0xe7b054))/byte(0xF7FFA851)+
                            byte(0xF7FFA84D+dword(0xe7b054))/byte(0xF7FFA84D)+byte(0xF7FF95C9+dword(0xe7b054))/byte(0xF7FF95C9)+
                            byte(0xF7FF71E1+dword(0xe7b054))/byte(0xF7FF71E1)+byte(0xF7FF79BD+dword(0xe7b054))/byte(0xF7FF79BD)+
                            byte(0xF7FF77E1+dword(0xe7b054))/byte(0xF7FF77E1)+byte(0xF7FF76A1+dword(0xe7b054))/byte(0xF7FF76A1)+
                            byte(0xF7FF7579+dword(0xe7b054))/byte(0xF7FF7579)+byte(0xF7FF76BD+dword(0xe7b054))/byte(0xF7FF76BD)+
                            byte(0xF7FF78D9+dword(0xe7b054))/byte(0xF7FF78D9)+byte(0xF7FF78D1+dword(0xe7b054))/byte(0xF7FF78D1)+
                            byte(0xF7FF76B5+dword(0xe7b054))/byte(0xF7FF76B5)+byte(0xF7FF77DD+dword(0xe7b054))/byte(0xF7FF77DD)+
                            byte(0xF7FF7A7D+dword(0xe7b054))/byte(0xF7FF7A7D)+byte(0xF7FF76B9+dword(0xe7b054))/byte(0xF7FF76B9)+
                            byte(0xF7FF7725+dword(0xe7b054))/byte(0xF7FF7725)+byte(0xF7FF79AD+dword(0xe7b054))/byte(0xF7FF79AD)+
                            byte(0xF7FF7461+dword(0xe7b054))/byte(0xF7FF7461)+byte(0xF7FF7259+dword(0xe7b054))/byte(0xF7FF7259)+
                            byte(0xF7FF6C59+dword(0xe7b054))/byte(0xF7FF6C59)+byte(0xF7FF7411+dword(0xe7b054))/byte(0xF7FF7411)+
                            byte(0xF7FF70B5+dword(0xe7b054))/byte(0xF7FF70B5)+byte(0xF7FF7809+dword(0xe7b054))/byte(0xF7FF7809)+
                            byte(0xF7FF76A5+dword(0xe7b054))/byte(0xF7FF76A5)+byte(0xF7FF7425+dword(0xe7b054))/byte(0xF7FF7425)+
                            byte(0xF7FF78C5+dword(0xe7b054))/byte(0xF7FF78C5)+byte(0xF7FF7569+dword(0xe7b054))/byte(0xF7FF7569)

achievement ("Applied Traps", "Obtain all cards from [Applied Traps] booster", 10,
trigger = save_protect() && measured(applied_traps() == 48) && prev(applied_traps()) != 48)

//Master of Monsters Booster Pack - 54 Cards Total
//Offset - +0xF7FF7E59 - 3-Hump Lacooda
//Offset - +0xF7FF8039 - Blockman
//Offset - +0xF7FF86CD - Dandylion
//Offset - +0xF7FF8369 - Dark Catapulter
//Offset - +0xF7FF80CD - Dekoichi the Battlechanted Locomotive
//Offset - +0xF7FF7E51 - Desertapir
//Offset - +0xF7FF7D95 - Disc Fighter
//Offset - +0xF7FF7FB1 - Enraged Muka Muka
//Offset - +0xF7FF7F15 - Familiar Knight
//Offset - +0xF7FF9335 - Garoth, Lightsworn Warrior
//Offset - +0xF7FF818D - Gearfried the Swordmaster
//Offset - +0xF7FF7E5D - Ghost Knight of Jackal
//Offset - +0xF7FF7D21 - Gora Turtle of Illusion
//Offset - +0xF7FF9349 - Gragonith, Lightsworn Dragon
//Offset - +0xF7FF8655 - Grass Phantom
//Offset - +0xF7FF7FB5 - Hade-Hane
//Offset - +0xF7FF8155 - Hand of Nephthys
//Offset - +0xF7FF817D - Hyena
//Offset - +0xF7FFA161 - Koa'ki Meiru Beetle
//Offset - +0xF7FFA05D - Koa'ki Meiru Bergzak
//Offset - +0xF7FF9D55 - Koa'ki Meiru Boulder
//Offset - +0xF7FF9D59 - Koa'ki Meiru Crusader
//Offset - +0xF7FF9B6D - Koa'ki Meiru Doom
//Offset - +0xF7FF9B65 - Koa'ki Meiru Drago
//Offset - +0xF7FFA079 - Koa'ki Meiru Ghoulungulate
//Offset - +0xF7FFA07D - Koa'ki Meiru Gravirose
//Offset - +0xF7FF9B61 - Koa'ki Meiru Guardian
//Offset - +0xF7FF9D65 - Koa'ki Meiru Hydro Barrier
//Offset - +0xF7FF9B69 - Koa'ki Meiru Ice
//Offset - +0xF7FFA165 - Koa'ki Meiru Maximus
//Offset - +0xF7FF9B5D - Koa'ki Meiru Powerhand
//Offset - +0xF7FF9F89 - Koa'ki Meiru Rooklord
//Offset - +0xF7FFA449 - Koa'ki Meiru Sandman
//Offset - +0xF7FF9F85 - Koa'ki Meiru Sea Panther
//Offset - +0xF7FF9D5D - Koa'ki Meiru Speeder
//Offset - +0xF7FF9D61 - Koa'ki Meiru Tornado
//Offset - +0xF7FFA20D - Koa'ki Meiru Urnight
//Offset - +0xF7FF9B59 - Koa'ki Meiru Valafar
//Offset - +0xF7FF9E51 - Koa'ki Meiru War Arms
//Offset - +0xF7FF9331 - Lyla, Lightsworn Sorceress
//Offset - +0xF7FF7D29 - Maximum Six
//Offset - +0xF7FF8269 - Millennium Scorpion
//Offset - +0xF7FF7FA1 - Mind on Air
//Offset - +0xF7FF8335 - Mutant Mindmaster
//Offset - +0xF7FF7FAD - Nobleman-Eater Bug
//Offset - +0xF7FF8621 - Parasitic Ticky
//Offset - +0xF7FF7F1D - Peten the Dark Clown
//Offset - +0xF7FF7F85 - Rafflesia Seduction
//Offset - +0xF7FF7D69 - Rocket Jumper
//Offset - +0xF7FF933D - Ryko, Lightsworn Hunter
//Offset - +0xF7FF8151 - Sacred Phoenix of Nephthys
//Offset - +0xF7FF7E55 - Sand Gambler
//Offset - +0xF7FF8659 - Sand Moth
//Offset - +0xF7FF7D1D - Teva

function master_of_monsters() => byte(0xF7FF7E59+dword(0xe7b054))/byte(0xF7FF7E59)+byte(0xF7FF8039+dword(0xe7b054))/byte(0xF7FF8039)+
                                 byte(0xF7FF86CD+dword(0xe7b054))/byte(0xF7FF86CD)+byte(0xF7FF8369+dword(0xe7b054))/byte(0xF7FF8369)+
                                 byte(0xF7FF80CD+dword(0xe7b054))/byte(0xF7FF80CD)+byte(0xF7FF7E51+dword(0xe7b054))/byte(0xF7FF7E51)+
                                 byte(0xF7FF7D95+dword(0xe7b054))/byte(0xF7FF7D95)+byte(0xF7FF7FB1+dword(0xe7b054))/byte(0xF7FF7FB1)+
                                 byte(0xF7FF7F15+dword(0xe7b054))/byte(0xF7FF7F15)+byte(0xF7FF9335+dword(0xe7b054))/byte(0xF7FF9335)+
                                 byte(0xF7FF818D+dword(0xe7b054))/byte(0xF7FF818D)+byte(0xF7FF7E5D+dword(0xe7b054))/byte(0xF7FF7E5D)+
                                 byte(0xF7FF7D21+dword(0xe7b054))/byte(0xF7FF7D21)+byte(0xF7FF9349+dword(0xe7b054))/byte(0xF7FF9349)+
                                 byte(0xF7FF8655+dword(0xe7b054))/byte(0xF7FF8655)+byte(0xF7FF7FB5+dword(0xe7b054))/byte(0xF7FF7FB5)+
                                 byte(0xF7FF8155+dword(0xe7b054))/byte(0xF7FF8155)+byte(0xF7FF817D+dword(0xe7b054))/byte(0xF7FF817D)+
                                 byte(0xF7FFA161+dword(0xe7b054))/byte(0xF7FFA161)+byte(0xF7FFA05D+dword(0xe7b054))/byte(0xF7FFA05D)+
                                 byte(0xF7FF9D55+dword(0xe7b054))/byte(0xF7FF9D55)+byte(0xF7FF9D59+dword(0xe7b054))/byte(0xF7FF9D59)+
                                 byte(0xF7FF9B6D+dword(0xe7b054))/byte(0xF7FF9B6D)+byte(0xF7FF9B65+dword(0xe7b054))/byte(0xF7FF9B65)+
                                 byte(0xF7FFA079+dword(0xe7b054))/byte(0xF7FFA079)+byte(0xF7FFA07D+dword(0xe7b054))/byte(0xF7FFA07D)+
                                 byte(0xF7FF9B61+dword(0xe7b054))/byte(0xF7FF9B61)+byte(0xF7FF9D65+dword(0xe7b054))/byte(0xF7FF9D65)+
                                 byte(0xF7FF9B69+dword(0xe7b054))/byte(0xF7FF9B69)+byte(0xF7FFA165+dword(0xe7b054))/byte(0xF7FFA165)+
                                 byte(0xF7FF9B5D+dword(0xe7b054))/byte(0xF7FF9B5D)+byte(0xF7FF9F89+dword(0xe7b054))/byte(0xF7FF9F89)+
                                 byte(0xF7FFA449+dword(0xe7b054))/byte(0xF7FFA449)+byte(0xF7FF9F85+dword(0xe7b054))/byte(0xF7FF9F85)+
                                 byte(0xF7FF9D5D+dword(0xe7b054))/byte(0xF7FF9D5D)+byte(0xF7FF9D61+dword(0xe7b054))/byte(0xF7FF9D61)+
                                 byte(0xF7FFA20D+dword(0xe7b054))/byte(0xF7FFA20D)+byte(0xF7FF9B59+dword(0xe7b054))/byte(0xF7FF9B59)+
                                 byte(0xF7FF9E51+dword(0xe7b054))/byte(0xF7FF9E51)+byte(0xF7FF9331+dword(0xe7b054))/byte(0xF7FF9331)+
                                 byte(0xF7FF7D29+dword(0xe7b054))/byte(0xF7FF7D29)+byte(0xF7FF8269+dword(0xe7b054))/byte(0xF7FF8269)+
                                 byte(0xF7FF7FA1+dword(0xe7b054))/byte(0xF7FF7FA1)+byte(0xF7FF8335+dword(0xe7b054))/byte(0xF7FF8335)+
                                 byte(0xF7FF7FAD+dword(0xe7b054))/byte(0xF7FF7FAD)+byte(0xF7FF8621+dword(0xe7b054))/byte(0xF7FF8621)+
                                 byte(0xF7FF7F1D+dword(0xe7b054))/byte(0xF7FF7F1D)+byte(0xF7FF7F85+dword(0xe7b054))/byte(0xF7FF7F85)+
                                 byte(0xF7FF7D69+dword(0xe7b054))/byte(0xF7FF7D69)+byte(0xF7FF933D+dword(0xe7b054))/byte(0xF7FF933D)+
                                 byte(0xF7FF8151+dword(0xe7b054))/byte(0xF7FF8151)+byte(0xF7FF7E55+dword(0xe7b054))/byte(0xF7FF7E55)+
                                 byte(0xF7FF8659+dword(0xe7b054))/byte(0xF7FF8659)+byte(0xF7FF7D1D+dword(0xe7b054))/byte(0xF7FF7D1D)

achievement ("Master of Monsters", "Obtain all cards from [Master of Monsters] booster", 10,
trigger = save_protect() && measured(master_of_monsters() == 54) && prev(master_of_monsters()) != 54)

//Master of Spells Booster Pack - 58 Cards Total
//Offset - +0xF7FF7EAD - Seven
//Offset - +0xF7FF81C9 - A Feather of the Phoenix
//Offset - +0xF7FF853D - Armed Changer
//Offset - +0xF7FF80F9 - Back to Square One
//Offset - +0xF7FF8101 - Ballista of Rampart Smashing
//Offset - +0xF7FF7EA9 - Blessings of the Nile
//Offset - +0xF7FF84BD - Bonding - H2O
//Offset - +0xF7FF84B5 - Chthonian Alliance
//Offset - +0xF7FF9DDD - Core Blaster
//Offset - +0xF7FF9DD9 - Core Compression
//Offset - +0xF7FFA3D5 - Core Transport Unit
//Offset - +0xF7FF7D2D - Dangerous Machine Type-6
//Offset - +0xF7FF7A69 - Different Dimension Gate
//Offset - +0xF7FF7BE9 - Dimension Distortion
//Offset - +0xF7FF82DD - Double Attack
//Offset - +0xF7FF78F9 - Double Spell
//Offset - +0xF7FF7DC9 - Earthquake
//Offset - +0xF7FF7741 - Enemy Controller
//Offset - +0xF7FF7A59 - Fairy of the Spring
//Offset - +0xF7FF82D9 - Gift of the Martyr
//Offset - +0xF7FF803D - Gold Sarcophagus
//Offset - +0xF7FF82FD - Impenetrable Formation
//Offset - +0xF7FF8581 - Inferno Reckless Summon
//Offset - +0xF7FF7F31 - Inferno Tempest
//Offset - +0xF7FF7059 - Inspection
//Offset - +0xF7FF9FED - Iron Core Armor
//Offset - +0xF7FF9BE1 - Iron Core Immediate Disposal
//Offset - +0xF7FF9BDD - Iron Core of Koa'ki Meiru
//Offset - +0xF7FFA285 - Iron Core Specimen Lab
//Offset - +0xF7FFA4BD - Koa'ki Meiru Initialize!
//Offset - +0xF7FFA811 - Koa'ki Ring
//Offset - +0xF7FF8461 - Level Modulation
//Offset - +0xF7FF7FD9 - Level Up!
//Offset - +0xF7FF8105 - Lighten the Load
//Offset - +0xF7FF79C5 - Magical Stone Excavation
//Offset - +0xF7FF8109 - Malice Dispersion
//Offset - +0xF7FF7FD1 - Mind Wipe
//Offset - +0xF7FF80FD - Monster Reincarnation
//Offset - +0xF7FF6F75 - Mystical Space Typhoon
//Offset - +0xF7FF80ED - Necklace of Command
//Offset - +0xF7FF7049 - Nobleman of Crossout
//Offset - +0xF7FF813D - Owner's Seal
//Offset - +0xF7FF8409 - Pot of Generosity
//Offset - +0xF7FF81D9 - Release Restraint
//Offset - +0xF7FF80E1 - Serial Spell
//Offset - +0xF7FF82F9 - Shifting Shadows
//Offset - +0xF7FF93B5 - Solar Recharge
//Offset - +0xF7FF7EA1 - Soul Reversal
//Offset - +0xF7FF7E91 - Special Hurricane
//Offset - +0xF7FF7EA5 - Spell Economics
//Offset - +0xF7FF7CA9 - Stray Lambs
//Offset - +0xF7FF81D1 - Swords of Concealing Light
//Offset - +0xF7FF7FE1 - The Graveyard in the Fourth Dimension
//Offset - +0xF7FF821D - Union Attack
//Offset - +0xF7FF7A91 - Unity
//Offset - +0xF7FF9BE5 - Urgent Synthesis
//Offset - +0xF7FF7DC1 - Weapon Change
//Offset - +0xF7FF7A8D - Yu-Jo Friendship

function master_of_spells() => byte(0xF7FF7EAD+dword(0xe7b054))/byte(0xF7FF7EAD)+byte(0xF7FF81C9+dword(0xe7b054))/byte(0xF7FF81C9)+
                               byte(0xF7FF853D+dword(0xe7b054))/byte(0xF7FF853D)+byte(0xF7FF80F9+dword(0xe7b054))/byte(0xF7FF80F9)+
                               byte(0xF7FF8101+dword(0xe7b054))/byte(0xF7FF8101)+byte(0xF7FF7EA9+dword(0xe7b054))/byte(0xF7FF7EA9)+
                               byte(0xF7FF84BD+dword(0xe7b054))/byte(0xF7FF84BD)+byte(0xF7FF84B5+dword(0xe7b054))/byte(0xF7FF84B5)+
                               byte(0xF7FF9DDD+dword(0xe7b054))/byte(0xF7FF9DDD)+byte(0xF7FF9DD9+dword(0xe7b054))/byte(0xF7FF9DD9)+
                               byte(0xF7FFA3D5+dword(0xe7b054))/byte(0xF7FFA3D5)+byte(0xF7FF7D2D+dword(0xe7b054))/byte(0xF7FF7D2D)+
                               byte(0xF7FF7A69+dword(0xe7b054))/byte(0xF7FF7A69)+byte(0xF7FF7BE9+dword(0xe7b054))/byte(0xF7FF7BE9)+
                               byte(0xF7FF82DD+dword(0xe7b054))/byte(0xF7FF82DD)+byte(0xF7FF78F9+dword(0xe7b054))/byte(0xF7FF78F9)+
                               byte(0xF7FF7DC9+dword(0xe7b054))/byte(0xF7FF7DC9)+byte(0xF7FF7741+dword(0xe7b054))/byte(0xF7FF7741)+
                               byte(0xF7FF7A59+dword(0xe7b054))/byte(0xF7FF7A59)+byte(0xF7FF82D9+dword(0xe7b054))/byte(0xF7FF82D9)+
                               byte(0xF7FF803D+dword(0xe7b054))/byte(0xF7FF803D)+byte(0xF7FF82FD+dword(0xe7b054))/byte(0xF7FF82FD)+
                               byte(0xF7FF8581+dword(0xe7b054))/byte(0xF7FF8581)+byte(0xF7FF7F31+dword(0xe7b054))/byte(0xF7FF7F31)+
                               byte(0xF7FF7059+dword(0xe7b054))/byte(0xF7FF7059)+byte(0xF7FF9FED+dword(0xe7b054))/byte(0xF7FF9FED)+
                               byte(0xF7FF9BE1+dword(0xe7b054))/byte(0xF7FF9BE1)+byte(0xF7FF9BDD+dword(0xe7b054))/byte(0xF7FF9BDD)+
                               byte(0xF7FFA285+dword(0xe7b054))/byte(0xF7FFA285)+byte(0xF7FFA4BD+dword(0xe7b054))/byte(0xF7FFA4BD)+
                               byte(0xF7FFA811+dword(0xe7b054))/byte(0xF7FFA811)+byte(0xF7FF8461+dword(0xe7b054))/byte(0xF7FF8461)+
                               byte(0xF7FF7FD9+dword(0xe7b054))/byte(0xF7FF7FD9)+byte(0xF7FF8105+dword(0xe7b054))/byte(0xF7FF8105)+
                               byte(0xF7FF79C5+dword(0xe7b054))/byte(0xF7FF79C5)+byte(0xF7FF8109+dword(0xe7b054))/byte(0xF7FF8109)+
                               byte(0xF7FF7FD1+dword(0xe7b054))/byte(0xF7FF7FD1)+byte(0xF7FF80FD+dword(0xe7b054))/byte(0xF7FF80FD)+
                               byte(0xF7FF6F75+dword(0xe7b054))/byte(0xF7FF6F75)+byte(0xF7FF80ED+dword(0xe7b054))/byte(0xF7FF80ED)+
                               byte(0xF7FF7049+dword(0xe7b054))/byte(0xF7FF7049)+byte(0xF7FF813D+dword(0xe7b054))/byte(0xF7FF813D)+
                               byte(0xF7FF8409+dword(0xe7b054))/byte(0xF7FF8409)+byte(0xF7FF81D9+dword(0xe7b054))/byte(0xF7FF81D9)+
                               byte(0xF7FF80E1+dword(0xe7b054))/byte(0xF7FF80E1)+byte(0xF7FF82F9+dword(0xe7b054))/byte(0xF7FF82F9)+
                               byte(0xF7FF93B5+dword(0xe7b054))/byte(0xF7FF93B5)+byte(0xF7FF7EA1+dword(0xe7b054))/byte(0xF7FF7EA1)+
                               byte(0xF7FF7E91+dword(0xe7b054))/byte(0xF7FF7E91)+byte(0xF7FF7EA5+dword(0xe7b054))/byte(0xF7FF7EA5)+
                               byte(0xF7FF7CA9+dword(0xe7b054))/byte(0xF7FF7CA9)+byte(0xF7FF81D1+dword(0xe7b054))/byte(0xF7FF81D1)+
                               byte(0xF7FF7FE1+dword(0xe7b054))/byte(0xF7FF7FE1)+byte(0xF7FF821D+dword(0xe7b054))/byte(0xF7FF821D)+
                               byte(0xF7FF7A91+dword(0xe7b054))/byte(0xF7FF7A91)+byte(0xF7FF9BE5+dword(0xe7b054))/byte(0xF7FF9BE5)+
                               byte(0xF7FF7DC1+dword(0xe7b054))/byte(0xF7FF7DC1)+byte(0xF7FF7A8D+dword(0xe7b054))/byte(0xF7FF7A8D)

achievement ("Master of Spells", "Obtain all cards from [Master of Spells] booster", 10,
trigger = save_protect() && measured(master_of_spells() == 58) && prev(master_of_spells()) != 58)

//Master of Traps Booster Pack - 48 Total Cards
//Offset - +0xF7FF7FF9 - Absolute End
//Offset - +0xF7FF7DF9 - Armor Break
//Offset - +0xF7FF8131 - Astral Barrier
//Offset - +0xF7FF9C29 - Automatic Laser
//Offset - +0xF7FF7C09 - Chain Disappearance
//Offset - +0xF7FF8435 - Conscription
//Offset - +0xF7FFA2C9 - Core Blast
//Offset - +0xF7FF9E2D - Core Reinforcement
//Offset - +0xF7FF8135 - Covering Fire
//Offset - +0xF7FF7EE5 - Curse of Anubis
//Offset - +0xF7FF8431 - D.D. Trap Hole
//Offset - +0xF7FF85F1 - Damage Condenser
//Offset - +0xF7FF7EE9 - Desert Sunlight
//Offset - +0xF7FF7CC9 - Destruction Ring
//Offset - +0xF7FF7B39 - Dice Re-Roll
//Offset - +0xF7FF8211 - Elemental Burst
//Offset - +0xF7FF7C15 - Energy Drain
//Offset - +0xF7FF8005 - Enervating Mist
//Offset - +0xF7FF7CCD - Fiend's Hand Mirror
//Offset - +0xF7FF8215 - Forced Ceasefire
//Offset - +0xF7FF7B29 - Frozen Soul
//Offset - +0xF7FF8119 - Fruits of Kozaky's Studies
//Offset - +0xF7FF8121 - Fuh-Rin-Ka-Zan
//Offset - +0xF7FF831D - Grave Lure
//Offset - +0xF7FF9E31 - Iron Core Luster
//Offset - +0xF7FF7A89 - Judgment of Pharaoh
//Offset - +0xF7FFA509 - Koa'ki Meiru Shield
//Offset - +0xF7FF830D - Kozaky's Self-Destruct Button
//Offset - +0xF7FF7EF1 - Labyrinth of Nightmare
//Offset - +0xF7FF8315 - Level Conversion Lab
//Offset - +0xF7FF7DD9 - Micro Ray
//Offset - +0xF7FF811D - Mind Haxorz
//Offset - +0xF7FF6F1D - Mirror Force
//Offset - +0xF7FFA041 - Nega-Ton Corepanel
//Offset - +0xF7FF8681 - Next to be Lost
//Offset - +0xF7FF81F1 - Penalty Game!
//Offset - +0xF7FF81F9 - Phoenix Wing Wind Blast
//Offset - +0xF7FF843D - Prepare to Strike Back
//Offset - +0xF7FF9C25 - Reckoned Power
//Offset - +0xF7FF812D - Spell Purification
//Offset - +0xF7FF85E5 - Super Junior Confrontation
//Offset - +0xF7FF7FF5 - Taunt
//Offset - +0xF7FF8589 - The Grave of Enkindling
//Offset - +0xF7FF8441 - The Selection
//Offset - +0xF7FF8B75 - The Transmigration Prophecy
//Offset - +0xF7FF8445 - Trap of Darkness
//Offset - +0xF7FF85F5 - Treasure Map
//Offset - +0xF7FF9619 - Vanquishing Light

function master_of_traps() => byte(0xF7FF7FF9+dword(0xe7b054))/byte(0xF7FF7FF9)+byte(0xF7FF7DF9+dword(0xe7b054))/byte(0xF7FF7DF9)+
                              byte(0xF7FF8131+dword(0xe7b054))/byte(0xF7FF8131)+byte(0xF7FF9C29+dword(0xe7b054))/byte(0xF7FF9C29)+
                              byte(0xF7FF7C09+dword(0xe7b054))/byte(0xF7FF7C09)+byte(0xF7FF8435+dword(0xe7b054))/byte(0xF7FF8435)+
                              byte(0xF7FFA2C9+dword(0xe7b054))/byte(0xF7FFA2C9)+byte(0xF7FF9E2D+dword(0xe7b054))/byte(0xF7FF9E2D)+
                              byte(0xF7FF8135+dword(0xe7b054))/byte(0xF7FF8135)+byte(0xF7FF7EE5+dword(0xe7b054))/byte(0xF7FF7EE5)+
                              byte(0xF7FF8431+dword(0xe7b054))/byte(0xF7FF8431)+byte(0xF7FF85F1+dword(0xe7b054))/byte(0xF7FF85F1)+
                              byte(0xF7FF7EE9+dword(0xe7b054))/byte(0xF7FF7EE9)+byte(0xF7FF7CC9+dword(0xe7b054))/byte(0xF7FF7CC9)+
                              byte(0xF7FF7B39+dword(0xe7b054))/byte(0xF7FF7B39)+byte(0xF7FF8211+dword(0xe7b054))/byte(0xF7FF8211)+
                              byte(0xF7FF7C15+dword(0xe7b054))/byte(0xF7FF7C15)+byte(0xF7FF8005+dword(0xe7b054))/byte(0xF7FF8005)+
                              byte(0xF7FF7CCD+dword(0xe7b054))/byte(0xF7FF7CCD)+byte(0xF7FF8215+dword(0xe7b054))/byte(0xF7FF8215)+
                              byte(0xF7FF7B29+dword(0xe7b054))/byte(0xF7FF7B29)+byte(0xF7FF8119+dword(0xe7b054))/byte(0xF7FF8119)+
                              byte(0xF7FF8121+dword(0xe7b054))/byte(0xF7FF8121)+byte(0xF7FF831D+dword(0xe7b054))/byte(0xF7FF831D)+
                              byte(0xF7FF9E31+dword(0xe7b054))/byte(0xF7FF9E31)+byte(0xF7FF7A89+dword(0xe7b054))/byte(0xF7FF7A89)+
                              byte(0xF7FFA509+dword(0xe7b054))/byte(0xF7FFA509)+byte(0xF7FF830D+dword(0xe7b054))/byte(0xF7FF830D)+
                              byte(0xF7FF7EF1+dword(0xe7b054))/byte(0xF7FF7EF1)+byte(0xF7FF8315+dword(0xe7b054))/byte(0xF7FF8315)+
                              byte(0xF7FF7DD9+dword(0xe7b054))/byte(0xF7FF7DD9)+byte(0xF7FF811D+dword(0xe7b054))/byte(0xF7FF811D)+
                              byte(0xF7FF6F1D+dword(0xe7b054))/byte(0xF7FF6F1D)+byte(0xF7FFA041+dword(0xe7b054))/byte(0xF7FFA041)+
                              byte(0xF7FF8681+dword(0xe7b054))/byte(0xF7FF8681)+byte(0xF7FF81F1+dword(0xe7b054))/byte(0xF7FF81F1)+
                              byte(0xF7FF81F9+dword(0xe7b054))/byte(0xF7FF81F9)+byte(0xF7FF843D+dword(0xe7b054))/byte(0xF7FF843D)+
                              byte(0xF7FF9C25+dword(0xe7b054))/byte(0xF7FF9C25)+byte(0xF7FF812D+dword(0xe7b054))/byte(0xF7FF812D)+
                              byte(0xF7FF85E5+dword(0xe7b054))/byte(0xF7FF85E5)+byte(0xF7FF7FF5+dword(0xe7b054))/byte(0xF7FF7FF5)+
                              byte(0xF7FF8589+dword(0xe7b054))/byte(0xF7FF8589)+byte(0xF7FF8441+dword(0xe7b054))/byte(0xF7FF8441)+
                              byte(0xF7FF8B75+dword(0xe7b054))/byte(0xF7FF8B75)+byte(0xF7FF8445+dword(0xe7b054))/byte(0xF7FF8445)+
                              byte(0xF7FF85F5+dword(0xe7b054))/byte(0xF7FF85F5)+byte(0xF7FF9619+dword(0xe7b054))/byte(0xF7FF9619)

achievement ("Master of Traps", "Obtain all cards from [Master of Traps] booster", 10,
trigger = save_protect() && measured(master_of_traps() == 48) && prev(master_of_traps()) != 48)

//Ultimate Monsters Booster Pack - 54 Total Cards
//Offset - +0xF7FFA3A5 - Armored Bee
//Offset - +0xF7FFA0A5 - Clear Vice Dragon
//Offset - +0xF7FF8AFD - D.D. Crow
//Offset - +0xF7FF8B99 - Des Mosquito
//Offset - +0xF7FF8AF1 - Electric Virus
//Offset - +0xF7FF989D - Gallis the Star Beast
//Offset - +0xF7FF8F29 - Gambler of Legend
//Offset - +0xF7FF8EF1 - Gladiator Beast Alexander
//Offset - +0xF7FF9019 - Gladiator Beast Andal
//Offset - +0xF7FF8EFD - Gladiator Beast Bestiari
//Offset - +0xF7FF910D - Gladiator Beast Darius
//Offset - +0xF7FF8F09 - Gladiator Beast Dimacari
//Offset - +0xF7FF9525 - Gladiator Beast Equeste
//Offset - +0xF7FF8F41 - Gladiator Beast Gaiodiaz
//Offset - +0xF7FF9395 - Gladiator Beast Gyzarus
//Offset - +0xF7FF8F45 - Gladiator Beast Heraklinos
//Offset - +0xF7FF8F05 - Gladiator Beast Hoplomus
//Offset - +0xF7FF8F01 - Gladiator Beast Laquari
//Offset - +0xF7FF8EF9 - Gladiator Beast Murmillo
//Offset - +0xF7FF91C9 - Gladiator Beast Octavius
//Offset - +0xF7FF9A25 - Gladiator Beast Retiari
//Offset - +0xF7FF993D - Gladiator Beast Samnite
//Offset - +0xF7FF8F0D - Gladiator Beast Secutor
//Offset - +0xF7FF8EF5 - Gladiator Beast Spartacus
//Offset - +0xF7FF91CD - Gladiator Beast Torax
//Offset - +0xF7FF8F25 - Goblin Black Ops
//Offset - +0xF7FF96B5 - Goblin Decoy Squad
//Offset - +0xF7FF9369 - Goblin Recon Squad
//Offset - +0xF7FF8CF9 - Gravity Behemoth
//Offset - +0xF7FF7AC5 - Great Maju Garzett
//Offset - +0xF7FF934D - Judgment Dragon
//Offset - +0xF7FF9339 - Lumina, Lightsworn Summoner
//Offset - +0xF7FF8AF9 - Marionette Mite
//Offset - +0xF7FF8C89 - Mei-Kou, Master of Barriers
//Offset - +0xF7FF8B95 - Metal Shooter
//Offset - +0xF7FF9D95 - Minefieldriller
//Offset - +0xF7FF8BE1 - Mosaic Manticore
//Offset - +0xF7FF9549 - Noisy Gnat
//Offset - +0xF7FF8DE9 - Phantom Cricket
//Offset - +0xF7FFA3A9 - Poseidon Giant Beetle
//Offset - +0xF7FF9AED - Prime Material Falcon
//Offset - +0xF7FF87C5 - Puppet King
//Offset - +0xF7FF8AF5 - Puppet Plant
//Offset - +0xF7FF89CD - Rampaging Rhynos
//Offset - +0xF7FF9219 - Samsara Kaiser
//Offset - +0xF7FF9945 - Scanner
//Offset - +0xF7FF8C91 - Seismic Crasher
//Offset - +0xF7FF9545 - Silent Strider
//Offset - +0xF7FF87BD - Sonic Shooter
//Offset - +0xF7FF8F11 - Test Ape
//Offset - +0xF7FF91D1 - Test Tiger
//Offset - +0xF7FF911D - The Calculator
//Offset - +0xF7FFA385 - The Tyrant Neptune
//Offset - +0xF7FF88ED - Toy Magician

function ultimate_monsters() => byte(0xF7FFA3A5+dword(0xe7b054))/byte(0xF7FFA3A5)+byte(0xF7FFA0A5+dword(0xe7b054))/byte(0xF7FFA0A5)+
                                byte(0xF7FF8AFD+dword(0xe7b054))/byte(0xF7FF8AFD)+byte(0xF7FF8B99+dword(0xe7b054))/byte(0xF7FF8B99)+
                                byte(0xF7FF8AF1+dword(0xe7b054))/byte(0xF7FF8AF1)+byte(0xF7FF989D+dword(0xe7b054))/byte(0xF7FF989D)+
                                byte(0xF7FF8F29+dword(0xe7b054))/byte(0xF7FF8F29)+byte(0xF7FF8EF1+dword(0xe7b054))/byte(0xF7FF8EF1)+
                                byte(0xF7FF9019+dword(0xe7b054))/byte(0xF7FF9019)+byte(0xF7FF8EFD+dword(0xe7b054))/byte(0xF7FF8EFD)+
                                byte(0xF7FF910D+dword(0xe7b054))/byte(0xF7FF910D)+byte(0xF7FF8F09+dword(0xe7b054))/byte(0xF7FF8F09)+
                                byte(0xF7FF9525+dword(0xe7b054))/byte(0xF7FF9525)+byte(0xF7FF8F41+dword(0xe7b054))/byte(0xF7FF8F41)+
                                byte(0xF7FF9395+dword(0xe7b054))/byte(0xF7FF9395)+byte(0xF7FF8F45+dword(0xe7b054))/byte(0xF7FF8F45)+
                                byte(0xF7FF8F05+dword(0xe7b054))/byte(0xF7FF8F05)+byte(0xF7FF8F01+dword(0xe7b054))/byte(0xF7FF8F01)+
                                byte(0xF7FF8EF9+dword(0xe7b054))/byte(0xF7FF8EF9)+byte(0xF7FF91C9+dword(0xe7b054))/byte(0xF7FF91C9)+
                                byte(0xF7FF9A25+dword(0xe7b054))/byte(0xF7FF9A25)+byte(0xF7FF993D+dword(0xe7b054))/byte(0xF7FF993D)+
                                byte(0xF7FF8F0D+dword(0xe7b054))/byte(0xF7FF8F0D)+byte(0xF7FF8EF5+dword(0xe7b054))/byte(0xF7FF8EF5)+
                                byte(0xF7FF91CD+dword(0xe7b054))/byte(0xF7FF91CD)+byte(0xF7FF8F25+dword(0xe7b054))/byte(0xF7FF8F25)+
                                byte(0xF7FF96B5+dword(0xe7b054))/byte(0xF7FF96B5)+byte(0xF7FF9369+dword(0xe7b054))/byte(0xF7FF9369)+
                                byte(0xF7FF8CF9+dword(0xe7b054))/byte(0xF7FF8CF9)+byte(0xF7FF7AC5+dword(0xe7b054))/byte(0xF7FF7AC5)+
                                byte(0xF7FF934D+dword(0xe7b054))/byte(0xF7FF934D)+byte(0xF7FF9339+dword(0xe7b054))/byte(0xF7FF9339)+
                                byte(0xF7FF8AF9+dword(0xe7b054))/byte(0xF7FF8AF9)+byte(0xF7FF8C89+dword(0xe7b054))/byte(0xF7FF8C89)+
                                byte(0xF7FF8B95+dword(0xe7b054))/byte(0xF7FF8B95)+byte(0xF7FF9D95+dword(0xe7b054))/byte(0xF7FF9D95)+
                                byte(0xF7FF8BE1+dword(0xe7b054))/byte(0xF7FF8BE1)+byte(0xF7FF9549+dword(0xe7b054))/byte(0xF7FF9549)+
                                byte(0xF7FF8DE9+dword(0xe7b054))/byte(0xF7FF8DE9)+byte(0xF7FFA3A9+dword(0xe7b054))/byte(0xF7FFA3A9)+
                                byte(0xF7FF9AED+dword(0xe7b054))/byte(0xF7FF9AED)+byte(0xF7FF87C5+dword(0xe7b054))/byte(0xF7FF87C5)+
                                byte(0xF7FF8AF5+dword(0xe7b054))/byte(0xF7FF8AF5)+byte(0xF7FF89CD+dword(0xe7b054))/byte(0xF7FF89CD)+
                                byte(0xF7FF9219+dword(0xe7b054))/byte(0xF7FF9219)+byte(0xF7FF9945+dword(0xe7b054))/byte(0xF7FF9945)+
                                byte(0xF7FF8C91+dword(0xe7b054))/byte(0xF7FF8C91)+byte(0xF7FF9545+dword(0xe7b054))/byte(0xF7FF9545)+
                                byte(0xF7FF87BD+dword(0xe7b054))/byte(0xF7FF87BD)+byte(0xF7FF8F11+dword(0xe7b054))/byte(0xF7FF8F11)+
                                byte(0xF7FF91D1+dword(0xe7b054))/byte(0xF7FF91D1)+byte(0xF7FF911D+dword(0xe7b054))/byte(0xF7FF911D)+
                                byte(0xF7FFA385+dword(0xe7b054))/byte(0xF7FFA385)+byte(0xF7FF88ED+dword(0xe7b054))/byte(0xF7FF88ED)

achievement ("Ultimate Monsters", "Obtain all cards from [Ultimate Monsters] booster", 10,
trigger = save_protect() && measured(ultimate_monsters() == 54) && prev(ultimate_monsters()) != 54)

//Deluxe Spells Boost Pack - 58 Total Cards
//Offset - +0xF7FF9DFD - Ancient Leaf
//Offset - +0xF7FF767D - Book of Moon
//Offset - +0xF7FF8E31 - Broken Bamboo Sword
//Offset - +0xF7FF908D - Burden of the Mighty
//Offset - +0xF7FF8A61 - Burial from a Different Dimension
//Offset - +0xF7FF8B51 - Card Trader
//Offset - +0xF7FF9705 - Charge of the Light Brigade
//Offset - +0xF7FFA0A9 - Clear World
//Offset - +0xF7FF8F55 - Colosseum - Cage of the Gladiator Beasts
//Offset - +0xF7FF89E9 - Counter Cleaner
//Offset - +0xF7FF93AD - Cup of Ace
//Offset - +0xF7FFA6AD - Cursed Armaments
//Offset - +0xF7FFA81D - Cursed Bill
//Offset - +0xF7FFA815 - Darkworld Shackles
//Offset - +0xF7FF93D5 - Deck Lockdown
//Offset - +0xF7FF8A01 - Degenerate Circuit
//Offset - +0xF7FF93A1 - Demise of the Land
//Offset - +0xF7FF8E19 - Double Summon
//Offset - +0xF7FF8CB5 - Field Barrier
//Offset - +0xF7FF89DD - Flash of the Forbidden Spell
//Offset - +0xF7FF9175 - Gladiator Beast's Battle Archfiend Shield
//Offset - +0xF7FF8F5D - Gladiator Beast's Battle Gladius
//Offset - +0xF7FF8F59 - Gladiator Beast's Battle Halberd
//Offset - +0xF7FF8F61 - Gladiator Beast's Battle Manica
//Offset - +0xF7FF8F65 - Gladiator Beast's Respite
//Offset - +0xF7FF9179 - Gladiator Proving Ground
//Offset - +0xF7FF8F69 - Gladiator's Return
//Offset - +0xF7FF93DD - Golden Bamboo Sword
//Offset - +0xF7FF8701 - Guard Penalty
//Offset - +0xF7FF9075 - Hand Destruction
//Offset - +0xF7FF6F2D - Heavy Storm
//Offset - +0xF7FF91FD - Hidden Armory
//Offset - +0xF7FF99A5 - Indomitable Gladiator Beast
//Offset - +0xF7FF89FD - Level Down!?
//Offset - +0xF7FF93D1 - Level Tuning
//Offset - +0xF7FF8CAD - Lucky Iron Axe
//Offset - +0xF7FF8831 - Mausoleum of the Emperor
//Offset - +0xF7FF93CD - Mystical Cards of Light
//Offset - +0xF7FF97C9 - Omega Goggles
//Offset - +0xF7FFA6A9 - Pestilence
//Offset - +0xF7FF8E25 - Phalanx Pike
//Offset - +0xF7FF8509 - Pot of Avarice
//Offset - +0xF7FFA29D - Pot of Benevolence
//Offset - +0xF7FFA6B9 - Pot of Duality
//Offset - +0xF7FFA08D - Pseudo Space
//Offset - +0xF7FF93D9 - Ribbon of Rebirth
//Offset - +0xF7FF8585 - Ring of Defense
//Offset - +0xF7FF8A71 - Ruthless Denial
//Offset - +0xF7FF8A05 - Senet Switch
//Offset - +0xF7FF7CAD - Smashing Ground
//Offset - +0xF7FF8F6D - Soul Devouring Bamboo Sword
//Offset - +0xF7FF8885 - Spell Calling
//Offset - +0xF7FF914D - Spell Chronicle
//Offset - +0xF7FF866D - Symbol of Heritage
//Offset - +0xF7FF94A9 - Synchro Boost
//Offset - +0xF7FF8E75 - Trade-In
//Offset - +0xF7FF9141 - Vicious Claw
//Offset - +0xF7FFA6B1 - Wiseman's Chalice

function deluxe_spells() => byte(0xF7FF9DFD+dword(0xe7b054))/byte(0xF7FF9DFD)+byte(0xF7FF767D+dword(0xe7b054))/byte(0xF7FF767D)+
                            byte(0xF7FF8E31+dword(0xe7b054))/byte(0xF7FF8E31)+byte(0xF7FF908D+dword(0xe7b054))/byte(0xF7FF908D)+
                            byte(0xF7FF8A61+dword(0xe7b054))/byte(0xF7FF8A61)+byte(0xF7FF8B51+dword(0xe7b054))/byte(0xF7FF8B51)+
                            byte(0xF7FF9705+dword(0xe7b054))/byte(0xF7FF9705)+byte(0xF7FFA0A9+dword(0xe7b054))/byte(0xF7FFA0A9)+
                            byte(0xF7FF8F55+dword(0xe7b054))/byte(0xF7FF8F55)+byte(0xF7FF89E9+dword(0xe7b054))/byte(0xF7FF89E9)+
                            byte(0xF7FF93AD+dword(0xe7b054))/byte(0xF7FF93AD)+byte(0xF7FFA6AD+dword(0xe7b054))/byte(0xF7FFA6AD)+
                            byte(0xF7FFA81D+dword(0xe7b054))/byte(0xF7FFA81D)+byte(0xF7FFA815+dword(0xe7b054))/byte(0xF7FFA815)+
                            byte(0xF7FF93D5+dword(0xe7b054))/byte(0xF7FF93D5)+byte(0xF7FF8A01+dword(0xe7b054))/byte(0xF7FF8A01)+
                            byte(0xF7FF93A1+dword(0xe7b054))/byte(0xF7FF93A1)+byte(0xF7FF8E19+dword(0xe7b054))/byte(0xF7FF8E19)+
                            byte(0xF7FF8CB5+dword(0xe7b054))/byte(0xF7FF8CB5)+byte(0xF7FF89DD+dword(0xe7b054))/byte(0xF7FF89DD)+
                            byte(0xF7FF9175+dword(0xe7b054))/byte(0xF7FF9175)+byte(0xF7FF8F5D+dword(0xe7b054))/byte(0xF7FF8F5D)+
                            byte(0xF7FF8F59+dword(0xe7b054))/byte(0xF7FF8F59)+byte(0xF7FF8F61+dword(0xe7b054))/byte(0xF7FF8F61)+
                            byte(0xF7FF8F65+dword(0xe7b054))/byte(0xF7FF8F65)+byte(0xF7FF9179+dword(0xe7b054))/byte(0xF7FF9179)+
                            byte(0xF7FF8F69+dword(0xe7b054))/byte(0xF7FF8F69)+byte(0xF7FF93DD+dword(0xe7b054))/byte(0xF7FF93DD)+
                            byte(0xF7FF8701+dword(0xe7b054))/byte(0xF7FF8701)+byte(0xF7FF9075+dword(0xe7b054))/byte(0xF7FF9075)+
                            byte(0xF7FF6F2D+dword(0xe7b054))/byte(0xF7FF6F2D)+byte(0xF7FF91FD+dword(0xe7b054))/byte(0xF7FF91FD)+
                            byte(0xF7FF99A5+dword(0xe7b054))/byte(0xF7FF99A5)+byte(0xF7FF89FD+dword(0xe7b054))/byte(0xF7FF89FD)+
                            byte(0xF7FF93D1+dword(0xe7b054))/byte(0xF7FF93D1)+byte(0xF7FF8CAD+dword(0xe7b054))/byte(0xF7FF8CAD)+
                            byte(0xF7FF8831+dword(0xe7b054))/byte(0xF7FF8831)+byte(0xF7FF93CD+dword(0xe7b054))/byte(0xF7FF93CD)+
                            byte(0xF7FF97C9+dword(0xe7b054))/byte(0xF7FF97C9)+byte(0xF7FFA6A9+dword(0xe7b054))/byte(0xF7FFA6A9)+
                            byte(0xF7FF8E25+dword(0xe7b054))/byte(0xF7FF8E25)+byte(0xF7FF8509+dword(0xe7b054))/byte(0xF7FF8509)+
                            byte(0xF7FFA29D+dword(0xe7b054))/byte(0xF7FFA29D)+byte(0xF7FFA6B9+dword(0xe7b054))/byte(0xF7FFA6B9)+
                            byte(0xF7FFA08D+dword(0xe7b054))/byte(0xF7FFA08D)+byte(0xF7FF93D9+dword(0xe7b054))/byte(0xF7FF93D9)+
                            byte(0xF7FF8585+dword(0xe7b054))/byte(0xF7FF8585)+byte(0xF7FF8A71+dword(0xe7b054))/byte(0xF7FF8A71)+
                            byte(0xF7FF8A05+dword(0xe7b054))/byte(0xF7FF8A05)+byte(0xF7FF7CAD+dword(0xe7b054))/byte(0xF7FF7CAD)+
                            byte(0xF7FF8F6D+dword(0xe7b054))/byte(0xF7FF8F6D)+byte(0xF7FF8885+dword(0xe7b054))/byte(0xF7FF8885)+
                            byte(0xF7FF914D+dword(0xe7b054))/byte(0xF7FF914D)+byte(0xF7FF866D+dword(0xe7b054))/byte(0xF7FF866D)+
                            byte(0xF7FF94A9+dword(0xe7b054))/byte(0xF7FF94A9)+byte(0xF7FF8E75+dword(0xe7b054))/byte(0xF7FF8E75)+
                            byte(0xF7FF9141+dword(0xe7b054))/byte(0xF7FF9141)+byte(0xF7FFA6B1+dword(0xe7b054))/byte(0xF7FFA6B1)

achievement ("Deluxe Spells", "Obtain all cards from [Deluxe Spells] booster", 10,
trigger = save_protect() && measured(deluxe_spells() == 58) && prev(deluxe_spells()) != 58)

//Supreme Traps BoosterPack - 48 Total Cards
//Offset - +0xF7FF9195 - Alchemy Cycle
//Offset - +0xF7FF8FAD - An Unfortunate Report
//Offset - +0xF7FF9E35 - Battle of the Elements
//Offset - +0xF7FF8A09 - Blasting Fuse
//Offset - +0xF7FF9C35 - Bone Temple Block
//Offset - +0xF7FF9221 - By Order of the Emperor
//Offset - +0xF7FF70B1 - Call of the Haunted
//Offset - +0xF7FF8A79 - Damage Polarizer
//Offset - +0xF7FFA871 - Dark Trap Hole
//Offset - +0xF7FF91D5 - Defensive Tactics
//Offset - +0xF7FF9425 - Dice Try!
//Offset - +0xF7FF8F89 - Disarm
//Offset - +0xF7FF9809 - DNA Checkup
//Offset - +0xF7FF91B5 - Double Tag Team
//Offset - +0xF7FF8B6D - Eliminating the League
//Offset - +0xF7FF91C5 - Fine
//Offset - +0xF7FF8B71 - Flashbang
//Offset - +0xF7FF8FA9 - Foolish Revival
//Offset - +0xF7FF8A7D - Fusion Guard
//Offset - +0xF7FF8685 - Generation Shift
//Offset - +0xF7FF9811 - Giant Trap Hole
//Offset - +0xF7FF95C5 - Gladiator Beast War Chariot
//Offset - +0xF7FF9411 - Gladiator Lash
//Offset - +0xF7FF9401 - Glorious Illusion
//Offset - +0xF7FF8CE1 - Hard-Sellin' Goblin
//Offset - +0xF7FF8CE5 - Hard-Sellin' Zombie
//Offset - +0xF7FF8B65 - Hero Medal
//Offset - +0xF7FFA2E9 - Inverse Universe
//Offset - +0xF7FF867D - Karma Cut
//Offset - +0xF7FF87A5 - Life Equalizer
//Offset - +0xF7FF941D - Lucky Chance
//Offset - +0xF7FF9C41 - Mirror of Oaths
//Offset - +0xF7FF95DD - Needlebug Nest
//Offset - +0xF7FF9E6D - Overwhelm
//Offset - +0xF7FF945D - Overworked
//Offset - +0xF7FF8F8D - Parry
//Offset - +0xF7FF9C31 - Proof of Powerlessness
//Offset - +0xF7FF8A75 - Return Soul
//Offset - +0xF7FF8E45 - Shield Spear
//Offset - +0xF7FF8A0D - Straight Flush
//Offset - +0xF7FF8E59 - The Gift of Greed
//Offset - +0xF7FF720D - Torrential Tribute
//Offset - +0xF7FF93F5 - Tour of Doom
//Offset - +0xF7FF9A31 - Treacherous Trap Hole
//Offset - +0xF7FF8C1D - Triggered Summon
//Offset - +0xF7FF99FD - Trojan Gladiator Beast
//Offset - +0xF7FFA86D - Tyrant's Temper
//Offset - +0xF7FFA2E5 - Widespread Dud

function supreme_traps() => byte(0xF7FF9195+dword(0xe7b054))/byte(0xF7FF9195)+byte(0xF7FF8FAD+dword(0xe7b054))/byte(0xF7FF8FAD)+
                            byte(0xF7FF9E35+dword(0xe7b054))/byte(0xF7FF9E35)+byte(0xF7FF8A09+dword(0xe7b054))/byte(0xF7FF8A09)+
                            byte(0xF7FF9C35+dword(0xe7b054))/byte(0xF7FF9C35)+byte(0xF7FF9221+dword(0xe7b054))/byte(0xF7FF9221)+
                            byte(0xF7FF70B1+dword(0xe7b054))/byte(0xF7FF70B1)+byte(0xF7FF8A79+dword(0xe7b054))/byte(0xF7FF8A79)+
                            byte(0xF7FFA871+dword(0xe7b054))/byte(0xF7FFA871)+byte(0xF7FF91D5+dword(0xe7b054))/byte(0xF7FF91D5)+
                            byte(0xF7FF9425+dword(0xe7b054))/byte(0xF7FF9425)+byte(0xF7FF8F89+dword(0xe7b054))/byte(0xF7FF8F89)+
                            byte(0xF7FF9809+dword(0xe7b054))/byte(0xF7FF9809)+byte(0xF7FF91B5+dword(0xe7b054))/byte(0xF7FF91B5)+
                            byte(0xF7FF8B6D+dword(0xe7b054))/byte(0xF7FF8B6D)+byte(0xF7FF91C5+dword(0xe7b054))/byte(0xF7FF91C5)+
                            byte(0xF7FF8B71+dword(0xe7b054))/byte(0xF7FF8B71)+byte(0xF7FF8FA9+dword(0xe7b054))/byte(0xF7FF8FA9)+
                            byte(0xF7FF8A7D+dword(0xe7b054))/byte(0xF7FF8A7D)+byte(0xF7FF8685+dword(0xe7b054))/byte(0xF7FF8685)+
                            byte(0xF7FF9811+dword(0xe7b054))/byte(0xF7FF9811)+byte(0xF7FF95C5+dword(0xe7b054))/byte(0xF7FF95C5)+
                            byte(0xF7FF9411+dword(0xe7b054))/byte(0xF7FF9411)+byte(0xF7FF9401+dword(0xe7b054))/byte(0xF7FF9401)+
                            byte(0xF7FF8CE1+dword(0xe7b054))/byte(0xF7FF8CE1)+byte(0xF7FF8CE5+dword(0xe7b054))/byte(0xF7FF8CE5)+
                            byte(0xF7FF8B65+dword(0xe7b054))/byte(0xF7FF8B65)+byte(0xF7FFA2E9+dword(0xe7b054))/byte(0xF7FFA2E9)+
                            byte(0xF7FF867D+dword(0xe7b054))/byte(0xF7FF867D)+byte(0xF7FF87A5+dword(0xe7b054))/byte(0xF7FF87A5)+
                            byte(0xF7FF941D+dword(0xe7b054))/byte(0xF7FF941D)+byte(0xF7FF9C41+dword(0xe7b054))/byte(0xF7FF9C41)+
                            byte(0xF7FF95DD+dword(0xe7b054))/byte(0xF7FF95DD)+byte(0xF7FF9E6D+dword(0xe7b054))/byte(0xF7FF9E6D)+
                            byte(0xF7FF945D+dword(0xe7b054))/byte(0xF7FF945D)+byte(0xF7FF8F8D+dword(0xe7b054))/byte(0xF7FF8F8D)+
                            byte(0xF7FF9C31+dword(0xe7b054))/byte(0xF7FF9C31)+byte(0xF7FF8A75+dword(0xe7b054))/byte(0xF7FF8A75)+
                            byte(0xF7FF8E45+dword(0xe7b054))/byte(0xF7FF8E45)+byte(0xF7FF8A0D+dword(0xe7b054))/byte(0xF7FF8A0D)+
                            byte(0xF7FF8E59+dword(0xe7b054))/byte(0xF7FF8E59)+byte(0xF7FF720D+dword(0xe7b054))/byte(0xF7FF720D)+
                            byte(0xF7FF93F5+dword(0xe7b054))/byte(0xF7FF93F5)+byte(0xF7FF9A31+dword(0xe7b054))/byte(0xF7FF9A31)+
                            byte(0xF7FF8C1D+dword(0xe7b054))/byte(0xF7FF8C1D)+byte(0xF7FF99FD+dword(0xe7b054))/byte(0xF7FF99FD)+
                            byte(0xF7FFA86D+dword(0xe7b054))/byte(0xF7FFA86D)+byte(0xF7FFA2E5+dword(0xe7b054))/byte(0xF7FFA2E5)

achievement ("Supreme Traps", "Obtain all cards from [Supreme Traps] booster", 10,
trigger = save_protect() && measured(supreme_traps() == 48) && prev(supreme_traps()) != 48)

//Power Brawlers Booster Packs - 108 Total Cards
//Offset - +0xF7FF7CD5 - A Hero Emerges
//Offset - +0xF7FF91B1 - All-Out Attacks
//Offset - +0xF7FF8191 - Armed Samurai - Ben Kei
//Offset - +0xF7FF90BD - Armored Cybern
//Offset - +0xF7FF85ED - Attack Reflector Unit
//Offset - +0xF7FF66B9 - Axe of Despair
//Offset - +0xF7FFA819 - Axe of Fools
//Offset - +0xF7FF8CD1 - Backs to the Wall
//Offset - +0xF7FF6D4D - Barrel Dragon
//Offset - +0xF7FF73D9 - Bazoo the Soul-Eater
//Offset - +0xF7FF8FED - Beast King Barbaros
//Offset - +0xF7FF95F5 - Beast Machine King Barbaros Ur
//Offset - +0xF7FF7B85 - Berserk Gorilla
//Offset - +0xF7FF7979 - Big Bang Shot
//Offset - +0xF7FF9111 - Black Veloci
//Offset - +0xF7FF7705 - Blade Knight
//Offset - +0xF7FF7D7D - Blowback Dragon
//Offset - +0xF7FF8CF5 - Botanical Lion
//Offset - +0xF7FF6DF5 - Brain Control
//Offset - +0xF7FF8CCD - Breakthrough!
//Offset - +0xF7FF8ED9 - Chamberlain of the Six Samurai
//Offset - +0xF7FF87D9 - Chimeratech Overdragon
//Offset - +0xF7FF7B51 - Chiron the Mage
//Offset - +0xF7FF8F71 - Cunning of the Six Samurai
//Offset - +0xF7FF77D5 - Curse of Aging
//Offset - +0xF7FF85B9 - Cyber Barrier Dragon
//Offset - +0xF7FF8361 - Cyber Dragon
//Offset - +0xF7FFA235 - Cyber Dragon Zwei
//Offset - +0xF7FF837D - Cyber End Dragon
//Offset - +0xF7FF85BD - Cyber Laser Dragon
//Offset - +0xF7FF8379 - Cyber Twin Dragon
//Offset - +0xF7FF9199 - Cybernetic Hidden Technology
//Offset - +0xF7FF7C65 - Dark Driceratops
//Offset - +0xF7FF98A5 - Darkness Destroyer
//Offset - +0xF7FF8F95 - Double-Edged Sword Technique
//Offset - +0xF7FF8F2D - Enishi, Shien's Chancellor
//Offset - +0xF7FF92A1 - Evolution Burst
//Offset - +0xF7FF76C9 - Exarion Universe
//Offset - +0xF7FF74DD - Exiled Force
//Offset - +0xF7FF78F1 - Final Attack Orders
//Offset - +0xF7FF9BF5 - Forbidden Chalice
//Offset - +0xF7FF80C9 - Fusilier Dragon, the Dual-Mode Beast
//Offset - +0xF7FFA185 - Gateway of the Six
//Offset - +0xF7FF81C1 - Gatling Dragon
//Offset - +0xF7FF73F1 - Gilasaurus
//Offset - +0xF7FF7281 - Goblin Attack Force
//Offset - +0xF7FF83C1 - Goblin Elite Attack Force
//Offset - +0xF7FF85A1 - Gorz the Emissary of Darkness
//Offset - +0xF7FF8CFD - Grandmaster of the Six Samurai
//Offset - +0xF7FF8AD1 - Great Shogun Shien
//Offset - +0xF7FF7A0D - Gyaku-Gire Panda
//Offset - +0xF7FF96DD - Hand of the Six Samurai
//Offset - +0xF7FF8E6D - Herald of Creation
//Offset - +0xF7FF848D - Hydrogeddon
//Offset - +0xF7FF7815 - Interdimensional Matter Transporter
//Offset - +0xF7FF67B5 - Jirai Gumo
//Offset - +0xF7FF6551 - Kagemusha of the Blue Flame
//Offset - +0xF7FF6C25 - Kunai with Chain
//Offset - +0xF7FF942D - Kuraz the Light Monarch
//Offset - +0xF7FF8B4D - Legendary Ebon Steed
//Offset - +0xF7FF8539 - Level Limit - Area A
//Offset - +0xF7FF93E1 - Limit Reverse
//Offset - +0xF7FF95B9 - Machine Lord Ur
//Offset - +0xF7FF7275 - Mad Sword Beast
//Offset - +0xF7FF735D - Mage Power
//Offset - +0xF7FF7C91 - Mataza the Zapper
//Offset - +0xF7FF6C39 - Megamorph
//Offset - +0xF7FF6C3D - Metalmorph
//Offset - +0xF7FF78CD - Meteorain
//Offset - +0xF7FF94B9 - Miniaturize
//Offset - +0xF7FF70C1 - Mirror Wall
//Offset - +0xF7FF8D0D - Mist Archfiend
//Offset - +0xF7FF8D81 - Necro Gardna
//Offset - +0xF7FF7F81 - Ninja Grandmaster Sasuke
//Offset - +0xF7FF888D - Overload Fusion
//Offset - +0xF7FF85DD - Photon Generator Unit
//Offset - +0xF7FF80B5 - Pitch-Black Warwolf
//Offset - +0xF7FF8601 - Proto-Cyber Dragon
//Offset - +0xF7FF8B69 - Return of the Six Samurai
//Offset - +0xF7FF70F1 - Riryoku
//Offset - +0xF7FF842D - Rising Energy
//Offset - +0xF7FF6F65 - Rush Recklessly
//Offset - +0xF7FF8B59 - Shien's Castle of Mist
//Offset - +0xF7FF8AD5 - Shien's Footsoldier
//Offset - +0xF7FF755D - Shrink
//Offset - +0xF7FF9171 - Six Samurai United
//Offset - +0xF7FF99B1 - Six Scrolls of the Samurai
//Offset - +0xF7FF898D - Snipe Hunter
//Offset - +0xF7FF71D9 - Soul Exchange
//Offset - +0xF7FF8C41 - Spell Striker
//Offset - +0xF7FF8F31 - Spirit of the Six Samurai
//Offset - +0xF7FF7A6D - Staunch Defender
//Offset - +0xF7FF8E49 - Strike Slash
//Offset - +0xF7FF8389 - Summoner Monk
//Offset - +0xF7FF8B85 - Swift Samurai Storm!
//Offset - +0xF7FF8F91 - Swiftstrike Armor
//Offset - +0xF7FF861D - Tenkabito Shien
//Offset - +0xF7FF6D7D - The Fiend Megacyber
//Offset - +0xF7FF8ACD - The Six Samurai - Irou
//Offset - +0xF7FF8AC9 - The Six Samurai - Kamon
//Offset - +0xF7FF8AC1 - The Six Samurai - Nisashi
//Offset - +0xF7FF8AC5 - The Six Samurai - Yaichi
//Offset - +0xF7FF8AB9 - The Six Samurai - Yariza
//Offset - +0xF7FF8ABD - The Six Samurai - Zanji
//Offset - +0xF7FF9A3D - Tragoedia
//Offset - +0xF7FF9469 - Twin-Barrel Dragon
//Offset - +0xF7FF7359 - United We Stand
//Offset - +0xF7FF9591 - Unstable Evolution

function power_brawlers() => byte(0xF7FF7CD5+dword(0xe7b054))/byte(0xF7FF7CD5)+byte(0xF7FF91B1+dword(0xe7b054))/byte(0xF7FF91B1)+
                             byte(0xF7FF8191+dword(0xe7b054))/byte(0xF7FF8191)+byte(0xF7FF90BD+dword(0xe7b054))/byte(0xF7FF90BD)+
                             byte(0xF7FF85ED+dword(0xe7b054))/byte(0xF7FF85ED)+byte(0xF7FF66B9+dword(0xe7b054))/byte(0xF7FF66B9)+
                             byte(0xF7FFA819+dword(0xe7b054))/byte(0xF7FFA819)+byte(0xF7FF8CD1+dword(0xe7b054))/byte(0xF7FF8CD1)+
                             byte(0xF7FF6D4D+dword(0xe7b054))/byte(0xF7FF6D4D)+byte(0xF7FF73D9+dword(0xe7b054))/byte(0xF7FF73D9)+
                             byte(0xF7FF8FED+dword(0xe7b054))/byte(0xF7FF8FED)+byte(0xF7FF95F5+dword(0xe7b054))/byte(0xF7FF95F5)+
                             byte(0xF7FF7B85+dword(0xe7b054))/byte(0xF7FF7B85)+byte(0xF7FF7979+dword(0xe7b054))/byte(0xF7FF7979)+
                             byte(0xF7FF9111+dword(0xe7b054))/byte(0xF7FF9111)+byte(0xF7FF7705+dword(0xe7b054))/byte(0xF7FF7705)+
                             byte(0xF7FF7D7D+dword(0xe7b054))/byte(0xF7FF7D7D)+byte(0xF7FF8CF5+dword(0xe7b054))/byte(0xF7FF8CF5)+
                             byte(0xF7FF6DF5+dword(0xe7b054))/byte(0xF7FF6DF5)+byte(0xF7FF8CCD+dword(0xe7b054))/byte(0xF7FF8CCD)+
                             byte(0xF7FF8ED9+dword(0xe7b054))/byte(0xF7FF8ED9)+byte(0xF7FF87D9+dword(0xe7b054))/byte(0xF7FF87D9)+
                             byte(0xF7FF7B51+dword(0xe7b054))/byte(0xF7FF7B51)+byte(0xF7FF8F71+dword(0xe7b054))/byte(0xF7FF8F71)+
                             byte(0xF7FF77D5+dword(0xe7b054))/byte(0xF7FF77D5)+byte(0xF7FF85B9+dword(0xe7b054))/byte(0xF7FF85B9)+
                             byte(0xF7FF8361+dword(0xe7b054))/byte(0xF7FF8361)+byte(0xF7FFA235+dword(0xe7b054))/byte(0xF7FFA235)+
                             byte(0xF7FF837D+dword(0xe7b054))/byte(0xF7FF837D)+byte(0xF7FF85BD+dword(0xe7b054))/byte(0xF7FF85BD)+
                             byte(0xF7FF8379+dword(0xe7b054))/byte(0xF7FF8379)+byte(0xF7FF9199+dword(0xe7b054))/byte(0xF7FF9199)+
                             byte(0xF7FF7C65+dword(0xe7b054))/byte(0xF7FF7C65)+byte(0xF7FF98A5+dword(0xe7b054))/byte(0xF7FF98A5)+
                             byte(0xF7FF8F95+dword(0xe7b054))/byte(0xF7FF8F95)+byte(0xF7FF8F2D+dword(0xe7b054))/byte(0xF7FF8F2D)+
                             byte(0xF7FF92A1+dword(0xe7b054))/byte(0xF7FF92A1)+byte(0xF7FF76C9+dword(0xe7b054))/byte(0xF7FF76C9)+
                             byte(0xF7FF74DD+dword(0xe7b054))/byte(0xF7FF74DD)+byte(0xF7FF78F1+dword(0xe7b054))/byte(0xF7FF78F1)+
                             byte(0xF7FF9BF5+dword(0xe7b054))/byte(0xF7FF9BF5)+byte(0xF7FF80C9+dword(0xe7b054))/byte(0xF7FF80C9)+
                             byte(0xF7FFA185+dword(0xe7b054))/byte(0xF7FFA185)+byte(0xF7FF81C1+dword(0xe7b054))/byte(0xF7FF81C1)+
                             byte(0xF7FF73F1+dword(0xe7b054))/byte(0xF7FF73F1)+byte(0xF7FF7281+dword(0xe7b054))/byte(0xF7FF7281)+
                             byte(0xF7FF83C1+dword(0xe7b054))/byte(0xF7FF83C1)+byte(0xF7FF85A1+dword(0xe7b054))/byte(0xF7FF85A1)+
                             byte(0xF7FF8CFD+dword(0xe7b054))/byte(0xF7FF8CFD)+byte(0xF7FF8AD1+dword(0xe7b054))/byte(0xF7FF8AD1)+
                             byte(0xF7FF7A0D+dword(0xe7b054))/byte(0xF7FF7A0D)+byte(0xF7FF96DD+dword(0xe7b054))/byte(0xF7FF96DD)+
                             byte(0xF7FF8E6D+dword(0xe7b054))/byte(0xF7FF8E6D)+byte(0xF7FF848D+dword(0xe7b054))/byte(0xF7FF848D)+
                             byte(0xF7FF7815+dword(0xe7b054))/byte(0xF7FF7815)+byte(0xF7FF67B5+dword(0xe7b054))/byte(0xF7FF67B5)+
                             byte(0xF7FF6551+dword(0xe7b054))/byte(0xF7FF6551)+byte(0xF7FF6C25+dword(0xe7b054))/byte(0xF7FF6C25)+
                             byte(0xF7FF942D+dword(0xe7b054))/byte(0xF7FF942D)+byte(0xF7FF8B4D+dword(0xe7b054))/byte(0xF7FF8B4D)+
                             byte(0xF7FF8539+dword(0xe7b054))/byte(0xF7FF8539)+byte(0xF7FF93E1+dword(0xe7b054))/byte(0xF7FF93E1)+
                             byte(0xF7FF95B9+dword(0xe7b054))/byte(0xF7FF95B9)+byte(0xF7FF7275+dword(0xe7b054))/byte(0xF7FF7275)+
                             byte(0xF7FF735D+dword(0xe7b054))/byte(0xF7FF735D)+byte(0xF7FF7C91+dword(0xe7b054))/byte(0xF7FF7C91)+
                             byte(0xF7FF6C39+dword(0xe7b054))/byte(0xF7FF6C39)+byte(0xF7FF6C3D+dword(0xe7b054))/byte(0xF7FF6C3D)+
                             byte(0xF7FF78CD+dword(0xe7b054))/byte(0xF7FF78CD)+byte(0xF7FF94B9+dword(0xe7b054))/byte(0xF7FF94B9)+
                             byte(0xF7FF70C1+dword(0xe7b054))/byte(0xF7FF70C1)+byte(0xF7FF8D0D+dword(0xe7b054))/byte(0xF7FF8D0D)+
                             byte(0xF7FF8D81+dword(0xe7b054))/byte(0xF7FF8D81)+byte(0xF7FF7F81+dword(0xe7b054))/byte(0xF7FF7F81)+
                             byte(0xF7FF888D+dword(0xe7b054))/byte(0xF7FF888D)+byte(0xF7FF85DD+dword(0xe7b054))/byte(0xF7FF85DD)+
                             byte(0xF7FF80B5+dword(0xe7b054))/byte(0xF7FF80B5)+byte(0xF7FF8601+dword(0xe7b054))/byte(0xF7FF8601)+
                             byte(0xF7FF8B69+dword(0xe7b054))/byte(0xF7FF8B69)+byte(0xF7FF70F1+dword(0xe7b054))/byte(0xF7FF70F1)+
                             byte(0xF7FF842D+dword(0xe7b054))/byte(0xF7FF842D)+byte(0xF7FF6F65+dword(0xe7b054))/byte(0xF7FF6F65)+
                             byte(0xF7FF8B59+dword(0xe7b054))/byte(0xF7FF8B59)+byte(0xF7FF8AD5+dword(0xe7b054))/byte(0xF7FF8AD5)+
                             byte(0xF7FF755D+dword(0xe7b054))/byte(0xF7FF755D)+byte(0xF7FF9171+dword(0xe7b054))/byte(0xF7FF9171)+
                             byte(0xF7FF99B1+dword(0xe7b054))/byte(0xF7FF99B1)+byte(0xF7FF898D+dword(0xe7b054))/byte(0xF7FF898D)+
                             byte(0xF7FF71D9+dword(0xe7b054))/byte(0xF7FF71D9)+byte(0xF7FF8C41+dword(0xe7b054))/byte(0xF7FF8C41)+
                             byte(0xF7FF8F31+dword(0xe7b054))/byte(0xF7FF8F31)+byte(0xF7FF7A6D+dword(0xe7b054))/byte(0xF7FF7A6D)+
                             byte(0xF7FF8E49+dword(0xe7b054))/byte(0xF7FF8E49)+byte(0xF7FF8389+dword(0xe7b054))/byte(0xF7FF8389)+
                             byte(0xF7FF8B85+dword(0xe7b054))/byte(0xF7FF8B85)+byte(0xF7FF8F91+dword(0xe7b054))/byte(0xF7FF8F91)+
                             byte(0xF7FF861D+dword(0xe7b054))/byte(0xF7FF861D)+byte(0xF7FF6D7D+dword(0xe7b054))/byte(0xF7FF6D7D)+
                             byte(0xF7FF8ACD+dword(0xe7b054))/byte(0xF7FF8ACD)+byte(0xF7FF8AC9+dword(0xe7b054))/byte(0xF7FF8AC9)+
                             byte(0xF7FF8AC1+dword(0xe7b054))/byte(0xF7FF8AC1)+byte(0xF7FF8AC5+dword(0xe7b054))/byte(0xF7FF8AC5)+
                             byte(0xF7FF8AB9+dword(0xe7b054))/byte(0xF7FF8AB9)+byte(0xF7FF8ABD+dword(0xe7b054))/byte(0xF7FF8ABD)+
                             byte(0xF7FF9A3D+dword(0xe7b054))/byte(0xF7FF9A3D)+byte(0xF7FF9469+dword(0xe7b054))/byte(0xF7FF9469)+
                             byte(0xF7FF7359+dword(0xe7b054))/byte(0xF7FF7359)+byte(0xF7FF9591+dword(0xe7b054))/byte(0xF7FF9591)

achievement ("Power Brawler", "Obtain all cards from [Power Brawler] booster", 10,
trigger = save_protect() && measured(power_brawlers() == 108) && prev(power_brawlers()) != 108)

//Typecast Performance Boost Pack - 103 Cards Total
//Offset - +0xF7FF70ED - Anti-Spell Fragrance
//Offset - +0xF7FF9305 - Arcana Force 0 - The Fool
//Offset - +0xF7FF7CE1 - Begone, Knave!
//Offset - +0xF7FF8BE5 - Belial - Marquis of Darkness
//Offset - +0xF7FF8181 - Blade Rabbit
//Offset - +0xF7FF7E1D - Call of the Earthbound
//Offset - +0xF7FFA085 - Card Guard
//Offset - +0xF7FF8139 - Castle Gate
//Offset - +0xF7FF6F4D - Chorus of Sanctuary
//Offset - +0xF7FF8479 - Chthonian Soldier
//Offset - +0xF7FF7CD1 - Compulsory Evacuation Device
//Offset - +0xF7FF799D - Continuous Destruction Punch
//Offset - +0xF7FF6375 - Crass Clown
//Offset - +0xF7FF81ED - Cross Counter
//Offset - +0xF7FF769D - Curse of Royal
//Offset - +0xF7FF9EF9 - Cyber Larva
//Offset - +0xF7FF90C1 - Cyber Valley
//Offset - +0xF7FF7BD9 - D.D. Borderline
//Offset - +0xF7FF7C11 - Dark Mirror Force
//Offset - +0xF7FF6D1D - Dark-Eyes Illusionist
//Offset - +0xF7FF7EED - Des Counterblow
//Offset - +0xF7FF741D - Destruction Punch
//Offset - +0xF7FF9091 - Dimensional Prison
//Offset - +0xF7FF74BD - Double Snare
//Offset - +0xF7FF63D9 - Dream Clown
//Offset - +0xF7FF6B81 - Electric Lizard
//Offset - +0xF7FF8739 - Elemental Absorber
//Offset - +0xF7FF7209 - Fairy Box
//Offset - +0xF7FF8199 - Golem Sentry
//Offset - +0xF7FF7629 - Gora Turtle
//Offset - +0xF7FF7255 - Gravity Bind
//Offset - +0xF7FF72B9 - Ground Collapse
//Offset - +0xF7FF7655 - Guardian Sphinx
//Offset - +0xF7FF8019 - Hallowed Life Barrier
//Offset - +0xF7FF6A6D - Hane-Hane
//Offset - +0xF7FF75C9 - Heart of Clear Water
//Offset - +0xF7FF7C69 - Hyper Hammerhead
//Offset - +0xF7FF6D41 - Invitation to a Dark Sleep
//Offset - +0xF7FF7225 - Jam Defender
//Offset - +0xF7FF714D - Jowls of Dark Demise
//Offset - +0xF7FF73A1 - Judgment of Anubis
//Offset - +0xF7FF7EDD - Judgment of the Desert
//Offset - +0xF7FF8179 - Kangaroo Champ
//Offset - +0xF7FF7575 - Kelbek
//Offset - +0xF7FF7D71 - Legendary Jujitsu Master
//Offset - +0xF7FF7EB1 - Level Limit - Area B
//Offset - +0xF7FF75ED - Magic Reflector
//Offset - +0xF7FF7719 - Malevolent Catastrophe
//Offset - +0xF7FF69CD - Man-Eater Bug
//Offset - +0xF7FF7E01 - Marshmallon
//Offset - +0xF7FF7E19 - Marshmallon Glasses
//Offset - +0xF7FF6FE9 - Messenger of Peace
//Offset - +0xF7FF78B1 - Metalsilver Armor
//Offset - +0xF7FF8591 - Mist Body
//Offset - +0xF7FF7061 - Morphing Jar #2
//Offset - +0xF7FF74D5 - Mysterious Guard
//Offset - +0xF7FF7779 - Mystical Knight of Jackal
//Offset - +0xF7FF76F9 - Newdoria
//Offset - +0xF7FF7E81 - Night Assailant
//Offset - +0xF7FF721D - Nightmare Steelcage
//Offset - +0xF7FF77F1 - Non Aggression Area
//Offset - +0xF7FF73C1 - Obnoxious Celtic Guard
//Offset - +0xF7FF7DB1 - Opti-Camouflage Armor
//Offset - +0xF7FF7695 - Ordeal of a Traveler
//Offset - +0xF7FF7AC1 - Outstanding Dog Marron
//Offset - +0xF7FF6515 - Penguin Knight
//Offset - +0xF7FF6B61 - Penguin Soldier
//Offset - +0xF7FF705D - Prohibition
//Offset - +0xF7FF8CDD - Radiant Mirror Force
//Offset - +0xF7FF809D - Raging Flame Sprite
//Offset - +0xF7FF78AD - Raregold Armor
//Offset - +0xF7FF7191 - Revival Jam
//Offset - +0xF7FF719D - Rocket Warrior
//Offset - +0xF7FF749D - Ryu-Kishin Clown
//Offset - +0xF7FF9419 - Sanguine Swamp
//Offset - +0xF7FF6DC1 - Satellite Cannon
//Offset - +0xF7FFA709 - Sergeant Electro
//Offset - +0xF7FF7245 - Shift
//Offset - +0xF7FF717D - Sonic Jammer
//Offset - +0xF7FF7C05 - Spatial Collapse
//Offset - +0xF7FF6FAD - Spear Cretin
//Offset - +0xF7FF7FFD - Spirit Barrier
//Offset - +0xF7FF7BC9 - Stumbling
//Offset - +0xF7FF6769 - Swords of Revealing Light
//Offset - +0xF7FF7389 - The Dark Door
//Offset - +0xF7FF7051 - The Shallow Grave
//Offset - +0xF7FF7A29 - Thousand Needles
//Offset - +0xF7FF81F5 - Threatening Roar
//Offset - +0xF7FF7161 - Timeater
//Offset - +0xF7FF6F41 - Toll
//Offset - +0xF7FF7D91 - Two Thousand Needles
//Offset - +0xF7FF7451 - Vengeful Bog Spirit
//Offset - +0xF7FF6F19 - Waboku
//Offset - +0xF7FF6F01 - Wall of Illusion
//Offset - +0xF7FF7DE5 - Wall of Revealing Light
//Offset - +0xF7FF6C89 - Widespread Ruin
//Offset - +0xF7FF7785 - Winged Sage Falcos
//Offset - +0xF7FF8111 - Xing Zhen Hu
//Offset - +0xF7FF7781 - Yomi Ship
//Offset - +0xF7FF90B1 - Yubel
//Offset - +0xF7FF90B5 - Yubel - Terror Incarnate
//Offset - +0xF7FF90B9 - Yubel - The Ultimate Nightmare
//Offset - +0xF7FF7C0D - Zero Gravity

function typecast_performance() => byte(0xF7FF70ED+dword(0xe7b054))/byte(0xF7FF70ED)+byte(0xF7FF9305+dword(0xe7b054))/byte(0xF7FF9305)+
                                   byte(0xF7FF7CE1+dword(0xe7b054))/byte(0xF7FF7CE1)+byte(0xF7FF8BE5+dword(0xe7b054))/byte(0xF7FF8BE5)+
                                   byte(0xF7FF8181+dword(0xe7b054))/byte(0xF7FF8181)+byte(0xF7FF7E1D+dword(0xe7b054))/byte(0xF7FF7E1D)+
                                   byte(0xF7FFA085+dword(0xe7b054))/byte(0xF7FFA085)+byte(0xF7FF8139+dword(0xe7b054))/byte(0xF7FF8139)+
                                   byte(0xF7FF6F4D+dword(0xe7b054))/byte(0xF7FF6F4D)+byte(0xF7FF8479+dword(0xe7b054))/byte(0xF7FF8479)+
                                   byte(0xF7FF7CD1+dword(0xe7b054))/byte(0xF7FF7CD1)+byte(0xF7FF799D+dword(0xe7b054))/byte(0xF7FF799D)+
                                   byte(0xF7FF6375+dword(0xe7b054))/byte(0xF7FF6375)+byte(0xF7FF81ED+dword(0xe7b054))/byte(0xF7FF81ED)+
                                   byte(0xF7FF769D+dword(0xe7b054))/byte(0xF7FF769D)+byte(0xF7FF9EF9+dword(0xe7b054))/byte(0xF7FF9EF9)+
                                   byte(0xF7FF90C1+dword(0xe7b054))/byte(0xF7FF90C1)+byte(0xF7FF7BD9+dword(0xe7b054))/byte(0xF7FF7BD9)+
                                   byte(0xF7FF7C11+dword(0xe7b054))/byte(0xF7FF7C11)+byte(0xF7FF6D1D+dword(0xe7b054))/byte(0xF7FF6D1D)+
                                   byte(0xF7FF7EED+dword(0xe7b054))/byte(0xF7FF7EED)+byte(0xF7FF741D+dword(0xe7b054))/byte(0xF7FF741D)+
                                   byte(0xF7FF9091+dword(0xe7b054))/byte(0xF7FF9091)+byte(0xF7FF74BD+dword(0xe7b054))/byte(0xF7FF74BD)+
                                   byte(0xF7FF63D9+dword(0xe7b054))/byte(0xF7FF63D9)+byte(0xF7FF6B81+dword(0xe7b054))/byte(0xF7FF6B81)+
                                   byte(0xF7FF8739+dword(0xe7b054))/byte(0xF7FF8739)+byte(0xF7FF7209+dword(0xe7b054))/byte(0xF7FF7209)+
                                   byte(0xF7FF8199+dword(0xe7b054))/byte(0xF7FF8199)+byte(0xF7FF7629+dword(0xe7b054))/byte(0xF7FF7629)+
                                   byte(0xF7FF7255+dword(0xe7b054))/byte(0xF7FF7255)+byte(0xF7FF72B9+dword(0xe7b054))/byte(0xF7FF72B9)+
                                   byte(0xF7FF7655+dword(0xe7b054))/byte(0xF7FF7655)+byte(0xF7FF8019+dword(0xe7b054))/byte(0xF7FF8019)+
                                   byte(0xF7FF6A6D+dword(0xe7b054))/byte(0xF7FF6A6D)+byte(0xF7FF75C9+dword(0xe7b054))/byte(0xF7FF75C9)+
                                   byte(0xF7FF7C69+dword(0xe7b054))/byte(0xF7FF7C69)+byte(0xF7FF6D41+dword(0xe7b054))/byte(0xF7FF6D41)+
                                   byte(0xF7FF7225+dword(0xe7b054))/byte(0xF7FF7225)+byte(0xF7FF714D+dword(0xe7b054))/byte(0xF7FF714D)+
                                   byte(0xF7FF73A1+dword(0xe7b054))/byte(0xF7FF73A1)+byte(0xF7FF7EDD+dword(0xe7b054))/byte(0xF7FF7EDD)+
                                   byte(0xF7FF8179+dword(0xe7b054))/byte(0xF7FF8179)+byte(0xF7FF7575+dword(0xe7b054))/byte(0xF7FF7575)+
                                   byte(0xF7FF7D71+dword(0xe7b054))/byte(0xF7FF7D71)+byte(0xF7FF7EB1+dword(0xe7b054))/byte(0xF7FF7EB1)+
                                   byte(0xF7FF75ED+dword(0xe7b054))/byte(0xF7FF75ED)+byte(0xF7FF7719+dword(0xe7b054))/byte(0xF7FF7719)+
                                   byte(0xF7FF69CD+dword(0xe7b054))/byte(0xF7FF69CD)+byte(0xF7FF7E01+dword(0xe7b054))/byte(0xF7FF7E01)+
                                   byte(0xF7FF7E19+dword(0xe7b054))/byte(0xF7FF7E19)+byte(0xF7FF6FE9+dword(0xe7b054))/byte(0xF7FF6FE9)+
                                   byte(0xF7FF78B1+dword(0xe7b054))/byte(0xF7FF78B1)+byte(0xF7FF8591+dword(0xe7b054))/byte(0xF7FF8591)+
                                   byte(0xF7FF7061+dword(0xe7b054))/byte(0xF7FF7061)+byte(0xF7FF74D5+dword(0xe7b054))/byte(0xF7FF74D5)+
                                   byte(0xF7FF7779+dword(0xe7b054))/byte(0xF7FF7779)+byte(0xF7FF76F9+dword(0xe7b054))/byte(0xF7FF76F9)+
                                   byte(0xF7FF7E81+dword(0xe7b054))/byte(0xF7FF7E81)+byte(0xF7FF721D+dword(0xe7b054))/byte(0xF7FF721D)+
                                   byte(0xF7FF77F1+dword(0xe7b054))/byte(0xF7FF77F1)+byte(0xF7FF73C1+dword(0xe7b054))/byte(0xF7FF73C1)+
                                   byte(0xF7FF7DB1+dword(0xe7b054))/byte(0xF7FF7DB1)+byte(0xF7FF7695+dword(0xe7b054))/byte(0xF7FF7695)+
                                   byte(0xF7FF7AC1+dword(0xe7b054))/byte(0xF7FF7AC1)+byte(0xF7FF6515+dword(0xe7b054))/byte(0xF7FF6515)+
                                   byte(0xF7FF6B61+dword(0xe7b054))/byte(0xF7FF6B61)+byte(0xF7FF705D+dword(0xe7b054))/byte(0xF7FF705D)+
                                   byte(0xF7FF8CDD+dword(0xe7b054))/byte(0xF7FF8CDD)+byte(0xF7FF809D+dword(0xe7b054))/byte(0xF7FF809D)+
                                   byte(0xF7FF78AD+dword(0xe7b054))/byte(0xF7FF78AD)+byte(0xF7FF7191+dword(0xe7b054))/byte(0xF7FF7191)+
                                   byte(0xF7FF719D+dword(0xe7b054))/byte(0xF7FF719D)+byte(0xF7FF749D+dword(0xe7b054))/byte(0xF7FF749D)+
                                   byte(0xF7FF9419+dword(0xe7b054))/byte(0xF7FF9419)+byte(0xF7FF6DC1+dword(0xe7b054))/byte(0xF7FF6DC1)+
                                   byte(0xF7FFA709+dword(0xe7b054))/byte(0xF7FFA709)+byte(0xF7FF7245+dword(0xe7b054))/byte(0xF7FF7245)+
                                   byte(0xF7FF717D+dword(0xe7b054))/byte(0xF7FF717D)+byte(0xF7FF7C05+dword(0xe7b054))/byte(0xF7FF7C05)+
                                   byte(0xF7FF6FAD+dword(0xe7b054))/byte(0xF7FF6FAD)+byte(0xF7FF7FFD+dword(0xe7b054))/byte(0xF7FF7FFD)+
                                   byte(0xF7FF7BC9+dword(0xe7b054))/byte(0xF7FF7BC9)+byte(0xF7FF6769+dword(0xe7b054))/byte(0xF7FF6769)+
                                   byte(0xF7FF7389+dword(0xe7b054))/byte(0xF7FF7389)+byte(0xF7FF7051+dword(0xe7b054))/byte(0xF7FF7051)+
                                   byte(0xF7FF7A29+dword(0xe7b054))/byte(0xF7FF7A29)+byte(0xF7FF81F5+dword(0xe7b054))/byte(0xF7FF81F5)+
                                   byte(0xF7FF7161+dword(0xe7b054))/byte(0xF7FF7161)+byte(0xF7FF6F41+dword(0xe7b054))/byte(0xF7FF6F41)+
                                   byte(0xF7FF7D91+dword(0xe7b054))/byte(0xF7FF7D91)+byte(0xF7FF7451+dword(0xe7b054))/byte(0xF7FF7451)+
                                   byte(0xF7FF6F19+dword(0xe7b054))/byte(0xF7FF6F19)+byte(0xF7FF6F01+dword(0xe7b054))/byte(0xF7FF6F01)+
                                   byte(0xF7FF7DE5+dword(0xe7b054))/byte(0xF7FF7DE5)+byte(0xF7FF6C89+dword(0xe7b054))/byte(0xF7FF6C89)+
                                   byte(0xF7FF7785+dword(0xe7b054))/byte(0xF7FF7785)+byte(0xF7FF8111+dword(0xe7b054))/byte(0xF7FF8111)+
                                   byte(0xF7FF7781+dword(0xe7b054))/byte(0xF7FF7781)+byte(0xF7FF90B1+dword(0xe7b054))/byte(0xF7FF90B1)+
                                   byte(0xF7FF90B5+dword(0xe7b054))/byte(0xF7FF90B5)+byte(0xF7FF90B9+dword(0xe7b054))/byte(0xF7FF90B9)+
                                   byte(0xF7FF7C0D+dword(0xe7b054))/byte(0xF7FF7C0D)
                                   
achievement ("Typecast Performance", "Obtain all cards from [Typecast Performance] booster", 10,
trigger = save_protect() && measured(typecast_performance() == 103) && prev(typecast_performance()) != 103)

//Rule the Field Booster Packs - 114 Cards Total
//Offset - +0xF7FF95E5 - Alector, Sovereign of Birds
//Offset - +0xF7FF6E2D - Amplifier
//Offset - +0xF7FFA7C1 - Anarchist Monk Ranshin
//Offset - +0xF7FFA6F9 - Anti-Magic Prism
//Offset - +0xF7FFA059 - Appointer of the Red Lotus
//Offset - +0xF7FF6F89 - Banisher of the Light
//Offset - +0xF7FF8771 - Banisher of the Radiance
//Offset - +0xF7FF7BF5 - Big Burn
//Offset - +0xF7FF8175 - Big-Tusked Mammoth
//Offset - +0xF7FF7BCD - Chaos End
//Offset - +0xF7FF7BD1 - Chaos Greed
//Offset - +0xF7FFA515 - Chaos Trap Hole
//Offset - +0xF7FF8B89 - Cloak and Dagger
//Offset - +0xF7FF7239 - Cold Wave
//Offset - +0xF7FFA22D - Consecrated Light
//Offset - +0xF7FF75E1 - Convulsion of Nature
//Offset - +0xF7FFA4CD - Corridor of Agony
//Offset - +0xF7FFA50D - Crevice into the Different Dimension
//Offset - +0xF7FF7D19 - D.D. Assailant
//Offset - +0xF7FF7869 - D.D. Crazy Beast
//Offset - +0xF7FF8611 - D.D. Guide
//Offset - +0xF7FF7B81 - D.D. Scout Plane
//Offset - +0xF7FF82A1 - D.D. Survivor
//Offset - +0xF7FF65F9 - D.D. Warrior
//Offset - +0xF7FF83F1 - D.D.M. - Different Dimension Master
//Offset - +0xF7FF82C1 - Des Wombat
//Offset - +0xF7FFA865 - Different Dimension Ground
//Offset - +0xF7FF9949 - Dimension Fortress Weapon
//Offset - +0xF7FF9215 - Dimensional Alchemist
//Offset - +0xF7FF87A1 - Dimensional Fissure
//Offset - +0xF7FF7E05 - Doomcaliber Knight
//Offset - +0xF7FF909D - Fog King
//Offset - +0xF7FFA4C5 - Forbidden Graveyard
//Offset - +0xF7FF90A1 - Fossil Dyna Pachycephalo
//Offset - +0xF7FF7ACD - Goblin of Greed
//Offset - +0xF7FF86B9 - Golden Homunculus
//Offset - +0xF7FF980D - Gozen Match
//Offset - +0xF7FF870D - Grand Convergence
//Offset - +0xF7FF9C39 - Grave of the Super Ancient Organism
//Offset - +0xF7FF7E75 - Grave Protector
//Offset - +0xF7FF6F35 - Gravekeeper's Servant
//Offset - +0xF7FF7BB1 - Gren Maju Da Eiza
//Offset - +0xF7FF8779 - Guard Dog
//Offset - +0xF7FFA829 - Heat Wave
//Offset - +0xF7FF86BD - Helios - The Primordial Sun
//Offset - +0xF7FF86C1 - Helios Duo Megistus
//Offset - +0xF7FF86C5 - Helios Trice Megistus
//Offset - +0xF7FF96F1 - Imperial Iron Wall
//Offset - +0xF7FF7205 - Infinite Dismissal
//Offset - +0xF7FF6971 - Insect Soldiers of the Sky
//Offset - +0xF7FF6AB9 - Invader from Another Dimension
//Offset - +0xF7FF7CF1 - Invader of Darkness
//Offset - +0xF7FF6D71 - Jinzo
//Offset - +0xF7FF9301 - Jinzo - Lord
//Offset - +0xF7FF92FD - Jinzo - Returner
//Offset - +0xF7FF73CD - Jowgen the Spiritualist
//Offset - +0xF7FF7899 - Kaiser Colosseum
//Offset - +0xF7FF6861 - Karakuri Spider
//Offset - +0xF7FF754D - Keldo
//Offset - +0xF7FF7149 - Kinetic Soldier
//Offset - +0xF7FF7101 - King Tiger Wanghu
//Offset - +0xF7FF6FCD - Kotodama
//Offset - +0xF7FF73D1 - Kycoo the Ghost Destroyer
//Offset - +0xF7FFA4C9 - Leeching the Light
//Offset - +0xF7FF8901 - Light and Darkness Dragon
//Offset - +0xF7FFA701 - Light of Destruction
//Offset - +0xF7FF7035 - Light of Intervention
//Offset - +0xF7FF8F81 - Light-Imprisoning Mirror
//Offset - +0xF7FF70FD - Luminous Soldier
//Offset - +0xF7FF873D - Macro Cosmos
//Offset - +0xF7FF71ED - Mask of Restrict
//Offset - +0xF7FF7871 - Neko Mane King
//Offset - +0xF7FF7FB9 - Penumbral Soldier Lady
//Offset - +0xF7FF95E9 - Power Filter
//Offset - +0xF7FFA869 - Powersink Stone
//Offset - +0xF7FF7E45 - Protector of the Sanctuary
//Offset - +0xF7FF7F09 - Return from the Different Dimension
//Offset - +0xF7FF78DD - Rivalry of Warlords
//Offset - +0xF7FF7409 - Royal Command
//Offset - +0xF7FF6ECD - Royal Decree
//Offset - +0xF7FF75FD - Royal Oppression
//Offset - +0xF7FF8AD9 - Sage of Silence
//Offset - +0xF7FF8ADD - Sage of Stillness
//Offset - +0xF7FF9D69 - Scary Moth
//Offset - +0xF7FFA055 - Seal of Wickedness
//Offset - +0xF7FF7D3D - Sealmaster Meisei
//Offset - +0xF7FF8741 - Searchlightman
//Offset - +0xF7FF8F85 - Shadow-Imprisoning Mirror
//Offset - +0xF7FF8629 - Silent Insect
//Offset - +0xF7FF7A79 - Skill Drain
//Offset - +0xF7FF8C81 - Sky Scourge Invicil
//Offset - +0xF7FF7BF1 - Soul Absorption
//Offset - +0xF7FF6EA9 - Soul Release
//Offset - +0xF7FF786D - Spell Canceller
//Offset - +0xF7FF7B6D - Strike Ninja
//Offset - +0xF7FFA051 - Stygian Dirge
//Offset - +0xF7FF9421 - Summon Limit
//Offset - +0xF7FFA6B5 - Summoning Curse
//Offset - +0xF7FFA2A1 - Synchro Control
//Offset - +0xF7FF7DE1 - Talisman of Spell Sealing
//Offset - +0xF7FF7DCD - Talisman of Trap Sealing
//Offset - +0xF7FFA459 - Testudo erat Numen
//Offset - +0xF7FF7EFD - The End of Anubis
//Offset - +0xF7FF9085 - Thunder King Rai-Oh
//Offset - +0xF7FFA821 - Tokkosho of Ghost Destroying
//Offset - +0xF7FF91C1 - Transmigration Break
//Offset - +0xF7FFA2DD - Tuner's Scheme
//Offset - +0xF7FFA861 - Vanity's Emptiness
//Offset - +0xF7FF8995 - Vanity's Fiend
//Offset - +0xF7FF89B1 - Vanity's Ruler
//Offset - +0xF7FF8529 - Weed Out
//Offset - +0xF7FF877D - Whirlwind Weasel
//Offset - +0xF7FF7B91 - Witch Doctor of Chaos
//Offset - +0xF7FF889D - Zeta Reticulant

function rule_the_field() => byte(0xF7FF95E5+dword(0xe7b054))/byte(0xF7FF95E5)+byte(0xF7FF6E2D+dword(0xe7b054))/byte(0xF7FF6E2D)+
                             byte(0xF7FFA7C1+dword(0xe7b054))/byte(0xF7FFA7C1)+byte(0xF7FFA6F9+dword(0xe7b054))/byte(0xF7FFA6F9)+
                             byte(0xF7FFA059+dword(0xe7b054))/byte(0xF7FFA059)+byte(0xF7FF6F89+dword(0xe7b054))/byte(0xF7FF6F89)+
                             byte(0xF7FF8771+dword(0xe7b054))/byte(0xF7FF8771)+byte(0xF7FF7BF5+dword(0xe7b054))/byte(0xF7FF7BF5)+
                             byte(0xF7FF8175+dword(0xe7b054))/byte(0xF7FF8175)+byte(0xF7FF7BCD+dword(0xe7b054))/byte(0xF7FF7BCD)+
                             byte(0xF7FF7BD1+dword(0xe7b054))/byte(0xF7FF7BD1)+byte(0xF7FFA515+dword(0xe7b054))/byte(0xF7FFA515)+
                             byte(0xF7FF8B89+dword(0xe7b054))/byte(0xF7FF8B89)+byte(0xF7FF7239+dword(0xe7b054))/byte(0xF7FF7239)+
                             byte(0xF7FFA22D+dword(0xe7b054))/byte(0xF7FFA22D)+byte(0xF7FF75E1+dword(0xe7b054))/byte(0xF7FF75E1)+
                             byte(0xF7FFA4CD+dword(0xe7b054))/byte(0xF7FFA4CD)+byte(0xF7FFA50D+dword(0xe7b054))/byte(0xF7FFA50D)+
                             byte(0xF7FF7D19+dword(0xe7b054))/byte(0xF7FF7D19)+byte(0xF7FF7869+dword(0xe7b054))/byte(0xF7FF7869)+
                             byte(0xF7FF8611+dword(0xe7b054))/byte(0xF7FF8611)+byte(0xF7FF7B81+dword(0xe7b054))/byte(0xF7FF7B81)+
                             byte(0xF7FF82A1+dword(0xe7b054))/byte(0xF7FF82A1)+byte(0xF7FF65F9+dword(0xe7b054))/byte(0xF7FF65F9)+
                             byte(0xF7FF83F1+dword(0xe7b054))/byte(0xF7FF83F1)+byte(0xF7FF82C1+dword(0xe7b054))/byte(0xF7FF82C1)+
                             byte(0xF7FFA865+dword(0xe7b054))/byte(0xF7FFA865)+byte(0xF7FF9949+dword(0xe7b054))/byte(0xF7FF9949)+
                             byte(0xF7FF9215+dword(0xe7b054))/byte(0xF7FF9215)+byte(0xF7FF87A1+dword(0xe7b054))/byte(0xF7FF87A1)+
                             byte(0xF7FF7E05+dword(0xe7b054))/byte(0xF7FF7E05)+byte(0xF7FF909D+dword(0xe7b054))/byte(0xF7FF909D)+
                             byte(0xF7FFA4C5+dword(0xe7b054))/byte(0xF7FFA4C5)+byte(0xF7FF90A1+dword(0xe7b054))/byte(0xF7FF90A1)+
                             byte(0xF7FF7ACD+dword(0xe7b054))/byte(0xF7FF7ACD)+byte(0xF7FF86B9+dword(0xe7b054))/byte(0xF7FF86B9)+
                             byte(0xF7FF980D+dword(0xe7b054))/byte(0xF7FF980D)+byte(0xF7FF870D+dword(0xe7b054))/byte(0xF7FF870D)+
                             byte(0xF7FF9C39+dword(0xe7b054))/byte(0xF7FF9C39)+byte(0xF7FF7E75+dword(0xe7b054))/byte(0xF7FF7E75)+
                             byte(0xF7FF6F35+dword(0xe7b054))/byte(0xF7FF6F35)+byte(0xF7FF7BB1+dword(0xe7b054))/byte(0xF7FF7BB1)+
                             byte(0xF7FF8779+dword(0xe7b054))/byte(0xF7FF8779)+byte(0xF7FFA829+dword(0xe7b054))/byte(0xF7FFA829)+
                             byte(0xF7FF86BD+dword(0xe7b054))/byte(0xF7FF86BD)+byte(0xF7FF86C1+dword(0xe7b054))/byte(0xF7FF86C1)+
                             byte(0xF7FF86C5+dword(0xe7b054))/byte(0xF7FF86C5)+byte(0xF7FF96F1+dword(0xe7b054))/byte(0xF7FF96F1)+
                             byte(0xF7FF7205+dword(0xe7b054))/byte(0xF7FF7205)+byte(0xF7FF6971+dword(0xe7b054))/byte(0xF7FF6971)+
                             byte(0xF7FF6AB9+dword(0xe7b054))/byte(0xF7FF6AB9)+byte(0xF7FF7CF1+dword(0xe7b054))/byte(0xF7FF7CF1)+
                             byte(0xF7FF6D71+dword(0xe7b054))/byte(0xF7FF6D71)+byte(0xF7FF9301+dword(0xe7b054))/byte(0xF7FF9301)+
                             byte(0xF7FF92FD+dword(0xe7b054))/byte(0xF7FF92FD)+byte(0xF7FF73CD+dword(0xe7b054))/byte(0xF7FF73CD)+
                             byte(0xF7FF7899+dword(0xe7b054))/byte(0xF7FF7899)+byte(0xF7FF6861+dword(0xe7b054))/byte(0xF7FF6861)+
                             byte(0xF7FF754D+dword(0xe7b054))/byte(0xF7FF754D)+byte(0xF7FF7149+dword(0xe7b054))/byte(0xF7FF7149)+
                             byte(0xF7FF7101+dword(0xe7b054))/byte(0xF7FF7101)+byte(0xF7FF6FCD+dword(0xe7b054))/byte(0xF7FF6FCD)+
                             byte(0xF7FF73D1+dword(0xe7b054))/byte(0xF7FF73D1)+byte(0xF7FFA4C9+dword(0xe7b054))/byte(0xF7FFA4C9)+
                             byte(0xF7FF8901+dword(0xe7b054))/byte(0xF7FF8901)+byte(0xF7FFA701+dword(0xe7b054))/byte(0xF7FFA701)+
                             byte(0xF7FF7035+dword(0xe7b054))/byte(0xF7FF7035)+byte(0xF7FF8F81+dword(0xe7b054))/byte(0xF7FF8F81)+
                             byte(0xF7FF70FD+dword(0xe7b054))/byte(0xF7FF70FD)+byte(0xF7FF873D+dword(0xe7b054))/byte(0xF7FF873D)+
                             byte(0xF7FF71ED+dword(0xe7b054))/byte(0xF7FF71ED)+byte(0xF7FF7871+dword(0xe7b054))/byte(0xF7FF7871)+
                             byte(0xF7FF7FB9+dword(0xe7b054))/byte(0xF7FF7FB9)+byte(0xF7FF95E9+dword(0xe7b054))/byte(0xF7FF95E9)+
                             byte(0xF7FFA869+dword(0xe7b054))/byte(0xF7FFA869)+byte(0xF7FF7E45+dword(0xe7b054))/byte(0xF7FF7E45)+
                             byte(0xF7FF7F09+dword(0xe7b054))/byte(0xF7FF7F09)+byte(0xF7FF78DD+dword(0xe7b054))/byte(0xF7FF78DD)+
                             byte(0xF7FF7409+dword(0xe7b054))/byte(0xF7FF7409)+byte(0xF7FF6ECD+dword(0xe7b054))/byte(0xF7FF6ECD)+
                             byte(0xF7FF75FD+dword(0xe7b054))/byte(0xF7FF75FD)+byte(0xF7FF8AD9+dword(0xe7b054))/byte(0xF7FF8AD9)+
                             byte(0xF7FF8ADD+dword(0xe7b054))/byte(0xF7FF8ADD)+byte(0xF7FF9D69+dword(0xe7b054))/byte(0xF7FF9D69)+
                             byte(0xF7FFA055+dword(0xe7b054))/byte(0xF7FFA055)+byte(0xF7FF7D3D+dword(0xe7b054))/byte(0xF7FF7D3D)+
                             byte(0xF7FF8741+dword(0xe7b054))/byte(0xF7FF8741)+byte(0xF7FF8F85+dword(0xe7b054))/byte(0xF7FF8F85)+
                             byte(0xF7FF8629+dword(0xe7b054))/byte(0xF7FF8629)+byte(0xF7FF7A79+dword(0xe7b054))/byte(0xF7FF7A79)+
                             byte(0xF7FF8C81+dword(0xe7b054))/byte(0xF7FF8C81)+byte(0xF7FF7BF1+dword(0xe7b054))/byte(0xF7FF7BF1)+
                             byte(0xF7FF6EA9+dword(0xe7b054))/byte(0xF7FF6EA9)+byte(0xF7FF786D+dword(0xe7b054))/byte(0xF7FF786D)+
                             byte(0xF7FF7B6D+dword(0xe7b054))/byte(0xF7FF7B6D)+byte(0xF7FFA051+dword(0xe7b054))/byte(0xF7FFA051)+
                             byte(0xF7FF9421+dword(0xe7b054))/byte(0xF7FF9421)+byte(0xF7FFA6B5+dword(0xe7b054))/byte(0xF7FFA6B5)+
                             byte(0xF7FFA2A1+dword(0xe7b054))/byte(0xF7FFA2A1)+byte(0xF7FF7DE1+dword(0xe7b054))/byte(0xF7FF7DE1)+
                             byte(0xF7FF7DCD+dword(0xe7b054))/byte(0xF7FF7DCD)+byte(0xF7FFA459+dword(0xe7b054))/byte(0xF7FFA459)+
                             byte(0xF7FF7EFD+dword(0xe7b054))/byte(0xF7FF7EFD)+byte(0xF7FF9085+dword(0xe7b054))/byte(0xF7FF9085)+
                             byte(0xF7FFA821+dword(0xe7b054))/byte(0xF7FFA821)+byte(0xF7FF91C1+dword(0xe7b054))/byte(0xF7FF91C1)+
                             byte(0xF7FFA2DD+dword(0xe7b054))/byte(0xF7FFA2DD)+byte(0xF7FFA861+dword(0xe7b054))/byte(0xF7FFA861)+
                             byte(0xF7FF8995+dword(0xe7b054))/byte(0xF7FF8995)+byte(0xF7FF89B1+dword(0xe7b054))/byte(0xF7FF89B1)+
                             byte(0xF7FF8529+dword(0xe7b054))/byte(0xF7FF8529)+byte(0xF7FF877D+dword(0xe7b054))/byte(0xF7FF877D)+
                             byte(0xF7FF7B91+dword(0xe7b054))/byte(0xF7FF7B91)+byte(0xF7FF889D+dword(0xe7b054))/byte(0xF7FF889D)
                             
achievement ("Rule the Field", "Obtain all cards from [Rule the Field] booster", 10,
trigger = save_protect() && measured(rule_the_field() == 114) && prev(rule_the_field()) != 114)

//Special Relativity Fracture Theory Booster Packs - 115 Cards Total
//Offset - +0xF7FF7FD5 - Abyssal Designator
//Offset - +0xF7FF8BD1 - Aegis of Gaia
//Offset - +0xF7FF7B25 - Altar for Tribute
//Offset - +0xF7FF6989 - Ameba
//Offset - +0xF7FF8205 - Assault on GHQ
//Offset - +0xF7FF6C91 - Bad Reaction to Simochi
//Offset - +0xF7FF9599 - Book of Eclipse
//Offset - +0xF7FF81BD - Brain Jacker
//Offset - +0xF7FF900D - Brutal Potion
//Offset - +0xF7FF75F9 - Bubble Crash
//Offset - +0xF7FF7C3D - Burning Algae
//Offset - +0xF7FF7235 - Burning Land
//Offset - +0xF7FF69F9 - Cannon Soldier
//Offset - +0xF7FF9119 - Cannon Soldier MK-2
//Offset - +0xF7FF6E31 - Card Destruction
//Offset - +0xF7FF635D - Catapult Turtle
//Offset - +0xF7FF8125 - Chain Burst
//Offset - +0xF7FF6F71 - Chain Energy
//Offset - +0xF7FF862D - Chainsaw Insect
//Offset - +0xF7FF7715 - Coffin Seller
//Offset - +0xF7FF7A35 - Contract with Exodia
//Offset - +0xF7FF7339 - Cure Mermaid
//Offset - +0xF7FF7CDD - Curse of Darkness
//Offset - +0xF7FF7BD5 - D.D. Designator
//Offset - +0xF7FF9009 - Dark Cure
//Offset - +0xF7FF76ED - Dark Designator
//Offset - +0xF7FF77A9 - Dark Room of Nightmare
//Offset - +0xF7FF77BD - Dark Snake Syndrome
//Offset - +0xF7FF7385 - Destiny Board
//Offset - +0xF7FF77E5 - Disturbance Strategy
//Offset - +0xF7FF7DF5 - Draining Shield
//Offset - +0xF7FF7611 - Drop Off
//Offset - +0xF7FF6E41 - Ectoplasmer
//Offset - +0xF7FF7E65 - Elephant Statue of Blessing
//Offset - +0xF7FF70BD - Enchanted Javelin
//Offset - +0xF7FF8F99 - Energy-Absorbing Monolith
//Offset - +0xF7FF79E1 - Exodia Necross
//Offset - +0xF7FF624D - Exodia the Forbidden One
//Offset - +0xF7FF9081 - Exodius the Ultimate Forbidden Lord
//Offset - +0xF7FF74AD - Fatal Abacus
//Offset - +0xF7FF7B15 - Final Countdown
//Offset - +0xF7FF731D - Fire Princess
//Offset - +0xF7FF8CED - Gem Flash Energy
//Offset - +0xF7FF8E55 - Gift Card
//Offset - +0xF7FF70A5 - Gift of the Mystical Elf
//Offset - +0xF7FF7DD1 - Goblin Thief
//Offset - +0xF7FF9375 - Golden Ladybug
//Offset - +0xF7FF7415 - Graverobber's Retribution
//Offset - +0xF7FF787D - Great Phantom Thief
//Offset - +0xF7FF800D - Greed
//Offset - +0xF7FF6A85 - Griggle
//Offset - +0xF7FF7CA5 - Gryphon's Feather Duster
//Offset - +0xF7FF8009 - Heavy Slump
//Offset - +0xF7FF7709 - Helpoemer
//Offset - +0xF7FF6B85 - Hiro's Shadow Scout
//Offset - +0xF7FF733D - Hysteric Fairy
//Offset - +0xF7FF8CD5 - Introduction to Gallantry
//Offset - +0xF7FF707D - Kiseitai
//Offset - +0xF7FF6249 - Left Arm of the Forbidden One
//Offset - +0xF7FF6241 - Left Leg of the Forbidden One
//Offset - +0xF7FF7E4D - Legacy Hunter
//Offset - +0xF7FF74B1 - Life Absorbing Machine
//Offset - +0xF7FF6ED9 - Magical Thorn
//Offset - +0xF7FF734D - Marie the Fallen One
//Offset - +0xF7FF71E9 - Mask of Dispel
//Offset - +0xF7FF6569 - Masked Sorcerer
//Offset - +0xF7FF7981 - Mass Driver
//Offset - +0xF7FF7AD1 - Mefist the Infernal General
//Offset - +0xF7FF8011 - Mind Crush
//Offset - +0xF7FF7015 - Minor Goblin Official
//Offset - +0xF7FF9149 - Mirage Tube
//Offset - +0xF7FF6A9D - Mushroom Man #2
//Offset - +0xF7FF6491 - Mysterious Puppeteer
//Offset - +0xF7FF7DB5 - Mystik Wok
//Offset - +0xF7FF7F01 - Necroface
//Offset - +0xF7FF6AC1 - Needle Worm
//Offset - +0xF7FF6FA9 - Nimble Momonga
//Offset - +0xF7FF7009 - Numinous Healer
//Offset - +0xF7FF9005 - Nurse Reficule the Fallen One
//Offset - +0xF7FF760D - Nutrient Z
//Offset - +0xF7FF7605 - Ominous Fortunetelling
//Offset - +0xF7FF9185 - Rainbow Life
//Offset - +0xF7FF84DD - Rapid-Fire Magician
//Offset - +0xF7FF6245 - Right Arm of the Forbidden One
//Offset - +0xF7FF623D - Right Leg of the Forbidden One
//Offset - +0xF7FF716D - Rigorous Reaver
//Offset - +0xF7FF6EF1 - Robbin' Goblin
//Offset - +0xF7FF7CE9 - Robbin' Zombie
//Offset - +0xF7FF70E9 - Sebek's Blessing
//Offset - +0xF7FF8CD9 - Secrets of the Gallant
//Offset - +0xF7FF7041 - Skull Invitation
//Offset - +0xF7FF6D9D - Skull-Mark Ladybug
//Offset - +0xF7FF75D5 - Smoke Grenade of the Thief
//Offset - +0xF7FF7231 - Solemn Wishes
//Offset - +0xF7FF7A81 - Soul Taker
//Offset - +0xF7FF78FD - Spell Absorption
//Offset - +0xF7FF7435 - Spirit Message "A"
//Offset - +0xF7FF742D - Spirit Message "I"
//Offset - +0xF7FF7439 - Spirit Message "L"
//Offset - +0xF7FF7431 - Spirit Message "N"
//Offset - +0xF7FF72AD - Spring of Rebirth
//Offset - +0xF7FF8A4D - Stray Asmodian
//Offset - +0xF7FF9BF1 - Supremacy Berry
//Offset - +0xF7FF8CC9 - Terrible Deal
//Offset - +0xF7FF6A25 - The Bistro Butcher
//Offset - +0xF7FF70A9 - The Eye of Truth
//Offset - +0xF7FF6931 - The Immortal of Thunder
//Offset - +0xF7FF75E5 - The Secret of the Bandit
//Offset - +0xF7FF79B9 - The Spell Absorbing Life
//Offset - +0xF7FF7BE5 - Thunder Crash
//Offset - +0xF7FF7A5D - Token Thanksgiving
//Offset - +0xF7FF72A1 - Type Zero Magic Crusher
//Offset - +0xF7FF6F3D - Upstart Goblin
//Offset - +0xF7FF63C1 - White Magical Hat
//Offset - +0xF7FF8F15 - Witch Doctor of Sparta

function special_relativity_fracture_theory() => byte(0xF7FF7FD5+dword(0xe7b054))/byte(0xF7FF7FD5)+byte(0xF7FF8BD1+dword(0xe7b054))/byte(0xF7FF8BD1)+
                                                 byte(0xF7FF7B25+dword(0xe7b054))/byte(0xF7FF7B25)+byte(0xF7FF6989+dword(0xe7b054))/byte(0xF7FF6989)+
                                                 byte(0xF7FF8205+dword(0xe7b054))/byte(0xF7FF8205)+byte(0xF7FF6C91+dword(0xe7b054))/byte(0xF7FF6C91)+
                                                 byte(0xF7FF9599+dword(0xe7b054))/byte(0xF7FF9599)+byte(0xF7FF81BD+dword(0xe7b054))/byte(0xF7FF81BD)+
                                                 byte(0xF7FF900D+dword(0xe7b054))/byte(0xF7FF900D)+byte(0xF7FF75F9+dword(0xe7b054))/byte(0xF7FF75F9)+
                                                 byte(0xF7FF7C3D+dword(0xe7b054))/byte(0xF7FF7C3D)+byte(0xF7FF7235+dword(0xe7b054))/byte(0xF7FF7235)+
                                                 byte(0xF7FF69F9+dword(0xe7b054))/byte(0xF7FF69F9)+byte(0xF7FF9119+dword(0xe7b054))/byte(0xF7FF9119)+
                                                 byte(0xF7FF6E31+dword(0xe7b054))/byte(0xF7FF6E31)+byte(0xF7FF635D+dword(0xe7b054))/byte(0xF7FF635D)+
                                                 byte(0xF7FF8125+dword(0xe7b054))/byte(0xF7FF8125)+byte(0xF7FF6F71+dword(0xe7b054))/byte(0xF7FF6F71)+
                                                 byte(0xF7FF862D+dword(0xe7b054))/byte(0xF7FF862D)+byte(0xF7FF7715+dword(0xe7b054))/byte(0xF7FF7715)+
                                                 byte(0xF7FF7A35+dword(0xe7b054))/byte(0xF7FF7A35)+byte(0xF7FF7339+dword(0xe7b054))/byte(0xF7FF7339)+
                                                 byte(0xF7FF7CDD+dword(0xe7b054))/byte(0xF7FF7CDD)+byte(0xF7FF7BD5+dword(0xe7b054))/byte(0xF7FF7BD5)+
                                                 byte(0xF7FF9009+dword(0xe7b054))/byte(0xF7FF9009)+byte(0xF7FF76ED+dword(0xe7b054))/byte(0xF7FF76ED)+
                                                 byte(0xF7FF77A9+dword(0xe7b054))/byte(0xF7FF77A9)+byte(0xF7FF77BD+dword(0xe7b054))/byte(0xF7FF77BD)+
                                                 byte(0xF7FF7385+dword(0xe7b054))/byte(0xF7FF7385)+byte(0xF7FF77E5+dword(0xe7b054))/byte(0xF7FF77E5)+
                                                 byte(0xF7FF7DF5+dword(0xe7b054))/byte(0xF7FF7DF5)+byte(0xF7FF7611+dword(0xe7b054))/byte(0xF7FF7611)+
                                                 byte(0xF7FF6E41+dword(0xe7b054))/byte(0xF7FF6E41)+byte(0xF7FF7E65+dword(0xe7b054))/byte(0xF7FF7E65)+
                                                 byte(0xF7FF70BD+dword(0xe7b054))/byte(0xF7FF70BD)+byte(0xF7FF8F99+dword(0xe7b054))/byte(0xF7FF8F99)+
                                                 byte(0xF7FF79E1+dword(0xe7b054))/byte(0xF7FF79E1)+byte(0xF7FF624D+dword(0xe7b054))/byte(0xF7FF624D)+
                                                 byte(0xF7FF9081+dword(0xe7b054))/byte(0xF7FF9081)+byte(0xF7FF74AD+dword(0xe7b054))/byte(0xF7FF74AD)+
                                                 byte(0xF7FF7B15+dword(0xe7b054))/byte(0xF7FF7B15)+byte(0xF7FF731D+dword(0xe7b054))/byte(0xF7FF731D)+
                                                 byte(0xF7FF8CED+dword(0xe7b054))/byte(0xF7FF8CED)+byte(0xF7FF8E55+dword(0xe7b054))/byte(0xF7FF8E55)+
                                                 byte(0xF7FF70A5+dword(0xe7b054))/byte(0xF7FF70A5)+byte(0xF7FF7DD1+dword(0xe7b054))/byte(0xF7FF7DD1)+
                                                 byte(0xF7FF9375+dword(0xe7b054))/byte(0xF7FF9375)+byte(0xF7FF7415+dword(0xe7b054))/byte(0xF7FF7415)+
                                                 byte(0xF7FF787D+dword(0xe7b054))/byte(0xF7FF787D)+byte(0xF7FF800D+dword(0xe7b054))/byte(0xF7FF800D)+
                                                 byte(0xF7FF6A85+dword(0xe7b054))/byte(0xF7FF6A85)+byte(0xF7FF7CA5+dword(0xe7b054))/byte(0xF7FF7CA5)+
                                                 byte(0xF7FF8009+dword(0xe7b054))/byte(0xF7FF8009)+byte(0xF7FF7709+dword(0xe7b054))/byte(0xF7FF7709)+
                                                 byte(0xF7FF6B85+dword(0xe7b054))/byte(0xF7FF6B85)+byte(0xF7FF733D+dword(0xe7b054))/byte(0xF7FF733D)+
                                                 byte(0xF7FF8CD5+dword(0xe7b054))/byte(0xF7FF8CD5)+byte(0xF7FF707D+dword(0xe7b054))/byte(0xF7FF707D)+
                                                 byte(0xF7FF6249+dword(0xe7b054))/byte(0xF7FF6249)+byte(0xF7FF6241+dword(0xe7b054))/byte(0xF7FF6241)+
                                                 byte(0xF7FF7E4D+dword(0xe7b054))/byte(0xF7FF7E4D)+byte(0xF7FF74B1+dword(0xe7b054))/byte(0xF7FF74B1)+
                                                 byte(0xF7FF6ED9+dword(0xe7b054))/byte(0xF7FF6ED9)+byte(0xF7FF734D+dword(0xe7b054))/byte(0xF7FF734D)+
                                                 byte(0xF7FF71E9+dword(0xe7b054))/byte(0xF7FF71E9)+byte(0xF7FF6569+dword(0xe7b054))/byte(0xF7FF6569)+
                                                 byte(0xF7FF7981+dword(0xe7b054))/byte(0xF7FF7981)+byte(0xF7FF7AD1+dword(0xe7b054))/byte(0xF7FF7AD1)+
                                                 byte(0xF7FF8011+dword(0xe7b054))/byte(0xF7FF8011)+byte(0xF7FF7015+dword(0xe7b054))/byte(0xF7FF7015)+
                                                 byte(0xF7FF9149+dword(0xe7b054))/byte(0xF7FF9149)+byte(0xF7FF6A9D+dword(0xe7b054))/byte(0xF7FF6A9D)+
                                                 byte(0xF7FF6491+dword(0xe7b054))/byte(0xF7FF6491)+byte(0xF7FF7DB5+dword(0xe7b054))/byte(0xF7FF7DB5)+
                                                 byte(0xF7FF7F01+dword(0xe7b054))/byte(0xF7FF7F01)+byte(0xF7FF6AC1+dword(0xe7b054))/byte(0xF7FF6AC1)+
                                                 byte(0xF7FF6FA9+dword(0xe7b054))/byte(0xF7FF6FA9)+byte(0xF7FF7009+dword(0xe7b054))/byte(0xF7FF7009)+
                                                 byte(0xF7FF9005+dword(0xe7b054))/byte(0xF7FF9005)+byte(0xF7FF760D+dword(0xe7b054))/byte(0xF7FF760D)+
                                                 byte(0xF7FF7605+dword(0xe7b054))/byte(0xF7FF7605)+byte(0xF7FF9185+dword(0xe7b054))/byte(0xF7FF9185)+
                                                 byte(0xF7FF84DD+dword(0xe7b054))/byte(0xF7FF84DD)+byte(0xF7FF6245+dword(0xe7b054))/byte(0xF7FF6245)+
                                                 byte(0xF7FF623D+dword(0xe7b054))/byte(0xF7FF623D)+byte(0xF7FF716D+dword(0xe7b054))/byte(0xF7FF716D)+
                                                 byte(0xF7FF6EF1+dword(0xe7b054))/byte(0xF7FF6EF1)+byte(0xF7FF7CE9+dword(0xe7b054))/byte(0xF7FF7CE9)+
                                                 byte(0xF7FF70E9+dword(0xe7b054))/byte(0xF7FF70E9)+byte(0xF7FF8CD9+dword(0xe7b054))/byte(0xF7FF8CD9)+
                                                 byte(0xF7FF7041+dword(0xe7b054))/byte(0xF7FF7041)+byte(0xF7FF6D9D+dword(0xe7b054))/byte(0xF7FF6D9D)+
                                                 byte(0xF7FF75D5+dword(0xe7b054))/byte(0xF7FF75D5)+byte(0xF7FF7231+dword(0xe7b054))/byte(0xF7FF7231)+
                                                 byte(0xF7FF7A81+dword(0xe7b054))/byte(0xF7FF7A81)+byte(0xF7FF78FD+dword(0xe7b054))/byte(0xF7FF78FD)+
                                                 byte(0xF7FF7435+dword(0xe7b054))/byte(0xF7FF7435)+byte(0xF7FF742D+dword(0xe7b054))/byte(0xF7FF742D)+
                                                 byte(0xF7FF7439+dword(0xe7b054))/byte(0xF7FF7439)+byte(0xF7FF7431+dword(0xe7b054))/byte(0xF7FF7431)+
                                                 byte(0xF7FF72AD+dword(0xe7b054))/byte(0xF7FF72AD)+byte(0xF7FF8A4D+dword(0xe7b054))/byte(0xF7FF8A4D)+
                                                 byte(0xF7FF9BF1+dword(0xe7b054))/byte(0xF7FF9BF1)+byte(0xF7FF8CC9+dword(0xe7b054))/byte(0xF7FF8CC9)+
                                                 byte(0xF7FF6A25+dword(0xe7b054))/byte(0xF7FF6A25)+byte(0xF7FF70A9+dword(0xe7b054))/byte(0xF7FF70A9)+
                                                 byte(0xF7FF6931+dword(0xe7b054))/byte(0xF7FF6931)+byte(0xF7FF75E5+dword(0xe7b054))/byte(0xF7FF75E5)+
                                                 byte(0xF7FF79B9+dword(0xe7b054))/byte(0xF7FF79B9)+byte(0xF7FF7BE5+dword(0xe7b054))/byte(0xF7FF7BE5)+
                                                 byte(0xF7FF7A5D+dword(0xe7b054))/byte(0xF7FF7A5D)+byte(0xF7FF72A1+dword(0xe7b054))/byte(0xF7FF72A1)+
                                                 byte(0xF7FF6F3D+dword(0xe7b054))/byte(0xF7FF6F3D)+byte(0xF7FF63C1+dword(0xe7b054))/byte(0xF7FF63C1)+
                                                 byte(0xF7FF8F15+dword(0xe7b054))/byte(0xF7FF8F15)
                                                 
achievement ("Special Relativity Fracture Theory", "Obtain all cards from [Special Relativity Fracture Theory] booster", 10,
trigger = save_protect() && measured(special_relativity_fracture_theory() == 115) && prev(special_relativity_fracture_theory()) != 115)

//Burn Bright Red Booster Packs - 106 Cards Total
//Offset - +0xF7FF8A51 - Abaki
//Offset - +0xF7FF819D - Abare Ushioni
//Offset - +0xF7FF8A21 - Accumulated Fortune
//Offset - +0xF7FF7D85 - Atomic Firefly
//Offset - +0xF7FF7029 - Attack and Receive
//Offset - +0xF7FF7C61 - Balloon Lizard
//Offset - +0xF7FF77D9 - Barrel Behind the Door
//Offset - +0xF7FF8A29 - Black Horn of Heaven
//Offset - +0xF7FF8991 - Blast Asmodian
//Offset - +0xF7FF687D - Blast Juggler
//Offset - +0xF7FF6D35 - Blast Sphere
//Offset - +0xF7FF7BF9 - Blasting the Ruins
//Offset - +0xF7FF875D - Bountiful Artemis
//Offset - +0xF7FF7031 - Ceasefire
//Offset - +0xF7FF8015 - Cemetary Bomb
//Offset - +0xF7FF8A1D - Chain Detonation
//Offset - +0xF7FF8A19 - Chain Healing
//Offset - +0xF7FF89F1 - Chain Strike
//Offset - +0xF7FF9169 - Chain Summoning
//Offset - +0xF7FF8FFD - Chaos Burst
//Offset - +0xF7FFA6FD - Chivalry
//Offset - +0xF7FF84C5 - Chthonian Blast
//Offset - +0xF7FF89C1 - Combo Fighter
//Offset - +0xF7FF89C5 - Combo Master
//Offset - +0xF7FF8E5D - Counter Counter
//Offset - +0xF7FF7BFD - Cursed Seal of the Forbidden Spell
//Offset - +0xF7FF8209 - D.D. Dynamite
//Offset - +0xF7FF8FF9 - Dark Bribe
//Offset - +0xF7FF9405 - Destruction Jammer
//Offset - +0xF7FF6751 - Dian Keto the Cure Master
//Offset - +0xF7FF765D - Dice Jar
//Offset - +0xF7FF810D - Divine Wrath
//Offset - +0xF7FF7ED9 - Dora of Fate
//Offset - +0xF7FF91AD - Drastic Drop Off
//Offset - +0xF7FF7E69 - Elephant Statue of Disaster
//Offset - +0xF7FF7549 - Emergency Provisions
//Offset - +0xF7FF9205 - Evil Blast
//Offset - +0xF7FF7325 - Fire Sorcerer
//Offset - +0xF7FF8689 - Full Salvo
//Offset - +0xF7FF7E0D - Gemini Imps
//Offset - +0xF7FF6FA5 - Giant Germ
//Offset - +0xF7FF8695 - Goblin Out of the Frying Pan
//Offset - +0xF7FF81FD - Good Goblin Housekeeping
//Offset - +0xF7FF8BBD - Harvest Angel of Wisdom
//Offset - +0xF7FF8769 - Herald of Green Light
//Offset - +0xF7FF9461 - Herald of Orange Light
//Offset - +0xF7FF8765 - Herald of Purple Light
//Offset - +0xF7FF905D - Hero's Rule 2
//Offset - +0xF7FF89B5 - Iris, the Earth Mother
//Offset - +0xF7FF7351 - Jar of Greed
//Offset - +0xF7FF6D25 - Jigen Bakudan
//Offset - +0xF7FF6EC9 - Just Desserts
//Offset - +0xF7FF7D75 - KA-2 Des Scissors
//Offset - +0xF7FF7321 - Lady Assailant of Flames
//Offset - +0xF7FF876D - Layard the Liberator
//Offset - +0xF7FF89B9 - Lightning Punisher
//Offset - +0xF7FF89ED - Linear Accelerator Cannon
//Offset - +0xF7FF722D - Magic Cylinder
//Offset - +0xF7FF7251 - Magic Drain
//Offset - +0xF7FF8699 - Malfunction
//Offset - +0xF7FF89C9 - Man Beast of Ares
//Offset - +0xF7FF8BB1 - Masked Chopper
//Offset - +0xF7FF952D - Mecha Bunny
//Offset - +0xF7FF8185 - Mecha-Dog Marron
//Offset - +0xF7FF8BB9 - Meltiel, Sage of the Sky
//Offset - +0xF7FF7365 - Meteor of Destruction
//Offset - +0xF7FF89F5 - Miraculous Rebirth
//Offset - +0xF7FF8709 - Misfortune
//Offset - +0xF7FF6741 - Mooyan Curry
//Offset - +0xF7FF7991 - My Body as a Shield
//Offset - +0xF7FF89F9 - Mystical Wind Typhoon
//Offset - +0xF7FF69A1 - Needle Ball
//Offset - +0xF7FF7D79 - Needle Burrower
//Offset - +0xF7FF6DF9 - Negate Attack
//Offset - +0xF7FF9435 - Nimble Musasabi
//Offset - +0xF7FF82F5 - Nitro Unit
//Offset - +0xF7FF6761 - Ookazi
//Offset - +0xF7FF9061 - Phantom Skyblaster
//Offset - +0xF7FF78A1 - Poison of the Old Man
//Offset - +0xF7FF6621 - Princess of Tsurugi
//Offset - +0xF7FF8B8D - Pulling the Rug
//Offset - +0xF7FF6D81 - Reflect Bounder
//Offset - +0xF7FF6EDD - Restructer Revolution
//Offset - +0xF7FF8329 - Royal Surrender
//Offset - +0xF7FF88E5 - Royal Writ of Taxation
//Offset - +0xF7FF78D5 - Secret Barrel
//Offset - +0xF7FF7CD9 - Self-Destruct Button
//Offset - +0xF7FF6EB9 - Solemn Judgment
//Offset - +0xF7FFA6F5 - Solemn Warning
//Offset - +0xF7FF8E4D - Spell Reclamation
//Offset - +0xF7FF78C9 - Spell Shield Type-8
//Offset - +0xF7FF7B3D - Spell Vanishing
//Offset - +0xF7FF8325 - Spell-Stopping Statute
//Offset - +0xF7FF9C3D - Swallow Flip
//Offset - +0xF7FF87B1 - Synthetic Seraphim
//Offset - +0xF7FF8321 - Token Feastevil
//Offset - +0xF7FF7CED - Trap Jammer
//Offset - +0xF7FF77E9 - Trap of Board Eraser
//Offset - +0xF7FF8E51 - Trap Reclamation
//Offset - +0xF7FF6765 - Tremendous Fire
//Offset - +0xF7FF8961 - Trojan Blast
//Offset - +0xF7FF83A1 - Van'Dalgyon the Dark Dragon Lord
//Offset - +0xF7FF8A25 - Vanity's Call
//Offset - +0xF7FF8775 - Voltanis the Adjudicator
//Offset - +0xF7FF7CF9 - Winged Rhynos
//Offset - +0xF7FF7D25 - Zoma the Spirit

function burn_bright_red() => byte(0xF7FF8A51+dword(0xe7b054))/byte(0xF7FF8A51)+byte(0xF7FF819D+dword(0xe7b054))/byte(0xF7FF819D)+
                              byte(0xF7FF8A21+dword(0xe7b054))/byte(0xF7FF8A21)+byte(0xF7FF7D85+dword(0xe7b054))/byte(0xF7FF7D85)+
                              byte(0xF7FF7029+dword(0xe7b054))/byte(0xF7FF7029)+byte(0xF7FF7C61+dword(0xe7b054))/byte(0xF7FF7C61)+
                              byte(0xF7FF77D9+dword(0xe7b054))/byte(0xF7FF77D9)+byte(0xF7FF8A29+dword(0xe7b054))/byte(0xF7FF8A29)+
                              byte(0xF7FF8991+dword(0xe7b054))/byte(0xF7FF8991)+byte(0xF7FF687D+dword(0xe7b054))/byte(0xF7FF687D)+
                              byte(0xF7FF6D35+dword(0xe7b054))/byte(0xF7FF6D35)+byte(0xF7FF7BF9+dword(0xe7b054))/byte(0xF7FF7BF9)+
                              byte(0xF7FF875D+dword(0xe7b054))/byte(0xF7FF875D)+byte(0xF7FF7031+dword(0xe7b054))/byte(0xF7FF7031)+
                              byte(0xF7FF8015+dword(0xe7b054))/byte(0xF7FF8015)+byte(0xF7FF8A1D+dword(0xe7b054))/byte(0xF7FF8A1D)+
                              byte(0xF7FF8A19+dword(0xe7b054))/byte(0xF7FF8A19)+byte(0xF7FF89F1+dword(0xe7b054))/byte(0xF7FF89F1)+
                              byte(0xF7FF9169+dword(0xe7b054))/byte(0xF7FF9169)+byte(0xF7FF8FFD+dword(0xe7b054))/byte(0xF7FF8FFD)+
                              byte(0xF7FFA6FD+dword(0xe7b054))/byte(0xF7FFA6FD)+byte(0xF7FF84C5+dword(0xe7b054))/byte(0xF7FF84C5)+
                              byte(0xF7FF89C1+dword(0xe7b054))/byte(0xF7FF89C1)+byte(0xF7FF89C5+dword(0xe7b054))/byte(0xF7FF89C5)+
                              byte(0xF7FF8E5D+dword(0xe7b054))/byte(0xF7FF8E5D)+byte(0xF7FF7BFD+dword(0xe7b054))/byte(0xF7FF7BFD)+
                              byte(0xF7FF8209+dword(0xe7b054))/byte(0xF7FF8209)+byte(0xF7FF8FF9+dword(0xe7b054))/byte(0xF7FF8FF9)+
                              byte(0xF7FF9405+dword(0xe7b054))/byte(0xF7FF9405)+byte(0xF7FF6751+dword(0xe7b054))/byte(0xF7FF6751)+
                              byte(0xF7FF765D+dword(0xe7b054))/byte(0xF7FF765D)+byte(0xF7FF810D+dword(0xe7b054))/byte(0xF7FF810D)+
                              byte(0xF7FF7ED9+dword(0xe7b054))/byte(0xF7FF7ED9)+byte(0xF7FF91AD+dword(0xe7b054))/byte(0xF7FF91AD)+
                              byte(0xF7FF7E69+dword(0xe7b054))/byte(0xF7FF7E69)+byte(0xF7FF7549+dword(0xe7b054))/byte(0xF7FF7549)+
                              byte(0xF7FF9205+dword(0xe7b054))/byte(0xF7FF9205)+byte(0xF7FF7325+dword(0xe7b054))/byte(0xF7FF7325)+
                              byte(0xF7FF8689+dword(0xe7b054))/byte(0xF7FF8689)+byte(0xF7FF7E0D+dword(0xe7b054))/byte(0xF7FF7E0D)+
                              byte(0xF7FF6FA5+dword(0xe7b054))/byte(0xF7FF6FA5)+byte(0xF7FF8695+dword(0xe7b054))/byte(0xF7FF8695)+
                              byte(0xF7FF81FD+dword(0xe7b054))/byte(0xF7FF81FD)+byte(0xF7FF8BBD+dword(0xe7b054))/byte(0xF7FF8BBD)+
                              byte(0xF7FF8769+dword(0xe7b054))/byte(0xF7FF8769)+byte(0xF7FF9461+dword(0xe7b054))/byte(0xF7FF9461)+
                              byte(0xF7FF8765+dword(0xe7b054))/byte(0xF7FF8765)+byte(0xF7FF905D+dword(0xe7b054))/byte(0xF7FF905D)+
                              byte(0xF7FF89B5+dword(0xe7b054))/byte(0xF7FF89B5)+byte(0xF7FF7351+dword(0xe7b054))/byte(0xF7FF7351)+
                              byte(0xF7FF6D25+dword(0xe7b054))/byte(0xF7FF6D25)+byte(0xF7FF6EC9+dword(0xe7b054))/byte(0xF7FF6EC9)+
                              byte(0xF7FF7D75+dword(0xe7b054))/byte(0xF7FF7D75)+byte(0xF7FF7321+dword(0xe7b054))/byte(0xF7FF7321)+
                              byte(0xF7FF876D+dword(0xe7b054))/byte(0xF7FF876D)+byte(0xF7FF89B9+dword(0xe7b054))/byte(0xF7FF89B9)+
                              byte(0xF7FF89ED+dword(0xe7b054))/byte(0xF7FF89ED)+byte(0xF7FF722D+dword(0xe7b054))/byte(0xF7FF722D)+
                              byte(0xF7FF7251+dword(0xe7b054))/byte(0xF7FF7251)+byte(0xF7FF8699+dword(0xe7b054))/byte(0xF7FF8699)+
                              byte(0xF7FF89C9+dword(0xe7b054))/byte(0xF7FF89C9)+byte(0xF7FF8BB1+dword(0xe7b054))/byte(0xF7FF8BB1)+
                              byte(0xF7FF952D+dword(0xe7b054))/byte(0xF7FF952D)+byte(0xF7FF8185+dword(0xe7b054))/byte(0xF7FF8185)+
                              byte(0xF7FF8BB9+dword(0xe7b054))/byte(0xF7FF8BB9)+byte(0xF7FF7365+dword(0xe7b054))/byte(0xF7FF7365)+
                              byte(0xF7FF89F5+dword(0xe7b054))/byte(0xF7FF89F5)+byte(0xF7FF8709+dword(0xe7b054))/byte(0xF7FF8709)+
                              byte(0xF7FF6741+dword(0xe7b054))/byte(0xF7FF6741)+byte(0xF7FF7991+dword(0xe7b054))/byte(0xF7FF7991)+
                              byte(0xF7FF89F9+dword(0xe7b054))/byte(0xF7FF89F9)+byte(0xF7FF69A1+dword(0xe7b054))/byte(0xF7FF69A1)+
                              byte(0xF7FF7D79+dword(0xe7b054))/byte(0xF7FF7D79)+byte(0xF7FF6DF9+dword(0xe7b054))/byte(0xF7FF6DF9)+
                              byte(0xF7FF9439+dword(0xe7b054))/byte(0xF7FF9439)+byte(0xF7FF82F5+dword(0xe7b054))/byte(0xF7FF82F5)+
                              byte(0xF7FF6761+dword(0xe7b054))/byte(0xF7FF6761)+byte(0xF7FF9061+dword(0xe7b054))/byte(0xF7FF9061)+
                              byte(0xF7FF78A1+dword(0xe7b054))/byte(0xF7FF78A1)+byte(0xF7FF6621+dword(0xe7b054))/byte(0xF7FF6621)+
                              byte(0xF7FF8B8D+dword(0xe7b054))/byte(0xF7FF8B8D)+byte(0xF7FF6D81+dword(0xe7b054))/byte(0xF7FF6D81)+
                              byte(0xF7FF6EDD+dword(0xe7b054))/byte(0xF7FF6EDD)+byte(0xF7FF8329+dword(0xe7b054))/byte(0xF7FF8329)+
                              byte(0xF7FF88E5+dword(0xe7b054))/byte(0xF7FF88E5)+byte(0xF7FF78D5+dword(0xe7b054))/byte(0xF7FF78D5)+
                              byte(0xF7FF7CD9+dword(0xe7b054))/byte(0xF7FF7CD9)+byte(0xF7FF6EB9+dword(0xe7b054))/byte(0xF7FF6EB9)+
                              byte(0xF7FFA6F5+dword(0xe7b054))/byte(0xF7FFA6F5)+byte(0xF7FF8E4D+dword(0xe7b054))/byte(0xF7FF8E4D)+
                              byte(0xF7FF78C9+dword(0xe7b054))/byte(0xF7FF78C9)+byte(0xF7FF7B3D+dword(0xe7b054))/byte(0xF7FF7B3D)+
                              byte(0xF7FF8325+dword(0xe7b054))/byte(0xF7FF8325)+byte(0xF7FF9C3D+dword(0xe7b054))/byte(0xF7FF9C3D)+
                              byte(0xF7FF87B1+dword(0xe7b054))/byte(0xF7FF87B1)+byte(0xF7FF8321+dword(0xe7b054))/byte(0xF7FF8321)+
                              byte(0xF7FF7CED+dword(0xe7b054))/byte(0xF7FF7CED)+byte(0xF7FF77E9+dword(0xe7b054))/byte(0xF7FF77E9)+
                              byte(0xF7FF8E51+dword(0xe7b054))/byte(0xF7FF8E51)+byte(0xF7FF6765+dword(0xe7b054))/byte(0xF7FF6765)+
                              byte(0xF7FF8961+dword(0xe7b054))/byte(0xF7FF8961)+byte(0xF7FF83A1+dword(0xe7b054))/byte(0xF7FF83A1)+
                              byte(0xF7FF8A25+dword(0xe7b054))/byte(0xF7FF8A25)+byte(0xF7FF8775+dword(0xe7b054))/byte(0xF7FF8775)+
                              byte(0xF7FF7CF9+dword(0xe7b054))/byte(0xF7FF7CF9)+byte(0xF7FF7D25+dword(0xe7b054))/byte(0xF7FF7D25)
                              
achievement ("Burn Bright Red", "Obtain all cards from [Burn Bright Red] booster", 10,
trigger = save_protect() && measured(burn_bright_red() == 106) && prev(burn_bright_red()) != 106)

//Spicy Stream Booster Packs - 108 Cards Total
//Offset - +0xF7FF8DC1 - Aquarian Alessa
//Offset - +0xF7FF75B5 - Asura Priest
//Offset - +0xF7FF9FC5 - Black Brutdrago
//Offset - +0xF7FF8FD9 - Blazewing Butterfly
//Offset - +0xF7FF6DA9 - Blue-Eyes Toon Dragon
//Offset - +0xF7FF785D - Burning Beast
//Offset - +0xF7FF8DBD - Chthonian Emperor Dragon
//Offset - +0xF7FF7895 - Combination Attack
//Offset - +0xF7FF8241 - Commander Covington
//Offset - +0xF7FF7839 - Dark Blade
//Offset - +0xF7FF7635 - Dark Dust Spirit
//Offset - +0xF7FF8DD1 - Dawnbreak Gardna
//Offset - +0xF7FF7845 - Decayed Commander
//Offset - +0xF7FF7859 - Des Dendle
//Offset - +0xF7FF9F9D - Energy Bravery
//Offset - +0xF7FF9F0D - Evocator Chevalier
//Offset - +0xF7FF9F11 - Featherizer
//Offset - +0xF7FF75C5 - Fengsheng Mirror
//Offset - +0xF7FF78E1 - Formation Union
//Offset - +0xF7FF7861 - Freezing Beast
//Offset - +0xF7FF788D - Frontline Base
//Offset - +0xF7FF75B9 - Fushi No Tori
//Offset - +0xF7FF90FD - Future Samurai
//Offset - +0xF7FFA049 - Gemini Booster
//Offset - +0xF7FFA045 - Gemini Counter
//Offset - +0xF7FF9029 - Gemini Lancer
//Offset - +0xF7FFA175 - Gemini Scorpion
//Offset - +0xF7FF9F15 - Gemini Soldier
//Offset - +0xF7FF9FF5 - Gemini Spark
//Offset - +0xF7FF8FB5 - Gemini Summoner
//Offset - +0xF7FF91A9 - Gemini Trap Hole
//Offset - +0xF7FF784D - Giant Orc
//Offset - +0xF7FF8DCD - Goggle Golem
//Offset - +0xF7FF8DC9 - Grasschopper
//Offset - +0xF7FF75A9 - Great Long Nose
//Offset - +0xF7FFA231 - Gundari
//Offset - +0xF7FF807D - Heavy Mech Support Platform
//Offset - +0xF7FF9FF1 - Herculean Power
//Offset - +0xF7FF75B1 - Hino-Kagu-Tsuchi
//Offset - +0xF7FF7599 - Inaba White Rabbit
//Offset - +0xF7FF83CD - Indomitable Fighter Lei Lei
//Offset - +0xF7FF8F19 - Infinity Dark
//Offset - +0xF7FF946D - Izanagi
//Offset - +0xF7FF9471 - Izanami
//Offset - +0xF7FF8DD9 - King Pyron
//Offset - +0xF7FF953D - Kinka-byo
//Offset - +0xF7FF7841 - Kiryu
//Offset - +0xF7FF7E15 - Legacy of Yata-Garasu
//Offset - +0xF7FF8DC5 - Lucky Pied Piper
//Offset - +0xF7FFA2FD - Machina Armored Unit
//Offset - +0xF7FF8239 - Machina Defender
//Offset - +0xF7FF8245 - Machina Force
//Offset - +0xF7FFA2ED - Machina Fortress
//Offset - +0xF7FFA2F1 - Machina Gearframe
//Offset - +0xF7FFA2F5 - Machina Peacekeeper
//Offset - +0xF7FF823D - Machina Sniper
//Offset - +0xF7FF8235 - Machina Soldier
//Offset - +0xF7FF8F1D - Magical Reflect Slime
//Offset - +0xF7FF7595 - Maharaghi
//Offset - +0xF7FF6D11 - Manga Ryu-Ran
//Offset - +0xF7FF7AF1 - Metallizing Parasite - Lunatite
//Offset - +0xF7FF9485 - Mirror of Yata
//Offset - +0xF7FFA239 - Oilman
//Offset - +0xF7FF9481 - Orb of Yasaka
//Offset - +0xF7FF75AD - Otohime
//Offset - +0xF7FF8FD1 - Phantom Dragonray Bronto
//Offset - +0xF7FF9F09 - Phoenix Gearfried
//Offset - +0xF7FF783D - Pitch-Dark Dragon
//Offset - +0xF7FF83D1 - Protective Soul Ailin
//Offset - +0xF7FF8531 - Roll Out!
//Offset - +0xF7FFA2F9 - Scrap Recycler
//Offset - +0xF7FF7851 - Second Goblin
//Offset - +0xF7FF7609 - Spirit's Invitation
//Offset - +0xF7FF75D9 - Spiritual Energy Settle Machine
//Offset - +0xF7FF8F51 - Super Double Summon
//Offset - +0xF7FF8F3D - Superalloy Beast Raptinus
//Offset - +0xF7FF9F19 - Supervise
//Offset - +0xF7FF75A1 - Susa Soldier
//Offset - +0xF7FF947D - Sword of Kusanagi
//Offset - +0xF7FF76E1 - Toon Cannon Soldier
//Offset - +0xF7FF76C1 - Toon Dark Magician Girl
//Offset - +0xF7FF76D1 - Toon Defense
//Offset - +0xF7FF76DD - Toon Gemini Elf
//Offset - +0xF7FF76E5 - Toon Goblin Attack Force
//Offset - +0xF7FF76D9 - Toon Masked Sorcerer
//Offset - +0xF7FF6D15 - Toon Mermaid
//Offset - +0xF7FF6D19 - Toon Summoned Skull
//Offset - +0xF7FF76D5 - Toon Table of Contents
//Offset - +0xF7FF6DE9 - Toon World
//Offset - +0xF7FF9F8D - Tuned Magician
//Offset - +0xF7FF7865 - Union Rider
//Offset - +0xF7FF9165 - Unleash Your Power!
//Offset - +0xF7FF846D - V-Tiger Jet
//Offset - +0xF7FF7855 - Vampire Orchis
//Offset - +0xF7FF849D - VW-Tiger Catapult
//Offset - +0xF7FF84A1 - VWXYZ-Dragon Catapult Cannon
//Offset - +0xF7FF847D - W-Wing Catapult
//Offset - +0xF7FF9F95 - Woodland Archer
//Offset - +0xF7FF773D - X-Head Cannon
//Offset - +0xF7FF77FD - XY-Dragon Cannon
//Offset - +0xF7FF7805 - XYZ-Dragon Cannon
//Offset - +0xF7FF78E9 - XZ-Tank Cannon
//Offset - +0xF7FF77F9 - Y-Dragon Head
//Offset - +0xF7FF75A5 - Yamata Dragon
//Offset - +0xF7FF9541 - Yamato-no-Kami
//Offset - +0xF7FF78ED - YZ-Tank Dragon
//Offset - +0xF7FF7801 - Z-Metal Tank
//Offset - +0xF7FF7849 - Zombie Tiger

function spicy_stream() => byte(0xF7FF8DC1+dword(0xe7b054))/byte(0xF7FF8DC1)+byte(0xF7FF75B5+dword(0xe7b054))/byte(0xF7FF75B5)+
                           byte(0xF7FF9FC5+dword(0xe7b054))/byte(0xF7FF9FC5)+byte(0xF7FF8FD9+dword(0xe7b054))/byte(0xF7FF8FD9)+
                           byte(0xF7FF6DA9+dword(0xe7b054))/byte(0xF7FF6DA9)+byte(0xF7FF785D+dword(0xe7b054))/byte(0xF7FF785D)+
                           byte(0xF7FF8DBD+dword(0xe7b054))/byte(0xF7FF8DBD)+byte(0xF7FF7895+dword(0xe7b054))/byte(0xF7FF7895)+
                           byte(0xF7FF8241+dword(0xe7b054))/byte(0xF7FF8241)+byte(0xF7FF7839+dword(0xe7b054))/byte(0xF7FF7839)+
                           byte(0xF7FF7635+dword(0xe7b054))/byte(0xF7FF7635)+byte(0xF7FF8DD1+dword(0xe7b054))/byte(0xF7FF8DD1)+
                           byte(0xF7FF7845+dword(0xe7b054))/byte(0xF7FF7845)+byte(0xF7FF7859+dword(0xe7b054))/byte(0xF7FF7859)+
                           byte(0xF7FF9F9D+dword(0xe7b054))/byte(0xF7FF9F9D)+byte(0xF7FF9F0D+dword(0xe7b054))/byte(0xF7FF9F0D)+
                           byte(0xF7FF9F11+dword(0xe7b054))/byte(0xF7FF9F11)+byte(0xF7FF75C5+dword(0xe7b054))/byte(0xF7FF75C5)+
                           byte(0xF7FF78E1+dword(0xe7b054))/byte(0xF7FF78E1)+byte(0xF7FF7861+dword(0xe7b054))/byte(0xF7FF7861)+
                           byte(0xF7FF788D+dword(0xe7b054))/byte(0xF7FF788D)+byte(0xF7FF75B9+dword(0xe7b054))/byte(0xF7FF75B9)+
                           byte(0xF7FF90FD+dword(0xe7b054))/byte(0xF7FF90FD)+byte(0xF7FFA049+dword(0xe7b054))/byte(0xF7FFA049)+
                           byte(0xF7FFA045+dword(0xe7b054))/byte(0xF7FFA045)+byte(0xF7FF9029+dword(0xe7b054))/byte(0xF7FF9029)+
                           byte(0xF7FFA175+dword(0xe7b054))/byte(0xF7FFA175)+byte(0xF7FF9F15+dword(0xe7b054))/byte(0xF7FF9F15)+
                           byte(0xF7FF9FF5+dword(0xe7b054))/byte(0xF7FF9FF5)+byte(0xF7FF8FB5+dword(0xe7b054))/byte(0xF7FF8FB5)+
                           byte(0xF7FF91A9+dword(0xe7b054))/byte(0xF7FF91A9)+byte(0xF7FF784D+dword(0xe7b054))/byte(0xF7FF784D)+
                           byte(0xF7FF8DCD+dword(0xe7b054))/byte(0xF7FF8DCD)+byte(0xF7FF8DC9+dword(0xe7b054))/byte(0xF7FF8DC9)+
                           byte(0xF7FF75A9+dword(0xe7b054))/byte(0xF7FF75A9)+byte(0xF7FFA231+dword(0xe7b054))/byte(0xF7FFA231)+
                           byte(0xF7FF807D+dword(0xe7b054))/byte(0xF7FF807D)+byte(0xF7FF9FF1+dword(0xe7b054))/byte(0xF7FF9FF1)+
                           byte(0xF7FF75B1+dword(0xe7b054))/byte(0xF7FF75B1)+byte(0xF7FF7599+dword(0xe7b054))/byte(0xF7FF7599)+
                           byte(0xF7FF83CD+dword(0xe7b054))/byte(0xF7FF83CD)+byte(0xF7FF8F19+dword(0xe7b054))/byte(0xF7FF8F19)+
                           byte(0xF7FF946D+dword(0xe7b054))/byte(0xF7FF946D)+byte(0xF7FF9471+dword(0xe7b054))/byte(0xF7FF9471)+
                           byte(0xF7FF8DD9+dword(0xe7b054))/byte(0xF7FF8DD9)+byte(0xF7FF953D+dword(0xe7b054))/byte(0xF7FF953D)+
                           byte(0xF7FF7841+dword(0xe7b054))/byte(0xF7FF7841)+byte(0xF7FF7E15+dword(0xe7b054))/byte(0xF7FF7E15)+
                           byte(0xF7FF8DC5+dword(0xe7b054))/byte(0xF7FF8DC5)+byte(0xF7FFA2FD+dword(0xe7b054))/byte(0xF7FFA2FD)+
                           byte(0xF7FF8239+dword(0xe7b054))/byte(0xF7FF8239)+byte(0xF7FF8245+dword(0xe7b054))/byte(0xF7FF8245)+
                           byte(0xF7FFA2ED+dword(0xe7b054))/byte(0xF7FFA2ED)+byte(0xF7FFA2F1+dword(0xe7b054))/byte(0xF7FFA2F1)+
                           byte(0xF7FFA2F5+dword(0xe7b054))/byte(0xF7FFA2F5)+byte(0xF7FF823D+dword(0xe7b054))/byte(0xF7FF823D)+
                           byte(0xF7FF8235+dword(0xe7b054))/byte(0xF7FF8235)+byte(0xF7FF8F1D+dword(0xe7b054))/byte(0xF7FF8F1D)+
                           byte(0xF7FF7595+dword(0xe7b054))/byte(0xF7FF7595)+byte(0xF7FF6D11+dword(0xe7b054))/byte(0xF7FF6D11)+
                           byte(0xF7FF7AF1+dword(0xe7b054))/byte(0xF7FF7AF1)+byte(0xF7FF9485+dword(0xe7b054))/byte(0xF7FF9485)+
                           byte(0xF7FFA239+dword(0xe7b054))/byte(0xF7FFA239)+byte(0xF7FF9481+dword(0xe7b054))/byte(0xF7FF9481)+
                           byte(0xF7FF75AD+dword(0xe7b054))/byte(0xF7FF75AD)+byte(0xF7FF8FD1+dword(0xe7b054))/byte(0xF7FF8FD1)+
                           byte(0xF7FF9F09+dword(0xe7b054))/byte(0xF7FF9F09)+byte(0xF7FF783D+dword(0xe7b054))/byte(0xF7FF783D)+
                           byte(0xF7FF83D1+dword(0xe7b054))/byte(0xF7FF83D1)+byte(0xF7FF8531+dword(0xe7b054))/byte(0xF7FF8531)+
                           byte(0xF7FFA2F9+dword(0xe7b054))/byte(0xF7FFA2F9)+byte(0xF7FF7851+dword(0xe7b054))/byte(0xF7FF7851)+
                           byte(0xF7FF7609+dword(0xe7b054))/byte(0xF7FF7609)+byte(0xF7FF75D9+dword(0xe7b054))/byte(0xF7FF75D9)+
                           byte(0xF7FF8F51+dword(0xe7b054))/byte(0xF7FF8F51)+byte(0xF7FF8F3D+dword(0xe7b054))/byte(0xF7FF8F3D)+
                           byte(0xF7FF9F19+dword(0xe7b054))/byte(0xF7FF9F19)+byte(0xF7FF75A1+dword(0xe7b054))/byte(0xF7FF75A1)+
                           byte(0xF7FF947D+dword(0xe7b054))/byte(0xF7FF947D)+byte(0xF7FF76E1+dword(0xe7b054))/byte(0xF7FF76E1)+
                           byte(0xF7FF76C1+dword(0xe7b054))/byte(0xF7FF76C1)+byte(0xF7FF76D1+dword(0xe7b054))/byte(0xF7FF76D1)+
                           byte(0xF7FF76DD+dword(0xe7b054))/byte(0xF7FF76DD)+byte(0xF7FF76E5+dword(0xe7b054))/byte(0xF7FF76E5)+
                           byte(0xF7FF76D9+dword(0xe7b054))/byte(0xF7FF76D9)+byte(0xF7FF6D15+dword(0xe7b054))/byte(0xF7FF6D15)+
                           byte(0xF7FF6D19+dword(0xe7b054))/byte(0xF7FF6D19)+byte(0xF7FF76D5+dword(0xe7b054))/byte(0xF7FF76D5)+
                           byte(0xF7FF6DE9+dword(0xe7b054))/byte(0xF7FF6DE9)+byte(0xF7FF9F8D+dword(0xe7b054))/byte(0xF7FF9F8D)+
                           byte(0xF7FF7865+dword(0xe7b054))/byte(0xF7FF7865)+byte(0xF7FF9165+dword(0xe7b054))/byte(0xF7FF9165)+
                           byte(0xF7FF846D+dword(0xe7b054))/byte(0xF7FF846D)+byte(0xF7FF7855+dword(0xe7b054))/byte(0xF7FF7855)+
                           byte(0xF7FF849D+dword(0xe7b054))/byte(0xF7FF849D)+byte(0xF7FF84A1+dword(0xe7b054))/byte(0xF7FF84A1)+
                           byte(0xF7FF847D+dword(0xe7b054))/byte(0xF7FF847D)+byte(0xF7FF9F95+dword(0xe7b054))/byte(0xF7FF9F95)+
                           byte(0xF7FF773D+dword(0xe7b054))/byte(0xF7FF773D)+byte(0xF7FF77FD+dword(0xe7b054))/byte(0xF7FF77FD)+
                           byte(0xF7FF7805+dword(0xe7b054))/byte(0xF7FF7805)+byte(0xF7FF78E9+dword(0xe7b054))/byte(0xF7FF78E9)+
                           byte(0xF7FF77F9+dword(0xe7b054))/byte(0xF7FF77F9)+byte(0xF7FF75A5+dword(0xe7b054))/byte(0xF7FF75A5)+
                           byte(0xF7FF9541+dword(0xe7b054))/byte(0xF7FF9541)+byte(0xF7FF78ED+dword(0xe7b054))/byte(0xF7FF78ED)+
                           byte(0xF7FF7801+dword(0xe7b054))/byte(0xF7FF7801)+byte(0xF7FF7849+dword(0xe7b054))/byte(0xF7FF7849)
                           
achievement ("Spicy Stream", "Obtain all cards from [Spicy Stream] booster", 10,
trigger = save_protect() && measured(spicy_stream() == 108) && prev(spicy_stream()) != 108)

//Beauty in Simplicity Booster Packs - 118 Cards Total
//Offset - +0xF7FF68D9 - 7 Colored Fish
//Offset - +0xF7FF9E49 - A Major Upset
//Offset - +0xF7FF79F1 - Acrobat Monkey
//Offset - +0xF7FF7199 - Amphibian Beast
//Offset - +0xF7FF8E2D - Amulet of Ambition
//Offset - +0xF7FF8B39 - Ancient Rules
//Offset - +0xF7FF654D - Aqua Madoor
//Offset - +0xF7FF901D - Atlantean Pikeman
//Offset - +0xF7FF9C2D - Attack of the Cornered Rat
//Offset - +0xF7FF7025 - Backup Soldier
//Offset - +0xF7FF79E5 - Battle Footballer
//Offset - +0xF7FF6DD5 - Beast of Talwar
//Offset - +0xF7FF8B81 - Birthright
//Offset - +0xF7FF8065 - Bokoichi the Freightening Car
//Offset - +0xF7FF7B8D - Coach Goblin
//Offset - +0xF7FF8E3D - Common Charity
//Offset - +0xF7FF6CD1 - Cosmo Queen
//Offset - +0xF7FF8E21 - Creature Seizure
//Offset - +0xF7FF6DD9 - Cyber-Tech Alligator
//Offset - +0xF7FF7AA5 - D.D. Trainer
//Offset - +0xF7FF7FC9 - Dark Factory of Mass Production
//Offset - +0xF7FF7EC1 - Delta Attacker
//Offset - +0xF7FF7E9D - Dust Barrier
//Offset - +0xF7FF738D - Earthbound Spirit
//Offset - +0xF7FF7E71 - Emissary of the Afterlife
//Offset - +0xF7FF7E8D - Emissary of the Oasis
//Offset - +0xF7FF7EB5 - Enchanting Fitting Room
//Offset - +0xF7FFA011 - Faustian Bargain
//Offset - +0xF7FF8AB1 - Frostosaurus
//Offset - +0xF7FF8AAD - Gene-Warped Warwolf
//Offset - +0xF7FF83C9 - Giant Kozaky
//Offset - +0xF7FF68F5 - Giant Red Seasnake
//Offset - +0xF7FF7711 - Gil Garth
//Offset - +0xF7FF7F45 - Goblin Calligrapher
//Offset - +0xF7FF71C1 - Grand Tiki Elder
//Offset - +0xF7FF7909 - Great Angus
//Offset - +0xF7FF7BBD - Heart of the Underdog
//Offset - +0xF7FF78C1 - Huge Revolution
//Offset - +0xF7FF7EE1 - Human-Wave Tactics
//Offset - +0xF7FF7185 - Humanoid Slime
//Offset - +0xF7FF8DB1 - Hunter Dragon
//Offset - +0xF7FF774D - Inpachi
//Offset - +0xF7FF7285 - Island Turtle
//Offset - +0xF7FF83AD - Jerry Beans Man
//Offset - +0xF7FF8A11 - Justi-Break
//Offset - +0xF7FF9F99 - Knight of the Red Lotus
//Offset - +0xF7FF7E29 - Kozaky
//Offset - +0xF7FF67B1 - Labyrinth Wall
//Offset - +0xF7FF7915 - Luster Dragon
//Offset - +0xF7FF7545 - Luster Dragon #2
//Offset - +0xF7FF7C29 - Mad Dog of Darkness
//Offset - +0xF7FF83A9 - Mad Lobster
//Offset - +0xF7FF6C29 - Magical Labyrinth
//Offset - +0xF7FF73AD - Makiu, the Magical Mist
//Offset - +0xF7FF7E85 - Man-Thro' Tro'
//Offset - +0xF7FF7745 - Master Kyonshee
//Offset - +0xF7FF71C9 - Melchid the Four-Face Beast
//Offset - +0xF7FF7D45 - Metal Armored Bug
//Offset - +0xF7FF67A1 - Millennium Shield
//Offset - +0xF7FF69C1 - Morinphen
//Offset - +0xF7FF6219 - Mushroom Man
//Offset - +0xF7FF9BED - Natural Tune
//Offset - +0xF7FF7F3D - Neo Aqua Madoor
//Offset - +0xF7FF79ED - Nin-Ken Dog
//Offset - +0xF7FF7A65 - Non-Spellcasting Area
//Offset - +0xF7FF7B59 - Ojama Black
//Offset - +0xF7FF9CC5 - Ojama Blue
//Offset - +0xF7FF9CC9 - Ojama Country
//Offset - +0xF7FF7BC5 - Ojama Delta Hurricane!!
//Offset - +0xF7FF7AA9 - Ojama Green
//Offset - +0xF7FF7FBD - Ojama King
//Offset - +0xF7FF8D85 - Ojama Knight
//Offset - +0xF7FF9CC1 - Ojama Red
//Offset - +0xF7FF7A71 - Ojama Trio
//Offset - +0xF7FF7B55 - Ojama Yellow
//Offset - +0xF7FF8469 - Ojamagic
//Offset - +0xF7FF8465 - Ojamuscle
//Offset - +0xF7FF7831 - Oppressed People
//Offset - +0xF7FF74A5 - Opticlops
//Offset - +0xF7FF7E95 - Order to Charge
//Offset - +0xF7FF7EF9 - Order to Smash
//Offset - +0xF7FFA099 - Orichalcos Shunoros
//Offset - +0xF7FF8E85 - Over Limit
//Offset - +0xF7FF782D - People Running About
//Offset - +0xF7FF65F5 - Prevent Rat
//Offset - +0xF7FF712D - Robotic Knight
//Offset - +0xF7FF88A1 - Sabersaurus
//Offset - +0xF7FF7C31 - Sea Serpent Warrior of Darkness
//Offset - +0xF7FF6CBD - Sengenjin
//Offset - +0xF7FF621D - Shadow Specter
//Offset - +0xF7FF71B5 - Shining Abyss
//Offset - +0xF7FF7589 - Silent Doom
//Offset - +0xF7FF7F41 - Skull Dog Marron
//Offset - +0xF7FF7911 - Sonic Duck
//Offset - +0xF7FF7EF5 - Soul Resurrection
//Offset - +0xF7FF7B5D - Soul Tiger
//Offset - +0xF7FF8AB5 - Spiral Serpent
//Offset - +0xF7FF7E6D - Spirit Caller
//Offset - +0xF7FF64A1 - Spirit of the Harp
//Offset - +0xF7FF8E1D - Summoner's Art
//Offset - +0xF7FF8E8D - Swing of Memories
//Offset - +0xF7FF7E99 - Sword of the Soul-Eater
//Offset - +0xF7FF8E29 - Symbols of Duty
//Offset - +0xF7FF7C35 - Terrorking Salmon
//Offset - +0xF7FF7511 - The Dragon Dwelling in the Cave
//Offset - +0xF7FF7375 - The Gross Ghost of Fled Dreams
//Offset - +0xF7FF7EB9 - The Law of the Normal
//Offset - +0xF7FF852D - The League of Uniform Nomenclature
//Offset - +0xF7FF7EC5 - Thousand Energy
//Offset - +0xF7FF6D29 - Thousand-Eyes Idol
//Offset - +0xF7FF6CC5 - Tri-Horned Dragon
//Offset - +0xF7FF7EC9 - Triangle Power
//Offset - +0xF7FF7FE5 - Two-Man Cell Battle
//Offset - +0xF7FF7835 - United Resistance
//Offset - +0xF7FF67BD - Wall Shadow
//Offset - +0xF7FFA825 - White Elephant's Gift
//Offset - +0xF7FF7289 - Wingweaver
//Offset - +0xF7FF6815 - Zoa

function beauty_in_simplicity() => byte(0xF7FF68D9+dword(0xe7b054))/byte(0xF7FF68D9)+byte(0xF7FF9E49+dword(0xe7b054))/byte(0xF7FF9E49)+
                                   byte(0xF7FF79F1+dword(0xe7b054))/byte(0xF7FF79F1)+byte(0xF7FF7199+dword(0xe7b054))/byte(0xF7FF7199)+
                                   byte(0xF7FF8E2D+dword(0xe7b054))/byte(0xF7FF8E2D)+byte(0xF7FF8B39+dword(0xe7b054))/byte(0xF7FF8B39)+
                                   byte(0xF7FF654D+dword(0xe7b054))/byte(0xF7FF654D)+byte(0xF7FF901D+dword(0xe7b054))/byte(0xF7FF901D)+
                                   byte(0xF7FF9C2D+dword(0xe7b054))/byte(0xF7FF9C2D)+byte(0xF7FF7025+dword(0xe7b054))/byte(0xF7FF7025)+
                                   byte(0xF7FF79E5+dword(0xe7b054))/byte(0xF7FF79E5)+byte(0xF7FF6DD5+dword(0xe7b054))/byte(0xF7FF6DD5)+
                                   byte(0xF7FF8B81+dword(0xe7b054))/byte(0xF7FF8B81)+byte(0xF7FF8065+dword(0xe7b054))/byte(0xF7FF8065)+
                                   byte(0xF7FF7B8D+dword(0xe7b054))/byte(0xF7FF7B8D)+byte(0xF7FF8E3D+dword(0xe7b054))/byte(0xF7FF8E3D)+
                                   byte(0xF7FF6CD1+dword(0xe7b054))/byte(0xF7FF6CD1)+byte(0xF7FF8E21+dword(0xe7b054))/byte(0xF7FF8E21)+
                                   byte(0xF7FF6DD9+dword(0xe7b054))/byte(0xF7FF6DD9)+byte(0xF7FF7AA5+dword(0xe7b054))/byte(0xF7FF7AA5)+
                                   byte(0xF7FF7FC9+dword(0xe7b054))/byte(0xF7FF7FC9)+byte(0xF7FF7EC1+dword(0xe7b054))/byte(0xF7FF7EC1)+
                                   byte(0xF7FF7E9D+dword(0xe7b054))/byte(0xF7FF7E9D)+byte(0xF7FF738D+dword(0xe7b054))/byte(0xF7FF738D)+
                                   byte(0xF7FF7E71+dword(0xe7b054))/byte(0xF7FF7E71)+byte(0xF7FF7E8D+dword(0xe7b054))/byte(0xF7FF7E8D)+
                                   byte(0xF7FF7EB5+dword(0xe7b054))/byte(0xF7FF7EB5)+byte(0xF7FFA011+dword(0xe7b054))/byte(0xF7FFA011)+
                                   byte(0xF7FF8AB1+dword(0xe7b054))/byte(0xF7FF8AB1)+byte(0xF7FF8AAD+dword(0xe7b054))/byte(0xF7FF8AAD)+
                                   byte(0xF7FF83C9+dword(0xe7b054))/byte(0xF7FF83C9)+byte(0xF7FF68F5+dword(0xe7b054))/byte(0xF7FF68F5)+
                                   byte(0xF7FF7711+dword(0xe7b054))/byte(0xF7FF7711)+byte(0xF7FF7F45+dword(0xe7b054))/byte(0xF7FF7F45)+
                                   byte(0xF7FF71C1+dword(0xe7b054))/byte(0xF7FF71C1)+byte(0xF7FF7909+dword(0xe7b054))/byte(0xF7FF7909)+
                                   byte(0xF7FF7BBD+dword(0xe7b054))/byte(0xF7FF7BBD)+byte(0xF7FF78C1+dword(0xe7b054))/byte(0xF7FF78C1)+
                                   byte(0xF7FF7EE1+dword(0xe7b054))/byte(0xF7FF7EE1)+byte(0xF7FF7185+dword(0xe7b054))/byte(0xF7FF7185)+
                                   byte(0xF7FF8DB1+dword(0xe7b054))/byte(0xF7FF8DB1)+byte(0xF7FF774D+dword(0xe7b054))/byte(0xF7FF774D)+
                                   byte(0xF7FF7285+dword(0xe7b054))/byte(0xF7FF7285)+byte(0xF7FF83AD+dword(0xe7b054))/byte(0xF7FF83AD)+
                                   byte(0xF7FF8A11+dword(0xe7b054))/byte(0xF7FF8A11)+byte(0xF7FF9F99+dword(0xe7b054))/byte(0xF7FF9F99)+
                                   byte(0xF7FF7E29+dword(0xe7b054))/byte(0xF7FF7E29)+byte(0xF7FF67B1+dword(0xe7b054))/byte(0xF7FF67B1)+
                                   byte(0xF7FF7915+dword(0xe7b054))/byte(0xF7FF7915)+byte(0xF7FF7545+dword(0xe7b054))/byte(0xF7FF7545)+
                                   byte(0xF7FF7C29+dword(0xe7b054))/byte(0xF7FF7C29)+byte(0xF7FF83A9+dword(0xe7b054))/byte(0xF7FF83A9)+
                                   byte(0xF7FF6C29+dword(0xe7b054))/byte(0xF7FF6C29)+byte(0xF7FF73AD+dword(0xe7b054))/byte(0xF7FF73AD)+
                                   byte(0xF7FF7E85+dword(0xe7b054))/byte(0xF7FF7E85)+byte(0xF7FF7745+dword(0xe7b054))/byte(0xF7FF7745)+
                                   byte(0xF7FF71C9+dword(0xe7b054))/byte(0xF7FF71C9)+byte(0xF7FF7D45+dword(0xe7b054))/byte(0xF7FF7D45)+
                                   byte(0xF7FF67A1+dword(0xe7b054))/byte(0xF7FF67A1)+byte(0xF7FF69C1+dword(0xe7b054))/byte(0xF7FF69C1)+
                                   byte(0xF7FF6219+dword(0xe7b054))/byte(0xF7FF6219)+byte(0xF7FF9BED+dword(0xe7b054))/byte(0xF7FF9BED)+
                                   byte(0xF7FF7F3D+dword(0xe7b054))/byte(0xF7FF7F3D)+byte(0xF7FF79ED+dword(0xe7b054))/byte(0xF7FF79ED)+
                                   byte(0xF7FF7A65+dword(0xe7b054))/byte(0xF7FF7A65)+byte(0xF7FF7B59+dword(0xe7b054))/byte(0xF7FF7B59)+
                                   byte(0xF7FF9CC5+dword(0xe7b054))/byte(0xF7FF9CC5)+byte(0xF7FF9CC9+dword(0xe7b054))/byte(0xF7FF9CC9)+
                                   byte(0xF7FF7BC5+dword(0xe7b054))/byte(0xF7FF7BC5)+byte(0xF7FF7AA9+dword(0xe7b054))/byte(0xF7FF7AA9)+
                                   byte(0xF7FF7FBD+dword(0xe7b054))/byte(0xF7FF7FBD)+byte(0xF7FF8D85+dword(0xe7b054))/byte(0xF7FF8D85)+
                                   byte(0xF7FF9CC1+dword(0xe7b054))/byte(0xF7FF9CC1)+byte(0xF7FF7A71+dword(0xe7b054))/byte(0xF7FF7A71)+
                                   byte(0xF7FF7B55+dword(0xe7b054))/byte(0xF7FF7B55)+byte(0xF7FF8469+dword(0xe7b054))/byte(0xF7FF8469)+
                                   byte(0xF7FF8465+dword(0xe7b054))/byte(0xF7FF8465)+byte(0xF7FF7831+dword(0xe7b054))/byte(0xF7FF7831)+
                                   byte(0xF7FF74A5+dword(0xe7b054))/byte(0xF7FF74A5)+byte(0xF7FF7E95+dword(0xe7b054))/byte(0xF7FF7E95)+
                                   byte(0xF7FF7EF9+dword(0xe7b054))/byte(0xF7FF7EF9)+byte(0xF7FFA099+dword(0xe7b054))/byte(0xF7FFA099)+
                                   byte(0xF7FF8E85+dword(0xe7b054))/byte(0xF7FF8E85)+byte(0xF7FF782D+dword(0xe7b054))/byte(0xF7FF782D)+
                                   byte(0xF7FF65F5+dword(0xe7b054))/byte(0xF7FF65F5)+byte(0xF7FF712D+dword(0xe7b054))/byte(0xF7FF712D)+
                                   byte(0xF7FF88A1+dword(0xe7b054))/byte(0xF7FF88A1)+byte(0xF7FF7C31+dword(0xe7b054))/byte(0xF7FF7C31)+
                                   byte(0xF7FF6CBD+dword(0xe7b054))/byte(0xF7FF6CBD)+byte(0xF7FF621D+dword(0xe7b054))/byte(0xF7FF621D)+
                                   byte(0xF7FF71B5+dword(0xe7b054))/byte(0xF7FF71B5)+byte(0xF7FF7589+dword(0xe7b054))/byte(0xF7FF7589)+
                                   byte(0xF7FF7F41+dword(0xe7b054))/byte(0xF7FF7F41)+byte(0xF7FF7911+dword(0xe7b054))/byte(0xF7FF7911)+
                                   byte(0xF7FF7EF5+dword(0xe7b054))/byte(0xF7FF7EF5)+byte(0xF7FF7B5D+dword(0xe7b054))/byte(0xF7FF7B5D)+
                                   byte(0xF7FF8AB5+dword(0xe7b054))/byte(0xF7FF8AB5)+byte(0xF7FF7E6D+dword(0xe7b054))/byte(0xF7FF7E6D)+
                                   byte(0xF7FF64A1+dword(0xe7b054))/byte(0xF7FF64A1)+byte(0xF7FF8E1D+dword(0xe7b054))/byte(0xF7FF8E1D)+
                                   byte(0xF7FF8E8D+dword(0xe7b054))/byte(0xF7FF8E8D)+byte(0xF7FF7E99+dword(0xe7b054))/byte(0xF7FF7E99)+
                                   byte(0xF7FF8E29+dword(0xe7b054))/byte(0xF7FF8E29)+byte(0xF7FF7C35+dword(0xe7b054))/byte(0xF7FF7C35)+
                                   byte(0xF7FF7511+dword(0xe7b054))/byte(0xF7FF7511)+byte(0xF7FF7375+dword(0xe7b054))/byte(0xF7FF7375)+
                                   byte(0xF7FF7EB9+dword(0xe7b054))/byte(0xF7FF7EB9)+byte(0xF7FF852D+dword(0xe7b054))/byte(0xF7FF852D)+
                                   byte(0xF7FF7EC5+dword(0xe7b054))/byte(0xF7FF7EC5)+byte(0xF7FF6D29+dword(0xe7b054))/byte(0xF7FF6D29)+
                                   byte(0xF7FF6CC5+dword(0xe7b054))/byte(0xF7FF6CC5)+byte(0xF7FF7EC9+dword(0xe7b054))/byte(0xF7FF7EC9)+
                                   byte(0xF7FF7FE5+dword(0xe7b054))/byte(0xF7FF7FE5)+byte(0xF7FF7835+dword(0xe7b054))/byte(0xF7FF7835)+
                                   byte(0xF7FF67BD+dword(0xe7b054))/byte(0xF7FF67BD)+byte(0xF7FFA825+dword(0xe7b054))/byte(0xF7FFA825)+
                                   byte(0xF7FF7289+dword(0xe7b054))/byte(0xF7FF7289)+byte(0xF7FF6815+dword(0xe7b054))/byte(0xF7FF6815)
                                   
achievement ("Beauty in Simplicity", "Obtain all cards from [Beauty in Simplicity] booster", 10,
trigger = save_protect() && measured(beauty_in_simplicity() == 118) && prev(beauty_in_simplicity()) != 118)  

//Crossover Session Booster Packs - 102 Cards Total
//Offset - +0xF7FF70D9 - Alligator's Sword Dragon
//Offset - +0xF7FF6BF5 - Amphibious Bugroth
//Offset - +0xF7FF8B79 - Anti-Fusion Device
//Offset - +0xF7FF68E1 - Aqua Dragon
//Offset - +0xF7FF8FDD - Armityle the Chaos Phantom
//Offset - +0xF7FF6351 - Barox
//Offset - +0xF7FF6601 - Beastking of the Swamps
//Offset - +0xF7FF67FD - Bickuribox
//Offset - +0xF7FF7B61 - Big Koala
//Offset - +0xF7FF69ED - Bracchio-Raidus
//Offset - +0xF7FF8511 - Branch!
//Offset - +0xF7FF81DD - Centrifugal Field
//Offset - +0xF7FF9191 - Chain Material
//Offset - +0xF7FF640D - Charubin the Fire Knight
//Offset - +0xF7FF84C1 - Chthonian Polymer
//Offset - +0xF7FF6945 - Crimson Sunbird
//Offset - +0xF7FF69E9 - Cyber Saurus
//Offset - +0xF7FF7489 - Dark Balter the Terrible
//Offset - +0xF7FF6499 - Darkfire Dragon
//Offset - +0xF7FF7215 - De-Fusion
//Offset - +0xF7FF68CD - Deepsea Shark
//Offset - +0xF7FF7B65 - Des Kangaroo
//Offset - +0xF7FF7959 - Des Koala
//Offset - +0xF7FF9151 - Dimension Explosion
//Offset - +0xF7FF6691 - Dragoness the Wicked Knight
//Offset - +0xF7FF6AE9 - Empress Judge
//Offset - +0xF7FF8499 - Etoile Cyber
//Offset - +0xF7FF7519 - Fiend Skull Dragon
//Offset - +0xF7FF6555 - Flame Ghost
//Offset - +0xF7FF6235 - Flame Swordsman
//Offset - +0xF7FF6995 - Flower Wolf
//Offset - +0xF7FF8AED - Fusion Devourer
//Offset - +0xF7FF7441 - Fusion Gate
//Offset - +0xF7FF83F5 - Fusion Recovery
//Offset - +0xF7FF6EE1 - Fusion Sage
//Offset - +0xF7FF7FED - Fusion Weapon
//Offset - +0xF7FF64ED - Fusionist
//Offset - +0xF7FF8889 - Future Fusion
//Offset - +0xF7FF680D - Giltia the D. Knight
//Offset - +0xF7FF63AD - Goddess with the Third Eye
//Offset - +0xF7FF6AC9 - Great Mammoth of Goldfine
//Offset - +0xF7FF718D - Humanoid Worm Drake
//Offset - +0xF7FFA8F5 - Ignition Beast Volcannon
//Offset - +0xF7FF89E5 - Instant Fusion
//Offset - +0xF7FF68A5 - Kaiser Dragon
//Offset - +0xF7FF6921 - Kaminari Attack
//Offset - +0xF7FF63C5 - Kamionwizard
//Offset - +0xF7FF62A5 - Karbonala Warrior
//Offset - +0xF7FF7E89 - King of the Swamp
//Offset - +0xF7FF96C1 - Koalo-Koala
//Offset - +0xF7FF6A4D - Kwagar Hercules
//Offset - +0xF7FF67C1 - Labyrinth Tank
//Offset - +0xF7FF6ACD - Man-Eating Black Shark
//Offset - +0xF7FF6B9D - Marine Beast
//Offset - +0xF7FF7401 - Maryokutai
//Offset - +0xF7FF7FC1 - Master of Oz
//Offset - +0xF7FF6639 - Mavelus
//Offset - +0xF7FF864D - Memory Crusher
//Offset - +0xF7FF685D - Metal Dragon
//Offset - +0xF7FF8311 - Mispolymerization
//Offset - +0xF7FF6841 - Monster Eye
//Offset - +0xF7FF69B5 - Musician King
//Offset - +0xF7FF6C01 - Mystical Sheep #1
//Offset - +0xF7FF8535 - Non-Fusion Area
//Offset - +0xF7FFA6F1 - Paradox Fusion
//Offset - +0xF7FF6E59 - Polymerization
//Offset - +0xF7FF6981 - Pragtical
//Offset - +0xF7FF693D - Punished Eagle
//Offset - +0xF7FF6369 - Rabid Horseman
//Offset - +0xF7FF6591 - Rare Fish
//Offset - +0xF7FF81E5 - Re-Fusion
//Offset - +0xF7FF9059 - Revoke Fusion
//Offset - +0xF7FF6575 - Roaring Ocean Snake
//Offset - +0xF7FF71A5 - Robolady
//Offset - +0xF7FF71A9 - Roboyarou
//Offset - +0xF7FF6B41 - Rose Spectre of Dunn
//Offset - +0xF7FF74CD - Ryu Senshi
//Offset - +0xF7FF7FC5 - Sanwitch
//Offset - +0xF7FF9121 - Sea Koala
//Offset - +0xF7FF6A7D - Skelgon
//Offset - +0xF7FF6CCD - Skull Knight
//Offset - +0xF7FF6A1D - Skullbird
//Offset - +0xF7FF6955 - Soul Hunter
//Offset - +0xF7FF868D - Success Probability 0%
//Offset - +0xF7FF73D5 - Summoner of Illusions
//Offset - +0xF7FF913D - Super Polymerization
//Offset - +0xF7FF75BD - Super Robolady
//Offset - +0xF7FF75C1 - Super Roboyarou
//Offset - +0xF7FF73FD - Supply
//Offset - +0xF7FF81A9 - The Dark - Hex-Sealed Fusion
//Offset - +0xF7FF81A5 - The Earth - Hex-Sealed Fusion
//Offset - +0xF7FF6DC5 - The Last Warrior from Another Planet
//Offset - +0xF7FF81A1 - The Light - Hex-Sealed Fusion
//Offset - +0xF7FF630D - Thousand Dragon
//Offset - +0xF7FF96BD - Tree Otter
//Offset - +0xF7FF6B8D - Twin-Headed Thunder Dragon
//Offset - +0xF7FFA521 - Vampire Koala
//Offset - +0xF7FF695D - Vermillion Sparrow
//Offset - +0xF7FF662D - Versago the Destroyer
//Offset - +0xF7FF6BA1 - Warrior of Tradition
//Offset - +0xF7FF6271 - Zombie Warrior
//Offset - +0xF7FF73C5 - Zombyra the Dark

function crossover_session() => byte(0xF7FF70D9+dword(0xe7b054))/byte(0xF7FF70D9)+byte(0xF7FF6BF5+dword(0xe7b054))/byte(0xF7FF6BF5)+
                                byte(0xF7FF8B79+dword(0xe7b054))/byte(0xF7FF8B79)+byte(0xF7FF68E1+dword(0xe7b054))/byte(0xF7FF68E1)+
                                byte(0xF7FF8FDD+dword(0xe7b054))/byte(0xF7FF8FDD)+byte(0xF7FF6351+dword(0xe7b054))/byte(0xF7FF6351)+
                                byte(0xF7FF6601+dword(0xe7b054))/byte(0xF7FF6601)+byte(0xF7FF67FD+dword(0xe7b054))/byte(0xF7FF67FD)+
                                byte(0xF7FF7B61+dword(0xe7b054))/byte(0xF7FF7B61)+byte(0xF7FF69ED+dword(0xe7b054))/byte(0xF7FF69ED)+
                                byte(0xF7FF8511+dword(0xe7b054))/byte(0xF7FF8511)+byte(0xF7FF81DD+dword(0xe7b054))/byte(0xF7FF81DD)+
                                byte(0xF7FF9191+dword(0xe7b054))/byte(0xF7FF9191)+byte(0xF7FF640D+dword(0xe7b054))/byte(0xF7FF640D)+
                                byte(0xF7FF84C1+dword(0xe7b054))/byte(0xF7FF84C1)+byte(0xF7FF6945+dword(0xe7b054))/byte(0xF7FF6945)+
                                byte(0xF7FF69E9+dword(0xe7b054))/byte(0xF7FF69E9)+byte(0xF7FF7489+dword(0xe7b054))/byte(0xF7FF7489)+
                                byte(0xF7FF6499+dword(0xe7b054))/byte(0xF7FF6499)+byte(0xF7FF7215+dword(0xe7b054))/byte(0xF7FF7215)+
                                byte(0xF7FF68CD+dword(0xe7b054))/byte(0xF7FF68CD)+byte(0xF7FF7B65+dword(0xe7b054))/byte(0xF7FF7B65)+
                                byte(0xF7FF7959+dword(0xe7b054))/byte(0xF7FF7959)+byte(0xF7FF9151+dword(0xe7b054))/byte(0xF7FF9151)+
                                byte(0xF7FF6691+dword(0xe7b054))/byte(0xF7FF6691)+byte(0xF7FF6AE9+dword(0xe7b054))/byte(0xF7FF6AE9)+
                                byte(0xF7FF8499+dword(0xe7b054))/byte(0xF7FF8499)+byte(0xF7FF7519+dword(0xe7b054))/byte(0xF7FF7519)+
                                byte(0xF7FF6555+dword(0xe7b054))/byte(0xF7FF6555)+byte(0xF7FF6235+dword(0xe7b054))/byte(0xF7FF6235)+
                                byte(0xF7FF6995+dword(0xe7b054))/byte(0xF7FF6995)+byte(0xF7FF8AED+dword(0xe7b054))/byte(0xF7FF8AED)+
                                byte(0xF7FF7441+dword(0xe7b054))/byte(0xF7FF7441)+byte(0xF7FF83F5+dword(0xe7b054))/byte(0xF7FF83F5)+
                                byte(0xF7FF6EE1+dword(0xe7b054))/byte(0xF7FF6EE1)+byte(0xF7FF7FED+dword(0xe7b054))/byte(0xF7FF7FED)+
                                byte(0xF7FF64ED+dword(0xe7b054))/byte(0xF7FF64ED)+byte(0xF7FF8889+dword(0xe7b054))/byte(0xF7FF8889)+
                                byte(0xF7FF680D+dword(0xe7b054))/byte(0xF7FF680D)+byte(0xF7FF63AD+dword(0xe7b054))/byte(0xF7FF63AD)+
                                byte(0xF7FF6AC9+dword(0xe7b054))/byte(0xF7FF6AC9)+byte(0xF7FF718D+dword(0xe7b054))/byte(0xF7FF718D)+
                                byte(0xF7FFA8F5+dword(0xe7b054))/byte(0xF7FFA8F5)+byte(0xF7FF89E5+dword(0xe7b054))/byte(0xF7FF89E5)+
                                byte(0xF7FF68A5+dword(0xe7b054))/byte(0xF7FF68A5)+byte(0xF7FF6921+dword(0xe7b054))/byte(0xF7FF6921)+
                                byte(0xF7FF63C5+dword(0xe7b054))/byte(0xF7FF63C5)+byte(0xF7FF62A5+dword(0xe7b054))/byte(0xF7FF62A5)+
                                byte(0xF7FF7E89+dword(0xe7b054))/byte(0xF7FF7E89)+byte(0xF7FF96C1+dword(0xe7b054))/byte(0xF7FF96C1)+
                                byte(0xF7FF6A4D+dword(0xe7b054))/byte(0xF7FF6A4D)+byte(0xF7FF67C1+dword(0xe7b054))/byte(0xF7FF67C1)+
                                byte(0xF7FF6ACD+dword(0xe7b054))/byte(0xF7FF6ACD)+byte(0xF7FF6B9D+dword(0xe7b054))/byte(0xF7FF6B9D)+
                                byte(0xF7FF7401+dword(0xe7b054))/byte(0xF7FF7401)+byte(0xF7FF7FC1+dword(0xe7b054))/byte(0xF7FF7FC1)+
                                byte(0xF7FF6639+dword(0xe7b054))/byte(0xF7FF6639)+byte(0xF7FF864D+dword(0xe7b054))/byte(0xF7FF864D)+
                                byte(0xF7FF685D+dword(0xe7b054))/byte(0xF7FF685D)+byte(0xF7FF8311+dword(0xe7b054))/byte(0xF7FF8311)+
                                byte(0xF7FF6841+dword(0xe7b054))/byte(0xF7FF6841)+byte(0xF7FF69B5+dword(0xe7b054))/byte(0xF7FF69B5)+
                                byte(0xF7FF6C01+dword(0xe7b054))/byte(0xF7FF6C01)+byte(0xF7FF8535+dword(0xe7b054))/byte(0xF7FF8535)+
                                byte(0xF7FFA6F1+dword(0xe7b054))/byte(0xF7FFA6F1)+byte(0xF7FF6E59+dword(0xe7b054))/byte(0xF7FF6E59)+
                                byte(0xF7FF6981+dword(0xe7b054))/byte(0xF7FF6981)+byte(0xF7FF693D+dword(0xe7b054))/byte(0xF7FF693D)+
                                byte(0xF7FF6369+dword(0xe7b054))/byte(0xF7FF6369)+byte(0xF7FF6591+dword(0xe7b054))/byte(0xF7FF6591)+
                                byte(0xF7FF81E5+dword(0xe7b054))/byte(0xF7FF81E5)+byte(0xF7FF9059+dword(0xe7b054))/byte(0xF7FF9059)+
                                byte(0xF7FF6575+dword(0xe7b054))/byte(0xF7FF6575)+byte(0xF7FF71A5+dword(0xe7b054))/byte(0xF7FF71A5)+
                                byte(0xF7FF71A9+dword(0xe7b054))/byte(0xF7FF71A9)+byte(0xF7FF6B41+dword(0xe7b054))/byte(0xF7FF6B41)+
                                byte(0xF7FF74CD+dword(0xe7b054))/byte(0xF7FF74CD)+byte(0xF7FF7FC5+dword(0xe7b054))/byte(0xF7FF7FC5)+
                                byte(0xF7FF9121+dword(0xe7b054))/byte(0xF7FF9121)+byte(0xF7FF6A7D+dword(0xe7b054))/byte(0xF7FF6A7D)+
                                byte(0xF7FF6CCD+dword(0xe7b054))/byte(0xF7FF6CCD)+byte(0xF7FF6A1D+dword(0xe7b054))/byte(0xF7FF6A1D)+
                                byte(0xF7FF6955+dword(0xe7b054))/byte(0xF7FF6955)+byte(0xF7FF868D+dword(0xe7b054))/byte(0xF7FF868D)+
                                byte(0xF7FF73D5+dword(0xe7b054))/byte(0xF7FF73D5)+byte(0xF7FF913D+dword(0xe7b054))/byte(0xF7FF913D)+
                                byte(0xF7FF75BD+dword(0xe7b054))/byte(0xF7FF75BD)+byte(0xF7FF75C1+dword(0xe7b054))/byte(0xF7FF75C1)+
                                byte(0xF7FF73FD+dword(0xe7b054))/byte(0xF7FF73FD)+byte(0xF7FF81A9+dword(0xe7b054))/byte(0xF7FF81A9)+
                                byte(0xF7FF81A5+dword(0xe7b054))/byte(0xF7FF81A5)+byte(0xF7FF6DC5+dword(0xe7b054))/byte(0xF7FF6DC5)+
                                byte(0xF7FF81A1+dword(0xe7b054))/byte(0xF7FF81A1)+byte(0xF7FF630D+dword(0xe7b054))/byte(0xF7FF630D)+
                                byte(0xF7FF96BD+dword(0xe7b054))/byte(0xF7FF96BD)+byte(0xF7FF6B8D+dword(0xe7b054))/byte(0xF7FF6B8D)+
                                byte(0xF7FFA521+dword(0xe7b054))/byte(0xF7FFA521)+byte(0xF7FF695D+dword(0xe7b054))/byte(0xF7FF695D)+
                                byte(0xF7FF662D+dword(0xe7b054))/byte(0xF7FF662D)+byte(0xF7FF6BA1+dword(0xe7b054))/byte(0xF7FF6BA1)+
                                byte(0xF7FF6271+dword(0xe7b054))/byte(0xF7FF6271)+byte(0xF7FF73C5+dword(0xe7b054))/byte(0xF7FF73C5)
                                
achievement ("Crossover Session", "Obtain all cards from [Crossover Session] booster", 10,
trigger = save_protect() && measured(crossover_session() == 102) && prev(crossover_session()) != 102)   

//Boy on the Podium Booster Packs - 97 Cards Total
//Offset - +0xF7FF856D - Bubble Blaster
//Offset - +0xF7FF8571 - Bubble Illusion
//Offset - +0xF7FF8399 - Bubble Shuffle
//Offset - +0xF7FF8569 - Burst Return
//Offset - +0xF7FF8B61 - Change of Hero - Reflector Ray
//Offset - +0xF7FF8575 - Clay Charge
//Offset - +0xF7FF85D9 - Cyclone Boomerang
//Offset - +0xF7FF9055 - Dark Calling
//Offset - +0xF7FF8EA5 - Dark Fusion
//Offset - +0xF7FF8715 - E - Emergency Call
//Offset - +0xF7FF8A65 - Edge Hammer
//Offset - +0xF7FF9AC9 - Elemental Hero Absolute Zero
//Offset - +0xF7FF8249 - Elemental Hero Avian
//Offset - +0xF7FF8485 - Elemental Hero Bladedge
//Offset - +0xF7FF836D - Elemental Hero Bubbleman
//Offset - +0xF7FF824D - Elemental Hero Burstinatrix
//Offset - +0xF7FF8C5D - Elemental Hero Captain Gold
//Offset - +0xF7FF8251 - Elemental Hero Clayman
//Offset - +0xF7FF8D79 - Elemental Hero Darkbright
//Offset - +0xF7FF9625 - Elemental Hero Divine Neos
//Offset - +0xF7FF86A1 - Elemental Hero Electrum
//Offset - +0xF7FF82D1 - Elemental Hero Flame Wingman
//Offset - +0xF7FFA0AD - Elemental Hero Flash
//Offset - +0xF7FF9AC1 - Elemental Hero Gaia
//Offset - +0xF7FFA15D - Elemental Hero Great Tornado
//Offset - +0xF7FF8A35 - Elemental Hero Heat
//Offset - +0xF7FF9AC5 - Elemental Hero Ice Edge
//Offset - +0xF7FF8BA5 - Elemental Hero Inferno
//Offset - +0xF7FF8965 - Elemental Hero Knospe
//Offset - +0xF7FF8B9D - Elemental Hero Lady Heat
//Offset - +0xF7FF86D9 - Elemental Hero Mariner
//Offset - +0xF7FF854D - Elemental Hero Mudballman
//Offset - +0xF7FF86B5 - Elemental Hero Necroid Shaman
//Offset - +0xF7FF8545 - Elemental Hero Necroshade
//Offset - +0xF7FF85B1 - Elemental Hero Neo Bubbleman
//Offset - +0xF7FF87D5 - Elemental Hero Ocean
//Offset - +0xF7FF86D1 - Elemental Hero Phoenix Enforcer
//Offset - +0xF7FF8E7D - Elemental Hero Plasma Vice
//Offset - +0xF7FF896D - Elemental Hero Poison Rose
//Offset - +0xF7FF91F5 - Elemental Hero Prisma
//Offset - +0xF7FF84A9 - Elemental Hero Rampart Blaster
//Offset - +0xF7FF845D - Elemental Hero Shining Flare Wingman
//Offset - +0xF7FF86D5 - Elemental Hero Shining Phoenix Enforcer
//Offset - +0xF7FF8255 - Elemental Hero Sparkman
//Offset - +0xF7FF8565 - Elemental Hero Steam Healer
//Offset - +0xF7FF8891 - Elemental Hero Stratos
//Offset - +0xF7FF84AD - Elemental Hero Tempest
//Offset - +0xF7FF87D1 - Elemental Hero Terra Firma
//Offset - +0xF7FFA0B1 - Elemental Hero The Shining
//Offset - +0xF7FF82D5 - Elemental Hero Thunder Giant
//Offset - +0xF7FF8BDD - Elemental Hero Voltic
//Offset - +0xF7FF86B1 - Elemental Hero Wild Wingman
//Offset - +0xF7FF84B1 - Elemental Hero Wildedge
//Offset - +0xF7FF8489 - Elemental Hero Wildheart
//Offset - +0xF7FF87CD - Elemental Hero Woodsman
//Offset - +0xF7FF8725 - Elemental Recharge
//Offset - +0xF7FF8EA1 - Evil Hero Dark Gaia
//Offset - +0xF7FF9041 - Evil Hero Infernal Prodigy
//Offset - +0xF7FF904D - Evil Hero Infernal Sniper
//Offset - +0xF7FF8E91 - Evil Hero Inferno Wing
//Offset - +0xF7FF8E9D - Evil Hero Lightning Golem
//Offset - +0xF7FF8E95 - Evil Hero Malicious Edge
//Offset - +0xF7FF9051 - Evil Hero Malicious Fiend
//Offset - +0xF7FF9049 - Evil Hero Wild Cyclone
//Offset - +0xF7FF887D - Fake Hero
//Offset - +0xF7FF84B9 - Feather Shot
//Offset - +0xF7FF84CD - Feather Wind
//Offset - +0xF7FF8D3D - Fifth Hope
//Offset - +0xF7FF8711 - H - Heated Heart
//Offset - +0xF7FF84C9 - Hero Barrier
//Offset - +0xF7FF93E5 - Hero Blast
//Offset - +0xF7FF8D39 - Hero Counterattack
//Offset - +0xF7FF8721 - HERO Flash!!
//Offset - +0xF7FF85C5 - Hero Heart
//Offset - +0xF7FF85B5 - Hero Kid
//Offset - +0xF7FF9399 - Hero Mask
//Offset - +0xF7FF8301 - Hero Signal
//Offset - +0xF7FF85F9 - Hero Spirit
//Offset - +0xF7FF8895 - Hero's Bond
//Offset - +0xF7FF8A69 - Kid Guard
//Offset - +0xF7FF83F9 - Miracle Fusion
//Offset - +0xF7FF85E9 - Miracle Kids
//Offset - +0xF7FF8D61 - Mirror Gate
//Offset - +0xF7FF871D - O - Oversoul
//Offset - +0xF7FF6AB5 - Oscillo Hero
//Offset - +0xF7FF9819 - Parallel World Fusion
//Offset - +0xF7FFA729 - Phantom Magician
//Offset - +0xF7FF69DD - Prisman
//Offset - +0xF7FF8719 - R - Righteous Justice
//Offset - +0xF7FF9135 - Rainbow Neos
//Offset - +0xF7FF8969 - Rose Bud
//Offset - +0xF7FF8385 - Skyscraper
//Offset - +0xF7FF8B5D - Skyscraper #2 - Hero City
//Offset - +0xF7FF839D - Spark Blaster
//Offset - +0xF7FF8A31 - Terra Firma Gravity
//Offset - +0xF7FFA8F9 - Vision Hero Trinity
//Offset - +0xF7FF8365 - Wroughtweiler

function boy_on_the_podium() => byte(0xF7FF856D+dword(0xe7b054))/byte(0xF7FF856D)+byte(0xF7FF8571+dword(0xe7b054))/byte(0xF7FF8571)+
                                byte(0xF7FF8399+dword(0xe7b054))/byte(0xF7FF8399)+byte(0xF7FF8569+dword(0xe7b054))/byte(0xF7FF8569)+
                                byte(0xF7FF8B61+dword(0xe7b054))/byte(0xF7FF8B61)+byte(0xF7FF8575+dword(0xe7b054))/byte(0xF7FF8575)+
                                byte(0xF7FF85D9+dword(0xe7b054))/byte(0xF7FF85D9)+byte(0xF7FF9055+dword(0xe7b054))/byte(0xF7FF9055)+
                                byte(0xF7FF8EA5+dword(0xe7b054))/byte(0xF7FF8EA5)+byte(0xF7FF8715+dword(0xe7b054))/byte(0xF7FF8715)+
                                byte(0xF7FF8A65+dword(0xe7b054))/byte(0xF7FF8A65)+byte(0xF7FF9AC9+dword(0xe7b054))/byte(0xF7FF9AC9)+
                                byte(0xF7FF8249+dword(0xe7b054))/byte(0xF7FF8249)+byte(0xF7FF8485+dword(0xe7b054))/byte(0xF7FF8485)+
                                byte(0xF7FF836D+dword(0xe7b054))/byte(0xF7FF836D)+byte(0xF7FF824D+dword(0xe7b054))/byte(0xF7FF824D)+
                                byte(0xF7FF8C5D+dword(0xe7b054))/byte(0xF7FF8C5D)+byte(0xF7FF8251+dword(0xe7b054))/byte(0xF7FF8251)+
                                byte(0xF7FF8D79+dword(0xe7b054))/byte(0xF7FF8D79)+byte(0xF7FF9625+dword(0xe7b054))/byte(0xF7FF9625)+
                                byte(0xF7FF86A1+dword(0xe7b054))/byte(0xF7FF86A1)+byte(0xF7FF82D1+dword(0xe7b054))/byte(0xF7FF82D1)+
                                byte(0xF7FFA0AD+dword(0xe7b054))/byte(0xF7FFA0AD)+byte(0xF7FF9AC1+dword(0xe7b054))/byte(0xF7FF9AC1)+
                                byte(0xF7FFA15D+dword(0xe7b054))/byte(0xF7FFA15D)+byte(0xF7FF8A35+dword(0xe7b054))/byte(0xF7FF8A35)+
                                byte(0xF7FF9AC5+dword(0xe7b054))/byte(0xF7FF9AC5)+byte(0xF7FF8BA5+dword(0xe7b054))/byte(0xF7FF8BA5)+
                                byte(0xF7FF8965+dword(0xe7b054))/byte(0xF7FF8965)+byte(0xF7FF8B9D+dword(0xe7b054))/byte(0xF7FF8B9D)+
                                byte(0xF7FF86D9+dword(0xe7b054))/byte(0xF7FF86D9)+byte(0xF7FF854D+dword(0xe7b054))/byte(0xF7FF854D)+
                                byte(0xF7FF86B5+dword(0xe7b054))/byte(0xF7FF86B5)+byte(0xF7FF8545+dword(0xe7b054))/byte(0xF7FF8545)+
                                byte(0xF7FF85B1+dword(0xe7b054))/byte(0xF7FF85B1)+byte(0xF7FF87D5+dword(0xe7b054))/byte(0xF7FF87D5)+
                                byte(0xF7FF86D1+dword(0xe7b054))/byte(0xF7FF86D1)+byte(0xF7FF8E7D+dword(0xe7b054))/byte(0xF7FF8E7D)+
                                byte(0xF7FF896D+dword(0xe7b054))/byte(0xF7FF896D)+byte(0xF7FF91F5+dword(0xe7b054))/byte(0xF7FF91F5)+
                                byte(0xF7FF84A9+dword(0xe7b054))/byte(0xF7FF84A9)+byte(0xF7FF845D+dword(0xe7b054))/byte(0xF7FF845D)+
                                byte(0xF7FF86D5+dword(0xe7b054))/byte(0xF7FF86D5)+byte(0xF7FF8255+dword(0xe7b054))/byte(0xF7FF8255)+
                                byte(0xF7FF8565+dword(0xe7b054))/byte(0xF7FF8565)+byte(0xF7FF8891+dword(0xe7b054))/byte(0xF7FF8891)+
                                byte(0xF7FF84AD+dword(0xe7b054))/byte(0xF7FF84AD)+byte(0xF7FF87D1+dword(0xe7b054))/byte(0xF7FF87D1)+
                                byte(0xF7FFA0B1+dword(0xe7b054))/byte(0xF7FFA0B1)+byte(0xF7FF82D5+dword(0xe7b054))/byte(0xF7FF82D5)+
                                byte(0xF7FF8BDD+dword(0xe7b054))/byte(0xF7FF8BDD)+byte(0xF7FF86B1+dword(0xe7b054))/byte(0xF7FF86B1)+
                                byte(0xF7FF84B1+dword(0xe7b054))/byte(0xF7FF84B1)+byte(0xF7FF8489+dword(0xe7b054))/byte(0xF7FF8489)+
                                byte(0xF7FF87CD+dword(0xe7b054))/byte(0xF7FF87CD)+byte(0xF7FF8725+dword(0xe7b054))/byte(0xF7FF8725)+
                                byte(0xF7FF8EA1+dword(0xe7b054))/byte(0xF7FF8EA1)+byte(0xF7FF9041+dword(0xe7b054))/byte(0xF7FF9041)+
                                byte(0xF7FF904D+dword(0xe7b054))/byte(0xF7FF904D)+byte(0xF7FF8E91+dword(0xe7b054))/byte(0xF7FF8E91)+
                                byte(0xF7FF8E9D+dword(0xe7b054))/byte(0xF7FF8E9D)+byte(0xF7FF8E95+dword(0xe7b054))/byte(0xF7FF8E95)+
                                byte(0xF7FF9051+dword(0xe7b054))/byte(0xF7FF9051)+byte(0xF7FF9049+dword(0xe7b054))/byte(0xF7FF9049)+
                                byte(0xF7FF887D+dword(0xe7b054))/byte(0xF7FF887D)+byte(0xF7FF84B9+dword(0xe7b054))/byte(0xF7FF84B9)+
                                byte(0xF7FF84CD+dword(0xe7b054))/byte(0xF7FF84CD)+byte(0xF7FF8D3D+dword(0xe7b054))/byte(0xF7FF8D3D)+
                                byte(0xF7FF8711+dword(0xe7b054))/byte(0xF7FF8711)+byte(0xF7FF84C9+dword(0xe7b054))/byte(0xF7FF84C9)+
                                byte(0xF7FF93E5+dword(0xe7b054))/byte(0xF7FF93E5)+byte(0xF7FF8D39+dword(0xe7b054))/byte(0xF7FF8D39)+
                                byte(0xF7FF8721+dword(0xe7b054))/byte(0xF7FF8721)+byte(0xF7FF85C5+dword(0xe7b054))/byte(0xF7FF85C5)+
                                byte(0xF7FF85B5+dword(0xe7b054))/byte(0xF7FF85B5)+byte(0xF7FF9399+dword(0xe7b054))/byte(0xF7FF9399)+
                                byte(0xF7FF8301+dword(0xe7b054))/byte(0xF7FF8301)+byte(0xF7FF85F9+dword(0xe7b054))/byte(0xF7FF85F9)+
                                byte(0xF7FF8895+dword(0xe7b054))/byte(0xF7FF8895)+byte(0xF7FF8A69+dword(0xe7b054))/byte(0xF7FF8A69)+
                                byte(0xF7FF83F9+dword(0xe7b054))/byte(0xF7FF83F9)+byte(0xF7FF85E9+dword(0xe7b054))/byte(0xF7FF85E9)+
                                byte(0xF7FF8D61+dword(0xe7b054))/byte(0xF7FF8D61)+byte(0xF7FF871D+dword(0xe7b054))/byte(0xF7FF871D)+
                                byte(0xF7FF6AB5+dword(0xe7b054))/byte(0xF7FF6AB5)+byte(0xF7FF9819+dword(0xe7b054))/byte(0xF7FF9819)+
                                byte(0xF7FFA729+dword(0xe7b054))/byte(0xF7FFA729)+byte(0xF7FF69DD+dword(0xe7b054))/byte(0xF7FF69DD)+
                                byte(0xF7FF8719+dword(0xe7b054))/byte(0xF7FF8719)+byte(0xF7FF9135+dword(0xe7b054))/byte(0xF7FF9135)+
                                byte(0xF7FF8969+dword(0xe7b054))/byte(0xF7FF8969)+byte(0xF7FF8385+dword(0xe7b054))/byte(0xF7FF8385)+
                                byte(0xF7FF8B5D+dword(0xe7b054))/byte(0xF7FF8B5D)+byte(0xF7FF839D+dword(0xe7b054))/byte(0xF7FF839D)+
                                byte(0xF7FF8A31+dword(0xe7b054))/byte(0xF7FF8A31)+byte(0xF7FFA8F9+dword(0xe7b054))/byte(0xF7FFA8F9)+
                                byte(0xF7FF8365+dword(0xe7b054))/byte(0xF7FF8365)

achievement ("Boy on the Podium", "Obtain all cards from [Boy on the Podium] booster", 10,
trigger = save_protect() && measured(boy_on_the_podium() == 97) && prev(boy_on_the_podium()) != 97)

//Ancient Rituals Booster Packs - 76 Cards Total
//Offset - 0xF7FF8B3D - Advanced Ritual Art
//Offset - 0xF7FF6495 - Ancient Jar
//Offset - 0xF7FFA295 - Ascending Soul
//Offset - 0xF7FF6C6D - Beastly Mirror Ritual
//Offset - 0xF7FF6DF1 - Black Illusion Ritual
//Offset - 0xF7FF6C5D - Black Luster Ritual
//Offset - 0xF7FF67A9 - Black Luster Soldier
//Offset - 0xF7FF6879 - Blocker
//Offset - 0xF7FF6CD5 - Chakra
//Offset - 0xF7FF6C71 - Commencement Dance
//Offset - 0xF7FF7B05 - Contract with the Abyss
//Offset - 0xF7FF7B09 - Contract with the Dark Master
//Offset - 0xF7FF6CD9 - Crab Turtle
//Offset - 0xF7FF8B2D - Cu Chulainn the Awakened
//Offset - 0xF7FF71E5 - Curse of the Masked Beast
//Offset - 0xF7FF7AFD - Dark Master - Zorc
//Offset - 0xF7FFA4C1 - Dawn of the Herald
//Offset - 0xF7FF8665 - Demise, King of Armageddon
//Offset - 0xF7FF9FB5 - Divine Grace - Northwemko
//Offset - 0xF7FFA23D - Djinn Cursenchanter of Rituals
//Offset - 0xF7FFA3C9 - Djinn Disserere of Rituals
//Offset - 0xF7FF9FB1 - Djinn Presider of Rituals
//Offset - 0xF7FFA241 - Djinn Prognosticator of Rituals
//Offset - 0xF7FF9FAD - Djinn Releaser of Rituals
//Offset - 0xF7FF6CF9 - Dokurorider
//Offset - 0xF7FF7CC1 - Earth Chant
//Offset - 0xF7FF8B45 - Emblem of the Awakening
//Offset - 0xF7FF8675 - End of the World
//Offset - 0xF7FF67AD - Fiend's Mirror
//Offset - 0xF7FF82ED - Final Ritual of the Ancients
//Offset - 0xF7FF6CF5 - Fortress Whale
//Offset - 0xF7FF6CB1 - Fortress Whale's Oath
//Offset - 0xF7FF81E1 - Fulfillment of the Contract
//Offset - 0xF7FFA245 - Garlandolf, King of Destruction
//Offset - 0xF7FF6CED - Garma Sword
//Offset - 0xF7FF6CA9 - Garma Sword Oath
//Offset - 0xF7FF6C75 - Hamburger Recipe
//Offset - 0xF7FF65AD - Haniwa
//Offset - 0xF7FF9465 - Herald of Perfection
//Offset - 0xF7FF6CB9 - Hungry Burger
//Offset - 0xF7FF814D - Insect Knight
//Offset - 0xF7FF6CF1 - Javelin Beetle
//Offset - 0xF7FF6CA5 - Javelin Beetle Pact
//Offset - 0xF7FF8B29 - Lycanthrope
//Offset - 0xF7FF7C99 - Manju of the Ten Thousand Hands
//Offset - 0xF7FF6875 - Mechanicalchaser
//Offset - 0xF7FF7C2D - Neo Bug
//Offset - 0xF7FF6CB5 - Performance of Sword
//Offset - 0xF7FF6AB1 - Pot the Trick
//Offset - 0xF7FF9FFD - Preparation of Rites
//Offset - 0xF7FF6D21 - Relinquished
//Offset - 0xF7FF82C9 - Reshef the Dark Being
//Offset - 0xF7FF6CA1 - Resurrection of Chakra
//Offset - 0xF7FF6CAD - Revival of Dokurorider
//Offset - 0xF7FFA04D - Ritual Buster
//Offset - 0xF7FFA299 - Ritual Cage
//Offset - 0xF7FF89E1 - Ritual Foregone
//Offset - 0xF7FFA291 - Ritual of Destruction
//Offset - 0xF7FF9FF9 - Ritual of Grace
//Offset - 0xF7FF8D9D - Ritual Raven
//Offset - 0xF7FF8B7D - Ritual Sealing
//Offset - 0xF7FF7FF1 - Ritual Weapon
//Offset - 0xF7FF8661 - Ruin, Queen of Oblivion
//Offset - 0xF7FF8679 - Samsara
//Offset - 0xF7FF6F91 - Senju of the Thousand Hands
//Offset - 0xF7FF79D1 - Shinato, King of a Higher Plane
//Offset - 0xF7FF7A2D - Shinato's Ark
//Offset - 0xF7FF6CC1 - Skull Guardian
//Offset - 0xF7FF6FC5 - Sonic Bird
//Offset - 0xF7FF6789 - Super War-Lion
//Offset - 0xF7FF8B41 - Synthesis Spell
//Offset - 0xF7FF71C5 - The Masked Beast
//Offset - 0xF7FF6C9D - Turtle Oath
//Offset - 0xF7FF6C69 - War-Lion Ritual
//Offset - 0xF7FF6C61 - Zera Ritual
//Offset - 0xF7FF6799 - Zera the Mant    

function ancient_rituals() => byte(0xF7FF8B3D+dword(0xe7b054))/byte(0xF7FF8B3D)+byte(0xF7FF6495+dword(0xe7b054))/byte(0xF7FF6495)+
                              byte(0xF7FFA295+dword(0xe7b054))/byte(0xF7FFA295)+byte(0xF7FF6C6D+dword(0xe7b054))/byte(0xF7FF6C6D)+
                              byte(0xF7FF6DF1+dword(0xe7b054))/byte(0xF7FF6DF1)+byte(0xF7FF6C5D+dword(0xe7b054))/byte(0xF7FF6C5D)+
                              byte(0xF7FF67A9+dword(0xe7b054))/byte(0xF7FF67A9)+byte(0xF7FF6879+dword(0xe7b054))/byte(0xF7FF6879)+
                              byte(0xF7FF6CD5+dword(0xe7b054))/byte(0xF7FF6CD5)+byte(0xF7FF6C71+dword(0xe7b054))/byte(0xF7FF6C71)+
                              byte(0xF7FF7B05+dword(0xe7b054))/byte(0xF7FF7B05)+byte(0xF7FF7B09+dword(0xe7b054))/byte(0xF7FF7B09)+
                              byte(0xF7FF6CD9+dword(0xe7b054))/byte(0xF7FF6CD9)+byte(0xF7FF8B2D+dword(0xe7b054))/byte(0xF7FF8B2D)+
                              byte(0xF7FF71E5+dword(0xe7b054))/byte(0xF7FF71E5)+byte(0xF7FF7AFD+dword(0xe7b054))/byte(0xF7FF7AFD)+
                              byte(0xF7FFA4C1+dword(0xe7b054))/byte(0xF7FFA4C1)+byte(0xF7FF8665+dword(0xe7b054))/byte(0xF7FF8665)+
                              byte(0xF7FF9FB5+dword(0xe7b054))/byte(0xF7FF9FB5)+byte(0xF7FFA23D+dword(0xe7b054))/byte(0xF7FFA23D)+
                              byte(0xF7FFA3C9+dword(0xe7b054))/byte(0xF7FFA3C9)+byte(0xF7FF9FB1+dword(0xe7b054))/byte(0xF7FF9FB1)+
                              byte(0xF7FFA241+dword(0xe7b054))/byte(0xF7FFA241)+byte(0xF7FF9FAD+dword(0xe7b054))/byte(0xF7FF9FAD)+
                              byte(0xF7FF6CF9+dword(0xe7b054))/byte(0xF7FF6CF9)+byte(0xF7FF7CC1+dword(0xe7b054))/byte(0xF7FF7CC1)+
                              byte(0xF7FF8B45+dword(0xe7b054))/byte(0xF7FF8B45)+byte(0xF7FF8675+dword(0xe7b054))/byte(0xF7FF8675)+
                              byte(0xF7FF67AD+dword(0xe7b054))/byte(0xF7FF67AD)+byte(0xF7FF82ED+dword(0xe7b054))/byte(0xF7FF82ED)+
                              byte(0xF7FF6CF5+dword(0xe7b054))/byte(0xF7FF6CF5)+byte(0xF7FF6CB1+dword(0xe7b054))/byte(0xF7FF6CB1)+
                              byte(0xF7FF81E1+dword(0xe7b054))/byte(0xF7FF81E1)+byte(0xF7FFA245+dword(0xe7b054))/byte(0xF7FFA245)+
                              byte(0xF7FF6CED+dword(0xe7b054))/byte(0xF7FF6CED)+byte(0xF7FF6CA9+dword(0xe7b054))/byte(0xF7FF6CA9)+
                              byte(0xF7FF6C75+dword(0xe7b054))/byte(0xF7FF6C75)+byte(0xF7FF65AD+dword(0xe7b054))/byte(0xF7FF65AD)+
                              byte(0xF7FF9465+dword(0xe7b054))/byte(0xF7FF9465)+byte(0xF7FF6CB9+dword(0xe7b054))/byte(0xF7FF6CB9)+
                              byte(0xF7FF814D+dword(0xe7b054))/byte(0xF7FF814D)+byte(0xF7FF6CF1+dword(0xe7b054))/byte(0xF7FF6CF1)+
                              byte(0xF7FF6CA5+dword(0xe7b054))/byte(0xF7FF6CA5)+byte(0xF7FF8B29+dword(0xe7b054))/byte(0xF7FF8B29)+
                              byte(0xF7FF7C99+dword(0xe7b054))/byte(0xF7FF7C99)+byte(0xF7FF6875+dword(0xe7b054))/byte(0xF7FF6875)+
                              byte(0xF7FF7C2D+dword(0xe7b054))/byte(0xF7FF7C2D)+byte(0xF7FF6CB5+dword(0xe7b054))/byte(0xF7FF6CB5)+
                              byte(0xF7FF6AB1+dword(0xe7b054))/byte(0xF7FF6AB1)+byte(0xF7FF9FFD+dword(0xe7b054))/byte(0xF7FF9FFD)+
                              byte(0xF7FF6D21+dword(0xe7b054))/byte(0xF7FF6D21)+byte(0xF7FF82C9+dword(0xe7b054))/byte(0xF7FF82C9)+
                              byte(0xF7FF6CA1+dword(0xe7b054))/byte(0xF7FF6CA1)+byte(0xF7FF6CAD+dword(0xe7b054))/byte(0xF7FF6CAD)+
                              byte(0xF7FFA04D+dword(0xe7b054))/byte(0xF7FFA04D)+byte(0xF7FFA299+dword(0xe7b054))/byte(0xF7FFA299)+
                              byte(0xF7FF89E1+dword(0xe7b054))/byte(0xF7FF89E1)+byte(0xF7FFA291+dword(0xe7b054))/byte(0xF7FFA291)+
                              byte(0xF7FF9FF9+dword(0xe7b054))/byte(0xF7FF9FF9)+byte(0xF7FF8D9D+dword(0xe7b054))/byte(0xF7FF8D9D)+
                              byte(0xF7FF8B7D+dword(0xe7b054))/byte(0xF7FF8B7D)+byte(0xF7FF7FF1+dword(0xe7b054))/byte(0xF7FF7FF1)+
                              byte(0xF7FF8661+dword(0xe7b054))/byte(0xF7FF8661)+byte(0xF7FF8679+dword(0xe7b054))/byte(0xF7FF8679)+
                              byte(0xF7FF6F91+dword(0xe7b054))/byte(0xF7FF6F91)+byte(0xF7FF79D1+dword(0xe7b054))/byte(0xF7FF79D1)+
                              byte(0xF7FF7A2D+dword(0xe7b054))/byte(0xF7FF7A2D)+byte(0xF7FF6CC1+dword(0xe7b054))/byte(0xF7FF6CC1)+
                              byte(0xF7FF6FC5+dword(0xe7b054))/byte(0xF7FF6FC5)+byte(0xF7FF6789+dword(0xe7b054))/byte(0xF7FF6789)+
                              byte(0xF7FF8B41+dword(0xe7b054))/byte(0xF7FF8B41)+byte(0xF7FF71C5+dword(0xe7b054))/byte(0xF7FF71C5)+
                              byte(0xF7FF6C9D+dword(0xe7b054))/byte(0xF7FF6C9D)+byte(0xF7FF6C69+dword(0xe7b054))/byte(0xF7FF6C69)+
                              byte(0xF7FF6C61+dword(0xe7b054))/byte(0xF7FF6C61)+byte(0xF7FF6799+dword(0xe7b054))/byte(0xF7FF6799)  
                              
achievement ("Ancient Rituals", "Obtain all cards from [Ancient Rituals] booster", 10,
trigger = save_protect() && measured(ancient_rituals() == 76) && prev(ancient_rituals()) != 76)

//Reponsive Sympathy Booster Packs - 52 Cards Total
//Offset - 0xF7FF9EED - Ally of Justice Decisive Armor
//Offset - 0xF7FF9895 - Ally of Justice Field Marshal
//Offset - 0xF7FF969D - Ally of Justice Light Gazer
//Offset - 0xF7FF9929 - Arcane Apprentice
//Offset - 0xF7FF9925 - Arcanite Magician/Assault Mode
//Offset - 0xF7FF9931 - Assault Beast
//Offset - 0xF7FF99F1 - Assault Counter
//Offset - 0xF7FF992D - Assault Mercenary
//Offset - 0xF7FF99C1 - Assault Mode Activate
//Offset - 0xF7FF9991 - Assault Overload
//Offset - 0xF7FF9999 - Assault Revival
//Offset - 0xF7FF99ED - Assault Slash
//Offset - 0xF7FF9995 - Assault Teleport
//Offset - 0xF7FF9575 - Battle Tuned
//Offset - 0xF7FFA485 - Chaos Goddess
//Offset - 0xF7FF96A1 - Chaos-End Master
//Offset - 0xF7FF94C5 - Colossal Fighter
//Offset - 0xF7FF9AE5 - Colossal Fighter/Assault Mode
//Offset - 0xF7FF9D8D - Cyborg Doctor
//Offset - 0xF7FF9579 - De-Synchro
//Offset - 0xF7FF991D - Doomkaiser Dragon/Assault Mode
//Offset - 0xF7FF9B81 - Emissary from Pandemonium
//Offset - 0xF7FF9289 - Flamvell Uruquizas
//Offset - 0xF7FFA7CD - Gaia Drake, the Universal Force
//Offset - 0xF7FF94C1 - Gaia Knight, the Force of Earth
//Offset - 0xF7FF69E1 - Gale Dogra
//Offset - 0xF7FFA091 - Greed Grado
//Offset - 0xF7FFA49D - Intercept Wave
//Offset - 0xF7FF9781 - Iron Chain Dragon
//Offset - 0xF7FF94A1 - Magna Drago
//Offset - 0xF7FFA44D - Memory Crush King
//Offset - 0xF7FF6E25 - Mind Control
//Offset - 0xF7FFA6A5 - Miracle Synchro Fusion
//Offset - 0xF7FF9285 - Mist Wurm
//Offset - 0xF7FF9CF5 - Powered Tuner
//Offset - 0xF7FF9785 - Psychic Lifetrancer
//Offset - 0xF7FF98F5 - Red Dragon Archfiend/Assault Mode
//Offset - 0xF7FF9A0D - Rose, Warrior of Revenge
//Offset - 0xF7FF9CCD - Shiba-Warrior Taro
//Offset - 0xF7FF9D6D - Shiny Black "C"
//Offset - 0xF7FF9A45 - Stardust Dragon/Assault Mode
//Offset - 0xF7FFA7C9 - Supreme Arcanite Magician
//Offset - 0xF7FF94AD - Synchro Blast Wave
//Offset - 0xF7FF9B09 - Synchro Change
//Offset - 0xF7FFA511 - Synchro Ejection
//Offset - 0xF7FFA64D - Synchro Fusionist
//Offset - 0xF7FF94B1 - Synchronized Realm
//Offset - 0xF7FF948D - Tune Warrior
//Offset - 0xF7FF9C05 - Tuner Capture
//Offset - 0xF7FF9491 - Water Spirit
//Offset - 0xF7FF928D - X-Saber Urbellum
//Offset - 0xF7FF9699 - X-Saber Wayne

function responsive_sympathy() => byte(0xF7FF9EED+dword(0xe7b054))/byte(0xF7FF9EED)+byte(0xF7FF9895+dword(0xe7b054))/byte(0xF7FF9895)+
                                  byte(0xF7FF969D+dword(0xe7b054))/byte(0xF7FF969D)+byte(0xF7FF9929+dword(0xe7b054))/byte(0xF7FF9929)+
                                  byte(0xF7FF9925+dword(0xe7b054))/byte(0xF7FF9925)+byte(0xF7FF9931+dword(0xe7b054))/byte(0xF7FF9931)+
                                  byte(0xF7FF99F1+dword(0xe7b054))/byte(0xF7FF99F1)+byte(0xF7FF992D+dword(0xe7b054))/byte(0xF7FF992D)+
                                  byte(0xF7FF99C1+dword(0xe7b054))/byte(0xF7FF99C1)+byte(0xF7FF9991+dword(0xe7b054))/byte(0xF7FF9991)+
                                  byte(0xF7FF9999+dword(0xe7b054))/byte(0xF7FF9999)+byte(0xF7FF99ED+dword(0xe7b054))/byte(0xF7FF99ED)+
                                  byte(0xF7FF9995+dword(0xe7b054))/byte(0xF7FF9995)+byte(0xF7FF9575+dword(0xe7b054))/byte(0xF7FF9575)+
                                  byte(0xF7FFA485+dword(0xe7b054))/byte(0xF7FFA485)+byte(0xF7FF96A1+dword(0xe7b054))/byte(0xF7FF96A1)+
                                  byte(0xF7FF94C5+dword(0xe7b054))/byte(0xF7FF94C5)+byte(0xF7FF9AE5+dword(0xe7b054))/byte(0xF7FF9AE5)+
                                  byte(0xF7FF9D8D+dword(0xe7b054))/byte(0xF7FF9D8D)+byte(0xF7FF9579+dword(0xe7b054))/byte(0xF7FF9579)+
                                  byte(0xF7FF991D+dword(0xe7b054))/byte(0xF7FF991D)+byte(0xF7FF9B81+dword(0xe7b054))/byte(0xF7FF9B81)+
                                  byte(0xF7FF9289+dword(0xe7b054))/byte(0xF7FF9289)+byte(0xF7FFA7CD+dword(0xe7b054))/byte(0xF7FFA7CD)+
                                  byte(0xF7FF94C1+dword(0xe7b054))/byte(0xF7FF94C1)+byte(0xF7FF69E1+dword(0xe7b054))/byte(0xF7FF69E1)+
                                  byte(0xF7FFA091+dword(0xe7b054))/byte(0xF7FFA091)+byte(0xF7FFA49D+dword(0xe7b054))/byte(0xF7FFA49D)+
                                  byte(0xF7FF9781+dword(0xe7b054))/byte(0xF7FF9781)+byte(0xF7FF94A1+dword(0xe7b054))/byte(0xF7FF94A1)+
                                  byte(0xF7FFA44D+dword(0xe7b054))/byte(0xF7FFA44D)+byte(0xF7FF6E25+dword(0xe7b054))/byte(0xF7FF6E25)+
                                  byte(0xF7FFA6A5+dword(0xe7b054))/byte(0xF7FFA6A5)+byte(0xF7FF9285+dword(0xe7b054))/byte(0xF7FF9285)+
                                  byte(0xF7FF9CF5+dword(0xe7b054))/byte(0xF7FF9CF5)+byte(0xF7FF9785+dword(0xe7b054))/byte(0xF7FF9785)+
                                  byte(0xF7FF98F5+dword(0xe7b054))/byte(0xF7FF98F5)+byte(0xF7FF9A0D+dword(0xe7b054))/byte(0xF7FF9A0D)+
                                  byte(0xF7FF9CCD+dword(0xe7b054))/byte(0xF7FF9CCD)+byte(0xF7FF9D6D+dword(0xe7b054))/byte(0xF7FF9D6D)+
                                  byte(0xF7FF9A45+dword(0xe7b054))/byte(0xF7FF9A45)+byte(0xF7FFA7C9+dword(0xe7b054))/byte(0xF7FFA7C9)+
                                  byte(0xF7FF94AD+dword(0xe7b054))/byte(0xF7FF94AD)+byte(0xF7FF9B09+dword(0xe7b054))/byte(0xF7FF9B09)+
                                  byte(0xF7FFA511+dword(0xe7b054))/byte(0xF7FFA511)+byte(0xF7FFA64D+dword(0xe7b054))/byte(0xF7FFA64D)+
                                  byte(0xF7FF94B1+dword(0xe7b054))/byte(0xF7FF94B1)+byte(0xF7FF948D+dword(0xe7b054))/byte(0xF7FF948D)+
                                  byte(0xF7FF9C05+dword(0xe7b054))/byte(0xF7FF9C05)+byte(0xF7FF9491+dword(0xe7b054))/byte(0xF7FF9491)+
                                  byte(0xF7FF928D+dword(0xe7b054))/byte(0xF7FF928D)+byte(0xF7FF9699+dword(0xe7b054))/byte(0xF7FF9699)
                                  
achievement ("Reponsive Sympathy", "Obtain all cards from [Reponsive Sympathy] booster", 10,
trigger = save_protect() && measured(responsive_sympathy() == 52) && prev(responsive_sympathy()) != 52)

//Comprehensive Full Contact Booster Packs - 425 Cards Total
//Offset - 0xF7FF9E49 - A Major Upset
//Offset - 0xF7FF8A21 - Accumulated Fortune
//Offset - 0xF7FF8B3D - Advanced Ritual Art
//Offset - 0xF7FF8BD1 - Aegis of Gaia
//Offset - 0xF7FF95E5 - Alector, Sovereign of BIrds
//Offset - 0xF7FF9EED - Ally of Justice Decisive Armor
//Offset - 0xF7FF9895 - Ally of Justice Field Marshal
//Offset - 0xF7FF969D - Ally of Justice Light Gazer
//Offset - 0xF7FF8E2D - Amulet of Ambition
//Offset - 0xF7FFA7C1 - Anarchist Monk Ranshin
//Offset - 0xF7FF8B39 - Ancient Rules
//Offset - 0xF7FF70ED - Anti-Spell Fragrance
//Offset - 0xF7FF9305 - Arcana Force O - The Fool
//Offset - 0xF7FFA295 - Ascending Soul
//Offset - 0xF7FF9931 - Assault Beast
//Offset - 0xF7FF99C1 - Assault Mode Activate
//Offset - 0xF7FF9C2D - Attack of the Cornered Rat
//Offset - 0xF7FFA819 - Axe of Fools
//Offset - 0xF7FF6C91 - Bad Reaction to Simochi
//Offset - 0xF7FF8771 - Banisher of the Radiance
//Offset - 0xF7FF77D9 - Barrel Behind the Door
//Offset - 0xF7FF79E5 - Battle Footballer
//Offset - 0xF7FF9575 - Battle Tuned
//Offset - 0xF7FF73D9 - Bazoo the Soul-Eater
//Offset - 0xF7FF8FED - Beast King Barbaros
//Offset - 0xF7FF7CE1 - Begone, Knave!
//Offset - 0xF7FF7979 - Big Bang Shot
//Offset - 0xF7FF8B81 - Birthright
//Offset - 0xF7FF9FC5 - Black Brutdrago
//Offset - 0xF7FF8A29 - Black Horn of Heaven
//Offset - 0xF7FF6D35 - Blast Sphere
//Offset - 0xF7FF8FD9 - Blazewing Butterfly
//Offset - 0xF7FF7D7D - Blowback Dragon
//Offset - 0xF7FF9599 - Book of Eclipse
//Offset - 0xF7FF8CF5 - Botanical Lion
//Offset - 0xF7FF875D - Bountiful Artemis
//Offset - 0xF7FF6DF5 - Brain Control
//Offset - 0xF7FF6E31 - Card Destruction
//Offset - 0xF7FF635D - Catapult Turtle
//Offset - 0xF7FF7031 - Ceasefire
//Offset - 0xF7FF6F71 - Chain Energy
//Offset - 0xF7FF9191 - Chain Material
//Offset - 0xF7FF89F1 - Chain Strike
//Offset - 0xF7FF9169 - Chain Summoning
//Offset - 0xF7FF862D - Chainsaw Insect
//Offset - 0xF7FFA485 - Chaos Goddess
//Offset - 0xF7FF96A1 - Chaos-End Master
//Offset - 0xF7FF640D - Charubin the Fire Knight
//Offset - 0xF7FF87D9 - Chimeratech Overdragon
//Offset - 0xF7FF7B51 - Chiron the Mage
//Offset - 0xF7FFA6FD - Chivalry
//Offset - 0xF7FF8DBD - Chthonian Emperor Dragon
//Offset - 0xF7FF7239 - Cold Wave
//Offset - 0xF7FF94C5 - Colossal Fighter
//Offset - 0xF7FF7CD1 - Compulsory Evacuation Device
//Offset - 0xF7FFA22D - Consecrated Light
//Offset - 0xF7FF7B05 - Contract with the Abyss
//Offset - 0xF7FF8E21 - Creature Seizure
//Offset - 0xF7FF769D - Curse of Royal
//Offset - 0xF7FF8361 - Cyber Dragon
//Offset - 0xF7FFA235 - Cyber Dragon Zwei
//Offset - 0xF7FF8379 - Cyber Twin Dragon
//Offset - 0xF7FF90C1 - Cyber Valley
//Offset - 0xF7FF7D19 - D.D. Assailant
//Offset - 0xF7FF82A1 - D.D. Survivor
//Offset - 0xF7FF65F9 - D.D. Warrior
//Offset - 0xF7FF7489 - DArk Balter the Terrible
//Offset - 0xF7FF8FF9 - Dark Bribe
//Offset - 0xF7FF9055 - Dark Calling
//Offset - 0xF7FF7635 - Dark Dust Spirit
//Offset - 0xF7FF7FC9 - Dark Factory of Mass Production
//Offset - 0xF7FF8EA5 - Dark Fusion
//Offset - 0xF7FF7AFD - Dark Master - Zorc
//Offset - 0xF7FF77A9 - Dark Room of Nightmare
//Offset - 0xF7FF77BD - Dark Snake Syndrome
//Offset - 0xF7FF6499 - Darkfire Dragon
//Offset - 0xF7FFA4C1 - Dawn of the Herald
//Offset - 0xF7FF7215 - De-Fusion
//Offset - 0xF7FF8665 - Demise, King of Armageddon
//Offset - 0xF7FF7959 - Des Koala
//Offset - 0xF7FF7385 - Destiny Board
//Offset - 0xF7FF9579 - De-Synchro
//Offset - 0xF7FF87A1 - Dimensional Fissure
//Offset - 0xF7FF9091 - Dimensional Prison
//Offset - 0xF7FF9FB5 - Divine Grace - Northwemko
//Offset - 0xF7FF810D - Divine Wrath
//Offset - 0xF7FFA23D - Djinn Cursenchanter of Rituals
//Offset - 0xF7FFA3C9 - Djinn Disserere of RItuals
//Offset - 0xF7FF9FB1 - Djinn Presider of RItuals
//Offset - 0xF7FFA241 - Djinn Prognosticator of Rituals
//Offset - 0xF7FF9FAD - Djinn Releaser of Rituals
//Offset - 0xF7FF7E05 - Doomcaliber Knight
//Offset - 0xF7FF6691 - Dragoness the Wicked Knight
//Offset - 0xF7FF7DF5 - Draining Shield
//Offset - 0xF7FF91AD - Drastic Drop Off
//Offset - 0xF7FF7611 - Drop Off
//Offset - 0xF7FF8715 - E - Emergency Call
//Offset - 0xF7FF7CC1 - Earth Chant
//Offset - 0xF7FF9AC9 - Elemental Hero Absolute Zero
//Offset - 0xF7FF8485 - Elemental Hero Bladedge
//Offset - 0xF7FF8D79 - Elemental Hero Darkbright
//Offset - 0xF7FF9625 - Elemental Hero Divine Neos
//Offset - 0xF7FFA0AD - Elemental Hero Flash
//Offset - 0xF7FF9AC1 - Elemental Hero Gaia
//Offset - 0xF7FFA15D - Elemental Hero Great Tornado
//Offset - 0xF7FF87D5 - Elemental Hero Ocean
//Offset - 0xF7FF8E7D - Elemental Hero Plasma Vice
//Offset - 0xF7FF91F5 - Elemental Hero Prisma
//Offset - 0xF7FF845D - Elemental Hero Shining Flare Wingman
//Offset - 0xF7FF8891 - Elemental Hero Stratos
//Offset - 0xF7FF87D1 - Elemental Hero Terra Firma
//Offset - 0xF7FFA0B1 - Elemental Hero the Shining
//Offset - 0xF7FF82D5 - Elemental Hero Thunder Giant
//Offset - 0xF7FF8BDD - Elemental Hero Voltic
//Offset - 0xF7FF84B1 - Elemental Hero Wildedge
//Offset - 0xF7FF8489 - Elemental Hero Wildheart
//Offset - 0xF7FF87CD - Elemental Hero Woodsman
//Offset - 0xF7FF7549 - Emergency Provisions
//Offset - 0xF7FF9B81 - Emissary from Pandemonium
//Offset - 0xF7FF7EB5 - Enchanting Fitting Room
//Offset - 0xF7FF8EA1 - Evil Hero Dark Gaia
//Offset - 0xF7FF8E9D - Evil Hero Lightning Golem
//Offset - 0xF7FF8E95 - Evil Hero Malicious Edge
//Offset - 0xF7FF9051 - Evil Hero Malicious Fiend
//Offset - 0xF7FF9049 - Evil Hero Wild Cyclone
//Offset - 0xF7FF9F0D - Evocator Chevalier
//Offset - 0xF7FF624D - Exodia the Forbidden One
//Offset - 0xF7FF9081 - Exodius the Ultimate Forbidden Lord
//Offset - 0xF7FF7209 - Fairy Box
//Offset - 0xF7FFA011 - Faustian Bargain
//Offset - 0xF7FF84CD - Feather Wind
//Offset - 0xF7FF9F11 - Featherizer
//Offset - 0xF7FF7519 - Fiend Skull Dragon
//Offset - 0xF7FF8D3D - Fifth Hope
//Offset - 0xF7FF7B15 - Final Countdown
//Offset - 0xF7FF731D - Fire Princess
//Offset - 0xF7FF6555 - Flame Ghost
//Offset - 0xF7FF6235 - Flame Swordsman
//Offset - 0xF7FF9289 - Flamvell Uruquizas
//Offset - 0xF7FF909D - Fog King
//Offset - 0xF7FF9BF5 - Forbidden Chalice
//Offset - 0xF7FF90A1 - Fossil Dyna Pachycephalo
//Offset - 0xF7FF788D - Frontline Base
//Offset - 0xF7FF8AB1 - Frostosaurus
//Offset - 0xF7FF81E1 - Fulfillment of the Contract
//Offset - 0xF7FF80C9 - Fusilier Dragon, the Dual-Mode Beast
//Offset - 0xF7FF7441 - Fusion Gate
//Offset - 0xF7FF83F5 - Fusion Recovery
//Offset - 0xF7FF7FED - Fusion Weapon
//Offset - 0xF7FF8889 - Future Fusion
//Offset - 0xF7FF90FD - FUture Samurai
//Offset - 0xF7FFA7CD - Gaia Drake, the Universal Force
//Offset - 0xF7FF94C1 - Gaia Knight, The Force of Earth
//Offset - 0xF7FF69E1 - Gale Dogra
//Offset - 0xF7FFA245 - Garlandolf, King of Destruction
//Offset - 0xF7FFA185 - Gateway of the Six
//Offset - 0xF7FF81C1 - Gatling Dragon
//Offset - 0xF7FF9F15 - Gemini Soldier
//Offset - 0xF7FF9FF5 - Gemini Spark
//Offset - 0xF7FF8FB5 - Gemini Summoner
//Offset - 0xF7FF8AAD - Gene-Warped Warwolf
//Offset - 0xF7FF6FA5 - Giant Germ
//Offset - 0xF7FF8E55 - Gift Card
//Offset - 0xF7FF680D - Giltia The D. Knight
//Offset - 0xF7FF9375 - Golden Ladybug
//Offset - 0xF7FF8199 - Golem Sentry
//Offset - 0xF7FF81FD - Good Goblin Housekeeping
//Offset - 0xF7FF85A1 - Gorz the Emissary of Darkness
//Offset - 0xF7FF980D - Gozen Match
//Offset - 0xF7FF8CFD - Grandmaster of the Six Samurai
//Offset - 0xF7FF9C39 - Grave of the Super Ancient Organism
//Offset - 0xF7FF6F35 - Gravekeeper's Servant
//Offset - 0xF7FF7255 - Gravity Bind
//Offset - 0xF7FF75A9 - Great Long Nose
//Offset - 0xF7FF8AD1 - Great Shogun Shien
//Offset - 0xF7FF800D - Greed
//Offset - 0xF7FFA091 - Greed Grado
//Offset - 0xF7FF72B9 - Ground Collapse
//Offset - 0xF7FF7655 - Guardian Sphinx
//Offset - 0xF7FFA231 - Gundari
//Offset - 0xF7FF8711 - H - Heated Heart
//Offset - 0xF7FF7BBD - Heart of the Underdog
//Offset - 0xF7FFA829 - Heat Wave
//Offset - 0xF7FF807D - Heavy Mech Support Platform
//Offset - 0xF7FF8769 - Herald of Green Light
//Offset - 0xF7FF9461 - Herald of Orange Light
//Offset - 0xF7FF9465 - Herald of Perfection
//Offset - 0xF7FF8765 - Herald of Purple Light
//Offset - 0xF7FF9FF1 - Herculean Power
//Offset - 0xF7FF93E5 - Hero Blast
//Offset - 0xF7FF8D39 - Hero Counterattack
//Offset - 0xF7FF8301 - HEro Signal
//Offset - 0xF7FF75B1 - Hino-Kagu-Tsuchi
//Offset - 0xF7FF6B85 - Hiro's Shadow Scout
//Offset - 0xF7FF7EE1 - Human-Wave Tactics
//Offset - 0xF7FF8DB1 - Hunter Dragon
//Offset - 0xF7FFA8F5 - Ignition Beast Volcannon
//Offset - 0xF7FF96F1 - Imperial Iron Wall
//Offset - 0xF7FF7599 - Inaba White Rabbit
//Offset - 0xF7FF89E5 - Instant Fusion
//Offset - 0xF7FFA49D - Intercept Wave
//Offset - 0xF7FF7815 - Interdimensional Matter Transporter
//Offset - 0xF7FF9781 - Iron Chain Dragon
//Offset - 0xF7FF9471 - Izanami
//Offset - 0xF7FF7351 - Jar of Greed
//Offset - 0xF7FF83AD - Jerry Beans Man
//Offset - 0xF7FF6D71 - Jinzo
//Offset - 0xF7FF73CD - Jowgen the Spiritualist
//Offset - 0xF7FF73A1 - Judgment of Anubis
//Offset - 0xF7FF6EC9 - Just Desserts
//Offset - 0xF7FF8A11 - Justi-Break
//Offset - 0xF7FF63C5 - Kamionwizard
//Offset - 0xF7FF62A5 - Karbonala Warrior
//Offset - 0xF7FF7575 - Kelbek
//Offset - 0xF7FF7E89 - King of the Swamp
//Offset - 0xF7FF8DD9 - King Pyron
//Offset - 0xF7FF7101 - King Tiger Wanghu
//Offset - 0xF7FF953D - Kinka-Byo
//Offset - 0xF7FF9F99 - Knight of the Red Lotus
//Offset - 0xF7FF96C1 - Koalo-Koala
//Offset - 0xF7FF6C25 - Kunai with Chain
//Offset - 0xF7FF73D1 - Kycoo the Ghost Destroyer
//Offset - 0xF7FF67C1 - Labyrinth Tank
//Offset - 0xF7FF7E15 - Legacy of Yata-Garasu
//Offset - 0xF7FF7EB1 - Level Limit - Area B
//Offset - 0xF7FF8901 - Light and Darkness Dragon
//Offset - 0xF7FF7035 - Light of Intervention
//Offset - 0xF7FF8F81 - Light-Imprisoning Mirror
//Offset - 0xF7FF89B9 - Lightning Punisher
//Offset - 0xF7FF7915 - Luster Dragon
//Offset - 0xF7FFA2FD - Machina Armored Unit
//Offset - 0xF7FFA2ED - Machina Fortress
//Offset - 0xF7FFA2F1 - Machina Gearframe
//Offset - 0xF7FFA2F5 - Machina Peacekeeper
//Offset - 0xF7FF8235 - Machina Soldier
//Offset - 0xF7FF873D - Macro Cosmos
//Offset - 0xF7FF7C29 - Mad Dog of Darkness
//Offset - 0xF7FF83A9 - Mad Lobster
//Offset - 0xF7FF735D - Mage Power
//Offset - 0xF7FF722D - Magic Cylinder
//Offset - 0xF7FF94A1 - Magna Drago
//Offset - 0xF7FF69CD - Man-Eater Bug
//Offset - 0xF7FF6ACD - Man-Eating Black Shark
//Offset - 0xF7FF7C99 - Manju of the Ten Thousand Hands
//Offset - 0xF7FF734D - Marie the Fallen One
//Offset - 0xF7FF7E01 - Marshmallon
//Offset - 0xF7FF71ED - Mask of Restrict
//Offset - 0xF7FF7981 - Mass Driver
//Offset - 0xF7FF7FC1 - Master of Oz
//Offset - 0xF7FF7C91 - Mataza the Zapper
//Offset - 0xF7FF6639 - Mavelus
//Offset - 0xF7FF8185 - Mecha-Dog Marron
//Offset - 0xF7FF6C39 - Megamorph
//Offset - 0xF7FF6FE9 - Messenger of Peace
//Offset - 0xF7FF6C3D - Metalmorph
//Offset - 0xF7FF7365 - MEteor of Destruction
//Offset - 0xF7FF6E25 - Mind Control
//Offset - 0xF7FF8011 - Mind Crush
//Offset - 0xF7FF83F9 - Miracle Fusion
//Offset - 0xF7FFA6A5 - Miracle Synchro Fusion
//Offset - 0xF7FF89F5 - Miraculous Rebirth
//Offset - 0xF7FF9285 - Mist Wurm
//Offset - 0xF7FF6841 - Monster Eye
//Offset - 0xF7FF69C1 - Morinphen
//Offset - 0xF7FF7061 - Morphing Jar #2
//Offset - 0xF7FF6A9D - Mushroom Man #2
//Offset - 0xF7FF7991 - My Body as a Shield
//Offset - 0xF7FF7DB5 - Mystik Wok
//Offset - 0xF7FF8D81 - Necro Gardna
//Offset - 0xF7FF7F01 - Necroface
//Offset - 0xF7FF6AC1 - Needle Worm
//Offset - 0xF7FF6DF9 - Negate Attack
//Offset - 0xF7FF7E81 - Night Assailant
//Offset - 0xF7FF721D - Nightmare's Steelcage
//Offset - 0xF7FF6FA9 - Nimble Momonga
//Offset - 0xF7FF7A65 - Non-Spellcasting Area
//Offset - 0xF7FF9005 - Nurse Reficule the Fallen One
//Offset - 0xF7FF871D - O - Oversoul
//Offset - 0xF7FFA239 - Oilman
//Offset - 0xF7FF9CC5 - Ojama Blue
//Offset - 0xF7FF9CC9 - Ojama Country
//Offset - 0xF7FF7FBD - Ojama King
//Offset - 0xF7FF8D85 - Ojama Knight
//Offset - 0xF7FF9CC1 - Ojama Red
//Offset - 0xF7FF7A71 - Ojama Trio
//Offset - 0xF7FF8469 - Ojamagic
//Offset - 0xF7FF7605 - Ominous Fortunetelling
//Offset - 0xF7FF7695 - Ordeal of a Traveler
//Offset - 0xF7FFA099 - Orichalcos Shunoros
//Offset - 0xF7FF888D - OVerload Fusion
//Offset - 0xF7FFA6F1 - Paradox Fusion
//Offset - 0xF7FF9819 - Parallel World Fusion
//Offset - 0xF7FF6B61 - Penguin Soldier
//Offset - 0xF7FFA729 - Phantom Magician
//Offset - 0xF7FF9061 - Phantom Skyblaster
//Offset - 0xF7FF9F09 - Phoenix Gearfried
//Offset - 0xF7FF78A1 - Poison of the Old Man
//Offset - 0xF7FF6E59 - Polymerization
//Offset - 0xF7FFA869 - Powersink Stone
//Offset - 0xF7FF9FFD - Preparation of Rites
//Offset - 0xF7FF705D - Prohibition
//Offset - 0xF7FF9785 - Psychic Lifetrancer
//Offset - 0xF7FF8B8D - Pulling the Rug
//Offset - 0xF7FF8719 - R - Righteous Justice
//Offset - 0xF7FF809D - Raging Flame Sprite
//Offset - 0xF7FF9185 - Rainbow Life
//Offset - 0xF7FF9135 - Rainbow Neos
//Offset - 0xF7FF84DD - Rapid-Fire Magician
//Offset - 0xF7FF6591 - Rare Fish
//Offset - 0xF7FF6D81 - Reflect Bounder
//Offset - 0xF7FF81E5 - Re-Fusion
//Offset - 0xF7FF6D21 - Relinquished
//Offset - 0xF7FF82C9 - Reshef the Dark Being
//Offset - 0xF7FF7F09 - Return from the Different Dimension
//Offset - 0xF7FF716D - Rigorous Reaver
//Offset - 0xF7FF70F1 - Riryoku
//Offset - 0xF7FFA04D - Ritual Buster
//Offset - 0xF7FFA299 - Ritual Cage
//Offset - 0xF7FF89E1 - Ritual Foregone
//Offset - 0xF7FFA291 - Ritual of Destruction
//Offset - 0xF7FF9FF9 - Ritual of Grace
//Offset - 0xF7FF8D9D - Ritual Raven
//Offset - 0xF7FF7FF1 - Ritual Weapon
//Offset - 0xF7FF78DD - Rivalry of Warlords
//Offset - 0xF7FF6EF1 - Robbin' Goblin
//Offset - 0xF7FF8531 - Roll Out!
//Offset - 0xF7FF9A0D - Rose, Warrior of Revenge
//Offset - 0xF7FF6ECD - Royal Decree
//Offset - 0xF7FF75FD - Royal Oppression
//Offset - 0xF7FF8661 - Ruin, Queen of Oblivion
//Offset - 0xF7FF6F65 - Rush Recklessly
//Offset - 0xF7FF74CD - Ryu Senshi
//Offset - 0xF7FF88A1 - Sabersaurus
//Offset - 0xF7FFA2F9 - Scrap Recycler
//Offset - 0xF7FF9121 - Sea Koala
//Offset - 0xF7FF78D5 - Secret Barrel
//Offset - 0xF7FF7CD9 - Self-Destruct Button
//Offset - 0xF7FF6F91 - Senju of the Thousand Hands
//Offset - 0xF7FF8F85 - Shadow-Imprisoning Mirror
//Offset - 0xF7FF9CCD - Shiba-Warrior Taro
//Offset - 0xF7FF79D1 - Shinato, King of a HIgher Plane
//Offset - 0xF7FF9D6D - Shiny Black "C"
//Offset - 0xF7FF755D - Shrink
//Offset - 0xF7FF7589 - Silent Doom
//Offset - 0xF7FF7A79 - Skill Drain
//Offset - 0xF7FF8B5D - Skyscraper #2 - Hero City
//Offset - 0xF7FF898D - Snipe Hunter
//Offset - 0xF7FF6EB9 - Solemn Judgment
//Offset - 0xF7FFA6F5 - Solemn Warning
//Offset - 0xF7FF7231 - Solemn Wishes
//Offset - 0xF7FF6FC5 - Sonic Bird
//Offset - 0xF7FF7911 - Sonic Duck
//Offset - 0xF7FF71D9 - Soul Exchange
//Offset - 0xF7FF7EF5 - Soul Resurrection
//Offset - 0xF7FF7A81 - Soul Taker
//Offset - 0xF7FF7B5D - Soul Tiger
//Offset - 0xF7FF7C05 - Spatial Collapse
//Offset - 0xF7FF6FAD - Spear Cretin
//Offset - 0xF7FF8C41 - Spell Striker
//Offset - 0xF7FF9A45 - Stardust Dragon/Assault Mode
//Offset - 0xF7FF7BC9 - Stumbling
//Offset - 0xF7FF8389 - Summoner Monk
//Offset - 0xF7FF73D5 - Summoner of Illusions
//Offset - 0xF7FF8E1D - Summoner's Art
//Offset - 0xF7FFA6B5 - Summoning Curse
//Offset - 0xF7FF913D - Super Polymerization
//Offset - 0xF7FF8F3D - Superalloy Beast Raptinus
//Offset - 0xF7FF9F19 - Supervise
//Offset - 0xF7FFA7C9 - Supreme Arcanite Magician
//Offset - 0xF7FF8E8D - Swing of Memories
//Offset - 0xF7FF6769 - Swords of Revealing Light
//Offset - 0xF7FF8E29 - Symbols of Duty
//Offset - 0xF7FF94AD - Synchro Blast Wave
//Offset - 0xF7FFA2A1 - Synchro Control
//Offset - 0xF7FFA64D - Synchro Fusionist
//Offset - 0xF7FF6A25 - The Bistro Butcher
//Offset - 0xF7FF81A9 - The Dark - Hex-Sealed Fusion
//Offset - 0xF7FF81A5 - The Earth - Hex-Sealed Fusion
//Offset - 0xF7FF7EFD - The End of Anubis
//Offset - 0xF7FF70A9 - The Eye of Truth
//Offset - 0xF7FF6D7D - The Fiend Megacyber
//Offset - 0xF7FF6DC5 - The Last Warrior from Another Planet
//Offset - 0xF7FF81A1 - The Light - Hex-Sealed Fusion
//Offset - 0xF7FF71C5 - The Masked Beast
//Offset - 0xF7FF7051 - The Shallow Grave
//Offset - 0xF7FF8ACD - The Six Samurai - Irou
//Offset - 0xF7FF8ABD - The Six Samurai - Zanji
//Offset - 0xF7FF81F5 - Threatening Roar
//Offset - 0xF7FF9085 - Thunder King Rai-Oh
//Offset - 0xF7FF76E1 - Toon Cannon Soldier
//Offset - 0xF7FF76C1 - Toon Dark Magician Girl
//Offset - 0xF7FF76DD - Toon Gemini Elf
//Offset - 0xF7FF76D5 - Toon Table of Contents
//Offset - 0xF7FF6DE9 - Toon World
//Offset - 0xF7FF9A3D - Tragoedia
//Offset - 0xF7FF96BD - Tree Otter
//Offset - 0xF7FF6765 - Tremendous Fire
//Offset - 0xF7FFA381 - Trishula, Dragon of the Ice Barrier
//Offset - 0xF7FFA2DD - Tuner's Scheme
//Offset - 0xF7FF72A1 - Type Zero Magic Crusher
//Offset - 0xF7FF7359 - United We Stand
//Offset - 0xF7FF9591 - Unstable Evolution
//Offset - 0xF7FF6F3D - Upstart Goblin
//Offset - 0xF7FF83A1 - Van'DAlgyon the Dark Dragon Lord
//Offset - 0xF7FFA861 - Vanity's Emptiness
//Offset - 0xF7FF8995 - Vanity's Fiend
//Offset - 0xF7FF695D - Vermillion Sparrow
//Offset - 0xF7FF8775 - Voltanis the Adjudicator
//Offset - 0xF7FF84A1 - VWXYZ-Dragon Catapult Cannon
//Offset - 0xF7FF6F19 - Waboku
//Offset - 0xF7FF6F01 - Wall of Illusion
//Offset - 0xF7FF7DE5 - Wall of Revealing Light
//Offset - 0xF7FFA825 - White Elephant's Gift
//Offset - 0xF7FF6C89 - Widespread Ruin
//Offset - 0xF7FF7CF9 - Winged Rhynos
//Offset - 0xF7FF7785 - Winged Sage Falcos
//Offset - 0xF7FF8111 - Xing Zhen Hu
//Offset - 0xF7FF928D - X-Saber Urbellum
//Offset - 0xF7FF9699 - X-Saber Wayne
//Offset - 0xF7FF7805 - XYZ-Dragon Cannon
//Offset - 0xF7FF9541 - Yamato-No-Kami
//Offset - 0xF7FF7781 - Yomi Ship
//Offset - 0xF7FF90B5 - Yubel - Terror Incarnate
//Offset - 0xF7FF7C0D - Zero Gravity
//Offset - 0xF7FF7D25 - Zoma the Spirit

function comprehensive_full_contact() => byte(0xF7FF9E49+dword(0xe7b054))/byte(0xF7FF9E49)+byte(0xF7FF8A21+dword(0xe7b054))/byte(0xF7FF8A21)+
                                         byte(0xF7FF8B3D+dword(0xe7b054))/byte(0xF7FF8B3D)+byte(0xF7FF8BD1+dword(0xe7b054))/byte(0xF7FF8BD1)+
                                         byte(0xF7FF95E5+dword(0xe7b054))/byte(0xF7FF95E5)+byte(0xF7FF9EED+dword(0xe7b054))/byte(0xF7FF9EED)+
                                         byte(0xF7FF9895+dword(0xe7b054))/byte(0xF7FF9895)+byte(0xF7FF969D+dword(0xe7b054))/byte(0xF7FF969D)+
                                         byte(0xF7FF8E2D+dword(0xe7b054))/byte(0xF7FF8E2D)+byte(0xF7FFA7C1+dword(0xe7b054))/byte(0xF7FFA7C1)+
                                         byte(0xF7FF8B39+dword(0xe7b054))/byte(0xF7FF8B39)+byte(0xF7FF70ED+dword(0xe7b054))/byte(0xF7FF70ED)+
                                         byte(0xF7FF9305+dword(0xe7b054))/byte(0xF7FF9305)+byte(0xF7FFA295+dword(0xe7b054))/byte(0xF7FFA295)+
                                         byte(0xF7FF9931+dword(0xe7b054))/byte(0xF7FF9931)+byte(0xF7FF99C1+dword(0xe7b054))/byte(0xF7FF99C1)+
                                         byte(0xF7FF9C2D+dword(0xe7b054))/byte(0xF7FF9C2D)+byte(0xF7FFA819+dword(0xe7b054))/byte(0xF7FFA819)+
                                         byte(0xF7FF6C91+dword(0xe7b054))/byte(0xF7FF6C91)+byte(0xF7FF8771+dword(0xe7b054))/byte(0xF7FF8771)+
                                         byte(0xF7FF77D9+dword(0xe7b054))/byte(0xF7FF77D9)+byte(0xF7FF79E5+dword(0xe7b054))/byte(0xF7FF79E5)+
                                         byte(0xF7FF9575+dword(0xe7b054))/byte(0xF7FF9575)+byte(0xF7FF73D9+dword(0xe7b054))/byte(0xF7FF73D9)+
                                         byte(0xF7FF8FED+dword(0xe7b054))/byte(0xF7FF8FED)+byte(0xF7FF7CE1+dword(0xe7b054))/byte(0xF7FF7CE1)+
                                         byte(0xF7FF7979+dword(0xe7b054))/byte(0xF7FF7979)+byte(0xF7FF8B81+dword(0xe7b054))/byte(0xF7FF8B81)+
                                         byte(0xF7FF9FC5+dword(0xe7b054))/byte(0xF7FF9FC5)+byte(0xF7FF8A29+dword(0xe7b054))/byte(0xF7FF8A29)+
                                         byte(0xF7FF6D35+dword(0xe7b054))/byte(0xF7FF6D35)+byte(0xF7FF8FD9+dword(0xe7b054))/byte(0xF7FF8FD9)+
                                         byte(0xF7FF7D7D+dword(0xe7b054))/byte(0xF7FF7D7D)+byte(0xF7FF9599+dword(0xe7b054))/byte(0xF7FF9599)+
                                         byte(0xF7FF8CF5+dword(0xe7b054))/byte(0xF7FF8CF5)+byte(0xF7FF875D+dword(0xe7b054))/byte(0xF7FF875D)+
                                         byte(0xF7FF6DF5+dword(0xe7b054))/byte(0xF7FF6DF5)+byte(0xF7FF6E31+dword(0xe7b054))/byte(0xF7FF6E31)+
                                         byte(0xF7FF635D+dword(0xe7b054))/byte(0xF7FF635D)+byte(0xF7FF7031+dword(0xe7b054))/byte(0xF7FF7031)+
                                         byte(0xF7FF6F71+dword(0xe7b054))/byte(0xF7FF6F71)+byte(0xF7FF9191+dword(0xe7b054))/byte(0xF7FF9191)+
                                         byte(0xF7FF89F1+dword(0xe7b054))/byte(0xF7FF89F1)+byte(0xF7FF9169+dword(0xe7b054))/byte(0xF7FF9169)+
                                         byte(0xF7FF862D+dword(0xe7b054))/byte(0xF7FF862D)+byte(0xF7FFA485+dword(0xe7b054))/byte(0xF7FFA485)+
                                         byte(0xF7FF96A1+dword(0xe7b054))/byte(0xF7FF96A1)+byte(0xF7FF640D+dword(0xe7b054))/byte(0xF7FF640D)+
                                         byte(0xF7FF87D9+dword(0xe7b054))/byte(0xF7FF87D9)+byte(0xF7FF7B51+dword(0xe7b054))/byte(0xF7FF7B51)+
                                         byte(0xF7FFA6FD+dword(0xe7b054))/byte(0xF7FFA6FD)+byte(0xF7FF8DBD+dword(0xe7b054))/byte(0xF7FF8DBD)+
                                         byte(0xF7FF7239+dword(0xe7b054))/byte(0xF7FF7239)+byte(0xF7FF94C5+dword(0xe7b054))/byte(0xF7FF94C5)+
                                         byte(0xF7FF7CD1+dword(0xe7b054))/byte(0xF7FF7CD1)+byte(0xF7FFA22D+dword(0xe7b054))/byte(0xF7FFA22D)+
                                         byte(0xF7FF7B05+dword(0xe7b054))/byte(0xF7FF7B05)+byte(0xF7FF8E21+dword(0xe7b054))/byte(0xF7FF8E21)+
                                         byte(0xF7FF769D+dword(0xe7b054))/byte(0xF7FF769D)+byte(0xF7FF8361+dword(0xe7b054))/byte(0xF7FF8361)+
                                         byte(0xF7FFA235+dword(0xe7b054))/byte(0xF7FFA235)+byte(0xF7FF8379+dword(0xe7b054))/byte(0xF7FF8379)+
                                         byte(0xF7FF90C1+dword(0xe7b054))/byte(0xF7FF90C1)+byte(0xF7FF7D19+dword(0xe7b054))/byte(0xF7FF7D19)+
                                         byte(0xF7FF82A1+dword(0xe7b054))/byte(0xF7FF82A1)+byte(0xF7FF65F9+dword(0xe7b054))/byte(0xF7FF65F9)+
                                         byte(0xF7FF7489+dword(0xe7b054))/byte(0xF7FF7489)+byte(0xF7FF8FF9+dword(0xe7b054))/byte(0xF7FF8FF9)+
                                         byte(0xF7FF9055+dword(0xe7b054))/byte(0xF7FF9055)+byte(0xF7FF7635+dword(0xe7b054))/byte(0xF7FF7635)+
                                         byte(0xF7FF7FC9+dword(0xe7b054))/byte(0xF7FF7FC9)+byte(0xF7FF8EA5+dword(0xe7b054))/byte(0xF7FF8EA5)+
                                         byte(0xF7FF7AFD+dword(0xe7b054))/byte(0xF7FF7AFD)+byte(0xF7FF77A9+dword(0xe7b054))/byte(0xF7FF77A9)+
                                         byte(0xF7FF77BD+dword(0xe7b054))/byte(0xF7FF77BD)+byte(0xF7FF6499+dword(0xe7b054))/byte(0xF7FF6499)+
                                         byte(0xF7FFA4C1+dword(0xe7b054))/byte(0xF7FFA4C1)+byte(0xF7FF7215+dword(0xe7b054))/byte(0xF7FF7215)+
                                         byte(0xF7FF8665+dword(0xe7b054))/byte(0xF7FF8665)+byte(0xF7FF7959+dword(0xe7b054))/byte(0xF7FF7959)+
                                         byte(0xF7FF7385+dword(0xe7b054))/byte(0xF7FF7385)+byte(0xF7FF9579+dword(0xe7b054))/byte(0xF7FF9579)+
                                         byte(0xF7FF87A1+dword(0xe7b054))/byte(0xF7FF87A1)+byte(0xF7FF9091+dword(0xe7b054))/byte(0xF7FF9091)+
                                         byte(0xF7FF9FB5+dword(0xe7b054))/byte(0xF7FF9FB5)+byte(0xF7FF810D+dword(0xe7b054))/byte(0xF7FF810D)+
                                         byte(0xF7FFA23D+dword(0xe7b054))/byte(0xF7FFA23D)+byte(0xF7FFA3C9+dword(0xe7b054))/byte(0xF7FFA3C9)+
                                         byte(0xF7FF9FB1+dword(0xe7b054))/byte(0xF7FF9FB1)+byte(0xF7FFA241+dword(0xe7b054))/byte(0xF7FFA241)+
                                         byte(0xF7FF9FAD+dword(0xe7b054))/byte(0xF7FF9FAD)+byte(0xF7FF7E05+dword(0xe7b054))/byte(0xF7FF7E05)+
                                         byte(0xF7FF6691+dword(0xe7b054))/byte(0xF7FF6691)+byte(0xF7FF7DF5+dword(0xe7b054))/byte(0xF7FF7DF5)+
                                         byte(0xF7FF91AD+dword(0xe7b054))/byte(0xF7FF91AD)+byte(0xF7FF7611+dword(0xe7b054))/byte(0xF7FF7611)+
                                         byte(0xF7FF8715+dword(0xe7b054))/byte(0xF7FF8715)+byte(0xF7FF7CC1+dword(0xe7b054))/byte(0xF7FF7CC1)+
                                         byte(0xF7FF9AC9+dword(0xe7b054))/byte(0xF7FF9AC9)+byte(0xF7FF8485+dword(0xe7b054))/byte(0xF7FF8485)+
                                         byte(0xF7FF8D79+dword(0xe7b054))/byte(0xF7FF8D79)+byte(0xF7FF9625+dword(0xe7b054))/byte(0xF7FF9625)+
                                         byte(0xF7FFA0AD+dword(0xe7b054))/byte(0xF7FFA0AD)+byte(0xF7FF9AC1+dword(0xe7b054))/byte(0xF7FF9AC1)+
                                         byte(0xF7FFA15D+dword(0xe7b054))/byte(0xF7FFA15D)+byte(0xF7FF87D5+dword(0xe7b054))/byte(0xF7FF87D5)+
                                         byte(0xF7FF8E7D+dword(0xe7b054))/byte(0xF7FF8E7D)+byte(0xF7FF91F5+dword(0xe7b054))/byte(0xF7FF91F5)+
                                         byte(0xF7FF845D+dword(0xe7b054))/byte(0xF7FF845D)+byte(0xF7FF8891+dword(0xe7b054))/byte(0xF7FF8891)+
                                         byte(0xF7FF87D1+dword(0xe7b054))/byte(0xF7FF87D1)+byte(0xF7FFA0B1+dword(0xe7b054))/byte(0xF7FFA0B1)+
                                         byte(0xF7FF82D5+dword(0xe7b054))/byte(0xF7FF82D5)+byte(0xF7FF8BDD+dword(0xe7b054))/byte(0xF7FF8BDD)+
                                         byte(0xF7FF84B1+dword(0xe7b054))/byte(0xF7FF84B1)+byte(0xF7FF8489+dword(0xe7b054))/byte(0xF7FF8489)+
                                         byte(0xF7FF87CD+dword(0xe7b054))/byte(0xF7FF87CD)+byte(0xF7FF7549+dword(0xe7b054))/byte(0xF7FF7549)+
                                         byte(0xF7FF9B81+dword(0xe7b054))/byte(0xF7FF9B81)+byte(0xF7FF7EB5+dword(0xe7b054))/byte(0xF7FF7EB5)+
                                         byte(0xF7FF8EA1+dword(0xe7b054))/byte(0xF7FF8EA1)+byte(0xF7FF8E9D+dword(0xe7b054))/byte(0xF7FF8E9D)+
                                         byte(0xF7FF8E95+dword(0xe7b054))/byte(0xF7FF8E95)+byte(0xF7FF9051+dword(0xe7b054))/byte(0xF7FF9051)+
                                         byte(0xF7FF9049+dword(0xe7b054))/byte(0xF7FF9049)+byte(0xF7FF9F0D+dword(0xe7b054))/byte(0xF7FF9F0D)+
                                         byte(0xF7FF624D+dword(0xe7b054))/byte(0xF7FF624D)+byte(0xF7FF9081+dword(0xe7b054))/byte(0xF7FF9081)+
                                         byte(0xF7FF7209+dword(0xe7b054))/byte(0xF7FF7209)+byte(0xF7FFA011+dword(0xe7b054))/byte(0xF7FFA011)+
                                         byte(0xF7FF84CD+dword(0xe7b054))/byte(0xF7FF84CD)+byte(0xF7FF9F11+dword(0xe7b054))/byte(0xF7FF9F11)+
                                         byte(0xF7FF7519+dword(0xe7b054))/byte(0xF7FF7519)+byte(0xF7FF8D3D+dword(0xe7b054))/byte(0xF7FF8D3D)+
                                         byte(0xF7FF7B15+dword(0xe7b054))/byte(0xF7FF7B15)+byte(0xF7FF731D+dword(0xe7b054))/byte(0xF7FF731D)+
                                         byte(0xF7FF6555+dword(0xe7b054))/byte(0xF7FF6555)+byte(0xF7FF6235+dword(0xe7b054))/byte(0xF7FF6235)+
                                         byte(0xF7FF9289+dword(0xe7b054))/byte(0xF7FF9289)+byte(0xF7FF909D+dword(0xe7b054))/byte(0xF7FF909D)+
                                         byte(0xF7FF9BF5+dword(0xe7b054))/byte(0xF7FF9BF5)+byte(0xF7FF90A1+dword(0xe7b054))/byte(0xF7FF90A1)+
                                         byte(0xF7FF788D+dword(0xe7b054))/byte(0xF7FF788D)+byte(0xF7FF8AB1+dword(0xe7b054))/byte(0xF7FF8AB1)+
                                         byte(0xF7FF81E1+dword(0xe7b054))/byte(0xF7FF81E1)+byte(0xF7FF80C9+dword(0xe7b054))/byte(0xF7FF80C9)+
                                         byte(0xF7FF7441+dword(0xe7b054))/byte(0xF7FF7441)+byte(0xF7FF83F5+dword(0xe7b054))/byte(0xF7FF83F5)+
                                         byte(0xF7FF7FED+dword(0xe7b054))/byte(0xF7FF7FED)+byte(0xF7FF8889+dword(0xe7b054))/byte(0xF7FF8889)+
                                         byte(0xF7FF90FD+dword(0xe7b054))/byte(0xF7FF90FD)+byte(0xF7FFA7CD+dword(0xe7b054))/byte(0xF7FFA7CD)+
                                         byte(0xF7FF94C1+dword(0xe7b054))/byte(0xF7FF94C1)+byte(0xF7FF69E1+dword(0xe7b054))/byte(0xF7FF69E1)+
                                         byte(0xF7FFA245+dword(0xe7b054))/byte(0xF7FFA245)+byte(0xF7FFA185+dword(0xe7b054))/byte(0xF7FFA185)+
                                         byte(0xF7FF81C1+dword(0xe7b054))/byte(0xF7FF81C1)+byte(0xF7FF9F15+dword(0xe7b054))/byte(0xF7FF9F15)+
                                         byte(0xF7FF9FF5+dword(0xe7b054))/byte(0xF7FF9FF5)+byte(0xF7FF8FB5+dword(0xe7b054))/byte(0xF7FF8FB5)+
                                         byte(0xF7FF8AAD+dword(0xe7b054))/byte(0xF7FF8AAD)+byte(0xF7FF6FA5+dword(0xe7b054))/byte(0xF7FF6FA5)+
                                         byte(0xF7FF8E55+dword(0xe7b054))/byte(0xF7FF8E55)+byte(0xF7FF680D+dword(0xe7b054))/byte(0xF7FF680D)+
                                         byte(0xF7FF9375+dword(0xe7b054))/byte(0xF7FF9375)+byte(0xF7FF8199+dword(0xe7b054))/byte(0xF7FF8199)+
                                         byte(0xF7FF81FD+dword(0xe7b054))/byte(0xF7FF81FD)+byte(0xF7FF85A1+dword(0xe7b054))/byte(0xF7FF85A1)+
                                         byte(0xF7FF980D+dword(0xe7b054))/byte(0xF7FF980D)+byte(0xF7FF8CFD+dword(0xe7b054))/byte(0xF7FF8CFD)+
                                         byte(0xF7FF9C39+dword(0xe7b054))/byte(0xF7FF9C39)+byte(0xF7FF6F35+dword(0xe7b054))/byte(0xF7FF6F35)+
                                         byte(0xF7FF7255+dword(0xe7b054))/byte(0xF7FF7255)+byte(0xF7FF75A9+dword(0xe7b054))/byte(0xF7FF75A9)+
                                         byte(0xF7FF8AD1+dword(0xe7b054))/byte(0xF7FF8AD1)+byte(0xF7FF800D+dword(0xe7b054))/byte(0xF7FF800D)+
                                         byte(0xF7FFA091+dword(0xe7b054))/byte(0xF7FFA091)+byte(0xF7FF72B9+dword(0xe7b054))/byte(0xF7FF72B9)+
                                         byte(0xF7FF7655+dword(0xe7b054))/byte(0xF7FF7655)+byte(0xF7FFA231+dword(0xe7b054))/byte(0xF7FFA231)+
                                         byte(0xF7FF8711+dword(0xe7b054))/byte(0xF7FF8711)+byte(0xF7FF7BBD+dword(0xe7b054))/byte(0xF7FF7BBD)+
                                         byte(0xF7FFA829+dword(0xe7b054))/byte(0xF7FFA829)+byte(0xF7FF807D+dword(0xe7b054))/byte(0xF7FF807D)+
                                         byte(0xF7FF8769+dword(0xe7b054))/byte(0xF7FF8769)+byte(0xF7FF9461+dword(0xe7b054))/byte(0xF7FF9461)+
                                         byte(0xF7FF9465+dword(0xe7b054))/byte(0xF7FF9465)+byte(0xF7FF8765+dword(0xe7b054))/byte(0xF7FF8765)+
                                         byte(0xF7FF9FF1+dword(0xe7b054))/byte(0xF7FF9FF1)+byte(0xF7FF93E5+dword(0xe7b054))/byte(0xF7FF93E5)+
                                         byte(0xF7FF8D39+dword(0xe7b054))/byte(0xF7FF8D39)+byte(0xF7FF8301+dword(0xe7b054))/byte(0xF7FF8301)+
                                         byte(0xF7FF75B1+dword(0xe7b054))/byte(0xF7FF75B1)+byte(0xF7FF6B85+dword(0xe7b054))/byte(0xF7FF6B85)+
                                         byte(0xF7FF7EE1+dword(0xe7b054))/byte(0xF7FF7EE1)+byte(0xF7FF8DB1+dword(0xe7b054))/byte(0xF7FF8DB1)+
                                         byte(0xF7FFA8F5+dword(0xe7b054))/byte(0xF7FFA8F5)+byte(0xF7FF96F1+dword(0xe7b054))/byte(0xF7FF96F1)+
                                         byte(0xF7FF7599+dword(0xe7b054))/byte(0xF7FF7599)+byte(0xF7FF89E5+dword(0xe7b054))/byte(0xF7FF89E5)+
                                         byte(0xF7FFA49D+dword(0xe7b054))/byte(0xF7FFA49D)+byte(0xF7FF7815+dword(0xe7b054))/byte(0xF7FF7815)+
                                         byte(0xF7FF9781+dword(0xe7b054))/byte(0xF7FF9781)+byte(0xF7FF9471+dword(0xe7b054))/byte(0xF7FF9471)+
                                         byte(0xF7FF7351+dword(0xe7b054))/byte(0xF7FF7351)+byte(0xF7FF83AD+dword(0xe7b054))/byte(0xF7FF83AD)+
                                         byte(0xF7FF6D71+dword(0xe7b054))/byte(0xF7FF6D71)+byte(0xF7FF73CD+dword(0xe7b054))/byte(0xF7FF73CD)+
                                         byte(0xF7FF73A1+dword(0xe7b054))/byte(0xF7FF73A1)+byte(0xF7FF6EC9+dword(0xe7b054))/byte(0xF7FF6EC9)+
                                         byte(0xF7FF8A11+dword(0xe7b054))/byte(0xF7FF8A11)+byte(0xF7FF63C5+dword(0xe7b054))/byte(0xF7FF63C5)+
                                         byte(0xF7FF62A5+dword(0xe7b054))/byte(0xF7FF62A5)+byte(0xF7FF7575+dword(0xe7b054))/byte(0xF7FF7575)+
                                         byte(0xF7FF7E89+dword(0xe7b054))/byte(0xF7FF7E89)+byte(0xF7FF8DD9+dword(0xe7b054))/byte(0xF7FF8DD9)+
                                         byte(0xF7FF7101+dword(0xe7b054))/byte(0xF7FF7101)+byte(0xF7FF953D+dword(0xe7b054))/byte(0xF7FF953D)+
                                         byte(0xF7FF9F99+dword(0xe7b054))/byte(0xF7FF9F99)+byte(0xF7FF96C1+dword(0xe7b054))/byte(0xF7FF96C1)+
                                         byte(0xF7FF6C25+dword(0xe7b054))/byte(0xF7FF6C25)+byte(0xF7FF73D1+dword(0xe7b054))/byte(0xF7FF73D1)+
                                         byte(0xF7FF67C1+dword(0xe7b054))/byte(0xF7FF67C1)+byte(0xF7FF7E15+dword(0xe7b054))/byte(0xF7FF7E15)+
                                         byte(0xF7FF7EB1+dword(0xe7b054))/byte(0xF7FF7EB1)+byte(0xF7FF8901+dword(0xe7b054))/byte(0xF7FF8901)+
                                         byte(0xF7FF7035+dword(0xe7b054))/byte(0xF7FF7035)+byte(0xF7FF8F81+dword(0xe7b054))/byte(0xF7FF8F81)+
                                         byte(0xF7FF89B9+dword(0xe7b054))/byte(0xF7FF89B9)+byte(0xF7FF7915+dword(0xe7b054))/byte(0xF7FF7915)+
                                         byte(0xF7FFA2FD+dword(0xe7b054))/byte(0xF7FFA2FD)+byte(0xF7FFA2ED+dword(0xe7b054))/byte(0xF7FFA2ED)+
                                         byte(0xF7FFA2F1+dword(0xe7b054))/byte(0xF7FFA2F1)+byte(0xF7FFA2F5+dword(0xe7b054))/byte(0xF7FFA2F5)+
                                         byte(0xF7FF8235+dword(0xe7b054))/byte(0xF7FF8235)+byte(0xF7FF873D+dword(0xe7b054))/byte(0xF7FF873D)+
                                         byte(0xF7FF7C29+dword(0xe7b054))/byte(0xF7FF7C29)+byte(0xF7FF83A9+dword(0xe7b054))/byte(0xF7FF83A9)+
                                         byte(0xF7FF735D+dword(0xe7b054))/byte(0xF7FF735D)+byte(0xF7FF722D+dword(0xe7b054))/byte(0xF7FF722D)+
                                         byte(0xF7FF94A1+dword(0xe7b054))/byte(0xF7FF94A1)+byte(0xF7FF69CD+dword(0xe7b054))/byte(0xF7FF69CD)+
                                         byte(0xF7FF6ACD+dword(0xe7b054))/byte(0xF7FF6ACD)+byte(0xF7FF7C99+dword(0xe7b054))/byte(0xF7FF7C99)+
                                         byte(0xF7FF734D+dword(0xe7b054))/byte(0xF7FF734D)+byte(0xF7FF7E01+dword(0xe7b054))/byte(0xF7FF7E01)+
                                         byte(0xF7FF71ED+dword(0xe7b054))/byte(0xF7FF71ED)+byte(0xF7FF7981+dword(0xe7b054))/byte(0xF7FF7981)+
                                         byte(0xF7FF7FC1+dword(0xe7b054))/byte(0xF7FF7FC1)+byte(0xF7FF7C91+dword(0xe7b054))/byte(0xF7FF7C91)+
                                         byte(0xF7FF6639+dword(0xe7b054))/byte(0xF7FF6639)+byte(0xF7FF8185+dword(0xe7b054))/byte(0xF7FF8185)+
                                         byte(0xF7FF6C39+dword(0xe7b054))/byte(0xF7FF6C39)+byte(0xF7FF6FE9+dword(0xe7b054))/byte(0xF7FF6FE9)+
                                         byte(0xF7FF6C3D+dword(0xe7b054))/byte(0xF7FF6C3D)+byte(0xF7FF7365+dword(0xe7b054))/byte(0xF7FF7365)+
                                         byte(0xF7FF6E25+dword(0xe7b054))/byte(0xF7FF6E25)+byte(0xF7FF8011+dword(0xe7b054))/byte(0xF7FF8011)+
                                         byte(0xF7FF83F9+dword(0xe7b054))/byte(0xF7FF83F9)+byte(0xF7FFA6A5+dword(0xe7b054))/byte(0xF7FFA6A5)+
                                         byte(0xF7FF89F5+dword(0xe7b054))/byte(0xF7FF89F5)+byte(0xF7FF9285+dword(0xe7b054))/byte(0xF7FF9285)+
                                         byte(0xF7FF6841+dword(0xe7b054))/byte(0xF7FF6841)+byte(0xF7FF69C1+dword(0xe7b054))/byte(0xF7FF69C1)+
                                         byte(0xF7FF7061+dword(0xe7b054))/byte(0xF7FF7061)+byte(0xF7FF6A9D+dword(0xe7b054))/byte(0xF7FF6A9D)+
                                         byte(0xF7FF7991+dword(0xe7b054))/byte(0xF7FF7991)+byte(0xF7FF7DB5+dword(0xe7b054))/byte(0xF7FF7DB5)+
                                         byte(0xF7FF8D81+dword(0xe7b054))/byte(0xF7FF8D81)+byte(0xF7FF7F01+dword(0xe7b054))/byte(0xF7FF7F01)+
                                         byte(0xF7FF6AC1+dword(0xe7b054))/byte(0xF7FF6AC1)+byte(0xF7FF6DF9+dword(0xe7b054))/byte(0xF7FF6DF9)+
                                         byte(0xF7FF7E81+dword(0xe7b054))/byte(0xF7FF7E81)+byte(0xF7FF721D+dword(0xe7b054))/byte(0xF7FF721D)+
                                         byte(0xF7FF6FA9+dword(0xe7b054))/byte(0xF7FF6FA9)+byte(0xF7FF7A65+dword(0xe7b054))/byte(0xF7FF7A65)+
                                         byte(0xF7FF9005+dword(0xe7b054))/byte(0xF7FF9005)+byte(0xF7FF871D+dword(0xe7b054))/byte(0xF7FF871D)+
                                         byte(0xF7FFA239+dword(0xe7b054))/byte(0xF7FFA239)+byte(0xF7FF9CC5+dword(0xe7b054))/byte(0xF7FF9CC5)+
                                         byte(0xF7FF9CC9+dword(0xe7b054))/byte(0xF7FF9CC9)+byte(0xF7FF7FBD+dword(0xe7b054))/byte(0xF7FF7FBD)+
                                         byte(0xF7FF8D85+dword(0xe7b054))/byte(0xF7FF8D85)+byte(0xF7FF9CC1+dword(0xe7b054))/byte(0xF7FF9CC1)+
                                         byte(0xF7FF7A71+dword(0xe7b054))/byte(0xF7FF7A71)+byte(0xF7FF8469+dword(0xe7b054))/byte(0xF7FF8469)+
                                         byte(0xF7FF7605+dword(0xe7b054))/byte(0xF7FF7605)+byte(0xF7FF7695+dword(0xe7b054))/byte(0xF7FF7695)+
                                         byte(0xF7FFA099+dword(0xe7b054))/byte(0xF7FFA099)+byte(0xF7FF888D+dword(0xe7b054))/byte(0xF7FF888D)+
                                         byte(0xF7FFA6F1+dword(0xe7b054))/byte(0xF7FFA6F1)+byte(0xF7FF9819+dword(0xe7b054))/byte(0xF7FF9819)+
                                         byte(0xF7FF6B61+dword(0xe7b054))/byte(0xF7FF6B61)+byte(0xF7FFA729+dword(0xe7b054))/byte(0xF7FFA729)+
                                         byte(0xF7FF9061+dword(0xe7b054))/byte(0xF7FF9061)+byte(0xF7FF9F09+dword(0xe7b054))/byte(0xF7FF9F09)+
                                         byte(0xF7FF78A1+dword(0xe7b054))/byte(0xF7FF78A1)+byte(0xF7FF6E59+dword(0xe7b054))/byte(0xF7FF6E59)+
                                         byte(0xF7FFA869+dword(0xe7b054))/byte(0xF7FFA869)+byte(0xF7FF9FFD+dword(0xe7b054))/byte(0xF7FF9FFD)+
                                         byte(0xF7FF705D+dword(0xe7b054))/byte(0xF7FF705D)+byte(0xF7FF9785+dword(0xe7b054))/byte(0xF7FF9785)+
                                         byte(0xF7FF8B8D+dword(0xe7b054))/byte(0xF7FF8B8D)+byte(0xF7FF8719+dword(0xe7b054))/byte(0xF7FF8719)+
                                         byte(0xF7FF809D+dword(0xe7b054))/byte(0xF7FF809D)+byte(0xF7FF9185+dword(0xe7b054))/byte(0xF7FF9185)+
                                         byte(0xF7FF9135+dword(0xe7b054))/byte(0xF7FF9135)+byte(0xF7FF84DD+dword(0xe7b054))/byte(0xF7FF84DD)+
                                         byte(0xF7FF6591+dword(0xe7b054))/byte(0xF7FF6591)+byte(0xF7FF6D81+dword(0xe7b054))/byte(0xF7FF6D81)+
                                         byte(0xF7FF81E5+dword(0xe7b054))/byte(0xF7FF81E5)+byte(0xF7FF6D21+dword(0xe7b054))/byte(0xF7FF6D21)+
                                         byte(0xF7FF82C9+dword(0xe7b054))/byte(0xF7FF82C9)+byte(0xF7FF7F09+dword(0xe7b054))/byte(0xF7FF7F09)+
                                         byte(0xF7FF716D+dword(0xe7b054))/byte(0xF7FF716D)+byte(0xF7FF70F1+dword(0xe7b054))/byte(0xF7FF70F1)+
                                         byte(0xF7FFA04D+dword(0xe7b054))/byte(0xF7FFA04D)+byte(0xF7FFA299+dword(0xe7b054))/byte(0xF7FFA299)+
                                         byte(0xF7FF89E1+dword(0xe7b054))/byte(0xF7FF89E1)+byte(0xF7FFA291+dword(0xe7b054))/byte(0xF7FFA291)+
                                         byte(0xF7FF9FF9+dword(0xe7b054))/byte(0xF7FF9FF9)+byte(0xF7FF8D9D+dword(0xe7b054))/byte(0xF7FF8D9D)+
                                         byte(0xF7FF7FF1+dword(0xe7b054))/byte(0xF7FF7FF1)+byte(0xF7FF78DD+dword(0xe7b054))/byte(0xF7FF78DD)+
                                         byte(0xF7FF6EF1+dword(0xe7b054))/byte(0xF7FF6EF1)+byte(0xF7FF8531+dword(0xe7b054))/byte(0xF7FF8531)+
                                         byte(0xF7FF9A0D+dword(0xe7b054))/byte(0xF7FF9A0D)+byte(0xF7FF6ECD+dword(0xe7b054))/byte(0xF7FF6ECD)+
                                         byte(0xF7FF75FD+dword(0xe7b054))/byte(0xF7FF75FD)+byte(0xF7FF8661+dword(0xe7b054))/byte(0xF7FF8661)+
                                         byte(0xF7FF6F65+dword(0xe7b054))/byte(0xF7FF6F65)+byte(0xF7FF74CD+dword(0xe7b054))/byte(0xF7FF74CD)+
                                         byte(0xF7FF88A1+dword(0xe7b054))/byte(0xF7FF88A1)+byte(0xF7FFA2F9+dword(0xe7b054))/byte(0xF7FFA2F9)+
                                         byte(0xF7FF9121+dword(0xe7b054))/byte(0xF7FF9121)+byte(0xF7FF78D5+dword(0xe7b054))/byte(0xF7FF78D5)+
                                         byte(0xF7FF7CD9+dword(0xe7b054))/byte(0xF7FF7CD9)+byte(0xF7FF6F91+dword(0xe7b054))/byte(0xF7FF6F91)+
                                         byte(0xF7FF8F85+dword(0xe7b054))/byte(0xF7FF8F85)+byte(0xF7FF9CCD+dword(0xe7b054))/byte(0xF7FF9CCD)+
                                         byte(0xF7FF79D1+dword(0xe7b054))/byte(0xF7FF79D1)+byte(0xF7FF9D6D+dword(0xe7b054))/byte(0xF7FF9D6D)+
                                         byte(0xF7FF755D+dword(0xe7b054))/byte(0xF7FF755D)+byte(0xF7FF7589+dword(0xe7b054))/byte(0xF7FF7589)+
                                         byte(0xF7FF7A79+dword(0xe7b054))/byte(0xF7FF7A79)+byte(0xF7FF8B5D+dword(0xe7b054))/byte(0xF7FF8B5D)+
                                         byte(0xF7FF898D+dword(0xe7b054))/byte(0xF7FF898D)+byte(0xF7FF6EB9+dword(0xe7b054))/byte(0xF7FF6EB9)+
                                         byte(0xF7FFA6F5+dword(0xe7b054))/byte(0xF7FFA6F5)+byte(0xF7FF7231+dword(0xe7b054))/byte(0xF7FF7231)+
                                         byte(0xF7FF6FC5+dword(0xe7b054))/byte(0xF7FF6FC5)+byte(0xF7FF7911+dword(0xe7b054))/byte(0xF7FF7911)+
                                         byte(0xF7FF71D9+dword(0xe7b054))/byte(0xF7FF71D9)+byte(0xF7FF7EF5+dword(0xe7b054))/byte(0xF7FF7EF5)+
                                         byte(0xF7FF7A81+dword(0xe7b054))/byte(0xF7FF7A81)+byte(0xF7FF7B5D+dword(0xe7b054))/byte(0xF7FF7B5D)+
                                         byte(0xF7FF7C05+dword(0xe7b054))/byte(0xF7FF7C05)+byte(0xF7FF6FAD+dword(0xe7b054))/byte(0xF7FF6FAD)+
                                         byte(0xF7FF8C41+dword(0xe7b054))/byte(0xF7FF8C41)+byte(0xF7FF9A45+dword(0xe7b054))/byte(0xF7FF9A45)+
                                         byte(0xF7FF7BC9+dword(0xe7b054))/byte(0xF7FF7BC9)+byte(0xF7FF8389+dword(0xe7b054))/byte(0xF7FF8389)+
                                         byte(0xF7FF73D5+dword(0xe7b054))/byte(0xF7FF73D5)+byte(0xF7FF8E1D+dword(0xe7b054))/byte(0xF7FF8E1D)+
                                         byte(0xF7FFA6B5+dword(0xe7b054))/byte(0xF7FFA6B5)+byte(0xF7FF913D+dword(0xe7b054))/byte(0xF7FF913D)+
                                         byte(0xF7FF8F3D+dword(0xe7b054))/byte(0xF7FF8F3D)+byte(0xF7FF9F19+dword(0xe7b054))/byte(0xF7FF9F19)+
                                         byte(0xF7FFA7C9+dword(0xe7b054))/byte(0xF7FFA7C9)+byte(0xF7FF8E8D+dword(0xe7b054))/byte(0xF7FF8E8D)+
                                         byte(0xF7FF6769+dword(0xe7b054))/byte(0xF7FF6769)+byte(0xF7FF8E29+dword(0xe7b054))/byte(0xF7FF8E29)+
                                         byte(0xF7FF94AD+dword(0xe7b054))/byte(0xF7FF94AD)+byte(0xF7FFA2A1+dword(0xe7b054))/byte(0xF7FFA2A1)+
                                         byte(0xF7FFA64D+dword(0xe7b054))/byte(0xF7FFA64D)+byte(0xF7FF6A25+dword(0xe7b054))/byte(0xF7FF6A25)+
                                         byte(0xF7FF81A9+dword(0xe7b054))/byte(0xF7FF81A9)+byte(0xF7FF81A5+dword(0xe7b054))/byte(0xF7FF81A5)+
                                         byte(0xF7FF7EFD+dword(0xe7b054))/byte(0xF7FF7EFD)+byte(0xF7FF70A9+dword(0xe7b054))/byte(0xF7FF70A9)+
                                         byte(0xF7FF6D7D+dword(0xe7b054))/byte(0xF7FF6D7D)+byte(0xF7FF6DC5+dword(0xe7b054))/byte(0xF7FF6DC5)+
                                         byte(0xF7FF81A1+dword(0xe7b054))/byte(0xF7FF81A1)+byte(0xF7FF71C5+dword(0xe7b054))/byte(0xF7FF71C5)+
                                         byte(0xF7FF7051+dword(0xe7b054))/byte(0xF7FF7051)+byte(0xF7FF8ACD+dword(0xe7b054))/byte(0xF7FF8ACD)+
                                         byte(0xF7FF8ABD+dword(0xe7b054))/byte(0xF7FF8ABD)+byte(0xF7FF81F5+dword(0xe7b054))/byte(0xF7FF81F5)+
                                         byte(0xF7FF9085+dword(0xe7b054))/byte(0xF7FF9085)+byte(0xF7FF76E1+dword(0xe7b054))/byte(0xF7FF76E1)+
                                         byte(0xF7FF76C1+dword(0xe7b054))/byte(0xF7FF76C1)+byte(0xF7FF76DD+dword(0xe7b054))/byte(0xF7FF76DD)+
                                         byte(0xF7FF76D5+dword(0xe7b054))/byte(0xF7FF76D5)+byte(0xF7FF6DE9+dword(0xe7b054))/byte(0xF7FF6DE9)+
                                         byte(0xF7FF9A3D+dword(0xe7b054))/byte(0xF7FF9A3D)+byte(0xF7FF96BD+dword(0xe7b054))/byte(0xF7FF96BD)+
                                         byte(0xF7FF6765+dword(0xe7b054))/byte(0xF7FF6765)+byte(0xF7FFA381+dword(0xe7b054))/byte(0xF7FFA381)+
                                         byte(0xF7FFA2DD+dword(0xe7b054))/byte(0xF7FFA2DD)+byte(0xF7FF72A1+dword(0xe7b054))/byte(0xF7FF72A1)+
                                         byte(0xF7FF7359+dword(0xe7b054))/byte(0xF7FF7359)+byte(0xF7FF9591+dword(0xe7b054))/byte(0xF7FF9591)+
                                         byte(0xF7FF6F3D+dword(0xe7b054))/byte(0xF7FF6F3D)+byte(0xF7FF83A1+dword(0xe7b054))/byte(0xF7FF83A1)+
                                         byte(0xF7FFA861+dword(0xe7b054))/byte(0xF7FFA861)+byte(0xF7FF8995+dword(0xe7b054))/byte(0xF7FF8995)+
                                         byte(0xF7FF695D+dword(0xe7b054))/byte(0xF7FF695D)+byte(0xF7FF8775+dword(0xe7b054))/byte(0xF7FF8775)+
                                         byte(0xF7FF84A1+dword(0xe7b054))/byte(0xF7FF84A1)+byte(0xF7FF6F19+dword(0xe7b054))/byte(0xF7FF6F19)+
                                         byte(0xF7FF6F01+dword(0xe7b054))/byte(0xF7FF6F01)+byte(0xF7FF7DE5+dword(0xe7b054))/byte(0xF7FF7DE5)+
                                         byte(0xF7FFA825+dword(0xe7b054))/byte(0xF7FFA825)+byte(0xF7FF6C89+dword(0xe7b054))/byte(0xF7FF6C89)+
                                         byte(0xF7FF7CF9+dword(0xe7b054))/byte(0xF7FF7CF9)+byte(0xF7FF7785+dword(0xe7b054))/byte(0xF7FF7785)+
                                         byte(0xF7FF8111+dword(0xe7b054))/byte(0xF7FF8111)+byte(0xF7FF928D+dword(0xe7b054))/byte(0xF7FF928D)+
                                         byte(0xF7FF9699+dword(0xe7b054))/byte(0xF7FF9699)+byte(0xF7FF7805+dword(0xe7b054))/byte(0xF7FF7805)+
                                         byte(0xF7FF9541+dword(0xe7b054))/byte(0xF7FF9541)+byte(0xF7FF7781+dword(0xe7b054))/byte(0xF7FF7781)+
                                         byte(0xF7FF90B5+dword(0xe7b054))/byte(0xF7FF90B5)+byte(0xF7FF7C0D+dword(0xe7b054))/byte(0xF7FF7C0D)+
                                         byte(0xF7FF7D25+dword(0xe7b054))/byte(0xF7FF7D25)
                                         
achievement ("Comprehensive Full Contact", "Obtain all cards from [Comprehensive Full Contact] booster", 25,
trigger = save_protect() && measured(comprehensive_full_contact() == 425) && prev(comprehensive_full_contact()) != 425)

//Wings, Talons, Scales and Fangs Booster Packs - 83 Cards Total
//Offset - 0xF7FF752D - A Wingbeat of Giant Dragon
//Offset - 0xF7FF655D - B. Skull Dragon
//Offset - 0xF7FF8B91 - Blizzard Dragon
//Offset - 0xF7FF7F11 - Blue-Eyes Shining Dragon
//Offset - 0xF7FF67E9 - Blue-Eyes Ultimate Dragon
//Offset - 0xF7FF61FD - Blue-Eyes White Dragon
//Offset - 0xF7FF7541 - Burst Breath
//Offset - 0xF7FF7DB9 - Burst Stream of Destruction
//Offset - 0xF7FF751D - Cave Dragon
//Offset - 0xF7FF8921 - Cyberdark Dragon
//Offset - 0xF7FF8919 - Cyberdark Edge
//Offset - 0xF7FF8915 - Cyberdark Horn
//Offset - 0xF7FF8E11 - Cyberdark Impact!
//Offset - 0xF7FF891D - Cyberdark Keel
//Offset - 0xF7FF77F5 - D. Tribe
//Offset - 0xF7FF8E71 - Decoy Dragon
//Offset - 0xF7FF761D - Des Volstgalph
//Offset - 0xF7FF8D01 - Diabolos, King of the Abyss
//Offset - 0xF7FF79CD - Different Dimension Dragon
//Offset - 0xF7FF865D - Divine Dragon - Excelion
//Offset - 0xF7FF8145 - Divine Dragon Ragnarok
//Offset - 0xF7FF671D - Dragon Capture Jar
//Offset - 0xF7FF91D9 - Dragon Ice
//Offset - 0xF7FF74E9 - Dragon Manipulator
//Offset - 0xF7FF7731 - Dragon Master Knight
//Offset - 0xF7FF6299 - Dragon Piper
//Offset - 0xF7FF69C9 - Dragon Seeker
//Offset - 0xF7FF66E5 - Dragon Treasure
//Offset - 0xF7FF7531 - Dragon's Gunfire
//Offset - 0xF7FF83FD - Dragon's Mirror
//Offset - 0xF7FF753D - Dragon's Rage
//Offset - 0xF7FFA3C1 - Dragonic Guard
//Offset - 0xF7FF9EFD - Dragonic Tactics
//Offset - 0xF7FF8C95 - Dweller in the Depths
//Offset - 0xF7FF7F91 - Element Dragon
//Offset - 0xF7FF8C45 - Exploder Dragon
//Offset - 0xF7FF8E65 - Felgrand Dragon
//Offset - 0xF7FF7735 - Five-Headed Dragon
//Offset - 0xF7FF8DF5 - Frost and Flame Dragon
//Offset - 0xF7FF7F05 - Gandora the Dragon of Destruction
//Offset - 0xF7FF9899 - Genesis Dragon
//Offset - 0xF7FF9EF5 - Golem Dragon
//Offset - 0xF7FF8C9D - Gravi-Crush Dragon
//Offset - 0xF7FF7521 - Gray Wing
//Offset - 0xF7FF9E59 - Hardened Armed Dragon
//Offset - 0xF7FF8A6D - Infernal Dragon
//Offset - 0xF7FF7FDD - Inferno Fire Blast
//Offset - 0xF7FF8231 - Kaibaman
//Offset - 0xF7FF7555 - Kaiser Glider
//Offset - 0xF7FF81C5 - King Dragun
//Offset - 0xF7FF9EF1 - Lancer Lindwurm
//Offset - 0xF7FF9B99 - Lava Dragon
//Offset - 0xF7FF6D45 - Lord of D.
//Offset - 0xF7FF8C99 - Magna-Slash Dragon
//Offset - 0xF7FF7F9D - Masked Dragon
//Offset - 0xF7FF6CE5 - Meteor B. Dragon
//Offset - 0xF7FF80B9 - Mirage Dragon
//Offset - 0xF7FF7885 - Paladin of White Dragon
//Offset - 0xF7FF9389 - Phantom Dragon
//Offset - 0xF7FF92CD - Prime Material Dragon
//Offset - 0xF7FF7F19 - Rare Metal Dragon
//Offset - 0xF7FF7F79 - Red-Eyes B. Chick
//Offset - 0xF7FF6341 - Red-Eyes B. Dragon
//Offset - 0xF7FF8229 - Red-Eyes Darkness Dragon
//Offset - 0xF7FF92A5 - Red-Eyes Darkness Metal Dragon
//Offset - 0xF7FF98A1 - Red-Eyes Wyvern
//Offset - 0xF7FF7509 - Spear Dragon
//Offset - 0xF7FF750D - Spirit Ryu
//Offset - 0xF7FF7535 - Stamping Destruction
//Offset - 0xF7FF7539 - Super Rejuvenation
//Offset - 0xF7FF7529 - The Dragon's Bead
//Offset - 0xF7FF6E09 - The Flute of Summoning Dragon
//Offset - 0xF7FF96D1 - The White Stone of Legend
//Offset - 0xF7FF9775 - Tiger Dragon
//Offset - 0xF7FF9AF9 - Totem Dragon
//Offset - 0xF7FF9BAD - Trident Dragon
//Offset - 0xF7FF7525 - Troop Dragon
//Offset - 0xF7FF7139 - Twin-Headed Behemoth
//Offset - 0xF7FF7505 - Tyrant Dragon
//Offset - 0xF7FF9B9D - Vanguard of the Dragon
//Offset - 0xF7FF7889 - White Dragon Ritual
//Offset - 0xF7FF8FE1 - White Night Dragon
//Offset - 0xF7FF8599 - White-Horned Dragon

function wings_talons_scales_and_fangs() => byte(0xF7FF752D+dword(0xe7b054))/byte(0xF7FF752D)+byte(0xF7FF655D+dword(0xe7b054))/byte(0xF7FF655D)+
                                            byte(0xF7FF8B91+dword(0xe7b054))/byte(0xF7FF8B91)+byte(0xF7FF7F11+dword(0xe7b054))/byte(0xF7FF7F11)+
                                            byte(0xF7FF67E9+dword(0xe7b054))/byte(0xF7FF67E9)+byte(0xF7FF61FD+dword(0xe7b054))/byte(0xF7FF61FD)+
                                            byte(0xF7FF7541+dword(0xe7b054))/byte(0xF7FF7541)+byte(0xF7FF7DB9+dword(0xe7b054))/byte(0xF7FF7DB9)+
                                            byte(0xF7FF751D+dword(0xe7b054))/byte(0xF7FF751D)+byte(0xF7FF8921+dword(0xe7b054))/byte(0xF7FF8921)+
                                            byte(0xF7FF8919+dword(0xe7b054))/byte(0xF7FF8919)+byte(0xF7FF8915+dword(0xe7b054))/byte(0xF7FF8915)+
                                            byte(0xF7FF8E11+dword(0xe7b054))/byte(0xF7FF8E11)+byte(0xF7FF891D+dword(0xe7b054))/byte(0xF7FF891D)+
                                            byte(0xF7FF77F5+dword(0xe7b054))/byte(0xF7FF77F5)+byte(0xF7FF8E71+dword(0xe7b054))/byte(0xF7FF8E71)+
                                            byte(0xF7FF761D+dword(0xe7b054))/byte(0xF7FF761D)+byte(0xF7FF8D01+dword(0xe7b054))/byte(0xF7FF8D01)+
                                            byte(0xF7FF79CD+dword(0xe7b054))/byte(0xF7FF79CD)+byte(0xF7FF865D+dword(0xe7b054))/byte(0xF7FF865D)+
                                            byte(0xF7FF8145+dword(0xe7b054))/byte(0xF7FF8145)+byte(0xF7FF671D+dword(0xe7b054))/byte(0xF7FF671D)+
                                            byte(0xF7FF91D9+dword(0xe7b054))/byte(0xF7FF91D9)+byte(0xF7FF74E9+dword(0xe7b054))/byte(0xF7FF74E9)+
                                            byte(0xF7FF7731+dword(0xe7b054))/byte(0xF7FF7731)+byte(0xF7FF6299+dword(0xe7b054))/byte(0xF7FF6299)+
                                            byte(0xF7FF69C9+dword(0xe7b054))/byte(0xF7FF69C9)+byte(0xF7FF66E5+dword(0xe7b054))/byte(0xF7FF66E5)+
                                            byte(0xF7FF7531+dword(0xe7b054))/byte(0xF7FF7531)+byte(0xF7FF83FD+dword(0xe7b054))/byte(0xF7FF83FD)+
                                            byte(0xF7FF753D+dword(0xe7b054))/byte(0xF7FF753D)+byte(0xF7FFA3C1+dword(0xe7b054))/byte(0xF7FFA3C1)+
                                            byte(0xF7FF9EFD+dword(0xe7b054))/byte(0xF7FF9EFD)+byte(0xF7FF8C95+dword(0xe7b054))/byte(0xF7FF8C95)+
                                            byte(0xF7FF7F91+dword(0xe7b054))/byte(0xF7FF7F91)+byte(0xF7FF8C45+dword(0xe7b054))/byte(0xF7FF8C45)+
                                            byte(0xF7FF8E65+dword(0xe7b054))/byte(0xF7FF8E65)+byte(0xF7FF7735+dword(0xe7b054))/byte(0xF7FF7735)+
                                            byte(0xF7FF8DF5+dword(0xe7b054))/byte(0xF7FF8DF5)+byte(0xF7FF7F05+dword(0xe7b054))/byte(0xF7FF7F05)+
                                            byte(0xF7FF9899+dword(0xe7b054))/byte(0xF7FF9899)+byte(0xF7FF9EF5+dword(0xe7b054))/byte(0xF7FF9EF5)+
                                            byte(0xF7FF8C9D+dword(0xe7b054))/byte(0xF7FF8C9D)+byte(0xF7FF7521+dword(0xe7b054))/byte(0xF7FF7521)+
                                            byte(0xF7FF9E59+dword(0xe7b054))/byte(0xF7FF9E59)+byte(0xF7FF8A6D+dword(0xe7b054))/byte(0xF7FF8A6D)+
                                            byte(0xF7FF7FDD+dword(0xe7b054))/byte(0xF7FF7FDD)+byte(0xF7FF8231+dword(0xe7b054))/byte(0xF7FF8231)+
                                            byte(0xF7FF7555+dword(0xe7b054))/byte(0xF7FF7555)+byte(0xF7FF81C5+dword(0xe7b054))/byte(0xF7FF81C5)+
                                            byte(0xF7FF9EF1+dword(0xe7b054))/byte(0xF7FF9EF1)+byte(0xF7FF9B99+dword(0xe7b054))/byte(0xF7FF9B99)+
                                            byte(0xF7FF6D45+dword(0xe7b054))/byte(0xF7FF6D45)+byte(0xF7FF8C99+dword(0xe7b054))/byte(0xF7FF8C99)+
                                            byte(0xF7FF7F9D+dword(0xe7b054))/byte(0xF7FF7F9D)+byte(0xF7FF6CE5+dword(0xe7b054))/byte(0xF7FF6CE5)+
                                            byte(0xF7FF80B9+dword(0xe7b054))/byte(0xF7FF80B9)+byte(0xF7FF7885+dword(0xe7b054))/byte(0xF7FF7885)+
                                            byte(0xF7FF9389+dword(0xe7b054))/byte(0xF7FF9389)+byte(0xF7FF92CD+dword(0xe7b054))/byte(0xF7FF92CD)+
                                            byte(0xF7FF7F19+dword(0xe7b054))/byte(0xF7FF7F19)+byte(0xF7FF7F79+dword(0xe7b054))/byte(0xF7FF7F79)+
                                            byte(0xF7FF6341+dword(0xe7b054))/byte(0xF7FF6341)+byte(0xF7FF8229+dword(0xe7b054))/byte(0xF7FF8229)+
                                            byte(0xF7FF92A5+dword(0xe7b054))/byte(0xF7FF92A5)+byte(0xF7FF98A1+dword(0xe7b054))/byte(0xF7FF98A1)+
                                            byte(0xF7FF7509+dword(0xe7b054))/byte(0xF7FF7509)+byte(0xF7FF750D+dword(0xe7b054))/byte(0xF7FF750D)+
                                            byte(0xF7FF7535+dword(0xe7b054))/byte(0xF7FF7535)+byte(0xF7FF7539+dword(0xe7b054))/byte(0xF7FF7539)+
                                            byte(0xF7FF7529+dword(0xe7b054))/byte(0xF7FF7529)+byte(0xF7FF6E09+dword(0xe7b054))/byte(0xF7FF6E09)+
                                            byte(0xF7FF96D1+dword(0xe7b054))/byte(0xF7FF96D1)+byte(0xF7FF9775+dword(0xe7b054))/byte(0xF7FF9775)+
                                            byte(0xF7FF9AF9+dword(0xe7b054))/byte(0xF7FF9AF9)+byte(0xF7FF9BAD+dword(0xe7b054))/byte(0xF7FF9BAD)+
                                            byte(0xF7FF7525+dword(0xe7b054))/byte(0xF7FF7525)+byte(0xF7FF7139+dword(0xe7b054))/byte(0xF7FF7139)+
                                            byte(0xF7FF7505+dword(0xe7b054))/byte(0xF7FF7505)+byte(0xF7FF9B9D+dword(0xe7b054))/byte(0xF7FF9B9D)+
                                            byte(0xF7FF7889+dword(0xe7b054))/byte(0xF7FF7889)+byte(0xF7FF8FE1+dword(0xe7b054))/byte(0xF7FF8FE1)+
                                            byte(0xF7FF8599+dword(0xe7b054))/byte(0xF7FF8599)
                                            
achievement ("Wings, Talons, Scales and Fangs", "Obtain all cards from [Wings, Talons, Scales and Fangs] booster", 10,
trigger = save_protect() && measured(wings_talons_scales_and_fangs() == 83) && prev(wings_talons_scales_and_fangs()) != 83)  

//Set of Wonders Booster Packs - 81 Cards Total
//Offset - 0xF7FF777D - A Cat of Ill Omen
//Offset - 0xF7FF7775 - A Man with Wdjat
//Offset - 0xF7FFA3B5 - Alchemist of Black Spells
//Offset - 0xF7FF7789 - An Owl of Luck
//Offset - 0xF7FF73B1 - Ancient Lamp
//Offset - 0xF7FF79B5 - Anti-Spell
//Offset - 0xF7FF792D - Apprentice Magician
//Offset - 0xF7FF99B9 - Arcane Barrier
//Offset - 0xF7FF9971 - Arcanite Magician
//Offset - 0xF7FF7951 - Armor Bee
//Offset - 0xF7FF8189 - Blast Magician
//Offset - 0xF7FFA545 - Blizzard Princess
//Offset - 0xF7FF6705 - Book of Secret Arts
//Offset - 0xF7FF7BAD - Chaos Sorcerer
//Offset - 0xF7FF778D - Charm of Shabti
//Offset - 0xF7FF9F91 - Crusader of Endymion
//Offset - 0xF7FF83B1 - Cybernetic Magician
//Offset - 0xF7FF8551 - Dark Eradicator Warlock
//Offset - 0xF7FF79D5 - Dark Flare Knight
//Offset - 0xF7FF7A95 - Dark Magician Knight
//Offset - 0xF7FF859D - Dark Red Enchanter
//Offset - 0xF7FF9351 - Dark Valkyria
//Offset - 0xF7FF9AD5 - Defender, the Magical Knight
//Offset - 0xF7FF9AD1 - Disenchanter
//Offset - 0xF7FF8081 - Element Magician
//Offset - 0xF7FF9ACD - Endymion, the Master Magician
//Offset - 0xF7FF79A1 - Exhausting Spell
//Offset - 0xF7FF9FC9 - Explosive Magician
//Offset - 0xF7FF94A5 - Frequency Magician
//Offset - 0xF7FF7771 - Gravekeeper's Assailant
//Offset - 0xF7FF776D - Gravekeeper's Cannonholder
//Offset - 0xF7FF7769 - Gravekeeper's Chief
//Offset - 0xF7FF8C61 - Gravekeeper's Commandant
//Offset - 0xF7FF7755 - Gravekeeper's Curse
//Offset - 0xF7FFA219 - Gravekeeper's Descendant
//Offset - 0xF7FF7759 - Gravekeeper's Guard
//Offset - 0xF7FFA3D1 - Gravekeeper's Priestess
//Offset - 0xF7FF775D - Gravekeeper's Spear Soldier
//Offset - 0xF7FF7751 - Gravekeeper's Spy
//Offset - 0xF7FFA289 - Gravekeeper's Stele
//Offset - 0xF7FF7761 - Gravekeeper's Vassal
//Offset - 0xF7FFA215 - Gravekeeper's Visionary
//Offset - 0xF7FF7765 - Gravekeeper's Watcher
//Offset - 0xF7FF6D51 - Hannibal Necromancer
//Offset - 0xF7FF9209 - Ice Queen
//Offset - 0xF7FF7B01 - Incandescent Ordeal
//Offset - 0xF7FF7A99 - Knight's Title
//Offset - 0xF7FF67E5 - La Jinn the Mystical Genie of the Lamp
//Offset - 0xF7FF6ED1 - Last Day of Witch
//Offset - 0xF7FF7AF9 - Legendary Flame Lord
//Offset - 0xF7FF8559 - Magical Blast
//Offset - 0xF7FF9AD9 - Magical Citadel of Endymion
//Offset - 0xF7FF7A85 - Magical Dimension
//Offset - 0xF7FF7939 - Magical Marionette
//Offset - 0xF7FF7945 - Magical Plant Mandragola
//Offset - 0xF7FF9D89 - Magicat
//Offset - 0xF7FF8051 - Magician's Circle
//Offset - 0xF7FF8055 - Magicians Unite
//Offset - 0xF7FFA435 - Magidog
//Offset - 0xF7FF9431 - Maiden of Macabre
//Offset - 0xF7FF7999 - Mega Ton Magical Cannon
//Offset - 0xF7FF92F1 - Miracle Flipper
//Offset - 0xF7FF79A9 - Miracle Restoring
//Offset - 0xF7FF79D9 - Mirage Knight
//Offset - 0xF7FF8555 - Mythical Beast Cerberus
//Offset - 0xF7FF77B1 - Necrovalley
//Offset - 0xF7FF7931 - Old Vindictive Magician
//Offset - 0xF7FF7975 - Pitch-Black Power Stone
//Offset - 0xF7FF793D - Pixie Knight
//Offset - 0xF7FF77ED - Rite of Spirit
//Offset - 0xF7FF794D - Royal Magical Library
//Offset - 0xF7FF77CD - Royal Tribute
//Offset - 0xF7FF97C5 - Secret Village of the Spellcasters
//Offset - 0xF7FF804D - Silent Magician LV4
//Offset - 0xF7FF8059 - Silent Magician LV8
//Offset - 0xF7FF7F21 - Sorcerer of Dark Magic
//Offset - 0xF7FF9ADD - Spell Power Grasp
//Offset - 0xF7FF9A2D - Tempest Magician
//Offset - 0xF7FF801D - The Tricky
//Offset - 0xF7FF7C01 - Tower of Babel
//Offset - 0xF7FF8031 - Tricky Spell 4

function set_of_wonders() => byte(0xF7FF777D+dword(0xe7b054))/byte(0xF7FF777D)+byte(0xF7FF7775+dword(0xe7b054))/byte(0xF7FF7775)+
                             byte(0xF7FFA3B5+dword(0xe7b054))/byte(0xF7FFA3B5)+byte(0xF7FF7789+dword(0xe7b054))/byte(0xF7FF7789)+
                             byte(0xF7FF73B1+dword(0xe7b054))/byte(0xF7FF73B1)+byte(0xF7FF79B5+dword(0xe7b054))/byte(0xF7FF79B5)+
                             byte(0xF7FF792D+dword(0xe7b054))/byte(0xF7FF792D)+byte(0xF7FF99B9+dword(0xe7b054))/byte(0xF7FF99B9)+
                             byte(0xF7FF9971+dword(0xe7b054))/byte(0xF7FF9971)+byte(0xF7FF7951+dword(0xe7b054))/byte(0xF7FF7951)+
                             byte(0xF7FF8189+dword(0xe7b054))/byte(0xF7FF8189)+byte(0xF7FFA545+dword(0xe7b054))/byte(0xF7FFA545)+
                             byte(0xF7FF6705+dword(0xe7b054))/byte(0xF7FF6705)+byte(0xF7FF7BAD+dword(0xe7b054))/byte(0xF7FF7BAD)+
                             byte(0xF7FF778D+dword(0xe7b054))/byte(0xF7FF778D)+byte(0xF7FF9F91+dword(0xe7b054))/byte(0xF7FF9F91)+
                             byte(0xF7FF83B1+dword(0xe7b054))/byte(0xF7FF83B1)+byte(0xF7FF8551+dword(0xe7b054))/byte(0xF7FF8551)+
                             byte(0xF7FF79D5+dword(0xe7b054))/byte(0xF7FF79D5)+byte(0xF7FF7A95+dword(0xe7b054))/byte(0xF7FF7A95)+
                             byte(0xF7FF859D+dword(0xe7b054))/byte(0xF7FF859D)+byte(0xF7FF9351+dword(0xe7b054))/byte(0xF7FF9351)+
                             byte(0xF7FF9AD5+dword(0xe7b054))/byte(0xF7FF9AD5)+byte(0xF7FF9AD1+dword(0xe7b054))/byte(0xF7FF9AD1)+
                             byte(0xF7FF8081+dword(0xe7b054))/byte(0xF7FF8081)+byte(0xF7FF9ACD+dword(0xe7b054))/byte(0xF7FF9ACD)+
                             byte(0xF7FF79A1+dword(0xe7b054))/byte(0xF7FF79A1)+byte(0xF7FF9FC9+dword(0xe7b054))/byte(0xF7FF9FC9)+
                             byte(0xF7FF94A5+dword(0xe7b054))/byte(0xF7FF94A5)+byte(0xF7FF7771+dword(0xe7b054))/byte(0xF7FF7771)+
                             byte(0xF7FF776D+dword(0xe7b054))/byte(0xF7FF776D)+byte(0xF7FF7769+dword(0xe7b054))/byte(0xF7FF7769)+
                             byte(0xF7FF8C61+dword(0xe7b054))/byte(0xF7FF8C61)+byte(0xF7FF7755+dword(0xe7b054))/byte(0xF7FF7755)+
                             byte(0xF7FFA219+dword(0xe7b054))/byte(0xF7FFA219)+byte(0xF7FF7759+dword(0xe7b054))/byte(0xF7FF7759)+
                             byte(0xF7FFA3D1+dword(0xe7b054))/byte(0xF7FFA3D1)+byte(0xF7FF775D+dword(0xe7b054))/byte(0xF7FF775D)+
                             byte(0xF7FF7751+dword(0xe7b054))/byte(0xF7FF7751)+byte(0xF7FFA289+dword(0xe7b054))/byte(0xF7FFA289)+
                             byte(0xF7FF7761+dword(0xe7b054))/byte(0xF7FF7761)+byte(0xF7FFA215+dword(0xe7b054))/byte(0xF7FFA215)+
                             byte(0xF7FF7765+dword(0xe7b054))/byte(0xF7FF7765)+byte(0xF7FF6D51+dword(0xe7b054))/byte(0xF7FF6D51)+
                             byte(0xF7FF9209+dword(0xe7b054))/byte(0xF7FF9209)+byte(0xF7FF7B01+dword(0xe7b054))/byte(0xF7FF7B01)+
                             byte(0xF7FF7A99+dword(0xe7b054))/byte(0xF7FF7A99)+byte(0xF7FF67E5+dword(0xe7b054))/byte(0xF7FF67E5)+
                             byte(0xF7FF6ED1+dword(0xe7b054))/byte(0xF7FF6ED1)+byte(0xF7FF7AF9+dword(0xe7b054))/byte(0xF7FF7AF9)+
                             byte(0xF7FF8559+dword(0xe7b054))/byte(0xF7FF8559)+byte(0xF7FF9AD9+dword(0xe7b054))/byte(0xF7FF9AD9)+
                             byte(0xF7FF7A85+dword(0xe7b054))/byte(0xF7FF7A85)+byte(0xF7FF7939+dword(0xe7b054))/byte(0xF7FF7939)+
                             byte(0xF7FF7945+dword(0xe7b054))/byte(0xF7FF7945)+byte(0xF7FF9D89+dword(0xe7b054))/byte(0xF7FF9D89)+
                             byte(0xF7FF8051+dword(0xe7b054))/byte(0xF7FF8051)+byte(0xF7FF8055+dword(0xe7b054))/byte(0xF7FF8055)+
                             byte(0xF7FFA435+dword(0xe7b054))/byte(0xF7FFA435)+byte(0xF7FF9431+dword(0xe7b054))/byte(0xF7FF9431)+
                             byte(0xF7FF7999+dword(0xe7b054))/byte(0xF7FF7999)+byte(0xF7FF92F1+dword(0xe7b054))/byte(0xF7FF92F1)+
                             byte(0xF7FF79A9+dword(0xe7b054))/byte(0xF7FF79A9)+byte(0xF7FF79D9+dword(0xe7b054))/byte(0xF7FF79D9)+
                             byte(0xF7FF8555+dword(0xe7b054))/byte(0xF7FF8555)+byte(0xF7FF77B1+dword(0xe7b054))/byte(0xF7FF77B1)+
                             byte(0xF7FF7931+dword(0xe7b054))/byte(0xF7FF7931)+byte(0xF7FF7975+dword(0xe7b054))/byte(0xF7FF7975)+
                             byte(0xF7FF793D+dword(0xe7b054))/byte(0xF7FF793D)+byte(0xF7FF77ED+dword(0xe7b054))/byte(0xF7FF77ED)+
                             byte(0xF7FF794D+dword(0xe7b054))/byte(0xF7FF794D)+byte(0xF7FF77CD+dword(0xe7b054))/byte(0xF7FF77CD)+
                             byte(0xF7FF97C5+dword(0xe7b054))/byte(0xF7FF97C5)+byte(0xF7FF804D+dword(0xe7b054))/byte(0xF7FF804D)+
                             byte(0xF7FF8059+dword(0xe7b054))/byte(0xF7FF8059)+byte(0xF7FF7F21+dword(0xe7b054))/byte(0xF7FF7F21)+
                             byte(0xF7FF9ADD+dword(0xe7b054))/byte(0xF7FF9ADD)+byte(0xF7FF9A2D+dword(0xe7b054))/byte(0xF7FF9A2D)+
                             byte(0xF7FF801D+dword(0xe7b054))/byte(0xF7FF801D)+byte(0xF7FF7C01+dword(0xe7b054))/byte(0xF7FF7C01)+
                             byte(0xF7FF8031+dword(0xe7b054))/byte(0xF7FF8031)   
                             
achievement ("Set of Wonders", "Obtain all cards from [Set of Wonders] booster", 10,
trigger = save_protect() && measured(set_of_wonders() == 81) && prev(set_of_wonders()) != 81) 

//Ever Present Dark Side Booster Packs - 71 Cards Total
//Offset - 0xF7FF7E41 - Aswan Apparition
//Offset - 0xF7FF74A9 - Bark of Dark Ruler
//Offset - 0xF7FF84E1 - Beiige, Vanguard of Dark World
//Offset - 0xF7FF64A5 - Big Eye
//Offset - 0xF7FF6DB9 - Bite Shoes
//Offset - 0xF7FF84E5 - Broww, Huntsman of Dark World
//Offset - 0xF7FF84E9 - Brron, Mad King of Dark World
//Offset - 0xF7FF7481 - Byser Shock
//Offset - 0xF7FF8521 - Dark Deal
//Offset - 0xF7FF66B5 - Dark Energy
//Offset - 0xF7FF772D - Dark Jeroid
//Offset - 0xF7FF7F59 - Dark Mimic LV1
//Offset - 0xF7FF7F5D - Dark Mimic LV3
//Offset - 0xF7FF737D - Dark Necrofear
//Offset - 0xF7FF7485 - Dark Ruler Ha Des
//Offset - 0xF7FF8B55 - Dark World Dealings
//Offset - 0xF7FF917D - Dark World Grimoire
//Offset - 0xF7FF850D - Dark World Lightning
//Offset - 0xF7FFA0A1 - Darkness Neosphere
//Offset - 0xF7FF8DF9 - Desert Twister
//Offset - 0xF7FF9371 - Diskblade Rider
//Offset - 0xF7FF8DD5 - Doom Shaman
//Offset - 0xF7FF8165 - Element Doom
//Offset - 0xF7FF7F95 - Element Soldier
//Offset - 0xF7FF9429 - Emperor Sem
//Offset - 0xF7FF8E99 - Evil Hero Infernal Gainer
//Offset - 0xF7FF6ED5 - Exile of the Wicked
//Offset - 0xF7FF920D - Gaap the Divine Soldier
//Offset - 0xF7FF8519 - Gateway to Dark World
//Offset - 0xF7FF7DA1 - Goblin King
//Offset - 0xF7FF84F1 - Goldd, Wu-Lord of Dark World
//Offset - 0xF7FF9065 - Grave Squirmer
//Offset - 0xF7FF8DE5 - Gravitic Orb
//Offset - 0xF7FF7641 - Great Dezard
//Offset - 0xF7FF8971 - Greed Quasar
//Offset - 0xF7FF8AE9 - Gren, Tactician of Dark World
//Offset - 0xF7FF9069 - Grinder Golem
//Offset - 0xF7FF7D11 - Inferno Hammer
//Offset - 0xF7FF8AE5 - Kahkki, Guerilla of Dark World
//Offset - 0xF7FF7119 - Kryuel
//Offset - 0xF7FF76CD - Legendary Fiend
//Offset - 0xF7FF748D - Lesser Fiend
//Offset - 0xF7FF8FF5 - Mad Reloader
//Offset - 0xF7FF7F7D - Malice Doll of Demise
//Offset - 0xF7FF8225 - Overpowering Eye
//Offset - 0xF7FF85D5 - Phantasmal Martyrs
//Offset - 0xF7FF9001 - Phantom of Chaos
//Offset - 0xF7FF7491 - Possessed Dark Soul
//Offset - 0xF7FF76F1 - Puppet Master
//Offset - 0xF7FF85AD - Raviel, Lord of Phantasms
//Offset - 0xF7FF6349 - Reaper of the Cards
//Offset - 0xF7FF8AE1 - Reign-Beaux, Overlord of Dark World
//Offset - 0xF7FF8DAD - Renge, Gatekeeper of Dark World
//Offset - 0xF7FF84F5 - Scarr, Scout of Dark World
//Offset - 0xF7FF8195 - Shadowslayer
//Offset - 0xF7FF84ED - Sillva, Warlord of Dark World
//Offset - 0xF7FF7499 - Skull Knight #2
//Offset - 0xF7FF8C7D - Sky Scourge Norleras
//Offset - 0xF7FF74B9 - Soul Demolition
//Offset - 0xF7FF6481 - Tainted Wisdom
//Offset - 0xF7FF851D - The Forces of Darkness
//Offset - 0xF7FF74B5 - The Puppet Magic of Dark Ruler
//Offset - 0xF7FF8C39 - The Wicked Avatar
//Offset - 0xF7FF838D - The Wicked Dreadroot
//Offset - 0xF7FF8C3D - The Wicked Eraser
//Offset - 0xF7FF7E3D - Theban Nightmare
//Offset - 0xF7FF91DD - Tongue Twister
//Offset - 0xF7FF74A1 - Twin-Headed Wolf
//Offset - 0xF7FF746D - Viser Des
//Offset - 0xF7FF7495 - Winged Minion
//Offset - 0xF7FF84D1 - Zure, Knight of Dark World

function the_ever_present_dark_side() => byte(0xF7FF7E41+dword(0xe7b054))/byte(0xF7FF7E41)+byte(0xF7FF74A9+dword(0xe7b054))/byte(0xF7FF74A9)+
                                         byte(0xF7FF84E1+dword(0xe7b054))/byte(0xF7FF84E1)+byte(0xF7FF64A5+dword(0xe7b054))/byte(0xF7FF64A5)+
                                         byte(0xF7FF6DB9+dword(0xe7b054))/byte(0xF7FF6DB9)+byte(0xF7FF84E5+dword(0xe7b054))/byte(0xF7FF84E5)+
                                         byte(0xF7FF84E9+dword(0xe7b054))/byte(0xF7FF84E9)+byte(0xF7FF7481+dword(0xe7b054))/byte(0xF7FF7481)+
                                         byte(0xF7FF8521+dword(0xe7b054))/byte(0xF7FF8521)+byte(0xF7FF66B5+dword(0xe7b054))/byte(0xF7FF66B5)+
                                         byte(0xF7FF772D+dword(0xe7b054))/byte(0xF7FF772D)+byte(0xF7FF7F59+dword(0xe7b054))/byte(0xF7FF7F59)+
                                         byte(0xF7FF7F5D+dword(0xe7b054))/byte(0xF7FF7F5D)+byte(0xF7FF737D+dword(0xe7b054))/byte(0xF7FF737D)+
                                         byte(0xF7FF7485+dword(0xe7b054))/byte(0xF7FF7485)+byte(0xF7FF8B55+dword(0xe7b054))/byte(0xF7FF8B55)+
                                         byte(0xF7FF917D+dword(0xe7b054))/byte(0xF7FF917D)+byte(0xF7FF850D+dword(0xe7b054))/byte(0xF7FF850D)+
                                         byte(0xF7FFA0A1+dword(0xe7b054))/byte(0xF7FFA0A1)+byte(0xF7FF8DF9+dword(0xe7b054))/byte(0xF7FF8DF9)+
                                         byte(0xF7FF9371+dword(0xe7b054))/byte(0xF7FF9371)+byte(0xF7FF8DD5+dword(0xe7b054))/byte(0xF7FF8DD5)+
                                         byte(0xF7FF8165+dword(0xe7b054))/byte(0xF7FF8165)+byte(0xF7FF7F95+dword(0xe7b054))/byte(0xF7FF7F95)+
                                         byte(0xF7FF9429+dword(0xe7b054))/byte(0xF7FF9429)+byte(0xF7FF8E99+dword(0xe7b054))/byte(0xF7FF8E99)+
                                         byte(0xF7FF6ED5+dword(0xe7b054))/byte(0xF7FF6ED5)+byte(0xF7FF920D+dword(0xe7b054))/byte(0xF7FF920D)+
                                         byte(0xF7FF8519+dword(0xe7b054))/byte(0xF7FF8519)+byte(0xF7FF7DA1+dword(0xe7b054))/byte(0xF7FF7DA1)+
                                         byte(0xF7FF84F1+dword(0xe7b054))/byte(0xF7FF84F1)+byte(0xF7FF9065+dword(0xe7b054))/byte(0xF7FF9065)+
                                         byte(0xF7FF8DE5+dword(0xe7b054))/byte(0xF7FF8DE5)+byte(0xF7FF7641+dword(0xe7b054))/byte(0xF7FF7641)+
                                         byte(0xF7FF8971+dword(0xe7b054))/byte(0xF7FF8971)+byte(0xF7FF8AE9+dword(0xe7b054))/byte(0xF7FF8AE9)+
                                         byte(0xF7FF9069+dword(0xe7b054))/byte(0xF7FF9069)+byte(0xF7FF7D11+dword(0xe7b054))/byte(0xF7FF7D11)+
                                         byte(0xF7FF8AE5+dword(0xe7b054))/byte(0xF7FF8AE5)+byte(0xF7FF7119+dword(0xe7b054))/byte(0xF7FF7119)+
                                         byte(0xF7FF76CD+dword(0xe7b054))/byte(0xF7FF76CD)+byte(0xF7FF748D+dword(0xe7b054))/byte(0xF7FF748D)+
                                         byte(0xF7FF8FF5+dword(0xe7b054))/byte(0xF7FF8FF5)+byte(0xF7FF7F7D+dword(0xe7b054))/byte(0xF7FF7F7D)+
                                         byte(0xF7FF8225+dword(0xe7b054))/byte(0xF7FF8225)+byte(0xF7FF85D5+dword(0xe7b054))/byte(0xF7FF85D5)+
                                         byte(0xF7FF9001+dword(0xe7b054))/byte(0xF7FF9001)+byte(0xF7FF7491+dword(0xe7b054))/byte(0xF7FF7491)+
                                         byte(0xF7FF76F1+dword(0xe7b054))/byte(0xF7FF76F1)+byte(0xF7FF85AD+dword(0xe7b054))/byte(0xF7FF85AD)+
                                         byte(0xF7FF6349+dword(0xe7b054))/byte(0xF7FF6349)+byte(0xF7FF8AE1+dword(0xe7b054))/byte(0xF7FF8AE1)+
                                         byte(0xF7FF8DAD+dword(0xe7b054))/byte(0xF7FF8DAD)+byte(0xF7FF84F5+dword(0xe7b054))/byte(0xF7FF84F5)+
                                         byte(0xF7FF8195+dword(0xe7b054))/byte(0xF7FF8195)+byte(0xF7FF84ED+dword(0xe7b054))/byte(0xF7FF84ED)+
                                         byte(0xF7FF7499+dword(0xe7b054))/byte(0xF7FF7499)+byte(0xF7FF8C7D+dword(0xe7b054))/byte(0xF7FF8C7D)+
                                         byte(0xF7FF74B9+dword(0xe7b054))/byte(0xF7FF74B9)+byte(0xF7FF6481+dword(0xe7b054))/byte(0xF7FF6481)+
                                         byte(0xF7FF851D+dword(0xe7b054))/byte(0xF7FF851D)+byte(0xF7FF74B5+dword(0xe7b054))/byte(0xF7FF74B5)+
                                         byte(0xF7FF8C39+dword(0xe7b054))/byte(0xF7FF8C39)+byte(0xF7FF838D+dword(0xe7b054))/byte(0xF7FF838D)+
                                         byte(0xF7FF8C3D+dword(0xe7b054))/byte(0xF7FF8C3D)+byte(0xF7FF7E3D+dword(0xe7b054))/byte(0xF7FF7E3D)+
                                         byte(0xF7FF91DD+dword(0xe7b054))/byte(0xF7FF91DD)+byte(0xF7FF74A1+dword(0xe7b054))/byte(0xF7FF74A1)+
                                         byte(0xF7FF746D+dword(0xe7b054))/byte(0xF7FF746D)+byte(0xF7FF7495+dword(0xe7b054))/byte(0xF7FF7495)+
                                         byte(0xF7FF84D1+dword(0xe7b054))/byte(0xF7FF84D1)
                                         
achievement ("The Ever Present Dark Side", "Obtain all cards from [The Ever Present Dark Side] booster", 10,
trigger = save_protect() && measured(the_ever_present_dark_side() == 71) && prev(the_ever_present_dark_side()) != 71) 

//Those Who Remain Silent Booster Packs - 68 Cards Total
//Offset - 0xF7FF7A31 - A Deal with Dark Ruler
//Offset - 0xF7FF9DB1 - Archfiend Zombie-Skull
//Offset - 0xF7FF9535 - Beast of the Pharaoh
//Offset - 0xF7FF79DD - Berserk Dragon
//Offset - 0xF7FF8221 - Blood Sucker
//Offset - 0xF7FF9AF1 - Bone Crusher
//Offset - 0xF7FF7675 - Book of Life
//Offset - 0xF7FF7685 - Call of the Mummy
//Offset - 0xF7FF6345 - Castle of Dark Illusions
//Offset - 0xF7FF7B79 - Chopman the Desperate Outlaw
//Offset - 0xF7FF6381 - Clown Zombie
//Offset - 0xF7FF7669 - Des Lacooda
//Offset - 0xF7FF7A15 - Despair from the Dark
//Offset - 0xF7FF96C9 - Doomkaiser Dragon
//Offset - 0xF7FF97C1 - Everliving Underworld Cannon
//Offset - 0xF7FF7A1D - Fear from the Dark
//Offset - 0xF7FF766D - Fushioh Richie
//Offset - 0xF7FF76F5 - Gernia
//Offset - 0xF7FF764D - Giant Axe Mummy
//Offset - 0xF7FF7819 - Goblin Zombie
//Offset - 0xF7FF8FD5 - Il Blud
//Offset - 0xF7FF9E55 - Immortal Ruler
//Offset - 0xF7FF9815 - Kasha
//Offset - 0xF7FF82C5 - King of the Skull Servants
//Offset - 0xF7FF96E5 - Malevolent Mech - Goku En
//Offset - 0xF7FF8651 - Malice Ascendant
//Offset - 0xF7FF9015 - Mezuki
//Offset - 0xF7FF7799 - Nightmare Horse
//Offset - 0xF7FF96E9 - Paladin of the Cursed Dragon
//Offset - 0xF7FF7111 - Patrician of Darkness
//Offset - 0xF7FF7E31 - Pharaoh's Servant
//Offset - 0xF7FF7E35 - Pharaonic Protector
//Offset - 0xF7FF8D11 - Plague Wolf
//Offset - 0xF7FF96CD - Plaguespreader Zombie
//Offset - 0xF7FF7631 - Poison Mummy
//Offset - 0xF7FF6385 - Pumpking the King of Ghosts
//Offset - 0xF7FFA4A1 - Pyramid of Wonders
//Offset - 0xF7FF7659 - Pyramid Turtle
//Offset - 0xF7FF779D - Reaper on the Nightmare
//Offset - 0xF7FF961D - Red Ogre
//Offset - 0xF7FF96E1 - Red-Eyes Zombie Dragon
//Offset - 0xF7FF7271 - Red-Moon Baby
//Offset - 0xF7FF7E7D - Regenerating Mummy
//Offset - 0xF7FF96D5 - Revived King Ha Des
//Offset - 0xF7FF7639 - Royal Keeper
//Offset - 0xF7FF67B9 - Shadow Ghoul
//Offset - 0xF7FF9011 - Shutendoji
//Offset - 0xF7FF6259 - Skull Servant
//Offset - 0xF7FF7D5D - Soul-Absorbing Bone Tower
//Offset - 0xF7FF7E39 - Spirit of the Pharaoh
//Offset - 0xF7FF7795 - Spirit Reaper
//Offset - 0xF7FF7ED5 - The First Sarcophagus
//Offset - 0xF7FF7D61 - The Kick Man
//Offset - 0xF7FF937D - The Lady in Wight
//Offset - 0xF7FF7ED1 - The Second Sarcophagus
//Offset - 0xF7FF7ECD - The Third Sarcophagus
//Offset - 0xF7FF9805 - Trap of the Imperial Tomb
//Offset - 0xF7FF7691 - Tutan Mask
//Offset - 0xF7FF822D - Vampire Genesis
//Offset - 0xF7FF7D65 - Vampire Lady
//Offset - 0xF7FF7625 - Vampire Lord
//Offset - 0xF7FF8219 - Vampire's Curse
//Offset - 0xF7FF6701 - Violet Crystal
//Offset - 0xF7FF763D - Wandering Mummy
//Offset - 0xF7FFA7BD - Wightmare
//Offset - 0xF7FF96C5 - Zombie Mammoth
//Offset - 0xF7FF8E09 - Zombie Master
//Offset - 0xF7FF96ED - Zombie World

function those_who_remain_silent() => byte(0xF7FF7A31+dword(0xe7b054))/byte(0xF7FF7A31)+byte(0xF7FF9DB1+dword(0xe7b054))/byte(0xF7FF9DB1)+
                                      byte(0xF7FF9535+dword(0xe7b054))/byte(0xF7FF9535)+byte(0xF7FF79DD+dword(0xe7b054))/byte(0xF7FF79DD)+
                                      byte(0xF7FF8221+dword(0xe7b054))/byte(0xF7FF8221)+byte(0xF7FF9AF1+dword(0xe7b054))/byte(0xF7FF9AF1)+
                                      byte(0xF7FF7675+dword(0xe7b054))/byte(0xF7FF7675)+byte(0xF7FF7685+dword(0xe7b054))/byte(0xF7FF7685)+
                                      byte(0xF7FF6345+dword(0xe7b054))/byte(0xF7FF6345)+byte(0xF7FF7B79+dword(0xe7b054))/byte(0xF7FF7B79)+
                                      byte(0xF7FF6381+dword(0xe7b054))/byte(0xF7FF6381)+byte(0xF7FF7669+dword(0xe7b054))/byte(0xF7FF7669)+
                                      byte(0xF7FF7A15+dword(0xe7b054))/byte(0xF7FF7A15)+byte(0xF7FF96C9+dword(0xe7b054))/byte(0xF7FF96C9)+
                                      byte(0xF7FF97C1+dword(0xe7b054))/byte(0xF7FF97C1)+byte(0xF7FF7A1D+dword(0xe7b054))/byte(0xF7FF7A1D)+
                                      byte(0xF7FF766D+dword(0xe7b054))/byte(0xF7FF766D)+byte(0xF7FF76F5+dword(0xe7b054))/byte(0xF7FF76F5)+
                                      byte(0xF7FF764D+dword(0xe7b054))/byte(0xF7FF764D)+byte(0xF7FF7819+dword(0xe7b054))/byte(0xF7FF7819)+
                                      byte(0xF7FF8FD5+dword(0xe7b054))/byte(0xF7FF8FD5)+byte(0xF7FF9E55+dword(0xe7b054))/byte(0xF7FF9E55)+
                                      byte(0xF7FF9815+dword(0xe7b054))/byte(0xF7FF9815)+byte(0xF7FF82C5+dword(0xe7b054))/byte(0xF7FF82C5)+
                                      byte(0xF7FF96E5+dword(0xe7b054))/byte(0xF7FF96E5)+byte(0xF7FF8651+dword(0xe7b054))/byte(0xF7FF8651)+
                                      byte(0xF7FF9015+dword(0xe7b054))/byte(0xF7FF9015)+byte(0xF7FF7799+dword(0xe7b054))/byte(0xF7FF7799)+
                                      byte(0xF7FF96E9+dword(0xe7b054))/byte(0xF7FF96E9)+byte(0xF7FF7111+dword(0xe7b054))/byte(0xF7FF7111)+
                                      byte(0xF7FF7E31+dword(0xe7b054))/byte(0xF7FF7E31)+byte(0xF7FF7E35+dword(0xe7b054))/byte(0xF7FF7E35)+
                                      byte(0xF7FF8D11+dword(0xe7b054))/byte(0xF7FF8D11)+byte(0xF7FF96CD+dword(0xe7b054))/byte(0xF7FF96CD)+
                                      byte(0xF7FF7631+dword(0xe7b054))/byte(0xF7FF7631)+byte(0xF7FF6385+dword(0xe7b054))/byte(0xF7FF6385)+
                                      byte(0xF7FFA4A1+dword(0xe7b054))/byte(0xF7FFA4A1)+byte(0xF7FF7659+dword(0xe7b054))/byte(0xF7FF7659)+
                                      byte(0xF7FF779D+dword(0xe7b054))/byte(0xF7FF779D)+byte(0xF7FF961D+dword(0xe7b054))/byte(0xF7FF961D)+
                                      byte(0xF7FF96E1+dword(0xe7b054))/byte(0xF7FF96E1)+byte(0xF7FF7271+dword(0xe7b054))/byte(0xF7FF7271)+
                                      byte(0xF7FF7E7D+dword(0xe7b054))/byte(0xF7FF7E7D)+byte(0xF7FF96D5+dword(0xe7b054))/byte(0xF7FF96D5)+
                                      byte(0xF7FF7639+dword(0xe7b054))/byte(0xF7FF7639)+byte(0xF7FF67B9+dword(0xe7b054))/byte(0xF7FF67B9)+
                                      byte(0xF7FF9011+dword(0xe7b054))/byte(0xF7FF9011)+byte(0xF7FF6259+dword(0xe7b054))/byte(0xF7FF6259)+
                                      byte(0xF7FF7D5D+dword(0xe7b054))/byte(0xF7FF7D5D)+byte(0xF7FF7E39+dword(0xe7b054))/byte(0xF7FF7E39)+
                                      byte(0xF7FF7795+dword(0xe7b054))/byte(0xF7FF7795)+byte(0xF7FF7ED5+dword(0xe7b054))/byte(0xF7FF7ED5)+
                                      byte(0xF7FF7D61+dword(0xe7b054))/byte(0xF7FF7D61)+byte(0xF7FF937D+dword(0xe7b054))/byte(0xF7FF937D)+
                                      byte(0xF7FF7ED1+dword(0xe7b054))/byte(0xF7FF7ED1)+byte(0xF7FF7ECD+dword(0xe7b054))/byte(0xF7FF7ECD)+
                                      byte(0xF7FF9805+dword(0xe7b054))/byte(0xF7FF9805)+byte(0xF7FF7691+dword(0xe7b054))/byte(0xF7FF7691)+
                                      byte(0xF7FF822D+dword(0xe7b054))/byte(0xF7FF822D)+byte(0xF7FF7D65+dword(0xe7b054))/byte(0xF7FF7D65)+
                                      byte(0xF7FF7625+dword(0xe7b054))/byte(0xF7FF7625)+byte(0xF7FF8219+dword(0xe7b054))/byte(0xF7FF8219)+
                                      byte(0xF7FF6701+dword(0xe7b054))/byte(0xF7FF6701)+byte(0xF7FF763D+dword(0xe7b054))/byte(0xF7FF763D)+
                                      byte(0xF7FFA7BD+dword(0xe7b054))/byte(0xF7FFA7BD)+byte(0xF7FF96C5+dword(0xe7b054))/byte(0xF7FF96C5)+
                                      byte(0xF7FF8E09+dword(0xe7b054))/byte(0xF7FF8E09)+byte(0xF7FF96ED+dword(0xe7b054))/byte(0xF7FF96ED)
                                      
achievement ("Those Who Remain Silent", "Obtain all cards from [Those Who Remain Silent] booster", 10,
trigger = save_protect() && measured(those_who_remain_silent() == 68) && prev(those_who_remain_silent()) != 68) 

//Frontline Survivors Booster Packs - 83 Cards Total
//Offset - 0xF7FF694D - Armed Ninja
//Offset - 0xF7FF9045 - Armor Breaker
//Offset - 0xF7FF9201 - Assault Armor
//Offset - 0xF7FF8471 - Blade Skater
//Offset - 0xF7FF8FE9 - Card Blocker
//Offset - 0xF7FF795D - Cliff the Trap Remover
//Offset - 0xF7FF8705 - Clock Tower Prison
//Offset - 0xF7FF7105 - Command Knight
//Offset - 0xF7FF9771 - Comrade Swordsman of Landstar
//Offset - 0xF7FF7B69 - Crimson Ninja
//Offset - 0xF7FF84A5 - Cyber Blader
//Offset - 0xF7FF86F9 - Cyber Gymnast
//Offset - 0xF7FF86ED - Cyber Kirin
//Offset - 0xF7FF86FD - Cyber Prima
//Offset - 0xF7FF86F5 - Cyber Tutu
//Offset - 0xF7FF88E9 - Cyclone Blade
//Offset - 0xF7FF8835 - D - Chain
//Offset - 0xF7FF8A8D - D - Counter
//Offset - 0xF7FF93A5 - D - Formation
//Offset - 0xF7FF93ED - D - Fortune
//Offset - 0xF7FF8735 - D - Shield
//Offset - 0xF7FF8839 - D - Spirit
//Offset - 0xF7FF872D - D - Time
//Offset - 0xF7FF80D9 - Dark Blade the Dragon Knight
//Offset - 0xF7FF882D - Dark City
//Offset - 0xF7FF7A21 - Dark Scorpion - Chick the Yellow
//Offset - 0xF7FF7AB9 - Dark Scorpion - Gorg the Strong
//Offset - 0xF7FF7ABD - Dark Scorpion - Meanae the Thorn
//Offset - 0xF7FF7661 - Dark Scorpion Burglars
//Offset - 0xF7FF7B31 - Dark Scorpion Combination
//Offset - 0xF7FF8A85 - Destiny Draw
//Offset - 0xF7FF938D - Destiny End Dragoon
//Offset - 0xF7FF8815 - Destiny Hero - Blade Master
//Offset - 0xF7FF86E1 - Destiny Hero - Captain Tenacious
//Offset - 0xF7FF8819 - Destiny Hero - Dasher
//Offset - 0xF7FF8821 - Destiny Hero - Defender
//Offset - 0xF7FF90D1 - Destiny Hero - Departed
//Offset - 0xF7FF86E5 - Destiny Hero - Diamond Dude
//Offset - 0xF7FF8829 - Destiny Hero - Dogma
//Offset - 0xF7FF86DD - Destiny Hero - Doom Lord
//Offset - 0xF7FF881D - Destiny Hero - Double Dude
//Offset - 0xF7FF92F5 - Destiny Hero - Dread Servant
//Offset - 0xF7FF86E9 - Destiny Hero - Dreadmaster
//Offset - 0xF7FF90CD - Destiny Hero - Dunker
//Offset - 0xF7FF8825 - Destiny Hero - Fear Monger
//Offset - 0xF7FF8A81 - Destiny Hero - Malicious
//Offset - 0xF7FF8C4D - Destiny Hero - Plasma
//Offset - 0xF7FF883D - Destiny Mirage
//Offset - 0xF7FF8731 - Destiny Signal
//Offset - 0xF7FF8729 - Destruction of Destiny
//Offset - 0xF7FF8339 - Divine Knight Ishzark
//Offset - 0xF7FF8455 - Divine Sword - Phoenix Blade
//Offset - 0xF7FF7665 - Don Zaloog
//Offset - 0xF7FF744D - Dragonic Attack
//Offset - 0xF7FF8A91 - Eternal Dread
//Offset - 0xF7FF9109 - Field-Commander Rahz
//Offset - 0xF7FF74C1 - Freed the Matchless General
//Offset - 0xF7FF74D9 - Frontier Wiseman
//Offset - 0xF7FF7BB9 - Fuhma Shuriken
//Offset - 0xF7FF75D1 - Fusion Sword Murasame Blade
//Offset - 0xF7FF844D - Gilford the Legend
//Offset - 0xF7FF8549 - Hero Ring
//Offset - 0xF7FF66AD - Legendary Sword
//Offset - 0xF7FF8A5D - Light Laser
//Offset - 0xF7FF71FD - Lightning Blade
//Offset - 0xF7FF74C9 - Marauding Captain
//Offset - 0xF7FF7B1D - Mustering of the Dark Scorpions
//Offset - 0xF7FF76AD - Needle Wall
//Offset - 0xF7FF8001 - Ninjitsu Art of Decoy
//Offset - 0xF7FF8A89 - Over Destiny
//Offset - 0xF7FF74FD - Ready for Intercepting
//Offset - 0xF7FF74F1 - Reinforcement of the Army
//Offset - 0xF7FF840D - Shien's Spy
//Offset - 0xF7FF81D5 - Spiral Spear Strike
//Offset - 0xF7FF70F5 - Sword of Dragon's Soul
//Offset - 0xF7FF9105 - The Immortal Bushi
//Offset - 0xF7FF74F9 - The Warrior Returning Alive
//Offset - 0xF7FF74C5 - Throwstone Unit
//Offset - 0xF7FF7689 - Timidity
//Offset - 0xF7FF76B1 - Trap Dustshoot
//Offset - 0xF7FF9101 - Vengeful Shinobi
//Offset - 0xF7FF6C2D - Warrior Elimination
//Offset - 0xF7FF82A9 - White Ninja

function frontline_survivors() => byte(0xF7FF694D+dword(0xe7b054))/byte(0xF7FF694D)+byte(0xF7FF9045+dword(0xe7b054))/byte(0xF7FF9045)+
                                  byte(0xF7FF9201+dword(0xe7b054))/byte(0xF7FF9201)+byte(0xF7FF8471+dword(0xe7b054))/byte(0xF7FF8471)+
                                  byte(0xF7FF8FE9+dword(0xe7b054))/byte(0xF7FF8FE9)+byte(0xF7FF795D+dword(0xe7b054))/byte(0xF7FF795D)+
                                  byte(0xF7FF8705+dword(0xe7b054))/byte(0xF7FF8705)+byte(0xF7FF7105+dword(0xe7b054))/byte(0xF7FF7105)+
                                  byte(0xF7FF9771+dword(0xe7b054))/byte(0xF7FF9771)+byte(0xF7FF7B69+dword(0xe7b054))/byte(0xF7FF7B69)+
                                  byte(0xF7FF84A5+dword(0xe7b054))/byte(0xF7FF84A5)+byte(0xF7FF86F9+dword(0xe7b054))/byte(0xF7FF86F9)+
                                  byte(0xF7FF86ED+dword(0xe7b054))/byte(0xF7FF86ED)+byte(0xF7FF86FD+dword(0xe7b054))/byte(0xF7FF86FD)+
                                  byte(0xF7FF86F5+dword(0xe7b054))/byte(0xF7FF86F5)+byte(0xF7FF88E9+dword(0xe7b054))/byte(0xF7FF88E9)+
                                  byte(0xF7FF8835+dword(0xe7b054))/byte(0xF7FF8835)+byte(0xF7FF8A8D+dword(0xe7b054))/byte(0xF7FF8A8D)+
                                  byte(0xF7FF93A5+dword(0xe7b054))/byte(0xF7FF93A5)+byte(0xF7FF93ED+dword(0xe7b054))/byte(0xF7FF93ED)+
                                  byte(0xF7FF8735+dword(0xe7b054))/byte(0xF7FF8735)+byte(0xF7FF8839+dword(0xe7b054))/byte(0xF7FF8839)+
                                  byte(0xF7FF872D+dword(0xe7b054))/byte(0xF7FF872D)+byte(0xF7FF80D9+dword(0xe7b054))/byte(0xF7FF80D9)+
                                  byte(0xF7FF882D+dword(0xe7b054))/byte(0xF7FF882D)+byte(0xF7FF7A21+dword(0xe7b054))/byte(0xF7FF7A21)+
                                  byte(0xF7FF7AB9+dword(0xe7b054))/byte(0xF7FF7AB9)+byte(0xF7FF7ABD+dword(0xe7b054))/byte(0xF7FF7ABD)+
                                  byte(0xF7FF7661+dword(0xe7b054))/byte(0xF7FF7661)+byte(0xF7FF7B31+dword(0xe7b054))/byte(0xF7FF7B31)+
                                  byte(0xF7FF8A85+dword(0xe7b054))/byte(0xF7FF8A85)+byte(0xF7FF938D+dword(0xe7b054))/byte(0xF7FF938D)+
                                  byte(0xF7FF8815+dword(0xe7b054))/byte(0xF7FF8815)+byte(0xF7FF86E1+dword(0xe7b054))/byte(0xF7FF86E1)+
                                  byte(0xF7FF8819+dword(0xe7b054))/byte(0xF7FF8819)+byte(0xF7FF8821+dword(0xe7b054))/byte(0xF7FF8821)+
                                  byte(0xF7FF90D1+dword(0xe7b054))/byte(0xF7FF90D1)+byte(0xF7FF86E5+dword(0xe7b054))/byte(0xF7FF86E5)+
                                  byte(0xF7FF8829+dword(0xe7b054))/byte(0xF7FF8829)+byte(0xF7FF86DD+dword(0xe7b054))/byte(0xF7FF86DD)+
                                  byte(0xF7FF881D+dword(0xe7b054))/byte(0xF7FF881D)+byte(0xF7FF92F5+dword(0xe7b054))/byte(0xF7FF92F5)+
                                  byte(0xF7FF86E9+dword(0xe7b054))/byte(0xF7FF86E9)+byte(0xF7FF90CD+dword(0xe7b054))/byte(0xF7FF90CD)+
                                  byte(0xF7FF8825+dword(0xe7b054))/byte(0xF7FF8825)+byte(0xF7FF8A81+dword(0xe7b054))/byte(0xF7FF8A81)+
                                  byte(0xF7FF8C4D+dword(0xe7b054))/byte(0xF7FF8C4D)+byte(0xF7FF883D+dword(0xe7b054))/byte(0xF7FF883D)+
                                  byte(0xF7FF8731+dword(0xe7b054))/byte(0xF7FF8731)+byte(0xF7FF8729+dword(0xe7b054))/byte(0xF7FF8729)+
                                  byte(0xF7FF8339+dword(0xe7b054))/byte(0xF7FF8339)+byte(0xF7FF8455+dword(0xe7b054))/byte(0xF7FF8455)+
                                  byte(0xF7FF7665+dword(0xe7b054))/byte(0xF7FF7665)+byte(0xF7FF744D+dword(0xe7b054))/byte(0xF7FF744D)+
                                  byte(0xF7FF8A91+dword(0xe7b054))/byte(0xF7FF8A91)+byte(0xF7FF9109+dword(0xe7b054))/byte(0xF7FF9109)+
                                  byte(0xF7FF74C1+dword(0xe7b054))/byte(0xF7FF74C1)+byte(0xF7FF74D9+dword(0xe7b054))/byte(0xF7FF74D9)+
                                  byte(0xF7FF7BB9+dword(0xe7b054))/byte(0xF7FF7BB9)+byte(0xF7FF75D1+dword(0xe7b054))/byte(0xF7FF75D1)+
                                  byte(0xF7FF844D+dword(0xe7b054))/byte(0xF7FF844D)+byte(0xF7FF8549+dword(0xe7b054))/byte(0xF7FF8549)+
                                  byte(0xF7FF66AD+dword(0xe7b054))/byte(0xF7FF66AD)+byte(0xF7FF8A5D+dword(0xe7b054))/byte(0xF7FF8A5D)+
                                  byte(0xF7FF71FD+dword(0xe7b054))/byte(0xF7FF71FD)+byte(0xF7FF74C9+dword(0xe7b054))/byte(0xF7FF74C9)+
                                  byte(0xF7FF7B1D+dword(0xe7b054))/byte(0xF7FF7B1D)+byte(0xF7FF76AD+dword(0xe7b054))/byte(0xF7FF76AD)+
                                  byte(0xF7FF8001+dword(0xe7b054))/byte(0xF7FF8001)+byte(0xF7FF8A89+dword(0xe7b054))/byte(0xF7FF8A89)+
                                  byte(0xF7FF74FD+dword(0xe7b054))/byte(0xF7FF74FD)+byte(0xF7FF74F1+dword(0xe7b054))/byte(0xF7FF74F1)+
                                  byte(0xF7FF840D+dword(0xe7b054))/byte(0xF7FF840D)+byte(0xF7FF81D5+dword(0xe7b054))/byte(0xF7FF81D5)+
                                  byte(0xF7FF70F5+dword(0xe7b054))/byte(0xF7FF70F5)+byte(0xF7FF9105+dword(0xe7b054))/byte(0xF7FF9105)+
                                  byte(0xF7FF74F9+dword(0xe7b054))/byte(0xF7FF74F9)+byte(0xF7FF74C5+dword(0xe7b054))/byte(0xF7FF74C5)+
                                  byte(0xF7FF7689+dword(0xe7b054))/byte(0xF7FF7689)+byte(0xF7FF76B1+dword(0xe7b054))/byte(0xF7FF76B1)+
                                  byte(0xF7FF9101+dword(0xe7b054))/byte(0xF7FF9101)+byte(0xF7FF6C2D+dword(0xe7b054))/byte(0xF7FF6C2D)+
                                  byte(0xF7FF82A9+dword(0xe7b054))/byte(0xF7FF82A9)
                                  
achievement ("Frontline Survivors", "Obtain all cards from [Frontline Survivors] booster", 10,
trigger = save_protect() && measured(frontline_survivors() == 83) && prev(frontline_survivors()) != 83)

//Mechanism Menagerie Booster Packs - 86 Cards Total
//Offset - 0xF7FF8A3D - Ancient Gear Gadjiltron Dragon
//Offset - 0xF7FF8A59 - Card Trooper
//Offset - 0xF7FF9F05 - Cyber Eltanin
//Offset - 0xF7FF9489 - Geartown
//Offset - 0xF7FF7241 - Limiter Removal
//Offset - 0xF7FF9099 - Chimeratech Fortress Dragon
//Offset - 0xF7FF8355 - Drillroid
//Offset - 0xF7FFA28D - Machine Assembly Line
//Offset - 0xF7FF7729 - Machine Duplication
//Offset - 0xF7FF8381 - Power Bond
//Offset - 0xF7FF87E9 - Submarineroid
//Offset - 0xF7FF9391 - Ultimate Ancient Gear Golem
//Offset - 0xF7FF8261 - Ancient Gear Beast
//Offset - 0xF7FF85E1 - Ancient Gear Castle
//Offset - 0xF7FF892D - Ancient Gear Engineer
//Offset - 0xF7FF8939 - Ancient Gear Fist
//Offset - 0xF7FF825D - Ancient Gear Golem
//Offset - 0xF7FF8A49 - Ancient Gear Workshop
//Offset - 0xF7FF86F1 - Cyber Phoenix
//Offset - 0xF7FF8959 - Cyber Shadow Gardna
//Offset - 0xF7FF715D - Electromagnetic Bagworm
//Offset - 0xF7FF8021 - Green Gadget
//Offset - 0xF7FFA2D1 - Machine King - 3000 B.C.
//Offset - 0xF7FF9129 - Magnetic Mosquito
//Offset - 0xF7FF8115 - Rare Metalmorph
//Offset - 0xF7FF8029 - Red Gadget
//Offset - 0xF7FF96A5 - Sphere of Chaos
//Offset - 0xF7FF8351 - Steamroid
//Offset - 0xF7FF87ED - Super Vehicroid Jumbo Drill
//Offset - 0xF7FF8809 - Supercharge
//Offset - 0xF7FF880D - Vehicroid Connection Zone
//Offset - 0xF7FF802D - Yellow Gadget
//Offset - 0xF7FF6E01 - 7 Complete
//Offset - 0xF7FF6C41 - Acid Rain
//Offset - 0xF7FF8605 - Adhesive Explosive
//Offset - 0xF7FF87FD - Ambulance Rescueroid
//Offset - 0xF7FF87E1 - Ambulanceroid
//Offset - 0xF7FF85C1 - Ancient Gear
//Offset - 0xF7FF85FD - Ancient Gear Cannon
//Offset - 0xF7FF85D1 - Ancient Gear Drill
//Offset - 0xF7FF8935 - Ancient Gear Explosive
//Offset - 0xF7FF85CD - Ancient Gear Factory
//Offset - 0xF7FF8A41 - Ancient Gear Gadjiltron Chimera
//Offset - 0xF7FF8F21 - Ancient Gear Knight
//Offset - 0xF7FF8265 - Ancient Gear Soldier
//Offset - 0xF7FF8931 - Ancient Gear Tank
//Offset - 0xF7FF8BD9 - Armoroid
//Offset - 0xF7FFA42D - Biofalcon
//Offset - 0xF7FF8A45 - Boot-Up Soldier - Dread Dynamo
//Offset - 0xF7FF895D - Byroad Sacrifice
//Offset - 0xF7FF8BD5 - Carrierroid
//Offset - 0xF7FF87C9 - Cyber Dinosaur
//Offset - 0xF7FF894D - Cyber Ogre
//Offset - 0xF7FF8955 - Cyber Ogre 2
//Offset - 0xF7FF90C5 - Cyber Ouroboros
//Offset - 0xF7FF87E5 - Cyber Summon Blaster
//Offset - 0xF7FF9155 - Cybernetic Zone
//Offset - 0xF7FF8345 - Cycroid
//Offset - 0xF7FF87F5 - Decoyroid
//Offset - 0xF7FF87DD - Expressroid
//Offset - 0xF7FF8FB1 - Fiendish Engine Ω
//Offset - 0xF7FF71BD - Gadget Soldier
//Offset - 0xF7FF834D - Gyroid
//Offset - 0xF7FF835D - Jetroid
//Offset - 0xF7FF670D - Machine Conversion Factory
//Offset - 0xF7FF6855 - Machine King
//Offset - 0xF7FF8609 - Machine King Prototype
//Offset - 0xF7FF85C9 - Magnet Circle LV2
//Offset - 0xF7FF8061 - Mighty Guard
//Offset - 0xF7FF7091 - Oni Tank T-34
//Offset - 0xF7FF7095 - Overdrive
//Offset - 0xF7FF8349 - Patroid
//Offset - 0xF7FF7B4D - Perfect Machine King
//Offset - 0xF7FF8801 - Rescueroid
//Offset - 0xF7FFA221 - Shreddder
//Offset - 0xF7FF93A9 - Spell Gear
//Offset - 0xF7FF87F1 - Stealthroid
//Offset - 0xF7FF8371 - Steam Gyroid
//Offset - 0xF7FF8025 - Stronghold the Moving Fortress
//Offset - 0xF7FF8929 - Super Vehicroid - Stealth Union
//Offset - 0xF7FF8401 - System Down
//Offset - 0xF7FF8E79 - The Big Saturn
//Offset - 0xF7FF87F9 - Truckroid
//Offset - 0xF7FF8359 - UFOroid
//Offset - 0xF7FF8375 - UFOroid Fighter
//Offset - 0xF7FF8811 - Wonder Garage

function mechanism_menagerie() => byte(0xF7FF8A3D+dword(0xe7b054))/byte(0xF7FF8A3D)+byte(0xF7FF8A59+dword(0xe7b054))/byte(0xF7FF8A59)+
                                  byte(0xF7FF9F05+dword(0xe7b054))/byte(0xF7FF9F05)+byte(0xF7FF9489+dword(0xe7b054))/byte(0xF7FF9489)+
                                  byte(0xF7FF7241+dword(0xe7b054))/byte(0xF7FF7241)+byte(0xF7FF9099+dword(0xe7b054))/byte(0xF7FF9099)+
                                  byte(0xF7FF8355+dword(0xe7b054))/byte(0xF7FF8355)+byte(0xF7FFA28D+dword(0xe7b054))/byte(0xF7FFA28D)+
                                  byte(0xF7FF7729+dword(0xe7b054))/byte(0xF7FF7729)+byte(0xF7FF8381+dword(0xe7b054))/byte(0xF7FF8381)+
                                  byte(0xF7FF87E9+dword(0xe7b054))/byte(0xF7FF87E9)+byte(0xF7FF9391+dword(0xe7b054))/byte(0xF7FF9391)+
                                  byte(0xF7FF8261+dword(0xe7b054))/byte(0xF7FF8261)+byte(0xF7FF85E1+dword(0xe7b054))/byte(0xF7FF85E1)+
                                  byte(0xF7FF892D+dword(0xe7b054))/byte(0xF7FF892D)+byte(0xF7FF8939+dword(0xe7b054))/byte(0xF7FF8939)+
                                  byte(0xF7FF825D+dword(0xe7b054))/byte(0xF7FF825D)+byte(0xF7FF8A49+dword(0xe7b054))/byte(0xF7FF8A49)+
                                  byte(0xF7FF86F1+dword(0xe7b054))/byte(0xF7FF86F1)+byte(0xF7FF8959+dword(0xe7b054))/byte(0xF7FF8959)+
                                  byte(0xF7FF715D+dword(0xe7b054))/byte(0xF7FF715D)+byte(0xF7FF8021+dword(0xe7b054))/byte(0xF7FF8021)+
                                  byte(0xF7FFA2D1+dword(0xe7b054))/byte(0xF7FFA2D1)+byte(0xF7FF9129+dword(0xe7b054))/byte(0xF7FF9129)+
                                  byte(0xF7FF8115+dword(0xe7b054))/byte(0xF7FF8115)+byte(0xF7FF8029+dword(0xe7b054))/byte(0xF7FF8029)+
                                  byte(0xF7FF96A5+dword(0xe7b054))/byte(0xF7FF96A5)+byte(0xF7FF8351+dword(0xe7b054))/byte(0xF7FF8351)+
                                  byte(0xF7FF87ED+dword(0xe7b054))/byte(0xF7FF87ED)+byte(0xF7FF8809+dword(0xe7b054))/byte(0xF7FF8809)+
                                  byte(0xF7FF880D+dword(0xe7b054))/byte(0xF7FF880D)+byte(0xF7FF802D+dword(0xe7b054))/byte(0xF7FF802D)+
                                  byte(0xF7FF6E01+dword(0xe7b054))/byte(0xF7FF6E01)+byte(0xF7FF6C41+dword(0xe7b054))/byte(0xF7FF6C41)+
                                  byte(0xF7FF8605+dword(0xe7b054))/byte(0xF7FF8605)+byte(0xF7FF87FD+dword(0xe7b054))/byte(0xF7FF87FD)+
                                  byte(0xF7FF87E1+dword(0xe7b054))/byte(0xF7FF87E1)+byte(0xF7FF85C1+dword(0xe7b054))/byte(0xF7FF85C1)+
                                  byte(0xF7FF85FD+dword(0xe7b054))/byte(0xF7FF85FD)+byte(0xF7FF85D1+dword(0xe7b054))/byte(0xF7FF85D1)+
                                  byte(0xF7FF8935+dword(0xe7b054))/byte(0xF7FF8935)+byte(0xF7FF85CD+dword(0xe7b054))/byte(0xF7FF85CD)+
                                  byte(0xF7FF8A41+dword(0xe7b054))/byte(0xF7FF8A41)+byte(0xF7FF8F21+dword(0xe7b054))/byte(0xF7FF8F21)+
                                  byte(0xF7FF8265+dword(0xe7b054))/byte(0xF7FF8265)+byte(0xF7FF8931+dword(0xe7b054))/byte(0xF7FF8931)+
                                  byte(0xF7FF8BD9+dword(0xe7b054))/byte(0xF7FF8BD9)+byte(0xF7FFA42D+dword(0xe7b054))/byte(0xF7FFA42D)+
                                  byte(0xF7FF8A45+dword(0xe7b054))/byte(0xF7FF8A45)+byte(0xF7FF895D+dword(0xe7b054))/byte(0xF7FF895D)+
                                  byte(0xF7FF8BD5+dword(0xe7b054))/byte(0xF7FF8BD5)+byte(0xF7FF87C9+dword(0xe7b054))/byte(0xF7FF87C9)+
                                  byte(0xF7FF894D+dword(0xe7b054))/byte(0xF7FF894D)+byte(0xF7FF8955+dword(0xe7b054))/byte(0xF7FF8955)+
                                  byte(0xF7FF90C5+dword(0xe7b054))/byte(0xF7FF90C5)+byte(0xF7FF87E5+dword(0xe7b054))/byte(0xF7FF87E5)+
                                  byte(0xF7FF9155+dword(0xe7b054))/byte(0xF7FF9155)+byte(0xF7FF8345+dword(0xe7b054))/byte(0xF7FF8345)+
                                  byte(0xF7FF87F5+dword(0xe7b054))/byte(0xF7FF87F5)+byte(0xF7FF87DD+dword(0xe7b054))/byte(0xF7FF87DD)+
                                  byte(0xF7FF8FB1+dword(0xe7b054))/byte(0xF7FF8FB1)+byte(0xF7FF71BD+dword(0xe7b054))/byte(0xF7FF71BD)+
                                  byte(0xF7FF834D+dword(0xe7b054))/byte(0xF7FF834D)+byte(0xF7FF835D+dword(0xe7b054))/byte(0xF7FF835D)+
                                  byte(0xF7FF670D+dword(0xe7b054))/byte(0xF7FF670D)+byte(0xF7FF6855+dword(0xe7b054))/byte(0xF7FF6855)+
                                  byte(0xF7FF8609+dword(0xe7b054))/byte(0xF7FF8609)+byte(0xF7FF85C9+dword(0xe7b054))/byte(0xF7FF85C9)+
                                  byte(0xF7FF8061+dword(0xe7b054))/byte(0xF7FF8061)+byte(0xF7FF7091+dword(0xe7b054))/byte(0xF7FF7091)+
                                  byte(0xF7FF7095+dword(0xe7b054))/byte(0xF7FF7095)+byte(0xF7FF8349+dword(0xe7b054))/byte(0xF7FF8349)+
                                  byte(0xF7FF7B4D+dword(0xe7b054))/byte(0xF7FF7B4D)+byte(0xF7FF8801+dword(0xe7b054))/byte(0xF7FF8801)+
                                  byte(0xF7FFA221+dword(0xe7b054))/byte(0xF7FFA221)+byte(0xF7FF93A9+dword(0xe7b054))/byte(0xF7FF93A9)+
                                  byte(0xF7FF87F1+dword(0xe7b054))/byte(0xF7FF87F1)+byte(0xF7FF8371+dword(0xe7b054))/byte(0xF7FF8371)+
                                  byte(0xF7FF8025+dword(0xe7b054))/byte(0xF7FF8025)+byte(0xF7FF8929+dword(0xe7b054))/byte(0xF7FF8929)+
                                  byte(0xF7FF8401+dword(0xe7b054))/byte(0xF7FF8401)+byte(0xF7FF8E79+dword(0xe7b054))/byte(0xF7FF8E79)+
                                  byte(0xF7FF87F9+dword(0xe7b054))/byte(0xF7FF87F9)+byte(0xF7FF8359+dword(0xe7b054))/byte(0xF7FF8359)+
                                  byte(0xF7FF8375+dword(0xe7b054))/byte(0xF7FF8375)+byte(0xF7FF8811+dword(0xe7b054))/byte(0xF7FF8811)
                                  
achievement ("Mechanism Menagerie", "Obtain all cards from [Mechanism Menagerie] booster", 10,
trigger = save_protect() && measured(mechanism_menagerie() == 86) && prev(mechanism_menagerie()) != 86)   

//Angels on the tip of a Needle Booster Packs - 80 Cards Total
//Offset - 0xF7FF7E61 - Absorbing Kid from the Sky
//Offset - 0xF7FF7585 - Agido
//Offset - 0xF7FF711D - Airknight Parshath
//Offset - 0xF7FF8BA9 - Angel 07
//Offset - 0xF7FF93F9 - Arcana Call
//Offset - 0xF7FF9329 - Arcana Force EX - The Dark Ruler
//Offset - 0xF7FF8FE5 - Arcana Force EX - The Light Ruler
//Offset - 0xF7FF9309 - Arcana Force I - The Magician
//Offset - 0xF7FF930D - Arcana Force III - The Empress
//Offset - 0xF7FF9311 - Arcana Force IV - The Emperor
//Offset - 0xF7FF9315 - Arcana Force VI - The Lovers
//Offset - 0xF7FF9319 - Arcana Force VII - The Chariot
//Offset - 0xF7FF931D - Arcana Force XIV - Temperance
//Offset - 0xF7FF9321 - Arcana Force XVIII - The Moon
//Offset - 0xF7FF9325 - Arcana Force XXI - The World
//Offset - 0xF7FF9D01 - Archlord Kristya
//Offset - 0xF7FF7DAD - Archlord Zerato
//Offset - 0xF7FF92DD - Athena
//Offset - 0xF7FF8799 - Celestial Transformation
//Offset - 0xF7FF7565 - Cestus of Dagla
//Offset - 0xF7FF8EE1 - Cloudian - Acid Cloud
//Offset - 0xF7FF8EE9 - Cloudian - Altus
//Offset - 0xF7FF8EE5 - Cloudian - Cirrostratus
//Offset - 0xF7FF8EAD - Cloudian - Eye of the Typhoon
//Offset - 0xF7FF8EB1 - Cloudian - Ghost Fog
//Offset - 0xF7FF8EB5 - Cloudian - Nimbusman
//Offset - 0xF7FF8EBD - Cloudian - Poison Cloud
//Offset - 0xF7FF8EB9 - Cloudian - Sheep Cloud
//Offset - 0xF7FF8EDD - Cloudian - Smoke Ball
//Offset - 0xF7FF9385 - Cloudian - Storm Dragon
//Offset - 0xF7FF8EED - Cloudian - Turbulence
//Offset - 0xF7FF8F4D - Cloudian Squall
//Offset - 0xF7FF9CF1 - Coat of Justice
//Offset - 0xF7FF9D05 - Darklord Asmodeus
//Offset - 0xF7FF9E75 - Darklord Desire
//Offset - 0xF7FF9D0D - Darklord Edeh Arae
//Offset - 0xF7FF9D09 - Darklord Superbia
//Offset - 0xF7FF8EC1 - Diamond-Dust Cyclone
//Offset - 0xF7FF8161 - Element Valkyrie
//Offset - 0xF7FF8F49 - Fog Control
//Offset - 0xF7FF8BCD - Gellenduo
//Offset - 0xF7FF7C95 - Guardian Angel Joan
//Offset - 0xF7FF92E1 - Hecatrice
//Offset - 0xF7FF93B1 - Light Barrier
//Offset - 0xF7FF7DDD - Light of Judgment
//Offset - 0xF7FF8EC9 - Lucky Cloud
//Offset - 0xF7FF8759 - Majestic Mech - Goryu
//Offset - 0xF7FF8755 - Majestic Mech - Ohka
//Offset - 0xF7FF8751 - Majestic Mech - Senku
//Offset - 0xF7FF7DFD - Mazera DeVille
//Offset - 0xF7FF87AD - Miraculous Descent
//Offset - 0xF7FF7561 - Mudora
//Offset - 0xF7FF7D41 - Mystical Shine Ball
//Offset - 0xF7FF8ECD - Natural Disaster
//Offset - 0xF7FF8BB5 - Neo-Parshath, the Sky Paladin
//Offset - 0xF7FF8BC5 - Nova Summoner
//Offset - 0xF7FF8BC9 - Radiant Jeral
//Offset - 0xF7FF9415 - Raging Cloudian
//Offset - 0xF7FF8ED1 - Rain Storm
//Offset - 0xF7FF93F1 - Reversal of Fate
//Offset - 0xF7FF8761 - Royal Knight
//Offset - 0xF7FF66D9 - Silver Bow and Arrow
//Offset - 0xF7FF8C79 - Sky Scourge Enrise
//Offset - 0xF7FF8FF1 - Splendid Venus
//Offset - 0xF7FF7349 - St.Joan
//Offset - 0xF7FF8EC5 - Summon Cloud
//Offset - 0xF7FF92B1 - Tethys, Goddess of Light
//Offset - 0xF7FF7D51 - The Agent of Creation - Venus
//Offset - 0xF7FF7D55 - The Agent of Force - Mars
//Offset - 0xF7FF7D49 - The Agent of Judgment - Saturn
//Offset - 0xF7FF7D4D - The Agent of Wisdom - Mercury
//Offset - 0xF7FF7DC5 - The Sanctuary in the Sky
//Offset - 0xF7FF8541 - Tualatin
//Offset - 0xF7FF8F79 - Updraft
//Offset - 0xF7FF92E5 - Valhalla, Hall of the Fallen
//Offset - 0xF7FF9A09 - Victoria
//Offset - 0xF7FF7D39 - Warrior of Zera
//Offset - 0xF7FF98A9 - White Night Queen
//Offset - 0xF7FF8C6D - Zeradias, Herald of Heaven
//Offset - 0xF7FF757D - Zolga   

function angels_on_the_tip_of_a_needle() => byte(0xF7FF7E61+dword(0xe7b054))/byte(0xF7FF7E61)+byte(0xF7FF7585+dword(0xe7b054))/byte(0xF7FF7585)+
                                            byte(0xF7FF711D+dword(0xe7b054))/byte(0xF7FF711D)+byte(0xF7FF8BA9+dword(0xe7b054))/byte(0xF7FF8BA9)+
                                            byte(0xF7FF93F9+dword(0xe7b054))/byte(0xF7FF93F9)+byte(0xF7FF9329+dword(0xe7b054))/byte(0xF7FF9329)+
                                            byte(0xF7FF8FE5+dword(0xe7b054))/byte(0xF7FF8FE5)+byte(0xF7FF9309+dword(0xe7b054))/byte(0xF7FF9309)+
                                            byte(0xF7FF930D+dword(0xe7b054))/byte(0xF7FF930D)+byte(0xF7FF9311+dword(0xe7b054))/byte(0xF7FF9311)+
                                            byte(0xF7FF9315+dword(0xe7b054))/byte(0xF7FF9315)+byte(0xF7FF9319+dword(0xe7b054))/byte(0xF7FF9319)+
                                            byte(0xF7FF931D+dword(0xe7b054))/byte(0xF7FF931D)+byte(0xF7FF9321+dword(0xe7b054))/byte(0xF7FF9321)+
                                            byte(0xF7FF9325+dword(0xe7b054))/byte(0xF7FF9325)+byte(0xF7FF9D01+dword(0xe7b054))/byte(0xF7FF9D01)+
                                            byte(0xF7FF7DAD+dword(0xe7b054))/byte(0xF7FF7DAD)+byte(0xF7FF92DD+dword(0xe7b054))/byte(0xF7FF92DD)+
                                            byte(0xF7FF8799+dword(0xe7b054))/byte(0xF7FF8799)+byte(0xF7FF7565+dword(0xe7b054))/byte(0xF7FF7565)+
                                            byte(0xF7FF8EE1+dword(0xe7b054))/byte(0xF7FF8EE1)+byte(0xF7FF8EE9+dword(0xe7b054))/byte(0xF7FF8EE9)+
                                            byte(0xF7FF8EE5+dword(0xe7b054))/byte(0xF7FF8EE5)+byte(0xF7FF8EAD+dword(0xe7b054))/byte(0xF7FF8EAD)+
                                            byte(0xF7FF8EB1+dword(0xe7b054))/byte(0xF7FF8EB1)+byte(0xF7FF8EB5+dword(0xe7b054))/byte(0xF7FF8EB5)+
                                            byte(0xF7FF8EBD+dword(0xe7b054))/byte(0xF7FF8EBD)+byte(0xF7FF8EB9+dword(0xe7b054))/byte(0xF7FF8EB9)+
                                            byte(0xF7FF8EDD+dword(0xe7b054))/byte(0xF7FF8EDD)+byte(0xF7FF9385+dword(0xe7b054))/byte(0xF7FF9385)+
                                            byte(0xF7FF8EED+dword(0xe7b054))/byte(0xF7FF8EED)+byte(0xF7FF8F4D+dword(0xe7b054))/byte(0xF7FF8F4D)+
                                            byte(0xF7FF9CF1+dword(0xe7b054))/byte(0xF7FF9CF1)+byte(0xF7FF9D05+dword(0xe7b054))/byte(0xF7FF9D05)+
                                            byte(0xF7FF9E75+dword(0xe7b054))/byte(0xF7FF9E75)+byte(0xF7FF9D0D+dword(0xe7b054))/byte(0xF7FF9D0D)+
                                            byte(0xF7FF9D09+dword(0xe7b054))/byte(0xF7FF9D09)+byte(0xF7FF8EC1+dword(0xe7b054))/byte(0xF7FF8EC1)+
                                            byte(0xF7FF8161+dword(0xe7b054))/byte(0xF7FF8161)+byte(0xF7FF8F49+dword(0xe7b054))/byte(0xF7FF8F49)+
                                            byte(0xF7FF8BCD+dword(0xe7b054))/byte(0xF7FF8BCD)+byte(0xF7FF7C95+dword(0xe7b054))/byte(0xF7FF7C95)+
                                            byte(0xF7FF92E1+dword(0xe7b054))/byte(0xF7FF92E1)+byte(0xF7FF93B1+dword(0xe7b054))/byte(0xF7FF93B1)+
                                            byte(0xF7FF7DDD+dword(0xe7b054))/byte(0xF7FF7DDD)+byte(0xF7FF8EC9+dword(0xe7b054))/byte(0xF7FF8EC9)+
                                            byte(0xF7FF8759+dword(0xe7b054))/byte(0xF7FF8759)+byte(0xF7FF8755+dword(0xe7b054))/byte(0xF7FF8755)+
                                            byte(0xF7FF8751+dword(0xe7b054))/byte(0xF7FF8751)+byte(0xF7FF7DFD+dword(0xe7b054))/byte(0xF7FF7DFD)+
                                            byte(0xF7FF87AD+dword(0xe7b054))/byte(0xF7FF87AD)+byte(0xF7FF7561+dword(0xe7b054))/byte(0xF7FF7561)+
                                            byte(0xF7FF7D41+dword(0xe7b054))/byte(0xF7FF7D41)+byte(0xF7FF8ECD+dword(0xe7b054))/byte(0xF7FF8ECD)+
                                            byte(0xF7FF8BB5+dword(0xe7b054))/byte(0xF7FF8BB5)+byte(0xF7FF8BC5+dword(0xe7b054))/byte(0xF7FF8BC5)+
                                            byte(0xF7FF8BC9+dword(0xe7b054))/byte(0xF7FF8BC9)+byte(0xF7FF9415+dword(0xe7b054))/byte(0xF7FF9415)+
                                            byte(0xF7FF8ED1+dword(0xe7b054))/byte(0xF7FF8ED1)+byte(0xF7FF93F1+dword(0xe7b054))/byte(0xF7FF93F1)+
                                            byte(0xF7FF8761+dword(0xe7b054))/byte(0xF7FF8761)+byte(0xF7FF66D9+dword(0xe7b054))/byte(0xF7FF66D9)+
                                            byte(0xF7FF8C79+dword(0xe7b054))/byte(0xF7FF8C79)+byte(0xF7FF8FF1+dword(0xe7b054))/byte(0xF7FF8FF1)+
                                            byte(0xF7FF7349+dword(0xe7b054))/byte(0xF7FF7349)+byte(0xF7FF8EC5+dword(0xe7b054))/byte(0xF7FF8EC5)+
                                            byte(0xF7FF92B1+dword(0xe7b054))/byte(0xF7FF92B1)+byte(0xF7FF7D51+dword(0xe7b054))/byte(0xF7FF7D51)+
                                            byte(0xF7FF7D55+dword(0xe7b054))/byte(0xF7FF7D55)+byte(0xF7FF7D49+dword(0xe7b054))/byte(0xF7FF7D49)+
                                            byte(0xF7FF7D4D+dword(0xe7b054))/byte(0xF7FF7D4D)+byte(0xF7FF7DC5+dword(0xe7b054))/byte(0xF7FF7DC5)+
                                            byte(0xF7FF8541+dword(0xe7b054))/byte(0xF7FF8541)+byte(0xF7FF8F79+dword(0xe7b054))/byte(0xF7FF8F79)+
                                            byte(0xF7FF92E5+dword(0xe7b054))/byte(0xF7FF92E5)+byte(0xF7FF9A09+dword(0xe7b054))/byte(0xF7FF9A09)+
                                            byte(0xF7FF7D39+dword(0xe7b054))/byte(0xF7FF7D39)+byte(0xF7FF98A9+dword(0xe7b054))/byte(0xF7FF98A9)+
                                            byte(0xF7FF8C6D+dword(0xe7b054))/byte(0xF7FF8C6D)+byte(0xF7FF757D+dword(0xe7b054))/byte(0xF7FF757D)
                                            
achievement ("Angels on the tip of a Needle", "Obtain all cards from [Angels on the tip of a Needle] booster", 10,
trigger = save_protect() && measured(angels_on_the_tip_of_a_needle() == 80) && prev(angels_on_the_tip_of_a_needle()) != 80)    

//Once a Beast, Always a Beast Booster Packs - 83 Cards Total
//Offset - 0xF7FF8C09 - Ancient City - Rainbow Ruins
//Offset - 0xF7FF9DA5 - Ancient Crimson Ape
//Offset - 0xF7FF7F25 - Andro Sphinx
//Offset - 0xF7FF9E4D - Battlestorm
//Offset - 0xF7FF66C9 - Beast Fangs
//Offset - 0xF7FFA6A1 - Beast Rage
//Offset - 0xF7FFA6E9 - Beast Rising
//Offset - 0xF7FF8201 - Beast Soul Swap
//Offset - 0xF7FF9E61 - Beast Striker
//Offset - 0xF7FF8171 - Behemoth the King of All Animals
//Offset - 0xF7FF9E71 - Berserking
//Offset - 0xF7FF7115 - Birdface
//Offset - 0xF7FF816D - Catnipped Kitty
//Offset - 0xF7FFA7B9 - Chain Dog
//Offset - 0xF7FF8CA5 - Crystal Abundance
//Offset - 0xF7FF8BF1 - Crystal Beacon
//Offset - 0xF7FF8BED - Crystal Beast Amber Mammoth
//Offset - 0xF7FF8BE9 - Crystal Beast Amethyst Cat
//Offset - 0xF7FF8C01 - Crystal Beast Cobalt Eagle
//Offset - 0xF7FF8BF9 - Crystal Beast Emerald Tortoise
//Offset - 0xF7FF8BF5 - Crystal Beast Ruby Carbuncle
//Offset - 0xF7FF8C05 - Crystal Beast Sapphire Pegasus
//Offset - 0xF7FF8BFD - Crystal Beast Topaz Tiger
//Offset - 0xF7FF8CA1 - Crystal Blessing
//Offset - 0xF7FF906D - Crystal Counter
//Offset - 0xF7FF9071 - Crystal Pair
//Offset - 0xF7FF8CA9 - Crystal Promise
//Offset - 0xF7FF8CC1 - Crystal Raigeki
//Offset - 0xF7FF9079 - Crystal Release
//Offset - 0xF7FF907D - Crystal Tree
//Offset - 0xF7FF73B5 - Cyber Harpie Lady
//Offset - 0xF7FF66ED - Cyber Shield
//Offset - 0xF7FF66F1 - Elegant Egotist
//Offset - 0xF7FFA649 - Elephun
//Offset - 0xF7FF7C59 - Enraged Battle Ox
//Offset - 0xF7FF81B9 - Firebird
//Offset - 0xF7FF6715 - Follow Wind
//Offset - 0xF7FF8341 - Green Baboon, Defender of the Forest
//Offset - 0xF7FF62F1 - Harpie Lady
//Offset - 0xF7FF8091 - Harpie Lady 1
//Offset - 0xF7FF8095 - Harpie Lady 2
//Offset - 0xF7FF8099 - Harpie Lady 3
//Offset - 0xF7FF62F5 - Harpie Lady Sisters
//Offset - 0xF7FF8C75 - Harpie Queen
//Offset - 0xF7FF708D - Harpie's Brother
//Offset - 0xF7FF80E5 - Harpie's Hunting Ground
//Offset - 0xF7FF874D - Harpie's Pet Baby Dragon
//Offset - 0xF7FF6801 - Harpie's Pet Dragon
//Offset - 0xF7FFA6ED - Horn of the Phantom Beast
//Offset - 0xF7FF87C1 - Hysteric Party
//Offset - 0xF7FF87A9 - Icarus Attack
//Offset - 0xF7FFA469 - Key Mouse
//Offset - 0xF7FF9E65 - King of the Beasts
//Offset - 0xF7FF8C11 - Last Resort
//Offset - 0xF7FFA645 - Lock Cat
//Offset - 0xF7FF8169 - Maji-Gire Panda
//Offset - 0xF7FF7C4D - Manticore of Darkness
//Offset - 0xF7FF9B75 - Minoan Centaur
//Offset - 0xF7FF9E5D - Moja
//Offset - 0xF7FF66F5 - Mystical Moon
//Offset - 0xF7FF8A95 - Phantom Beast Cross-Wing
//Offset - 0xF7FF8AA1 - Phantom Beast Rock-Lizard
//Offset - 0xF7FF8A9D - Phantom Beast Thunder-Pegasus
//Offset - 0xF7FF8A99 - Phantom Beast Wild-Horn
//Offset - 0xF7FF81CD - Poison Fangs
//Offset - 0xF7FF7F0D - Pyramid of Light
//Offset - 0xF7FF8D65 - Rainbow Dragon
//Offset - 0xF7FF93E9 - Rainbow Gravity
//Offset - 0xF7FF9181 - Rainbow Path
//Offset - 0xF7FF8C0D - Rare Value
//Offset - 0xF7FF81B5 - Rescue Cat
//Offset - 0xF7FF7F29 - Sphinx Teleia
//Offset - 0xF7FFA005 - Spiritual Forest
//Offset - 0xF7FFA3B9 - Super-Nimble Mega Hamster
//Offset - 0xF7FF9E69 - Swallow's Nest
//Offset - 0xF7FFA389 - The Atmosphere
//Offset - 0xF7FF81E9 - The Big March of Animals
//Offset - 0xF7FF7F2D - Theinen the Great Sphinx
//Offset - 0xF7FFA305 - Transforming Sphere
//Offset - 0xF7FF80E9 - Triangle Ecstasy Spark
//Offset - 0xF7FFA8FD - Troposphere
//Offset - 0xF7FF7BC1 - Wild Nature's Release
//Offset - 0xF7FFA171 - Yellow Baboon, Archer of the Forest

function once_a_beast_always_a_beast() => byte(0xF7FF8C09+dword(0xe7b054))/byte(0xF7FF8C09)+byte(0xF7FF9DA5+dword(0xe7b054))/byte(0xF7FF9DA5)+
                                          byte(0xF7FF7F25+dword(0xe7b054))/byte(0xF7FF7F25)+byte(0xF7FF9E4D+dword(0xe7b054))/byte(0xF7FF9E4D)+
                                          byte(0xF7FF66C9+dword(0xe7b054))/byte(0xF7FF66C9)+byte(0xF7FFA6A1+dword(0xe7b054))/byte(0xF7FFA6A1)+
                                          byte(0xF7FFA6E9+dword(0xe7b054))/byte(0xF7FFA6E9)+byte(0xF7FF8201+dword(0xe7b054))/byte(0xF7FF8201)+
                                          byte(0xF7FF9E61+dword(0xe7b054))/byte(0xF7FF9E61)+byte(0xF7FF8171+dword(0xe7b054))/byte(0xF7FF8171)+
                                          byte(0xF7FF9E71+dword(0xe7b054))/byte(0xF7FF9E71)+byte(0xF7FF7115+dword(0xe7b054))/byte(0xF7FF7115)+
                                          byte(0xF7FF816D+dword(0xe7b054))/byte(0xF7FF816D)+byte(0xF7FFA7B9+dword(0xe7b054))/byte(0xF7FFA7B9)+
                                          byte(0xF7FF8CA5+dword(0xe7b054))/byte(0xF7FF8CA5)+byte(0xF7FF8BF1+dword(0xe7b054))/byte(0xF7FF8BF1)+
                                          byte(0xF7FF8BED+dword(0xe7b054))/byte(0xF7FF8BED)+byte(0xF7FF8BE9+dword(0xe7b054))/byte(0xF7FF8BE9)+
                                          byte(0xF7FF8C01+dword(0xe7b054))/byte(0xF7FF8C01)+byte(0xF7FF8BF9+dword(0xe7b054))/byte(0xF7FF8BF9)+
                                          byte(0xF7FF8BF5+dword(0xe7b054))/byte(0xF7FF8BF5)+byte(0xF7FF8C05+dword(0xe7b054))/byte(0xF7FF8C05)+
                                          byte(0xF7FF8BFD+dword(0xe7b054))/byte(0xF7FF8BFD)+byte(0xF7FF8CA1+dword(0xe7b054))/byte(0xF7FF8CA1)+
                                          byte(0xF7FF906D+dword(0xe7b054))/byte(0xF7FF906D)+byte(0xF7FF9071+dword(0xe7b054))/byte(0xF7FF9071)+
                                          byte(0xF7FF8CA9+dword(0xe7b054))/byte(0xF7FF8CA9)+byte(0xF7FF8CC1+dword(0xe7b054))/byte(0xF7FF8CC1)+
                                          byte(0xF7FF9079+dword(0xe7b054))/byte(0xF7FF9079)+byte(0xF7FF907D+dword(0xe7b054))/byte(0xF7FF907D)+
                                          byte(0xF7FF73B5+dword(0xe7b054))/byte(0xF7FF73B5)+byte(0xF7FF66ED+dword(0xe7b054))/byte(0xF7FF66ED)+
                                          byte(0xF7FF66F1+dword(0xe7b054))/byte(0xF7FF66F1)+byte(0xF7FFA649+dword(0xe7b054))/byte(0xF7FFA649)+
                                          byte(0xF7FF7C59+dword(0xe7b054))/byte(0xF7FF7C59)+byte(0xF7FF81B9+dword(0xe7b054))/byte(0xF7FF81B9)+
                                          byte(0xF7FF6715+dword(0xe7b054))/byte(0xF7FF6715)+byte(0xF7FF8341+dword(0xe7b054))/byte(0xF7FF8341)+
                                          byte(0xF7FF62F1+dword(0xe7b054))/byte(0xF7FF62F1)+byte(0xF7FF8091+dword(0xe7b054))/byte(0xF7FF8091)+
                                          byte(0xF7FF8095+dword(0xe7b054))/byte(0xF7FF8095)+byte(0xF7FF8099+dword(0xe7b054))/byte(0xF7FF8099)+
                                          byte(0xF7FF62F5+dword(0xe7b054))/byte(0xF7FF62F5)+byte(0xF7FF8C75+dword(0xe7b054))/byte(0xF7FF8C75)+
                                          byte(0xF7FF708D+dword(0xe7b054))/byte(0xF7FF708D)+byte(0xF7FF80E5+dword(0xe7b054))/byte(0xF7FF80E5)+
                                          byte(0xF7FF874D+dword(0xe7b054))/byte(0xF7FF874D)+byte(0xF7FF6801+dword(0xe7b054))/byte(0xF7FF6801)+
                                          byte(0xF7FFA6ED+dword(0xe7b054))/byte(0xF7FFA6ED)+byte(0xF7FF87C1+dword(0xe7b054))/byte(0xF7FF87C1)+
                                          byte(0xF7FF87A9+dword(0xe7b054))/byte(0xF7FF87A9)+byte(0xF7FFA469+dword(0xe7b054))/byte(0xF7FFA469)+
                                          byte(0xF7FF9E65+dword(0xe7b054))/byte(0xF7FF9E65)+byte(0xF7FF8C11+dword(0xe7b054))/byte(0xF7FF8C11)+
                                          byte(0xF7FFA645+dword(0xe7b054))/byte(0xF7FFA645)+byte(0xF7FF8169+dword(0xe7b054))/byte(0xF7FF8169)+
                                          byte(0xF7FF7C4D+dword(0xe7b054))/byte(0xF7FF7C4D)+byte(0xF7FF9B75+dword(0xe7b054))/byte(0xF7FF9B75)+
                                          byte(0xF7FF9E5D+dword(0xe7b054))/byte(0xF7FF9E5D)+byte(0xF7FF66F5+dword(0xe7b054))/byte(0xF7FF66F5)+
                                          byte(0xF7FF8A95+dword(0xe7b054))/byte(0xF7FF8A95)+byte(0xF7FF8AA1+dword(0xe7b054))/byte(0xF7FF8AA1)+
                                          byte(0xF7FF8A9D+dword(0xe7b054))/byte(0xF7FF8A9D)+byte(0xF7FF8A99+dword(0xe7b054))/byte(0xF7FF8A99)+
                                          byte(0xF7FF81CD+dword(0xe7b054))/byte(0xF7FF81CD)+byte(0xF7FF7F0D+dword(0xe7b054))/byte(0xF7FF7F0D)+
                                          byte(0xF7FF8D65+dword(0xe7b054))/byte(0xF7FF8D65)+byte(0xF7FF93E9+dword(0xe7b054))/byte(0xF7FF93E9)+
                                          byte(0xF7FF9181+dword(0xe7b054))/byte(0xF7FF9181)+byte(0xF7FF8C0D+dword(0xe7b054))/byte(0xF7FF8C0D)+
                                          byte(0xF7FF81B5+dword(0xe7b054))/byte(0xF7FF81B5)+byte(0xF7FF7F29+dword(0xe7b054))/byte(0xF7FF7F29)+
                                          byte(0xF7FFA005+dword(0xe7b054))/byte(0xF7FFA005)+byte(0xF7FFA3B9+dword(0xe7b054))/byte(0xF7FFA3B9)+
                                          byte(0xF7FF9E69+dword(0xe7b054))/byte(0xF7FF9E69)+byte(0xF7FFA389+dword(0xe7b054))/byte(0xF7FFA389)+
                                          byte(0xF7FF81E9+dword(0xe7b054))/byte(0xF7FF81E9)+byte(0xF7FF7F2D+dword(0xe7b054))/byte(0xF7FF7F2D)+
                                          byte(0xF7FFA305+dword(0xe7b054))/byte(0xF7FFA305)+byte(0xF7FF80E9+dword(0xe7b054))/byte(0xF7FF80E9)+
                                          byte(0xF7FFA8FD+dword(0xe7b054))/byte(0xF7FFA8FD)+byte(0xF7FF7BC1+dword(0xe7b054))/byte(0xF7FF7BC1)+
                                          byte(0xF7FFA171+dword(0xe7b054))/byte(0xF7FFA171)
                                          
achievement ("Once a Beast, Always a Beast", "Obtain all cards from [Once a Beast, Always a Beast] booster", 10,
trigger = save_protect() && measured(once_a_beast_always_a_beast() == 83) && prev(once_a_beast_always_a_beast()) != 83)     

//Gardening in the Wild Booster Packs - 80 Cards Total
//Offset - 0xF7FF8631 - Anteatereatingant
//Offset - 0xF7FF7C71 - Anti-Aircraft Flower
//Offset - 0xF7FF7D99 - Arcane Archer of the Forest
//Offset - 0xF7FF7145 - Arsenal Bug
//Offset - 0xF7FF92D5 - Aztekipede, the Worm Warrior
//Offset - 0xF7FF97FD - Bamboo Scrap
//Offset - 0xF7FF9955 - Bee List Soldier
//Offset - 0xF7FF9765 - Botanical Girl
//Offset - 0xF7FF6C4D - Breath of Light
//Offset - 0xF7FFA3BD - Cactus Bouncer
//Offset - 0xF7FF9A15 - Cactus Fighter
//Offset - 0xF7FF86AD - Canyon
//Offset - 0xF7FF8149 - Chu-Ske the Mouse Fighter
//Offset - 0xF7FF8279 - Criosphinx
//Offset - 0xF7FF9951 - Cross-Sword Beetle
//Offset - 0xF7FFA519 - Danipon
//Offset - 0xF7FF994D - Desert Protector
//Offset - 0xF7FF8639 - Doom Dozer
//Offset - 0xF7FF8459 - Dreadscythe Harvester
//Offset - 0xF7FF6DB1 - Drill Bug
//Offset - 0xF7FF8285 - Dummy Golem
//Offset - 0xF7FF6C49 - Eradicating Aerosol
//Offset - 0xF7FF86A5 - Exxod, Master of the Guard
//Offset - 0xF7FF7121 - Fairy King Truesdale
//Offset - 0xF7FF8FCD - Fossil Tusker
//Offset - 0xF7FF92A9 - Gaia Plate the Earth Giant
//Offset - 0xF7FF9445 - Gigantic Cephalotus
//Offset - 0xF7FF8625 - Gokipon
//Offset - 0xF7FF8289 - Grave Ohja
//Offset - 0xF7FF86A9 - Great Spirit
//Offset - 0xF7FF8299 - Guardian Statue
//Offset - 0xF7FF8275 - Hieracosphinx
//Offset - 0xF7FF9451 - Horseytail
//Offset - 0xF7FF7F99 - Howling Insect
//Offset - 0xF7FF66C1 - Insect Armor with Laser Cannon
//Offset - 0xF7FF6E49 - Insect Barrier
//Offset - 0xF7FF7249 - Insect Imitation
//Offset - 0xF7FFA00D - Insect Neglect
//Offset - 0xF7FF7C79 - Insect Princess
//Offset - 0xF7FF6D95 - Insect Queen
//Offset - 0xF7FF7CC5 - Jade Insect Whistle
//Offset - 0xF7FF82E5 - Kaminote Blow
//Offset - 0xF7FF66BD - Laser Cannon Armor
//Offset - 0xF7FF82F1 - Legendary Black Belt
//Offset - 0xF7FF832D - Lone Wolf
//Offset - 0xF7FF92D1 - Lonefire Blossom
//Offset - 0xF7FF76FD - Lord Poison
//Offset - 0xF7FF8271 - Lost Guardian
//Offset - 0xF7FF8295 - Master Monk
//Offset - 0xF7FF829D - Medusa Worm
//Offset - 0xF7FF8281 - Megarock Dragon
//Offset - 0xF7FF828D - Mine Golem
//Offset - 0xF7FF8309 - Minefield Eruption
//Offset - 0xF7FF9459 - Miracle Fertilizer
//Offset - 0xF7FF8291 - Monk Fighter
//Offset - 0xF7FF7211 - Multiplication of Ants
//Offset - 0xF7FF9449 - Nettles
//Offset - 0xF7FF6D99 - Parasite Paracide
//Offset - 0xF7FF6651 - Petit Moth
//Offset - 0xF7FF6DA5 - Pinch Hopper
//Offset - 0xF7FF9801 - Plant Food Chain
//Offset - 0xF7FF97F9 - Pollinosis
//Offset - 0xF7FF7C75 - Prickle Fairy
//Offset - 0xF7FFA009 - Raging Mad Plants
//Offset - 0xF7FF90AD - Regenerating Rose
//Offset - 0xF7FF8F7D - Release from Stone
//Offset - 0xF7FF8319 - Rock Bombardment
//Offset - 0xF7FF8635 - Saber Beetle
//Offset - 0xF7FF90A9 - Samsara Lotus
//Offset - 0xF7FF99A9 - Seed Cannon
//Offset - 0xF7FF9A11 - Seed of Flame
//Offset - 0xF7FF9189 - Sinister Seeds
//Offset - 0xF7FF99AD - Super Solar Nutrient
//Offset - 0xF7FFA51D - Sweet Corn
//Offset - 0xF7FF97BD - The World Tree
//Offset - 0xF7FF9769 - Tytannial, Princess of Camellias
//Offset - 0xF7FF99B5 - Verdant Sanctuary
//Offset - 0xF7FF66D1 - Vile Germs
//Offset - 0xF7FF9A01 - Wall of Thorns
//Offset - 0xF7FF65A5 - Wodan the Resident of the Forest

function gardening_in_the_wild() => byte(0xF7FF8631+dword(0xe7b054))/byte(0xF7FF8631)+byte(0xF7FF7C71+dword(0xe7b054))/byte(0xF7FF7C71)+
                                    byte(0xF7FF7D99+dword(0xe7b054))/byte(0xF7FF7D99)+byte(0xF7FF7145+dword(0xe7b054))/byte(0xF7FF7145)+
                                    byte(0xF7FF92D5+dword(0xe7b054))/byte(0xF7FF92D5)+byte(0xF7FF97FD+dword(0xe7b054))/byte(0xF7FF97FD)+
                                    byte(0xF7FF9955+dword(0xe7b054))/byte(0xF7FF9955)+byte(0xF7FF9765+dword(0xe7b054))/byte(0xF7FF9765)+
                                    byte(0xF7FF6C4D+dword(0xe7b054))/byte(0xF7FF6C4D)+byte(0xF7FFA3BD+dword(0xe7b054))/byte(0xF7FFA3BD)+
                                    byte(0xF7FF9A15+dword(0xe7b054))/byte(0xF7FF9A15)+byte(0xF7FF86AD+dword(0xe7b054))/byte(0xF7FF86AD)+
                                    byte(0xF7FF8149+dword(0xe7b054))/byte(0xF7FF8149)+byte(0xF7FF8279+dword(0xe7b054))/byte(0xF7FF8279)+
                                    byte(0xF7FF9951+dword(0xe7b054))/byte(0xF7FF9951)+byte(0xF7FFA519+dword(0xe7b054))/byte(0xF7FFA519)+
                                    byte(0xF7FF994D+dword(0xe7b054))/byte(0xF7FF994D)+byte(0xF7FF8639+dword(0xe7b054))/byte(0xF7FF8639)+
                                    byte(0xF7FF8459+dword(0xe7b054))/byte(0xF7FF8459)+byte(0xF7FF6DB1+dword(0xe7b054))/byte(0xF7FF6DB1)+
                                    byte(0xF7FF8285+dword(0xe7b054))/byte(0xF7FF8285)+byte(0xF7FF6C49+dword(0xe7b054))/byte(0xF7FF6C49)+
                                    byte(0xF7FF86A5+dword(0xe7b054))/byte(0xF7FF86A5)+byte(0xF7FF7121+dword(0xe7b054))/byte(0xF7FF7121)+
                                    byte(0xF7FF8FCD+dword(0xe7b054))/byte(0xF7FF8FCD)+byte(0xF7FF92A9+dword(0xe7b054))/byte(0xF7FF92A9)+
                                    byte(0xF7FF9445+dword(0xe7b054))/byte(0xF7FF9445)+byte(0xF7FF8625+dword(0xe7b054))/byte(0xF7FF8625)+
                                    byte(0xF7FF8289+dword(0xe7b054))/byte(0xF7FF8289)+byte(0xF7FF86A9+dword(0xe7b054))/byte(0xF7FF86A9)+
                                    byte(0xF7FF8299+dword(0xe7b054))/byte(0xF7FF8299)+byte(0xF7FF8275+dword(0xe7b054))/byte(0xF7FF8275)+
                                    byte(0xF7FF9451+dword(0xe7b054))/byte(0xF7FF9451)+byte(0xF7FF7F99+dword(0xe7b054))/byte(0xF7FF7F99)+
                                    byte(0xF7FF66C1+dword(0xe7b054))/byte(0xF7FF66C1)+byte(0xF7FF6E49+dword(0xe7b054))/byte(0xF7FF6E49)+
                                    byte(0xF7FF7249+dword(0xe7b054))/byte(0xF7FF7249)+byte(0xF7FFA00D+dword(0xe7b054))/byte(0xF7FFA00D)+
                                    byte(0xF7FF7C79+dword(0xe7b054))/byte(0xF7FF7C79)+byte(0xF7FF6D95+dword(0xe7b054))/byte(0xF7FF6D95)+
                                    byte(0xF7FF7CC5+dword(0xe7b054))/byte(0xF7FF7CC5)+byte(0xF7FF82E5+dword(0xe7b054))/byte(0xF7FF82E5)+
                                    byte(0xF7FF66BD+dword(0xe7b054))/byte(0xF7FF66BD)+byte(0xF7FF82F1+dword(0xe7b054))/byte(0xF7FF82F1)+
                                    byte(0xF7FF832D+dword(0xe7b054))/byte(0xF7FF832D)+byte(0xF7FF92D1+dword(0xe7b054))/byte(0xF7FF92D1)+
                                    byte(0xF7FF76FD+dword(0xe7b054))/byte(0xF7FF76FD)+byte(0xF7FF8271+dword(0xe7b054))/byte(0xF7FF8271)+
                                    byte(0xF7FF8295+dword(0xe7b054))/byte(0xF7FF8295)+byte(0xF7FF829D+dword(0xe7b054))/byte(0xF7FF829D)+
                                    byte(0xF7FF8281+dword(0xe7b054))/byte(0xF7FF8281)+byte(0xF7FF828D+dword(0xe7b054))/byte(0xF7FF828D)+
                                    byte(0xF7FF8309+dword(0xe7b054))/byte(0xF7FF8309)+byte(0xF7FF9459+dword(0xe7b054))/byte(0xF7FF9459)+
                                    byte(0xF7FF8291+dword(0xe7b054))/byte(0xF7FF8291)+byte(0xF7FF7211+dword(0xe7b054))/byte(0xF7FF7211)+
                                    byte(0xF7FF9449+dword(0xe7b054))/byte(0xF7FF9449)+byte(0xF7FF6D99+dword(0xe7b054))/byte(0xF7FF6D99)+
                                    byte(0xF7FF6651+dword(0xe7b054))/byte(0xF7FF6651)+byte(0xF7FF6DA5+dword(0xe7b054))/byte(0xF7FF6DA5)+
                                    byte(0xF7FF9801+dword(0xe7b054))/byte(0xF7FF9801)+byte(0xF7FF97F9+dword(0xe7b054))/byte(0xF7FF97F9)+
                                    byte(0xF7FF7C75+dword(0xe7b054))/byte(0xF7FF7C75)+byte(0xF7FFA009+dword(0xe7b054))/byte(0xF7FFA009)+
                                    byte(0xF7FF90AD+dword(0xe7b054))/byte(0xF7FF90AD)+byte(0xF7FF8F7D+dword(0xe7b054))/byte(0xF7FF8F7D)+
                                    byte(0xF7FF8319+dword(0xe7b054))/byte(0xF7FF8319)+byte(0xF7FF8635+dword(0xe7b054))/byte(0xF7FF8635)+
                                    byte(0xF7FF90A9+dword(0xe7b054))/byte(0xF7FF90A9)+byte(0xF7FF99A9+dword(0xe7b054))/byte(0xF7FF99A9)+
                                    byte(0xF7FF9A11+dword(0xe7b054))/byte(0xF7FF9A11)+byte(0xF7FF9189+dword(0xe7b054))/byte(0xF7FF9189)+
                                    byte(0xF7FF99AD+dword(0xe7b054))/byte(0xF7FF99AD)+byte(0xF7FFA51D+dword(0xe7b054))/byte(0xF7FFA51D)+
                                    byte(0xF7FF97BD+dword(0xe7b054))/byte(0xF7FF97BD)+byte(0xF7FF9769+dword(0xe7b054))/byte(0xF7FF9769)+
                                    byte(0xF7FF99B5+dword(0xe7b054))/byte(0xF7FF99B5)+byte(0xF7FF66D1+dword(0xe7b054))/byte(0xF7FF66D1)+
                                    byte(0xF7FF9A01+dword(0xe7b054))/byte(0xF7FF9A01)+byte(0xF7FF65A5+dword(0xe7b054))/byte(0xF7FF65A5)

achievement ("Gardening in the Wild", "Obtain all cards from [Gardening in the Wild] booster", 10,
trigger = save_protect() && measured(gardening_in_the_wild() == 80) && prev(gardening_in_the_wild()) != 80) 

//Cold-Blooded Pride - 79 Cards Total
//Offset - 0xF7FF8CB9 - "A" Cell Breeding Device
//Offset - 0xF7FF8F75 - "A" Cell Incubator
//Offset - 0xF7FF8B35 - "A" Cell Scatter Burst
//Offset - 0xF7FF9961 - Alien Ammonite
//Offset - 0xF7FFA2D5 - Alien Brain
//Offset - 0xF7FF9B89 - Alien Dog
//Offset - 0xF7FF88B1 - Alien Grey
//Offset - 0xF7FF88BD - Alien Hunter
//Offset - 0xF7FF8F39 - Alien Hypno
//Offset - 0xF7FF89D5 - Alien Infiltrator
//Offset - 0xF7FF9AF5 - Alien Kid
//Offset - 0xF7FF88B5 - Alien Mars
//Offset - 0xF7FF88C5 - Alien Mother
//Offset - 0xF7FF995D - Alien Overlord
//Offset - 0xF7FF8B19 - Alien Psychic
//Offset - 0xF7FF8DA5 - Alien Shocktrooper
//Offset - 0xF7FF88B9 - Alien Skull
//Offset - 0xF7FF8F35 - Alien Telepath
//Offset - 0xF7FF88C1 - Alien Warrior
//Offset - 0xF7FF8E35 - Ambush Fangs
//Offset - 0xF7FF88AD - Babycerasaurus
//Offset - 0xF7FF88FD - Big Evolution Pill
//Offset - 0xF7FF7D09 - Bitelon
//Offset - 0xF7FF8871 - Black Stego
//Offset - 0xF7FF88E1 - Brainwashing Beam
//Offset - 0xF7FF8F9D - Cell Explosion Virus
//Offset - 0xF7FF7791 - Cobra Jar
//Offset - 0xF7FF9B05 - Code A Ancient Ruins
//Offset - 0xF7FF89D9 - Corruption Cell "A"
//Offset - 0xF7FF9975 - Cosmic Fortress Gol'Gar
//Offset - 0xF7FF88C9 - Cosmic Horror Gangi'el
//Offset - 0xF7FF88D1 - Crop Circles
//Offset - 0xF7FF8D55 - Damage = Reptile
//Offset - 0xF7FF8C69 - Destroyersaurus
//Offset - 0xF7FF8FA1 - Detonator Circle "A"
//Offset - 0xF7FF8085 - Element Saurus
//Offset - 0xF7FF9225 - Evil Dragon Ananta
//Offset - 0xF7FF88CD - Flying Saucer Muusik'i
//Offset - 0xF7FF7B71 - Gale Lizard
//Offset - 0xF7FF79C9 - Granadora
//Offset - 0xF7FF88F5 - Hunting Instinct
//Offset - 0xF7FF8FA5 - Interdimensional Warp
//Offset - 0xF7FF936D - Interplanetary Invader "A"
//Offset - 0xF7FF8909 - Jurassic World
//Offset - 0xF7FFA301 - Lion Alligator
//Offset - 0xF7FF8CE9 - Mass Hypnosis
//Offset - 0xF7FF88A5 - Miracle Jurassic Egg
//Offset - 0xF7FF99BD - Mysterious Triangle
//Offset - 0xF7FF91B9 - Offering to the Snake Deity
//Offset - 0xF7FF88D9 - Orbital Bombardment
//Offset - 0xF7FF8CBD - Otherworld - The "A" Zone
//Offset - 0xF7FF9A05 - Planet Pollutant Virus
//Offset - 0xF7FF6711 - Raise Body Heat
//Offset - 0xF7FF8DFD - Razor Lizard
//Offset - 0xF7FF8D5D - Rise of the Snake Deity
//Offset - 0xF7FF92AD - Sauropod Brachion
//Offset - 0xF7FF8911 - Seismic Shockwave
//Offset - 0xF7FF7125 - Serpentine Princess
//Offset - 0xF7FF8D59 - Snake Deity's Command
//Offset - 0xF7FF8D51 - Snake Rain
//Offset - 0xF7FF8D4D - Snake Whistle
//Offset - 0xF7FFA309 - Spawn Alligator
//Offset - 0xF7FF88F1 - Super Conductor Tyranno
//Offset - 0xF7FF9615 - Super-Ancient Dinobeast
//Offset - 0xF7FF88F9 - Survival Instinct
//Offset - 0xF7FF8905 - Tail Swipe
//Offset - 0xF7FF83E5 - Tyranno Infinity
//Offset - 0xF7FF8875 - Ultimate Tyranno
//Offset - 0xF7FF7CBD - Ultra Evolution Pill
//Offset - 0xF7FF8D99 - Vennominaga the Deity of Poisonous Snakes
//Offset - 0xF7FF8D95 - Vennominon the King of Poisonous Snakes
//Offset - 0xF7FF8D8D - Venom Boa
//Offset - 0xF7FF8E39 - Venom Burn
//Offset - 0xF7FF8DB5 - Venom Cobra
//Offset - 0xF7FF8D91 - Venom Serpent
//Offset - 0xF7FF8DA1 - Venom Shot
//Offset - 0xF7FF8D89 - Venom Snake
//Offset - 0xF7FF8D49 - Venom Swamp
//Offset - 0xF7FF890D - Volcanic Eruption

function cold_blooded_pride() => byte(0xF7FF8CB9+dword(0xe7b054))/byte(0xF7FF8CB9)+byte(0xF7FF8F75+dword(0xe7b054))/byte(0xF7FF8F75)+
                                 byte(0xF7FF8B35+dword(0xe7b054))/byte(0xF7FF8B35)+byte(0xF7FF9961+dword(0xe7b054))/byte(0xF7FF9961)+
                                 byte(0xF7FFA2D5+dword(0xe7b054))/byte(0xF7FFA2D5)+byte(0xF7FF9B89+dword(0xe7b054))/byte(0xF7FF9B89)+
                                 byte(0xF7FF88B1+dword(0xe7b054))/byte(0xF7FF88B1)+byte(0xF7FF88BD+dword(0xe7b054))/byte(0xF7FF88BD)+
                                 byte(0xF7FF8F39+dword(0xe7b054))/byte(0xF7FF8F39)+byte(0xF7FF89D5+dword(0xe7b054))/byte(0xF7FF89D5)+
                                 byte(0xF7FF9AF5+dword(0xe7b054))/byte(0xF7FF9AF5)+byte(0xF7FF88B5+dword(0xe7b054))/byte(0xF7FF88B5)+
                                 byte(0xF7FF88C5+dword(0xe7b054))/byte(0xF7FF88C5)+byte(0xF7FF995D+dword(0xe7b054))/byte(0xF7FF995D)+
                                 byte(0xF7FF8B19+dword(0xe7b054))/byte(0xF7FF8B19)+byte(0xF7FF8DA5+dword(0xe7b054))/byte(0xF7FF8DA5)+
                                 byte(0xF7FF88B9+dword(0xe7b054))/byte(0xF7FF88B9)+byte(0xF7FF8F35+dword(0xe7b054))/byte(0xF7FF8F35)+
                                 byte(0xF7FF88C1+dword(0xe7b054))/byte(0xF7FF88C1)+byte(0xF7FF8E35+dword(0xe7b054))/byte(0xF7FF8E35)+
                                 byte(0xF7FF88AD+dword(0xe7b054))/byte(0xF7FF88AD)+byte(0xF7FF88FD+dword(0xe7b054))/byte(0xF7FF88FD)+
                                 byte(0xF7FF7D09+dword(0xe7b054))/byte(0xF7FF7D09)+byte(0xF7FF8871+dword(0xe7b054))/byte(0xF7FF8871)+
                                 byte(0xF7FF88E1+dword(0xe7b054))/byte(0xF7FF88E1)+byte(0xF7FF8F9D+dword(0xe7b054))/byte(0xF7FF8F9D)+
                                 byte(0xF7FF7791+dword(0xe7b054))/byte(0xF7FF7791)+byte(0xF7FF9B05+dword(0xe7b054))/byte(0xF7FF9B05)+
                                 byte(0xF7FF89D9+dword(0xe7b054))/byte(0xF7FF89D9)+byte(0xF7FF9975+dword(0xe7b054))/byte(0xF7FF9975)+
                                 byte(0xF7FF88C9+dword(0xe7b054))/byte(0xF7FF88C9)+byte(0xF7FF88D1+dword(0xe7b054))/byte(0xF7FF88D1)+
                                 byte(0xF7FF8D55+dword(0xe7b054))/byte(0xF7FF8D55)+byte(0xF7FF8C69+dword(0xe7b054))/byte(0xF7FF8C69)+
                                 byte(0xF7FF8FA1+dword(0xe7b054))/byte(0xF7FF8FA1)+byte(0xF7FF8085+dword(0xe7b054))/byte(0xF7FF8085)+
                                 byte(0xF7FF9225+dword(0xe7b054))/byte(0xF7FF9225)+byte(0xF7FF88CD+dword(0xe7b054))/byte(0xF7FF88CD)+
                                 byte(0xF7FF7B71+dword(0xe7b054))/byte(0xF7FF7B71)+byte(0xF7FF79C9+dword(0xe7b054))/byte(0xF7FF79C9)+
                                 byte(0xF7FF88F5+dword(0xe7b054))/byte(0xF7FF88F5)+byte(0xF7FF8FA5+dword(0xe7b054))/byte(0xF7FF8FA5)+
                                 byte(0xF7FF936D+dword(0xe7b054))/byte(0xF7FF936D)+byte(0xF7FF8909+dword(0xe7b054))/byte(0xF7FF8909)+
                                 byte(0xF7FFA301+dword(0xe7b054))/byte(0xF7FFA301)+byte(0xF7FF8CE9+dword(0xe7b054))/byte(0xF7FF8CE9)+
                                 byte(0xF7FF88A5+dword(0xe7b054))/byte(0xF7FF88A5)+byte(0xF7FF99BD+dword(0xe7b054))/byte(0xF7FF99BD)+
                                 byte(0xF7FF91B9+dword(0xe7b054))/byte(0xF7FF91B9)+byte(0xF7FF88D9+dword(0xe7b054))/byte(0xF7FF88D9)+
                                 byte(0xF7FF8CBD+dword(0xe7b054))/byte(0xF7FF8CBD)+byte(0xF7FF9A05+dword(0xe7b054))/byte(0xF7FF9A05)+
                                 byte(0xF7FF6711+dword(0xe7b054))/byte(0xF7FF6711)+byte(0xF7FF8DFD+dword(0xe7b054))/byte(0xF7FF8DFD)+
                                 byte(0xF7FF8D5D+dword(0xe7b054))/byte(0xF7FF8D5D)+byte(0xF7FF92AD+dword(0xe7b054))/byte(0xF7FF92AD)+
                                 byte(0xF7FF8911+dword(0xe7b054))/byte(0xF7FF8911)+byte(0xF7FF7125+dword(0xe7b054))/byte(0xF7FF7125)+
                                 byte(0xF7FF8D59+dword(0xe7b054))/byte(0xF7FF8D59)+byte(0xF7FF8D51+dword(0xe7b054))/byte(0xF7FF8D51)+
                                 byte(0xF7FF8D4D+dword(0xe7b054))/byte(0xF7FF8D4D)+byte(0xF7FFA309+dword(0xe7b054))/byte(0xF7FFA309)+
                                 byte(0xF7FF88F1+dword(0xe7b054))/byte(0xF7FF88F1)+byte(0xF7FF9615+dword(0xe7b054))/byte(0xF7FF9615)+
                                 byte(0xF7FF88F9+dword(0xe7b054))/byte(0xF7FF88F9)+byte(0xF7FF8905+dword(0xe7b054))/byte(0xF7FF8905)+
                                 byte(0xF7FF83E5+dword(0xe7b054))/byte(0xF7FF83E5)+byte(0xF7FF8875+dword(0xe7b054))/byte(0xF7FF8875)+
                                 byte(0xF7FF7CBD+dword(0xe7b054))/byte(0xF7FF7CBD)+byte(0xF7FF8D99+dword(0xe7b054))/byte(0xF7FF8D99)+
                                 byte(0xF7FF8D95+dword(0xe7b054))/byte(0xF7FF8D95)+byte(0xF7FF8D8D+dword(0xe7b054))/byte(0xF7FF8D8D)+
                                 byte(0xF7FF8E39+dword(0xe7b054))/byte(0xF7FF8E39)+byte(0xF7FF8DB5+dword(0xe7b054))/byte(0xF7FF8DB5)+
                                 byte(0xF7FF8D91+dword(0xe7b054))/byte(0xF7FF8D91)+byte(0xF7FF8DA1+dword(0xe7b054))/byte(0xF7FF8DA1)+
                                 byte(0xF7FF8D89+dword(0xe7b054))/byte(0xF7FF8D89)+byte(0xF7FF8D49+dword(0xe7b054))/byte(0xF7FF8D49)+
                                 byte(0xF7FF890D+dword(0xe7b054))/byte(0xF7FF890D)
                                 
achievement ("Cold-Blooded Pride", "Obtain all cards from [Cold-Blooded Pride] booster", 10,
trigger = save_protect() && measured(cold_blooded_pride() == 79) && prev(cold_blooded_pride()) != 79) 

//The Edge of the World - 63 Cards Total
//Offset - 0xF7FF8FC5 - Abyssal Kingshark
//Offset - 0xF7FF8641 - Beelze Frog
//Offset - 0xF7FF8C25 - Blaze Accelerator
//Offset - 0xF7FF7C8D - Cannonball Spear Shellfish
//Offset - 0xF7FF8FC1 - Cranium Fish
//Offset - 0xF7FF80B1 - Creeping Doom Manta
//Offset - 0xF7FF8669 - D.3.S. Frog
//Offset - 0xF7FF9B91 - Deep Sea Diva
//Offset - 0xF7FF8405 - Des Croaking
//Offset - 0xF7FF83D9 - Des Frog
//Offset - 0xF7FF95ED - Dupe Frog
//Offset - 0xF7FF66E9 - Electro-Whip
//Offset - 0xF7FF8C35 - Firewall
//Offset - 0xF7FF95D9 - Fish Depth Charge
//Offset - 0xF7FF9D79 - Fishborg Blaster
//Offset - 0xF7FF981D - Flip Flop Frog
//Offset - 0xF7FF6A8D - Frog the Jam
//Offset - 0xF7FF9409 - Froggy Forcefield
//Offset - 0xF7FF80BD - Gaia Soul the Combustible Collective
//Offset - 0xF7FF92C9 - Golden Flying Fish
//Offset - 0xF7FF85A9 - Hamon, Lord of Striking Thunder
//Offset - 0xF7FF9959 - Hydra Viper
//Offset - 0xF7FF80AD - Invasion of Flames
//Offset - 0xF7FF9B95 - Mermaid Archer
//Offset - 0xF7FFA179 - Metabo-Shark
//Offset - 0xF7FF7C45 - Molten Zombie
//Offset - 0xF7FF8FB9 - Ocean's Keeper
//Offset - 0xF7FF7C89 - Orca Mega-Fortress of Darkness
//Offset - 0xF7FF7D8D - Piranha Army
//Offset - 0xF7FF83E1 - Poison Draw Frog
//Offset - 0xF7FF6719 - Power of Kaishin
//Offset - 0xF7FFA45D - Ronintoadin
//Offset - 0xF7FF91E5 - Royal Firestorm Guards
//Offset - 0xF7FF9AFD - Royal Swamp Eel
//Offset - 0xF7FF9BB1 - Sea Dragon Lord Gishilnodon
//Offset - 0xF7FF8C29 - Soul of Fire
//Offset - 0xF7FF9B8D - Spined Gillman
//Offset - 0xF7FF9B01 - Submarine Frog
//Offset - 0xF7FF9355 - Substitoad
//Offset - 0xF7FF9115 - Superancient Deepsea King Coelacanth
//Offset - 0xF7FF9FA1 - Swap Frog
//Offset - 0xF7FF83DD - T.A.D.P.O.L.E.
//Offset - 0xF7FFA3C5 - The Dragon Dwelling in the Deep
//Offset - 0xF7FF7C41 - The Thing in the Crater
//Offset - 0xF7FF8FBD - Thousand-Eyes Jellyfish
//Offset - 0xF7FF7C81 - Torpedo Fish
//Offset - 0xF7FF863D - Treeborn Frog
//Offset - 0xF7FF8C2D - Tri-Blaze Accelerator
//Offset - 0xF7FF9359 - Unifrog
//Offset - 0xF7FF85A5 - Uria, Lord of Searing Flames
//Offset - 0xF7FF8C51 - Volcanic Blaster
//Offset - 0xF7FF90C9 - Volcanic Counter
//Offset - 0xF7FF8C21 - Volcanic Doomfire
//Offset - 0xF7FF8C59 - Volcanic Hammerer
//Offset - 0xF7FF92F9 - Volcanic Queen
//Offset - 0xF7FF8DA9 - Volcanic Rat
//Offset - 0xF7FF8CC5 - Volcanic Recharge
//Offset - 0xF7FF8E61 - Volcanic Rocket
//Offset - 0xF7FF8C19 - Volcanic Scattershot
//Offset - 0xF7FF8C15 - Volcanic Shell
//Offset - 0xF7FF8C55 - Volcanic Slicer
//Offset - 0xF7FF93BD - Wetlands
//Offset - 0xF7FF8C31 - Wild Fire

function the_edge_of_the_world() => byte(0xF7FF8FC5+dword(0xe7b054))/byte(0xF7FF8FC5)+byte(0xF7FF8641+dword(0xe7b054))/byte(0xF7FF8641)+
                                    byte(0xF7FF8C25+dword(0xe7b054))/byte(0xF7FF8C25)+byte(0xF7FF7C8D+dword(0xe7b054))/byte(0xF7FF7C8D)+
                                    byte(0xF7FF8FC1+dword(0xe7b054))/byte(0xF7FF8FC1)+byte(0xF7FF80B1+dword(0xe7b054))/byte(0xF7FF80B1)+
                                    byte(0xF7FF8669+dword(0xe7b054))/byte(0xF7FF8669)+byte(0xF7FF9B91+dword(0xe7b054))/byte(0xF7FF9B91)+
                                    byte(0xF7FF8405+dword(0xe7b054))/byte(0xF7FF8405)+byte(0xF7FF83D9+dword(0xe7b054))/byte(0xF7FF83D9)+
                                    byte(0xF7FF95ED+dword(0xe7b054))/byte(0xF7FF95ED)+byte(0xF7FF66E9+dword(0xe7b054))/byte(0xF7FF66E9)+
                                    byte(0xF7FF8C35+dword(0xe7b054))/byte(0xF7FF8C35)+byte(0xF7FF95D9+dword(0xe7b054))/byte(0xF7FF95D9)+
                                    byte(0xF7FF9D79+dword(0xe7b054))/byte(0xF7FF9D79)+byte(0xF7FF981D+dword(0xe7b054))/byte(0xF7FF981D)+
                                    byte(0xF7FF6A8D+dword(0xe7b054))/byte(0xF7FF6A8D)+byte(0xF7FF9409+dword(0xe7b054))/byte(0xF7FF9409)+
                                    byte(0xF7FF80BD+dword(0xe7b054))/byte(0xF7FF80BD)+byte(0xF7FF92C9+dword(0xe7b054))/byte(0xF7FF92C9)+
                                    byte(0xF7FF85A9+dword(0xe7b054))/byte(0xF7FF85A9)+byte(0xF7FF9959+dword(0xe7b054))/byte(0xF7FF9959)+
                                    byte(0xF7FF80AD+dword(0xe7b054))/byte(0xF7FF80AD)+byte(0xF7FF9B95+dword(0xe7b054))/byte(0xF7FF9B95)+
                                    byte(0xF7FFA179+dword(0xe7b054))/byte(0xF7FFA179)+byte(0xF7FF7C45+dword(0xe7b054))/byte(0xF7FF7C45)+
                                    byte(0xF7FF8FB9+dword(0xe7b054))/byte(0xF7FF8FB9)+byte(0xF7FF7C89+dword(0xe7b054))/byte(0xF7FF7C89)+
                                    byte(0xF7FF7D8D+dword(0xe7b054))/byte(0xF7FF7D8D)+byte(0xF7FF83E1+dword(0xe7b054))/byte(0xF7FF83E1)+
                                    byte(0xF7FF6719+dword(0xe7b054))/byte(0xF7FF6719)+byte(0xF7FFA45D+dword(0xe7b054))/byte(0xF7FFA45D)+
                                    byte(0xF7FF91E5+dword(0xe7b054))/byte(0xF7FF91E5)+byte(0xF7FF9AFD+dword(0xe7b054))/byte(0xF7FF9AFD)+
                                    byte(0xF7FF9BB1+dword(0xe7b054))/byte(0xF7FF9BB1)+byte(0xF7FF8C29+dword(0xe7b054))/byte(0xF7FF8C29)+
                                    byte(0xF7FF9B8D+dword(0xe7b054))/byte(0xF7FF9B8D)+byte(0xF7FF9B01+dword(0xe7b054))/byte(0xF7FF9B01)+
                                    byte(0xF7FF9355+dword(0xe7b054))/byte(0xF7FF9355)+byte(0xF7FF9115+dword(0xe7b054))/byte(0xF7FF9115)+
                                    byte(0xF7FF9FA1+dword(0xe7b054))/byte(0xF7FF9FA1)+byte(0xF7FF83DD+dword(0xe7b054))/byte(0xF7FF83DD)+
                                    byte(0xF7FFA3C5+dword(0xe7b054))/byte(0xF7FFA3C5)+byte(0xF7FF7C41+dword(0xe7b054))/byte(0xF7FF7C41)+
                                    byte(0xF7FF8FBD+dword(0xe7b054))/byte(0xF7FF8FBD)+byte(0xF7FF7C81+dword(0xe7b054))/byte(0xF7FF7C81)+
                                    byte(0xF7FF863D+dword(0xe7b054))/byte(0xF7FF863D)+byte(0xF7FF8C2D+dword(0xe7b054))/byte(0xF7FF8C2D)+
                                    byte(0xF7FF9359+dword(0xe7b054))/byte(0xF7FF9359)+byte(0xF7FF85A5+dword(0xe7b054))/byte(0xF7FF85A5)+
                                    byte(0xF7FF8C51+dword(0xe7b054))/byte(0xF7FF8C51)+byte(0xF7FF90C9+dword(0xe7b054))/byte(0xF7FF90C9)+
                                    byte(0xF7FF8C21+dword(0xe7b054))/byte(0xF7FF8C21)+byte(0xF7FF8C59+dword(0xe7b054))/byte(0xF7FF8C59)+
                                    byte(0xF7FF92F9+dword(0xe7b054))/byte(0xF7FF92F9)+byte(0xF7FF8DA9+dword(0xe7b054))/byte(0xF7FF8DA9)+
                                    byte(0xF7FF8CC5+dword(0xe7b054))/byte(0xF7FF8CC5)+byte(0xF7FF8E61+dword(0xe7b054))/byte(0xF7FF8E61)+
                                    byte(0xF7FF8C19+dword(0xe7b054))/byte(0xF7FF8C19)+byte(0xF7FF8C15+dword(0xe7b054))/byte(0xF7FF8C15)+
                                    byte(0xF7FF8C55+dword(0xe7b054))/byte(0xF7FF8C55)+byte(0xF7FF93BD+dword(0xe7b054))/byte(0xF7FF93BD)+
                                    byte(0xF7FF8C31+dword(0xe7b054))/byte(0xF7FF8C31)
                                    
achievement ("The Edge of the World", "Obtain all cards from [The Edge of the World] booster", 10,
trigger = save_protect() && measured(the_edge_of_the_world() == 63) && prev(the_edge_of_the_world()) != 63)

//The Origin of Species Booser Packs - 354 Cards Total
//Offset - 0xF7FF777D - A Cat of Ill Omen
//Offset - 0xF7FF752D - A Wingbeat of Giant Dragon
//Offset - 0xF7FF8FC5 - Abyssal Kingshark
//Offset - 0xF7FF9961 - Alien Ammonite
//Offset - 0xF7FF9B89 - Alien Dog
//Offset - 0xF7FF8F39 - Alien Hypno
//Offset - 0xF7FF995D - Alien Overlord
//Offset - 0xF7FF8C09 - Ancient City - Rainbow Ruins
//Offset - 0xF7FF8261 - Ancient Gear Beast
//Offset - 0xF7FF85E1 - Ancient Gear Castle
//Offset - 0xF7FF892D - Ancient Gear Engineer
//Offset - 0xF7FF8939 - Ancient Gear Fist
//Offset - 0xF7FF8A3D - Ancient Gear Gadjiltron Dragon
//Offset - 0xF7FF825D - Ancient Gear Golem
//Offset - 0xF7FF8A49 - Ancient Gear Workshop
//Offset - 0xF7FF73B1 - Ancient Lamp
//Offset - 0xF7FF8BA9 - Angel 07
//Offset - 0xF7FF8631 - Anteatereatingant
//Offset - 0xF7FF792D - Apprentice Magician
//Offset - 0xF7FF9329 - Arcana Force EX - The Dark Ruler
//Offset - 0xF7FF8FE5 - Arcana Force EX - The Light Ruler
//Offset - 0xF7FF9325 - Arcana Force XXI - The World
//Offset - 0xF7FF9971 - Arcanite Magician
//Offset - 0xF7FF9DB1 - Archfiend Zombie-Skull
//Offset - 0xF7FF9D01 - Archlord Kristya
//Offset - 0xF7FF7DAD - Archlord Zerato
//Offset - 0xF7FF9201 - Assault Armor
//Offset - 0xF7FF92DD - Athena
//Offset - 0xF7FF92D5 - Aztekipede, The Worm Warrior
//Offset - 0xF7FF88AD - Babycerasaurus
//Offset - 0xF7FF74A9 - Bark of Dark Ruler
//Offset - 0xF7FF9E4D - Battlestorm
//Offset - 0xF7FF8201 - Beast Soul Swap
//Offset - 0xF7FF9E61 - Beast Striker
//Offset - 0xF7FF8171 - Behemoth the King of All Animals
//Offset - 0xF7FF79DD - Berserk Dragon
//Offset - 0xF7FF9E71 - Berserking
//Offset - 0xF7FF88FD - Big Evolution Pill
//Offset - 0xF7FF7D09 - Bitelon
//Offset - 0xF7FF8871 - Black Stego
//Offset - 0xF7FF8C25 - Blaze Accelerator
//Offset - 0xF7FF8B91 - Blizzard Dragon
//Offset - 0xF7FFA545 - Blizzard Princess
//Offset - 0xF7FF61FD - Blue-Eyes White Dragon
//Offset - 0xF7FF7675 - Book of Life
//Offset - 0xF7FF9765 - Botanical Girl
//Offset - 0xF7FF9281 - Brionac, Dragon of the Ice Barrier
//Offset - 0xF7FF84E9 - Brron, Mad King of Dark World
//Offset - 0xF7FF7DB9 - Burst Stream of Destruction
//Offset - 0xF7FF7481 - Byser Shock
//Offset - 0xF7FFA3BD - Cactus Bouncer
//Offset - 0xF7FF9A15 - Cactus Fighter
//Offset - 0xF7FF7685 - Call of the Mummy
//Offset - 0xF7FF86AD - Canyon
//Offset - 0xF7FF8A59 - Card Trooper
//Offset - 0xF7FF8799 - Celestial Transformation
//Offset - 0xF7FFA7B9 - Chain Dog
//Offset - 0xF7FF7BAD - Chaos Sorcerer
//Offset - 0xF7FF9099 - Chimeratech Fortress Dragon
//Offset - 0xF7FF8705 - Clock Tower Prison
//Offset - 0xF7FF8EAD - Cloudian - Eye of the Typhoon
//Offset - 0xF7FF8EB9 - Cloudian - Sheep Cloud
//Offset - 0xF7FF9385 - Cloudian - Storm Dragon
//Offset - 0xF7FF8EED - Cloudian - Turbulence
//Offset - 0xF7FF9CF1 - Coat of Justice
//Offset - 0xF7FF7791 - Cobra Jar
//Offset - 0xF7FF9B05 - Code A Ancient Ruins
//Offset - 0xF7FF7105 - Command Knight
//Offset - 0xF7FF9771 - Comrade Swordsman of Landstar
//Offset - 0xF7FF9975 - Cosmic Fortress Gol'Gar
//Offset - 0xF7FF8FC1 - Cranium Fish
//Offset - 0xF7FF8279 - Criosphinx
//Offset - 0xF7FF9F91 - Crusader of Endymion
//Offset - 0xF7FF8CA5 - Crystal Abundance
//Offset - 0xF7FF8BE9 - Crystal Beast Amethyst Cat
//Offset - 0xF7FF8BF5 - Crystal Beast Ruby Carbuncle
//Offset - 0xF7FF8C05 - Crystal Beast Sapphire Pegasus
//Offset - 0xF7FF84A5 - Cyber Blader
//Offset - 0xF7FF9F05 - Cyber ELtanin
//Offset - 0xF7FF86F9 - Cyber Gymnast
//Offset - 0xF7FF86F1 - Cyber Phoenix
//Offset - 0xF7FF8959 - Cyber Shadow Gardna
//Offset - 0xF7FF8E11 - Cyberdark Impact!
//Offset - 0xF7FF8D55 - Damage = Reptile
//Offset - 0xF7FFA519 - Danipon
//Offset - 0xF7FF772D - Dark Jeroid
//Offset - 0xF7FF7F59 - Dark Mimic LV1
//Offset - 0xF7FF737D - Dark Necrofear
//Offset - 0xF7FF859D - Dark Red Enchanter
//Offset - 0xF7FF7485 - Dark Ruler Ha Des
//Offset - 0xF7FF7ABD - Dark Scorpion - Meanae the Thorn
//Offset - 0xF7FF8B55 - Dark World Dealings
//Offset - 0xF7FF850D - Dark World Lightning
//Offset - 0xF7FF9D05 - DArklord Asmodeus
//Offset - 0xF7FF9E75 - Darklord Desire
//Offset - 0xF7FF9D09 - Darklord Superbia
//Offset - 0xF7FFA0A1 - Darkness Neosphere
//Offset - 0xF7FF8E71 - Decoy Dragon
//Offset - 0xF7FF9B91 - Deep Sea Diva
//Offset - 0xF7FF9AD5 - Defender, The Magical Knight
//Offset - 0xF7FF83D9 - Des Frog
//Offset - 0xF7FF7669 - Des Lacooda
//Offset - 0xF7FF761D - Des Volstgalph
//Offset - 0xF7FF8DF9 - Desert Twister
//Offset - 0xF7FF7A15 - Despair from the Dark
//Offset - 0xF7FF8A85 - Destiny Draw
//Offset - 0xF7FF938D - Destiny End Dragoon
//Offset - 0xF7FF8819 - Destiny Hero - Dasher
//Offset - 0xF7FF8821 - Destiny Hero - Defender
//Offset - 0xF7FF86E5 - Destiny Hero - Diamond Dude
//Offset - 0xF7FF8829 - Destiny Hero - Dogma
//Offset - 0xF7FF86DD - Destiny Hero - Doom Lord
//Offset - 0xF7FF86E9 - Destiny Hero - Dreadmaster
//Offset - 0xF7FF8825 - Destiny Hero - Fear Monger
//Offset - 0xF7FF8A81 - Destiny Hero - Malicious
//Offset - 0xF7FF8C4D - Destiny Hero - Plasma
//Offset - 0xF7FF8C69 - Destroyersaurus
//Offset - 0xF7FF8339 - Divine Knight Ishzark
//Offset - 0xF7FF8455 - Divine Sword - Phoenix Blade
//Offset - 0xF7FF7665 - Don Zaloog
//Offset - 0xF7FF8639 - Doom Dozer
//Offset - 0xF7FF8DD5 - Doom Shaman
//Offset - 0xF7FF96C9 - Doomkaiser Dragon
//Offset - 0xF7FF83FD - Dragon's Mirror
//Offset - 0xF7FF8355 - Drillroid
//Offset - 0xF7FF95ED - Dupe Frog
//Offset - 0xF7FF715D - Electromagnetic Bagworm
//Offset - 0xF7FF9429 - Emperor Sem
//Offset - 0xF7FF9ACD - Endymion, The Master Magician
//Offset - 0xF7FF7C59 - Enraged Battle Ox
//Offset - 0xF7FF9225 - Evil Dragon Ananta
//Offset - 0xF7FF8E99 - Evil Hero Infernal Gainer
//Offset - 0xF7FF8C45 - Exploder Dragon
//Offset - 0xF7FF9FC9 - Explosive Magician
//Offset - 0xF7FF86A5 - Exxod, Master of the Guard
//Offset - 0xF7FF95D9 - Fish Depth Charge
//Offset - 0xF7FF9D79 - Fishborg Blaster
//Offset - 0xF7FF7735 - Five-Headed Dragon
//Offset - 0xF7FF981D - Flip Flop Frog
//Offset - 0xF7FF74C1 - Freed the Matchless General
//Offset - 0xF7FF9409 - Froggy Forcefield
//Offset - 0xF7FF8DF5 - Frost and Flame Dragon
//Offset - 0xF7FF7BB9 - Fuhma Shuriken
//Offset - 0xF7FF920D - Gaap the Divine Soldier
//Offset - 0xF7FF92A9 - Gaia Plate the Earth Giant
//Offset - 0xF7FF80BD - Gaia Soul the Combustible Collective
//Offset - 0xF7FF7B71 - Gale Lizard
//Offset - 0xF7FF7F05 - Gandora the Dragon of Destruction
//Offset - 0xF7FF8519 - Gateway to Dark World
//Offset - 0xF7FF9489 - Geartown
//Offset - 0xF7FF8BCD - Gellenduo
//Offset - 0xF7FF9445 - Gigantic Cephalotus
//Offset - 0xF7FF844D - Gilford the Legend
//Offset - 0xF7FF7DA1 - Goblin King
//Offset - 0xF7FF7819 - Goblin Zombie
//Offset - 0xF7FF8625 - Gokipon
//Offset - 0xF7FF84F1 - Goldd, Wu-Lord of Dark World
//Offset - 0xF7FF92C9 - Golden Flying Fish
//Offset - 0xF7FF9065 - Grave Squirmer
//Offset - 0xF7FF7769 - Gravekeeper's Chief
//Offset - 0xF7FFA219 - Gravekeeper's Descendant
//Offset - 0xF7FF7751 - Gravekeeper's Spy
//Offset - 0xF7FFA289 - Gravekeeper's Stele
//Offset - 0xF7FFA215 - Gravekeeper's Visionary
//Offset - 0xF7FF8DE5 - Gravitic Orb
//Offset - 0xF7FF8341 - Green Baboon, Defender of the Forest
//Offset - 0xF7FF8021 - Green Gadget
//Offset - 0xF7FF9069 - Grinder Golem
//Offset - 0xF7FF85A9 - Hamon, Lord of Striking Thunder
//Offset - 0xF7FF9E59 - Hardened Armed Dragon
//Offset - 0xF7FF8091 - Harpie Lady 1
//Offset - 0xF7FF8C75 - Harpie Queen
//Offset - 0xF7FF80E5 - Harpie's Hunting Ground
//Offset - 0xF7FF92E1 - Hecatrice
//Offset - 0xF7FF8275 - Hieracosphinx
//Offset - 0xF7FFA6ED - Horn of the Phantom Beast
//Offset - 0xF7FF7F99 - Howling Insect
//Offset - 0xF7FF87C1 - Hysteric Party
//Offset - 0xF7FF87A9 - Icarus Attack
//Offset - 0xF7FF8FD5 - Il Blud
//Offset - 0xF7FF7FDD - Inferno Fire Blast
//Offset - 0xF7FF8909 - Jurassic World
//Offset - 0xF7FF8231 - Kaibaman
//Offset - 0xF7FF7555 - Kaiser Glider
//Offset - 0xF7FF9815 - Kasha
//Offset - 0xF7FFA469 - Key Mouse
//Offset - 0xF7FF81C5 - King Dragun
//Offset - 0xF7FF9E65 - King of the Beasts
//Offset - 0xF7FF82C5 - King of the Skull servants
//Offset - 0xF7FF7AF9 - Legendary Flame Lord
//Offset - 0xF7FF8A5D - Light Laser
//Offset - 0xF7FF7241 - Limiter Removal
//Offset - 0xF7FFA645 - Lock Cat
//Offset - 0xF7FF92D1 - Lonefire Blossom
//Offset - 0xF7FF6D45 - Lord of D.
//Offset - 0xF7FF76FD - Lord Poison
//Offset - 0xF7FF8271 - Lost Guardian
//Offset - 0xF7FFA28D - Machine Assembly Line
//Offset - 0xF7FF7729 - Machine Duplication
//Offset - 0xF7FFA2D1 - Machine King - 3000 B.C.
//Offset - 0xF7FF8FF5 - Mad Reloader
//Offset - 0xF7FF8559 - Magical Blast
//Offset - 0xF7FF9AD9 - Magical Citadel of Endymion
//Offset - 0xF7FF7A85 - Magical Dimension
//Offset - 0xF7FF7939 - Magical Marionette
//Offset - 0xF7FF8051 - Magician's Circle
//Offset - 0xF7FF9129 - Magnetic Mosquito
//Offset - 0xF7FF8759 - Majestic Mech - Goryu
//Offset - 0xF7FF8755 - Majestic Mech - Ohka
//Offset - 0xF7FF96E5 - Malevolent Mech - Goku En
//Offset - 0xF7FF7C4D - Manticore of Darkness
//Offset - 0xF7FF74C9 - Marauding Captain
//Offset - 0xF7FF7F9D - Masked Dragon
//Offset - 0xF7FF7DFD - Mazera DeVille
//Offset - 0xF7FF829D - Medusa Worm
//Offset - 0xF7FF8281 - Megarock Dragon
//Offset - 0xF7FF9B95 - Mermaid Archer
//Offset - 0xF7FF9015 - Mezuki
//Offset - 0xF7FF9459 - Miracle Fertilizer
//Offset - 0xF7FF88A5 - Miracle Jurassic Egg
//Offset - 0xF7FF87AD - Miraculous Descent
//Offset - 0xF7FF9E5D - Moja
//Offset - 0xF7FF99BD - Mysterious Triangle
//Offset - 0xF7FF77B1 - Necrovalley
//Offset - 0xF7FF76AD - Needle Wall
//Offset - 0xF7FF8BC5 - Nova Summoner
//Offset - 0xF7FF91B9 - Offering to the Snake Deity
//Offset - 0xF7FF7931 - Old Vindictive Magician
//Offset - 0xF7FF8225 - Overpowering Eye
//Offset - 0xF7FF96E9 - Paladin of the Cursed Dragon
//Offset - 0xF7FF7885 - Paladin of White Dragon
//Offset - 0xF7FF7111 - Patrician of Darkness
//Offset - 0xF7FF9001 - Phantom of Chaos
//Offset - 0xF7FF6DA5 - Pinch Hopper
//Offset - 0xF7FF7D8D - Piranha Army
//Offset - 0xF7FF8D11 - Plague Wolf
//Offset - 0xF7FF96CD - Plaguespreader Zombie
//Offset - 0xF7FF9A05 - Planet Pollutant Virus
//Offset - 0xF7FF9801 - Plant Food Chain
//Offset - 0xF7FF97F9 - Pollinosis
//Offset - 0xF7FF7491 - Possessed Dark Soul
//Offset - 0xF7FF8381 - Power Bond
//Offset - 0xF7FF92CD - Prime Material Dragon
//Offset - 0xF7FF76F1 - Puppet Master
//Offset - 0xF7FFA4A1 - Pyramid of Wonders
//Offset - 0xF7FF7659 - Pyramid Turtle
//Offset - 0xF7FF8D65 - Rainbow Dragon
//Offset - 0xF7FF8115 - Rare Metalmorph
//Offset - 0xF7FF85AD - Raviel, Lord of Phantasms
//Offset - 0xF7FF8DFD - Razor Lizard
//Offset - 0xF7FF779D - Reaper on the Nightmare
//Offset - 0xF7FF8029 - Red Gadget
//Offset - 0xF7FF7F79 - Red-Eyes B. Chick
//Offset - 0xF7FF6341 - Red-Eyes B. Dragon
//Offset - 0xF7FF92A5 - Red-Eyes Darkness Metal Dragon
//Offset - 0xF7FF98A1 - Red-Eyes Wyvern
//Offset - 0xF7FF96E1 - Red-Eyes Zombie Dragon
//Offset - 0xF7FF74F1 - Reinforcement of the Army
//Offset - 0xF7FF8F7D - Release from Stone
//Offset - 0xF7FF81B9 - Rescue Cat
//Offset - 0xF7FF96D5 - Revived King Ha Des
//Offset - 0xF7FF8319 - Rock Bombardment
//Offset - 0xF7FFA45D - Ronintoadin
//Offset - 0xF7FF91E5 - Royal FIrestorm Guards
//Offset - 0xF7FF794D - Royal Magical Library
//Offset - 0xF7FF9AFD - Royal Swamp Eel
//Offset - 0xF7FF77CD - Royal Tribute
//Offset - 0xF7FF8635 - Saber Beetle
//Offset - 0xF7FF9BB1 - Sea Dragon Lord Gishilnodon
//Offset - 0xF7FF97C5 - Secret Village of the Spellcasters
//Offset - 0xF7FF9011 - Shutendoji
//Offset - 0xF7FF804D - Silent Magician LV4
//Offset - 0xF7FF84ED - Sillva, Warlord of Dark World
//Offset - 0xF7FF6259 - Skull Servant
//Offset - 0xF7FF8C79 - Sky Scourge Enrise
//Offset - 0xF7FF8C7D - Sky Scourge Norleras
//Offset - 0xF7FF8D59 - Snake Deity's Command
//Offset - 0xF7FF8D51 - Snake Rain
//Offset - 0xF7FF9DE1 - Solidarity
//Offset - 0xF7FF7D5D - Soul-Absorbing Bone Tower
//Offset - 0xF7FF9ADD - Spell Power Grasp
//Offset - 0xF7FF96A5 - Sphere of Chaos
//Offset - 0xF7FF7795 - Spirit Reaper
//Offset - 0xF7FFA005 - Spiritual Forest
//Offset - 0xF7FF8FF1 - Splendid Venus
//Offset - 0xF7FF7535 - Stamping Destruction
//Offset - 0xF7FF8351 - Steamroid
//Offset - 0xF7FF87E9 - Submarineroid
//Offset - 0xF7FF9355 - Substitoad
//Offset - 0xF7FF8EC5 - Summon Cloud
//Offset - 0xF7FF88F1 - Super Conductor Tyranno
//Offset - 0xF7FF7539 - Super Rejuvenation
//Offset - 0xF7FF99AD - Super Solar Nutrient
//Offset - 0xF7FF87ED - Super Vehicroid Jumbo Drill
//Offset - 0xF7FF9115 - Superancient Deepsea King Coelacanth
//Offset - 0xF7FF9615 - Super-Ancient Dinobeast
//Offset - 0xF7FF8809 - Supercharge
//Offset - 0xF7FFA3B9 - Super-Nimble Mega Hamster
//Offset - 0xF7FF88F9 - Survival Instinct
//Offset - 0xF7FF9E69 - Swallow's Nest
//Offset - 0xF7FF9FA1 - Swap Frog
//Offset - 0xF7FF8905 - Tail Swipe
//Offset - 0xF7FF9A2D - Tempest Magician
//Offset - 0xF7FF92B1 - Tethys, Goddess of Light
//Offset - 0xF7FFA389 - The Atmosphere
//Offset - 0xF7FF9105 - The Immortal Bushi
//Offset - 0xF7FF937D - The Lady in Wight
//Offset - 0xF7FF7DC5 - The Sanctuary in the Sky
//Offset - 0xF7FF801D - The Tricky
//Offset - 0xF7FF74F9 - The Warrior Returning Alive
//Offset - 0xF7FF96D1 - The White Stone of Legend
//Offset - 0xF7FF8C39 - The Wicked Avatar
//Offset - 0xF7FF838D - The Wicked Dreadroot
//Offset - 0xF7FF8C3D - THe Wicked Eraser
//Offset - 0xF7FF97BD - The World Tree
//Offset - 0xF7FF9AF9 - Totem Dragon
//Offset - 0xF7FF7C01 - Tower of Babel
//Offset - 0xF7FF76B1 - Trap Dustshoot
//Offset - 0xF7FF863D - Treeborn Frog
//Offset - 0xF7FF9BAD - Trident Dragion
//Offset - 0xF7FFA8FD - Troposphere
//Offset - 0xF7FF8541 - Tualatin
//Offset - 0xF7FF7139 - Twin-Headed Behemoth
//Offset - 0xF7FF83E5 - Tyranno Infinity
//Offset - 0xF7FF9769 - Tytannial, Princess of Camellias
//Offset - 0xF7FF9391 - Ultimate Ancient Gear Golem
//Offset - 0xF7FF8875 - Ultimate Tyranno
//Offset - 0xF7FF9359 - Unifrog
//Offset - 0xF7FF85A5 - Uria, Lord of Searing Flames
//Offset - 0xF7FF92E5 - Valhalla, Hall of the Fallen
//Offset - 0xF7FF7625 - Vampire Lord
//Offset - 0xF7FF8219 - Vampire's Curse
//Offset - 0xF7FF880D - Vehicroid Connection Zone
//Offset - 0xF7FF9101 - Vengeful Shinobi
//Offset - 0xF7FF8D99 - Vennominaga the Deity of Poisonous Snakes
//Offset - 0xF7FF8D95 - Vennominon the King of Poisonous Snakes
//Offset - 0xF7FF8D49 - Venom Swamp
//Offset - 0xF7FF99B5 - Verdant Sanctuary
//Offset - 0xF7FF9A09 - Victoria
//Offset - 0xF7FF90C9 - Volcanic Counter
//Offset - 0xF7FF92F9 - Volcanic Queen
//Offset - 0xF7FF8E61 - Volcanic Rocket
//Offset - 0xF7FF8C19 - Volcanic Scattershot
//Offset - 0xF7FF8C15 - Volcanic Shell
//Offset - 0xF7FF8C55 - Volcanic Slicer
//Offset - 0xF7FF9A01 - Wall of Thorns
//Offset - 0xF7FF93BD - Wetlands
//Offset - 0xF7FF8599 - White-Horned Dragon
//Offset - 0xF7FFA7BD - Wightmare
//Offset - 0xF7FF7BC1 - Wild Nature's Release
//Offset - 0xF7FF802D - Yellow Gadget
//Offset - 0xF7FF8C6D - Zeradias, Herald of Heaven
//Offset - 0xF7FF8E09 - Zombie Master
//Offset - 0xF7FF96ED - Zombie World

function the_origin_of_species() =>  byte(0xF7FF777D+dword(0xe7b054))/byte(0xF7FF777D)+byte(0xF7FF752D+dword(0xe7b054))/byte(0xF7FF752D)+
                                     byte(0xF7FF8FC5+dword(0xe7b054))/byte(0xF7FF8FC5)+byte(0xF7FF9961+dword(0xe7b054))/byte(0xF7FF9961)+
                                     byte(0xF7FF9B89+dword(0xe7b054))/byte(0xF7FF9B89)+byte(0xF7FF8F39+dword(0xe7b054))/byte(0xF7FF8F39)+
                                     byte(0xF7FF995D+dword(0xe7b054))/byte(0xF7FF995D)+byte(0xF7FF8C09+dword(0xe7b054))/byte(0xF7FF8C09)+
                                     byte(0xF7FF8261+dword(0xe7b054))/byte(0xF7FF8261)+byte(0xF7FF85E1+dword(0xe7b054))/byte(0xF7FF85E1)+
                                     byte(0xF7FF892D+dword(0xe7b054))/byte(0xF7FF892D)+byte(0xF7FF8939+dword(0xe7b054))/byte(0xF7FF8939)+
                                     byte(0xF7FF8A3D+dword(0xe7b054))/byte(0xF7FF8A3D)+byte(0xF7FF825D+dword(0xe7b054))/byte(0xF7FF825D)+
                                     byte(0xF7FF8A49+dword(0xe7b054))/byte(0xF7FF8A49)+byte(0xF7FF73B1+dword(0xe7b054))/byte(0xF7FF73B1)+
                                     byte(0xF7FF8BA9+dword(0xe7b054))/byte(0xF7FF8BA9)+byte(0xF7FF8631+dword(0xe7b054))/byte(0xF7FF8631)+
                                     byte(0xF7FF792D+dword(0xe7b054))/byte(0xF7FF792D)+byte(0xF7FF9329+dword(0xe7b054))/byte(0xF7FF9329)+
                                     byte(0xF7FF8FE5+dword(0xe7b054))/byte(0xF7FF8FE5)+byte(0xF7FF9325+dword(0xe7b054))/byte(0xF7FF9325)+
                                     byte(0xF7FF9971+dword(0xe7b054))/byte(0xF7FF9971)+byte(0xF7FF9DB1+dword(0xe7b054))/byte(0xF7FF9DB1)+
                                     byte(0xF7FF9D01+dword(0xe7b054))/byte(0xF7FF9D01)+byte(0xF7FF7DAD+dword(0xe7b054))/byte(0xF7FF7DAD)+
                                     byte(0xF7FF9201+dword(0xe7b054))/byte(0xF7FF9201)+byte(0xF7FF92DD+dword(0xe7b054))/byte(0xF7FF92DD)+
                                     byte(0xF7FF92D5+dword(0xe7b054))/byte(0xF7FF92D5)+byte(0xF7FF88AD+dword(0xe7b054))/byte(0xF7FF88AD)+
                                     byte(0xF7FF74A9+dword(0xe7b054))/byte(0xF7FF74A9)+byte(0xF7FF9E4D+dword(0xe7b054))/byte(0xF7FF9E4D)+
                                     byte(0xF7FF8201+dword(0xe7b054))/byte(0xF7FF8201)+byte(0xF7FF9E61+dword(0xe7b054))/byte(0xF7FF9E61)+
                                     byte(0xF7FF8171+dword(0xe7b054))/byte(0xF7FF8171)+byte(0xF7FF79DD+dword(0xe7b054))/byte(0xF7FF79DD)+
                                     byte(0xF7FF9E71+dword(0xe7b054))/byte(0xF7FF9E71)+byte(0xF7FF88FD+dword(0xe7b054))/byte(0xF7FF88FD)+
                                     byte(0xF7FF7D09+dword(0xe7b054))/byte(0xF7FF7D09)+byte(0xF7FF8871+dword(0xe7b054))/byte(0xF7FF8871)+
                                     byte(0xF7FF8C25+dword(0xe7b054))/byte(0xF7FF8C25)+byte(0xF7FF8B91+dword(0xe7b054))/byte(0xF7FF8B91)+
                                     byte(0xF7FFA545+dword(0xe7b054))/byte(0xF7FFA545)+byte(0xF7FF61FD+dword(0xe7b054))/byte(0xF7FF61FD)+
                                     byte(0xF7FF7675+dword(0xe7b054))/byte(0xF7FF7675)+byte(0xF7FF9765+dword(0xe7b054))/byte(0xF7FF9765)+
                                     byte(0xF7FF9281+dword(0xe7b054))/byte(0xF7FF9281)+byte(0xF7FF84E9+dword(0xe7b054))/byte(0xF7FF84E9)+
                                     byte(0xF7FF7DB9+dword(0xe7b054))/byte(0xF7FF7DB9)+byte(0xF7FF7481+dword(0xe7b054))/byte(0xF7FF7481)+
                                     byte(0xF7FFA3BD+dword(0xe7b054))/byte(0xF7FFA3BD)+byte(0xF7FF9A15+dword(0xe7b054))/byte(0xF7FF9A15)+
                                     byte(0xF7FF7685+dword(0xe7b054))/byte(0xF7FF7685)+byte(0xF7FF86AD+dword(0xe7b054))/byte(0xF7FF86AD)+
                                     byte(0xF7FF8A59+dword(0xe7b054))/byte(0xF7FF8A59)+byte(0xF7FF8799+dword(0xe7b054))/byte(0xF7FF8799)+
                                     byte(0xF7FFA7B9+dword(0xe7b054))/byte(0xF7FFA7B9)+byte(0xF7FF7BAD+dword(0xe7b054))/byte(0xF7FF7BAD)+
                                     byte(0xF7FF9099+dword(0xe7b054))/byte(0xF7FF9099)+byte(0xF7FF8705+dword(0xe7b054))/byte(0xF7FF8705)+
                                     byte(0xF7FF8EAD+dword(0xe7b054))/byte(0xF7FF8EAD)+byte(0xF7FF8EB9+dword(0xe7b054))/byte(0xF7FF8EB9)+
                                     byte(0xF7FF9385+dword(0xe7b054))/byte(0xF7FF9385)+byte(0xF7FF8EED+dword(0xe7b054))/byte(0xF7FF8EED)+
                                     byte(0xF7FF9CF1+dword(0xe7b054))/byte(0xF7FF9CF1)+byte(0xF7FF7791+dword(0xe7b054))/byte(0xF7FF7791)+
                                     byte(0xF7FF9B05+dword(0xe7b054))/byte(0xF7FF9B05)+byte(0xF7FF7105+dword(0xe7b054))/byte(0xF7FF7105)+
                                     byte(0xF7FF9771+dword(0xe7b054))/byte(0xF7FF9771)+byte(0xF7FF9975+dword(0xe7b054))/byte(0xF7FF9975)+
                                     byte(0xF7FF8FC1+dword(0xe7b054))/byte(0xF7FF8FC1)+byte(0xF7FF8279+dword(0xe7b054))/byte(0xF7FF8279)+
                                     byte(0xF7FF9F91+dword(0xe7b054))/byte(0xF7FF9F91)+byte(0xF7FF8CA5+dword(0xe7b054))/byte(0xF7FF8CA5)+
                                     byte(0xF7FF8BE9+dword(0xe7b054))/byte(0xF7FF8BE9)+byte(0xF7FF8BF5+dword(0xe7b054))/byte(0xF7FF8BF5)+
                                     byte(0xF7FF8C05+dword(0xe7b054))/byte(0xF7FF8C05)+byte(0xF7FF84A5+dword(0xe7b054))/byte(0xF7FF84A5)+
                                     byte(0xF7FF9F05+dword(0xe7b054))/byte(0xF7FF9F05)+byte(0xF7FF86F9+dword(0xe7b054))/byte(0xF7FF86F9)+
                                     byte(0xF7FF86F1+dword(0xe7b054))/byte(0xF7FF86F1)+byte(0xF7FF8959+dword(0xe7b054))/byte(0xF7FF8959)+
                                     byte(0xF7FF8E11+dword(0xe7b054))/byte(0xF7FF8E11)+byte(0xF7FF8D55+dword(0xe7b054))/byte(0xF7FF8D55)+
                                     byte(0xF7FFA519+dword(0xe7b054))/byte(0xF7FFA519)+byte(0xF7FF772D+dword(0xe7b054))/byte(0xF7FF772D)+
                                     byte(0xF7FF7F59+dword(0xe7b054))/byte(0xF7FF7F59)+byte(0xF7FF737D+dword(0xe7b054))/byte(0xF7FF737D)+
                                     byte(0xF7FF859D+dword(0xe7b054))/byte(0xF7FF859D)+byte(0xF7FF7485+dword(0xe7b054))/byte(0xF7FF7485)+
                                     byte(0xF7FF7ABD+dword(0xe7b054))/byte(0xF7FF7ABD)+byte(0xF7FF8B55+dword(0xe7b054))/byte(0xF7FF8B55)+
                                     byte(0xF7FF850D+dword(0xe7b054))/byte(0xF7FF850D)+byte(0xF7FF9D05+dword(0xe7b054))/byte(0xF7FF9D05)+
                                     byte(0xF7FF9E75+dword(0xe7b054))/byte(0xF7FF9E75)+byte(0xF7FF9D09+dword(0xe7b054))/byte(0xF7FF9D09)+
                                     byte(0xF7FFA0A1+dword(0xe7b054))/byte(0xF7FFA0A1)+byte(0xF7FF8E71+dword(0xe7b054))/byte(0xF7FF8E71)+
                                     byte(0xF7FF9B91+dword(0xe7b054))/byte(0xF7FF9B91)+byte(0xF7FF9AD5+dword(0xe7b054))/byte(0xF7FF9AD5)+
                                     byte(0xF7FF83D9+dword(0xe7b054))/byte(0xF7FF83D9)+byte(0xF7FF7669+dword(0xe7b054))/byte(0xF7FF7669)+
                                     byte(0xF7FF761D+dword(0xe7b054))/byte(0xF7FF761D)+byte(0xF7FF8DF9+dword(0xe7b054))/byte(0xF7FF8DF9)+
                                     byte(0xF7FF7A15+dword(0xe7b054))/byte(0xF7FF7A15)+byte(0xF7FF8A85+dword(0xe7b054))/byte(0xF7FF8A85)+
                                     byte(0xF7FF938D+dword(0xe7b054))/byte(0xF7FF938D)+byte(0xF7FF8819+dword(0xe7b054))/byte(0xF7FF8819)+
                                     byte(0xF7FF8821+dword(0xe7b054))/byte(0xF7FF8821)+byte(0xF7FF86E5+dword(0xe7b054))/byte(0xF7FF86E5)+
                                     byte(0xF7FF8829+dword(0xe7b054))/byte(0xF7FF8829)+byte(0xF7FF86DD+dword(0xe7b054))/byte(0xF7FF86DD)+
                                     byte(0xF7FF86E9+dword(0xe7b054))/byte(0xF7FF86E9)+byte(0xF7FF8825+dword(0xe7b054))/byte(0xF7FF8825)+
                                     byte(0xF7FF8A81+dword(0xe7b054))/byte(0xF7FF8A81)+byte(0xF7FF8C4D+dword(0xe7b054))/byte(0xF7FF8C4D)+
                                     byte(0xF7FF8C69+dword(0xe7b054))/byte(0xF7FF8C69)+byte(0xF7FF8339+dword(0xe7b054))/byte(0xF7FF8339)+
                                     byte(0xF7FF8455+dword(0xe7b054))/byte(0xF7FF8455)+byte(0xF7FF7665+dword(0xe7b054))/byte(0xF7FF7665)+
                                     byte(0xF7FF8639+dword(0xe7b054))/byte(0xF7FF8639)+byte(0xF7FF8DD5+dword(0xe7b054))/byte(0xF7FF8DD5)+
                                     byte(0xF7FF96C9+dword(0xe7b054))/byte(0xF7FF96C9)+byte(0xF7FF83FD+dword(0xe7b054))/byte(0xF7FF83FD)+
                                     byte(0xF7FF8355+dword(0xe7b054))/byte(0xF7FF8355)+byte(0xF7FF95ED+dword(0xe7b054))/byte(0xF7FF95ED)+
                                     byte(0xF7FF715D+dword(0xe7b054))/byte(0xF7FF715D)+byte(0xF7FF9429+dword(0xe7b054))/byte(0xF7FF9429)+
                                     byte(0xF7FF9ACD+dword(0xe7b054))/byte(0xF7FF9ACD)+byte(0xF7FF7C59+dword(0xe7b054))/byte(0xF7FF7C59)+
                                     byte(0xF7FF9225+dword(0xe7b054))/byte(0xF7FF9225)+byte(0xF7FF8E99+dword(0xe7b054))/byte(0xF7FF8E99)+
                                     byte(0xF7FF8C45+dword(0xe7b054))/byte(0xF7FF8C45)+byte(0xF7FF9FC9+dword(0xe7b054))/byte(0xF7FF9FC9)+
                                     byte(0xF7FF86A5+dword(0xe7b054))/byte(0xF7FF86A5)+byte(0xF7FF95D9+dword(0xe7b054))/byte(0xF7FF95D9)+
                                     byte(0xF7FF9D79+dword(0xe7b054))/byte(0xF7FF9D79)+byte(0xF7FF7735+dword(0xe7b054))/byte(0xF7FF7735)+
                                     byte(0xF7FF981D+dword(0xe7b054))/byte(0xF7FF981D)+byte(0xF7FF74C1+dword(0xe7b054))/byte(0xF7FF74C1)+
                                     byte(0xF7FF9409+dword(0xe7b054))/byte(0xF7FF9409)+byte(0xF7FF8DF5+dword(0xe7b054))/byte(0xF7FF8DF5)+
                                     byte(0xF7FF7BB9+dword(0xe7b054))/byte(0xF7FF7BB9)+byte(0xF7FF920D+dword(0xe7b054))/byte(0xF7FF920D)+
                                     byte(0xF7FF92A9+dword(0xe7b054))/byte(0xF7FF92A9)+byte(0xF7FF80BD+dword(0xe7b054))/byte(0xF7FF80BD)+
                                     byte(0xF7FF7B71+dword(0xe7b054))/byte(0xF7FF7B71)+byte(0xF7FF7F05+dword(0xe7b054))/byte(0xF7FF7F05)+
                                     byte(0xF7FF8519+dword(0xe7b054))/byte(0xF7FF8519)+byte(0xF7FF9489+dword(0xe7b054))/byte(0xF7FF9489)+
                                     byte(0xF7FF8BCD+dword(0xe7b054))/byte(0xF7FF8BCD)+byte(0xF7FF9445+dword(0xe7b054))/byte(0xF7FF9445)+
                                     byte(0xF7FF844D+dword(0xe7b054))/byte(0xF7FF844D)+byte(0xF7FF7DA1+dword(0xe7b054))/byte(0xF7FF7DA1)+
                                     byte(0xF7FF7819+dword(0xe7b054))/byte(0xF7FF7819)+byte(0xF7FF8625+dword(0xe7b054))/byte(0xF7FF8625)+
                                     byte(0xF7FF84F1+dword(0xe7b054))/byte(0xF7FF84F1)+byte(0xF7FF92C9+dword(0xe7b054))/byte(0xF7FF92C9)+
                                     byte(0xF7FF9065+dword(0xe7b054))/byte(0xF7FF9065)+byte(0xF7FF7769+dword(0xe7b054))/byte(0xF7FF7769)+
                                     byte(0xF7FFA219+dword(0xe7b054))/byte(0xF7FFA219)+byte(0xF7FF7751+dword(0xe7b054))/byte(0xF7FF7751)+
                                     byte(0xF7FFA289+dword(0xe7b054))/byte(0xF7FFA289)+byte(0xF7FFA215+dword(0xe7b054))/byte(0xF7FFA215)+
                                     byte(0xF7FF8DE5+dword(0xe7b054))/byte(0xF7FF8DE5)+byte(0xF7FF8341+dword(0xe7b054))/byte(0xF7FF8341)+
                                     byte(0xF7FF8021+dword(0xe7b054))/byte(0xF7FF8021)+byte(0xF7FF9069+dword(0xe7b054))/byte(0xF7FF9069)+
                                     byte(0xF7FF85A9+dword(0xe7b054))/byte(0xF7FF85A9)+byte(0xF7FF9E59+dword(0xe7b054))/byte(0xF7FF9E59)+
                                     byte(0xF7FF8091+dword(0xe7b054))/byte(0xF7FF8091)+byte(0xF7FF8C75+dword(0xe7b054))/byte(0xF7FF8C75)+
                                     byte(0xF7FF80E5+dword(0xe7b054))/byte(0xF7FF80E5)+byte(0xF7FF92E1+dword(0xe7b054))/byte(0xF7FF92E1)+
                                     byte(0xF7FF8275+dword(0xe7b054))/byte(0xF7FF8275)+byte(0xF7FFA6ED+dword(0xe7b054))/byte(0xF7FFA6ED)+
                                     byte(0xF7FF7F99+dword(0xe7b054))/byte(0xF7FF7F99)+byte(0xF7FF87C1+dword(0xe7b054))/byte(0xF7FF87C1)+
                                     byte(0xF7FF87A9+dword(0xe7b054))/byte(0xF7FF87A9)+byte(0xF7FF8FD5+dword(0xe7b054))/byte(0xF7FF8FD5)+
                                     byte(0xF7FF7FDD+dword(0xe7b054))/byte(0xF7FF7FDD)+byte(0xF7FF8909+dword(0xe7b054))/byte(0xF7FF8909)+
                                     byte(0xF7FF8231+dword(0xe7b054))/byte(0xF7FF8231)+byte(0xF7FF7555+dword(0xe7b054))/byte(0xF7FF7555)+
                                     byte(0xF7FF9815+dword(0xe7b054))/byte(0xF7FF9815)+byte(0xF7FFA469+dword(0xe7b054))/byte(0xF7FFA469)+
                                     byte(0xF7FF81C5+dword(0xe7b054))/byte(0xF7FF81C5)+byte(0xF7FF9E65+dword(0xe7b054))/byte(0xF7FF9E65)+
                                     byte(0xF7FF82C5+dword(0xe7b054))/byte(0xF7FF82C5)+byte(0xF7FF7AF9+dword(0xe7b054))/byte(0xF7FF7AF9)+
                                     byte(0xF7FF8A5D+dword(0xe7b054))/byte(0xF7FF8A5D)+byte(0xF7FF7241+dword(0xe7b054))/byte(0xF7FF7241)+
                                     byte(0xF7FFA645+dword(0xe7b054))/byte(0xF7FFA645)+byte(0xF7FF92D1+dword(0xe7b054))/byte(0xF7FF92D1)+
                                     byte(0xF7FF6D45+dword(0xe7b054))/byte(0xF7FF6D45)+byte(0xF7FF76FD+dword(0xe7b054))/byte(0xF7FF76FD)+
                                     byte(0xF7FF8271+dword(0xe7b054))/byte(0xF7FF8271)+byte(0xF7FFA28D+dword(0xe7b054))/byte(0xF7FFA28D)+
                                     byte(0xF7FF7729+dword(0xe7b054))/byte(0xF7FF7729)+byte(0xF7FFA2D1+dword(0xe7b054))/byte(0xF7FFA2D1)+
                                     byte(0xF7FF8FF5+dword(0xe7b054))/byte(0xF7FF8FF5)+byte(0xF7FF8559+dword(0xe7b054))/byte(0xF7FF8559)+
                                     byte(0xF7FF9AD9+dword(0xe7b054))/byte(0xF7FF9AD9)+byte(0xF7FF7A85+dword(0xe7b054))/byte(0xF7FF7A85)+
                                     byte(0xF7FF7939+dword(0xe7b054))/byte(0xF7FF7939)+byte(0xF7FF8051+dword(0xe7b054))/byte(0xF7FF8051)+
                                     byte(0xF7FF9129+dword(0xe7b054))/byte(0xF7FF9129)+byte(0xF7FF8759+dword(0xe7b054))/byte(0xF7FF8759)+
                                     byte(0xF7FF8755+dword(0xe7b054))/byte(0xF7FF8755)+byte(0xF7FF96E5+dword(0xe7b054))/byte(0xF7FF96E5)+
                                     byte(0xF7FF7C4D+dword(0xe7b054))/byte(0xF7FF7C4D)+byte(0xF7FF74C9+dword(0xe7b054))/byte(0xF7FF74C9)+
                                     byte(0xF7FF7F9D+dword(0xe7b054))/byte(0xF7FF7F9D)+byte(0xF7FF7DFD+dword(0xe7b054))/byte(0xF7FF7DFD)+
                                     byte(0xF7FF829D+dword(0xe7b054))/byte(0xF7FF829D)+byte(0xF7FF8281+dword(0xe7b054))/byte(0xF7FF8281)+
                                     byte(0xF7FF9B95+dword(0xe7b054))/byte(0xF7FF9B95)+byte(0xF7FF9015+dword(0xe7b054))/byte(0xF7FF9015)+
                                     byte(0xF7FF9459+dword(0xe7b054))/byte(0xF7FF9459)+byte(0xF7FF88A5+dword(0xe7b054))/byte(0xF7FF88A5)+
                                     byte(0xF7FF87AD+dword(0xe7b054))/byte(0xF7FF87AD)+byte(0xF7FF9E5D+dword(0xe7b054))/byte(0xF7FF9E5D)+
                                     byte(0xF7FF99BD+dword(0xe7b054))/byte(0xF7FF99BD)+byte(0xF7FF77B1+dword(0xe7b054))/byte(0xF7FF77B1)+
                                     byte(0xF7FF76AD+dword(0xe7b054))/byte(0xF7FF76AD)+byte(0xF7FF8BC5+dword(0xe7b054))/byte(0xF7FF8BC5)+
                                     byte(0xF7FF91B9+dword(0xe7b054))/byte(0xF7FF91B9)+byte(0xF7FF7931+dword(0xe7b054))/byte(0xF7FF7931)+
                                     byte(0xF7FF8225+dword(0xe7b054))/byte(0xF7FF8225)+byte(0xF7FF96E9+dword(0xe7b054))/byte(0xF7FF96E9)+
                                     byte(0xF7FF7885+dword(0xe7b054))/byte(0xF7FF7885)+byte(0xF7FF7111+dword(0xe7b054))/byte(0xF7FF7111)+
                                     byte(0xF7FF9001+dword(0xe7b054))/byte(0xF7FF9001)+byte(0xF7FF6DA5+dword(0xe7b054))/byte(0xF7FF6DA5)+
                                     byte(0xF7FF7D8D+dword(0xe7b054))/byte(0xF7FF7D8D)+byte(0xF7FF8D11+dword(0xe7b054))/byte(0xF7FF8D11)+
                                     byte(0xF7FF96CD+dword(0xe7b054))/byte(0xF7FF96CD)+byte(0xF7FF9A05+dword(0xe7b054))/byte(0xF7FF9A05)+
                                     byte(0xF7FF9801+dword(0xe7b054))/byte(0xF7FF9801)+byte(0xF7FF97F9+dword(0xe7b054))/byte(0xF7FF97F9)+
                                     byte(0xF7FF7491+dword(0xe7b054))/byte(0xF7FF7491)+byte(0xF7FF8381+dword(0xe7b054))/byte(0xF7FF8381)+
                                     byte(0xF7FF92CD+dword(0xe7b054))/byte(0xF7FF92CD)+byte(0xF7FF76F1+dword(0xe7b054))/byte(0xF7FF76F1)+
                                     byte(0xF7FFA4A1+dword(0xe7b054))/byte(0xF7FFA4A1)+byte(0xF7FF7659+dword(0xe7b054))/byte(0xF7FF7659)+
                                     byte(0xF7FF8D65+dword(0xe7b054))/byte(0xF7FF8D65)+byte(0xF7FF8115+dword(0xe7b054))/byte(0xF7FF8115)+
                                     byte(0xF7FF85AD+dword(0xe7b054))/byte(0xF7FF85AD)+byte(0xF7FF8DFD+dword(0xe7b054))/byte(0xF7FF8DFD)+
                                     byte(0xF7FF779D+dword(0xe7b054))/byte(0xF7FF779D)+byte(0xF7FF8029+dword(0xe7b054))/byte(0xF7FF8029)+
                                     byte(0xF7FF7F79+dword(0xe7b054))/byte(0xF7FF7F79)+byte(0xF7FF6341+dword(0xe7b054))/byte(0xF7FF6341)+
                                     byte(0xF7FF92A5+dword(0xe7b054))/byte(0xF7FF92A5)+byte(0xF7FF98A1+dword(0xe7b054))/byte(0xF7FF98A1)+
                                     byte(0xF7FF96E1+dword(0xe7b054))/byte(0xF7FF96E1)+byte(0xF7FF74F1+dword(0xe7b054))/byte(0xF7FF74F1)+
                                     byte(0xF7FF8F7D+dword(0xe7b054))/byte(0xF7FF8F7D)+byte(0xF7FF81B9+dword(0xe7b054))/byte(0xF7FF81B9)+
                                     byte(0xF7FF96D5+dword(0xe7b054))/byte(0xF7FF96D5)+byte(0xF7FF8319+dword(0xe7b054))/byte(0xF7FF8319)+
                                     byte(0xF7FFA45D+dword(0xe7b054))/byte(0xF7FFA45D)+byte(0xF7FF91E5+dword(0xe7b054))/byte(0xF7FF91E5)+
                                     byte(0xF7FF794D+dword(0xe7b054))/byte(0xF7FF794D)+byte(0xF7FF9AFD+dword(0xe7b054))/byte(0xF7FF9AFD)+
                                     byte(0xF7FF77CD+dword(0xe7b054))/byte(0xF7FF77CD)+byte(0xF7FF8635+dword(0xe7b054))/byte(0xF7FF8635)+
                                     byte(0xF7FF9BB1+dword(0xe7b054))/byte(0xF7FF9BB1)+byte(0xF7FF97C5+dword(0xe7b054))/byte(0xF7FF97C5)+
                                     byte(0xF7FF9011+dword(0xe7b054))/byte(0xF7FF9011)+byte(0xF7FF804D+dword(0xe7b054))/byte(0xF7FF804D)+
                                     byte(0xF7FF84ED+dword(0xe7b054))/byte(0xF7FF84ED)+byte(0xF7FF6259+dword(0xe7b054))/byte(0xF7FF6259)+
                                     byte(0xF7FF8C79+dword(0xe7b054))/byte(0xF7FF8C79)+byte(0xF7FF8C7D+dword(0xe7b054))/byte(0xF7FF8C7D)+
                                     byte(0xF7FF8D59+dword(0xe7b054))/byte(0xF7FF8D59)+byte(0xF7FF8D51+dword(0xe7b054))/byte(0xF7FF8D51)+
                                     byte(0xF7FF9DE1+dword(0xe7b054))/byte(0xF7FF9DE1)+byte(0xF7FF7D5D+dword(0xe7b054))/byte(0xF7FF7D5D)+
                                     byte(0xF7FF9ADD+dword(0xe7b054))/byte(0xF7FF9ADD)+byte(0xF7FF96A5+dword(0xe7b054))/byte(0xF7FF96A5)+
                                     byte(0xF7FF7795+dword(0xe7b054))/byte(0xF7FF7795)+byte(0xF7FFA005+dword(0xe7b054))/byte(0xF7FFA005)+
                                     byte(0xF7FF8FF1+dword(0xe7b054))/byte(0xF7FF8FF1)+byte(0xF7FF7535+dword(0xe7b054))/byte(0xF7FF7535)+
                                     byte(0xF7FF8351+dword(0xe7b054))/byte(0xF7FF8351)+byte(0xF7FF87E9+dword(0xe7b054))/byte(0xF7FF87E9)+
                                     byte(0xF7FF9355+dword(0xe7b054))/byte(0xF7FF9355)+byte(0xF7FF8EC5+dword(0xe7b054))/byte(0xF7FF8EC5)+
                                     byte(0xF7FF88F1+dword(0xe7b054))/byte(0xF7FF88F1)+byte(0xF7FF7539+dword(0xe7b054))/byte(0xF7FF7539)+
                                     byte(0xF7FF99AD+dword(0xe7b054))/byte(0xF7FF99AD)+byte(0xF7FF87ED+dword(0xe7b054))/byte(0xF7FF87ED)+
                                     byte(0xF7FF9115+dword(0xe7b054))/byte(0xF7FF9115)+byte(0xF7FF9615+dword(0xe7b054))/byte(0xF7FF9615)+
                                     byte(0xF7FF8809+dword(0xe7b054))/byte(0xF7FF8809)+byte(0xF7FFA3B9+dword(0xe7b054))/byte(0xF7FFA3B9)+
                                     byte(0xF7FF88F9+dword(0xe7b054))/byte(0xF7FF88F9)+byte(0xF7FF9E69+dword(0xe7b054))/byte(0xF7FF9E69)+
                                     byte(0xF7FF9FA1+dword(0xe7b054))/byte(0xF7FF9FA1)+byte(0xF7FF8905+dword(0xe7b054))/byte(0xF7FF8905)+
                                     byte(0xF7FF9A2D+dword(0xe7b054))/byte(0xF7FF9A2D)+byte(0xF7FF92B1+dword(0xe7b054))/byte(0xF7FF92B1)+
                                     byte(0xF7FFA389+dword(0xe7b054))/byte(0xF7FFA389)+byte(0xF7FF9105+dword(0xe7b054))/byte(0xF7FF9105)+
                                     byte(0xF7FF937D+dword(0xe7b054))/byte(0xF7FF937D)+byte(0xF7FF7DC5+dword(0xe7b054))/byte(0xF7FF7DC5)+
                                     byte(0xF7FF801D+dword(0xe7b054))/byte(0xF7FF801D)+byte(0xF7FF74F9+dword(0xe7b054))/byte(0xF7FF74F9)+
                                     byte(0xF7FF96D1+dword(0xe7b054))/byte(0xF7FF96D1)+byte(0xF7FF8C39+dword(0xe7b054))/byte(0xF7FF8C39)+
                                     byte(0xF7FF838D+dword(0xe7b054))/byte(0xF7FF838D)+byte(0xF7FF8C3D+dword(0xe7b054))/byte(0xF7FF8C3D)+
                                     byte(0xF7FF97BD+dword(0xe7b054))/byte(0xF7FF97BD)+byte(0xF7FF9AF9+dword(0xe7b054))/byte(0xF7FF9AF9)+
                                     byte(0xF7FF7C01+dword(0xe7b054))/byte(0xF7FF7C01)+byte(0xF7FF76B1+dword(0xe7b054))/byte(0xF7FF76B1)+
                                     byte(0xF7FF863D+dword(0xe7b054))/byte(0xF7FF863D)+byte(0xF7FF9BAD+dword(0xe7b054))/byte(0xF7FF9BAD)+
                                     byte(0xF7FFA8FD+dword(0xe7b054))/byte(0xF7FFA8FD)+byte(0xF7FF8541+dword(0xe7b054))/byte(0xF7FF8541)+
                                     byte(0xF7FF7139+dword(0xe7b054))/byte(0xF7FF7139)+byte(0xF7FF83E5+dword(0xe7b054))/byte(0xF7FF83E5)+
                                     byte(0xF7FF9769+dword(0xe7b054))/byte(0xF7FF9769)+byte(0xF7FF9391+dword(0xe7b054))/byte(0xF7FF9391)+
                                     byte(0xF7FF8875+dword(0xe7b054))/byte(0xF7FF8875)+byte(0xF7FF9359+dword(0xe7b054))/byte(0xF7FF9359)+
                                     byte(0xF7FF85A5+dword(0xe7b054))/byte(0xF7FF85A5)+byte(0xF7FF92E5+dword(0xe7b054))/byte(0xF7FF92E5)+
                                     byte(0xF7FF7625+dword(0xe7b054))/byte(0xF7FF7625)+byte(0xF7FF8219+dword(0xe7b054))/byte(0xF7FF8219)+
                                     byte(0xF7FF880D+dword(0xe7b054))/byte(0xF7FF880D)+byte(0xF7FF9101+dword(0xe7b054))/byte(0xF7FF9101)+
                                     byte(0xF7FF8D99+dword(0xe7b054))/byte(0xF7FF8D99)+byte(0xF7FF8D95+dword(0xe7b054))/byte(0xF7FF8D95)+
                                     byte(0xF7FF8D49+dword(0xe7b054))/byte(0xF7FF8D49)+byte(0xF7FF99B5+dword(0xe7b054))/byte(0xF7FF99B5)+
                                     byte(0xF7FF9A09+dword(0xe7b054))/byte(0xF7FF9A09)+byte(0xF7FF90C9+dword(0xe7b054))/byte(0xF7FF90C9)+
                                     byte(0xF7FF92F9+dword(0xe7b054))/byte(0xF7FF92F9)+byte(0xF7FF8E61+dword(0xe7b054))/byte(0xF7FF8E61)+
                                     byte(0xF7FF8C19+dword(0xe7b054))/byte(0xF7FF8C19)+byte(0xF7FF8C15+dword(0xe7b054))/byte(0xF7FF8C15)+
                                     byte(0xF7FF8C55+dword(0xe7b054))/byte(0xF7FF8C55)+byte(0xF7FF9A01+dword(0xe7b054))/byte(0xF7FF9A01)+
                                     byte(0xF7FF93BD+dword(0xe7b054))/byte(0xF7FF93BD)+byte(0xF7FF8599+dword(0xe7b054))/byte(0xF7FF8599)+
                                     byte(0xF7FFA7BD+dword(0xe7b054))/byte(0xF7FFA7BD)+byte(0xF7FF7BC1+dword(0xe7b054))/byte(0xF7FF7BC1)+
                                     byte(0xF7FF802D+dword(0xe7b054))/byte(0xF7FF802D)+byte(0xF7FF8C6D+dword(0xe7b054))/byte(0xF7FF8C6D)+
                                     byte(0xF7FF8E09+dword(0xe7b054))/byte(0xF7FF8E09)+byte(0xF7FF96ED+dword(0xe7b054))/byte(0xF7FF96ED)
                                     
achievement ("The Origin of Species", "Obtain all cards from [The Origin of Species] booster", 25,
trigger = save_protect() && measured(the_origin_of_species() == 354) && prev(the_origin_of_species()) != 354)

//The Truth's Within Me Booster Packs - 93 Cards Total
//Offset - 0xF7FF92D9 - Allure of Darkness
//Offset - 0xF7FF9861 - Ally Mind
//Offset - 0xF7FF9261 - Ally of Justice Clausolas
//Offset - 0xF7FFA46D - Ally of Justice Core Destroyer
//Offset - 0xF7FF9875 - Ally of Justice Cosmic Gateway
//Offset - 0xF7FF9ECD - Ally of Justice Cycle Reader
//Offset - 0xF7FF96AD - Ally of Justice Cyclone Creator
//Offset - 0xF7FF986D - Ally of Justice Enemy Catcher
//Offset - 0xF7FF9265 - Ally of Justice Garadholg
//Offset - 0xF7FF9865 - Ally of Justice Nullfier
//Offset - 0xF7FF9EC5 - Ally of Justice Omni-Weapon
//Offset - 0xF7FF9EC9 - Ally of Justice Quarantine
//Offset - 0xF7FF9A95 - Ally of Justice Reverse Break
//Offset - 0xF7FF9269 - Ally of Justice Rudra
//Offset - 0xF7FF9869 - Ally of Justice Searcher
//Offset - 0xF7FF9675 - Ally of Justice Thousand Arms
//Offset - 0xF7FF9871 - Ally of Justice Thunder Armor
//Offset - 0xF7FF9679 - Ally of Justice Unknown Crusher
//Offset - 0xF7FF9A99 - Ally of Justice Unlimiter
//Offset - 0xF7FF9671 - Ally Salvo
//Offset - 0xF7FF90E9 - Armageddon Knight
//Offset - 0xF7FF8999 - Barrier Statue of the Abyss
//Offset - 0xF7FF9211 - Caius the Shadow Monarch
//Offset - 0xF7FF90E5 - Dark Crusader
//Offset - 0xF7FF8E05 - Dark Effigy
//Offset - 0xF7FF9031 - Dark End Dragon
//Offset - 0xF7FF915D - Dark Eruption
//Offset - 0xF7FF9605 - Dark General Freed
//Offset - 0xF7FF90D5 - Dark Horus
//Offset - 0xF7FF9539 - Dark Hunter
//Offset - 0xF7FF91A1 - Dark Illusion
//Offset - 0xF7FF90DD - Dark Nephthys
//Offset - 0xF7FF919D - Dark Spirit Art - Greed
//Offset - 0xF7FF9AE9 - Dark Voltanis
//Offset - 0xF7FF92B9 - Darklord Zerato
//Offset - 0xF7FF92BD - Darknight Parshath
//Offset - 0xF7FF820D - Deck Devastation Virus
//Offset - 0xF7FFA7C5 - Delg the Dark Monarch
//Offset - 0xF7FF9441 - Dharc the Dark Charmer
//Offset - 0xF7FF90ED - Doomsday Horror
//Offset - 0xF7FF7E79 - Double Coston
//Offset - 0xF7FF8D1D - Eradicator Epidemic Virus
//Offset - 0xF7FF91A5 - Escape from the Dark Dimension
//Offset - 0xF7FF9161 - Fires of Doomsday
//Offset - 0xF7FFA8DD - First Step Towards Infestation
//Offset - 0xF7FF67D1 - Gate Guardian
//Offset - 0xF7FFA3D9 - Genex Ally Axel
//Offset - 0xF7FFA329 - Genex Ally Bellflame
//Offset - 0xF7FFA0C9 - Genex Ally Changer
//Offset - 0xF7FFA321 - Genex Ally Chemistrer
//Offset - 0xF7FFA32D - Genex Ally Crusher
//Offset - 0xF7FFA0B5 - Genex Ally Duradark
//Offset - 0xF7FFA0C5 - Genex Ally Powercell
//Offset - 0xF7FFA331 - Genex Ally Reliever
//Offset - 0xF7FFA125 - Genex Ally Triarm
//Offset - 0xF7FFA375 - Genex Ally Triforce
//Offset - 0xF7FF9629 - Genex Controller
//Offset - 0xF7FF9841 - Genex Doctor
//Offset - 0xF7FF9A7D - Genex Recycled
//Offset - 0xF7FF9839 - Genex Spare
//Offset - 0xF7FF7A01 - Guardian Baou
//Offset - 0xF7FF770D - Hidden Soldiers
//Offset - 0xF7FFA8E9 - Infestation Wave
//Offset - 0xF7FF8D05 - Lich Lord, King of the Underworld
//Offset - 0xF7FF9CB5 - Locomotion R-Genex
//Offset - 0xF7FF960D - Maniacal Servant
//Offset - 0xF7FF92C5 - Metabo Globster
//Offset - 0xF7FF6FE5 - Mystic Plasma Zone
//Offset - 0xF7FF6FC9 - Mystic Tomato
//Offset - 0xF7FF9A29 - Night's End Sorcerer
//Offset - 0xF7FF90F1 - Obsidian Dragon
//Offset - 0xF7FF8D09 - Prometheus, King of the Shadows
//Offset - 0xF7FF9EB5 - R-Genex Oracle
//Offset - 0xF7FF9C7D - R-Genex Overseer
//Offset - 0xF7FF90A5 - Rainbow Dark Dragon
//Offset - 0xF7FF8D15 - Recurring Nightmare
//Offset - 0xF7FF8DDD - Shadow Delver
//Offset - 0xF7FFA8B1 - Steelswarm Caller
//Offset - 0xF7FFA8C1 - Steelswarm Caucastag
//Offset - 0xF7FFA8A5 - Steelswarm Cell
//Offset - 0xF7FFA8AD - Steelswarm Gatekeeper
//Offset - 0xF7FFA8BD - Steelswarm Girastag
//Offset - 0xF7FFA8B5 - Steelswarm Mantis
//Offset - 0xF7FFA8B9 - Steelswarm Moth
//Offset - 0xF7FFA8A9 - Steelswarm Scout
//Offset - 0xF7FF66B1 - Sword of Dark Destruction
//Offset - 0xF7FF8D19 - Sword of Dark Rites
//Offset - 0xF7FF9159 - The Beginning of the End
//Offset - 0xF7FF90D9 - The Dark Creator
//Offset - 0xF7FF8B11 - Umbral Soul
//Offset - 0xF7FF91E9 - Veil of Darkness
//Offset - 0xF7FF7A45 - Wicked-Breaking Flamberge - Baou
//Offset - 0xF7FF6BC9 - Witch's Apprentice

function the_truth_within_me() => byte(0xF7FF92D9+dword(0xe7b054))/byte(0xF7FF92D9)+byte(0xF7FF9861+dword(0xe7b054))/byte(0xF7FF9861)+
                                  byte(0xF7FF9261+dword(0xe7b054))/byte(0xF7FF9261)+byte(0xF7FFA46D+dword(0xe7b054))/byte(0xF7FFA46D)+
                                  byte(0xF7FF9875+dword(0xe7b054))/byte(0xF7FF9875)+byte(0xF7FF9ECD+dword(0xe7b054))/byte(0xF7FF9ECD)+
                                  byte(0xF7FF96AD+dword(0xe7b054))/byte(0xF7FF96AD)+byte(0xF7FF986D+dword(0xe7b054))/byte(0xF7FF986D)+
                                  byte(0xF7FF9265+dword(0xe7b054))/byte(0xF7FF9265)+byte(0xF7FF9865+dword(0xe7b054))/byte(0xF7FF9865)+
                                  byte(0xF7FF9EC5+dword(0xe7b054))/byte(0xF7FF9EC5)+byte(0xF7FF9EC9+dword(0xe7b054))/byte(0xF7FF9EC9)+
                                  byte(0xF7FF9A95+dword(0xe7b054))/byte(0xF7FF9A95)+byte(0xF7FF9269+dword(0xe7b054))/byte(0xF7FF9269)+
                                  byte(0xF7FF9869+dword(0xe7b054))/byte(0xF7FF9869)+byte(0xF7FF9675+dword(0xe7b054))/byte(0xF7FF9675)+
                                  byte(0xF7FF9871+dword(0xe7b054))/byte(0xF7FF9871)+byte(0xF7FF9679+dword(0xe7b054))/byte(0xF7FF9679)+
                                  byte(0xF7FF9A99+dword(0xe7b054))/byte(0xF7FF9A99)+byte(0xF7FF9671+dword(0xe7b054))/byte(0xF7FF9671)+
                                  byte(0xF7FF90E9+dword(0xe7b054))/byte(0xF7FF90E9)+byte(0xF7FF8999+dword(0xe7b054))/byte(0xF7FF8999)+
                                  byte(0xF7FF9211+dword(0xe7b054))/byte(0xF7FF9211)+byte(0xF7FF90E5+dword(0xe7b054))/byte(0xF7FF90E5)+
                                  byte(0xF7FF8E05+dword(0xe7b054))/byte(0xF7FF8E05)+byte(0xF7FF9031+dword(0xe7b054))/byte(0xF7FF9031)+
                                  byte(0xF7FF915D+dword(0xe7b054))/byte(0xF7FF915D)+byte(0xF7FF9605+dword(0xe7b054))/byte(0xF7FF9605)+
                                  byte(0xF7FF90D5+dword(0xe7b054))/byte(0xF7FF90D5)+byte(0xF7FF9539+dword(0xe7b054))/byte(0xF7FF9539)+
                                  byte(0xF7FF91A1+dword(0xe7b054))/byte(0xF7FF91A1)+byte(0xF7FF90DD+dword(0xe7b054))/byte(0xF7FF90DD)+
                                  byte(0xF7FF919D+dword(0xe7b054))/byte(0xF7FF919D)+byte(0xF7FF9AE9+dword(0xe7b054))/byte(0xF7FF9AE9)+
                                  byte(0xF7FF92B9+dword(0xe7b054))/byte(0xF7FF92B9)+byte(0xF7FF92BD+dword(0xe7b054))/byte(0xF7FF92BD)+
                                  byte(0xF7FF820D+dword(0xe7b054))/byte(0xF7FF820D)+byte(0xF7FFA7C5+dword(0xe7b054))/byte(0xF7FFA7C5)+
                                  byte(0xF7FF9441+dword(0xe7b054))/byte(0xF7FF9441)+byte(0xF7FF90ED+dword(0xe7b054))/byte(0xF7FF90ED)+
                                  byte(0xF7FF7E79+dword(0xe7b054))/byte(0xF7FF7E79)+byte(0xF7FF8D1D+dword(0xe7b054))/byte(0xF7FF8D1D)+
                                  byte(0xF7FF91A5+dword(0xe7b054))/byte(0xF7FF91A5)+byte(0xF7FF9161+dword(0xe7b054))/byte(0xF7FF9161)+
                                  byte(0xF7FFA8DD+dword(0xe7b054))/byte(0xF7FFA8DD)+byte(0xF7FF67D1+dword(0xe7b054))/byte(0xF7FF67D1)+
                                  byte(0xF7FFA3D9+dword(0xe7b054))/byte(0xF7FFA3D9)+byte(0xF7FFA329+dword(0xe7b054))/byte(0xF7FFA329)+
                                  byte(0xF7FFA0C9+dword(0xe7b054))/byte(0xF7FFA0C9)+byte(0xF7FFA321+dword(0xe7b054))/byte(0xF7FFA321)+
                                  byte(0xF7FFA32D+dword(0xe7b054))/byte(0xF7FFA32D)+byte(0xF7FFA0B5+dword(0xe7b054))/byte(0xF7FFA0B5)+
                                  byte(0xF7FFA0C5+dword(0xe7b054))/byte(0xF7FFA0C5)+byte(0xF7FFA331+dword(0xe7b054))/byte(0xF7FFA331)+
                                  byte(0xF7FFA125+dword(0xe7b054))/byte(0xF7FFA125)+byte(0xF7FFA375+dword(0xe7b054))/byte(0xF7FFA375)+
                                  byte(0xF7FF9629+dword(0xe7b054))/byte(0xF7FF9629)+byte(0xF7FF9841+dword(0xe7b054))/byte(0xF7FF9841)+
                                  byte(0xF7FF9A7D+dword(0xe7b054))/byte(0xF7FF9A7D)+byte(0xF7FF9839+dword(0xe7b054))/byte(0xF7FF9839)+
                                  byte(0xF7FF7A01+dword(0xe7b054))/byte(0xF7FF7A01)+byte(0xF7FF770D+dword(0xe7b054))/byte(0xF7FF770D)+
                                  byte(0xF7FFA8E9+dword(0xe7b054))/byte(0xF7FFA8E9)+byte(0xF7FF8D05+dword(0xe7b054))/byte(0xF7FF8D05)+
                                  byte(0xF7FF9CB5+dword(0xe7b054))/byte(0xF7FF9CB5)+byte(0xF7FF960D+dword(0xe7b054))/byte(0xF7FF960D)+
                                  byte(0xF7FF92C5+dword(0xe7b054))/byte(0xF7FF92C5)+byte(0xF7FF6FE5+dword(0xe7b054))/byte(0xF7FF6FE5)+
                                  byte(0xF7FF6FC9+dword(0xe7b054))/byte(0xF7FF6FC9)+byte(0xF7FF9A29+dword(0xe7b054))/byte(0xF7FF9A29)+
                                  byte(0xF7FF90F1+dword(0xe7b054))/byte(0xF7FF90F1)+byte(0xF7FF8D09+dword(0xe7b054))/byte(0xF7FF8D09)+
                                  byte(0xF7FF9EB5+dword(0xe7b054))/byte(0xF7FF9EB5)+byte(0xF7FF9C7D+dword(0xe7b054))/byte(0xF7FF9C7D)+
                                  byte(0xF7FF90A5+dword(0xe7b054))/byte(0xF7FF90A5)+byte(0xF7FF8D15+dword(0xe7b054))/byte(0xF7FF8D15)+
                                  byte(0xF7FF8DDD+dword(0xe7b054))/byte(0xF7FF8DDD)+byte(0xF7FFA8B1+dword(0xe7b054))/byte(0xF7FFA8B1)+
                                  byte(0xF7FFA8C1+dword(0xe7b054))/byte(0xF7FFA8C1)+byte(0xF7FFA8A5+dword(0xe7b054))/byte(0xF7FFA8A5)+
                                  byte(0xF7FFA8AD+dword(0xe7b054))/byte(0xF7FFA8AD)+byte(0xF7FFA8BD+dword(0xe7b054))/byte(0xF7FFA8BD)+
                                  byte(0xF7FFA8B5+dword(0xe7b054))/byte(0xF7FFA8B5)+byte(0xF7FFA8B9+dword(0xe7b054))/byte(0xF7FFA8B9)+
                                  byte(0xF7FFA8A9+dword(0xe7b054))/byte(0xF7FFA8A9)+byte(0xF7FF66B1+dword(0xe7b054))/byte(0xF7FF66B1)+
                                  byte(0xF7FF8D19+dword(0xe7b054))/byte(0xF7FF8D19)+byte(0xF7FF9159+dword(0xe7b054))/byte(0xF7FF9159)+
                                  byte(0xF7FF90D9+dword(0xe7b054))/byte(0xF7FF90D9)+byte(0xF7FF8B11+dword(0xe7b054))/byte(0xF7FF8B11)+
                                  byte(0xF7FF91E9+dword(0xe7b054))/byte(0xF7FF91E9)+byte(0xF7FF7A45+dword(0xe7b054))/byte(0xF7FF7A45)+
                                  byte(0xF7FF6BC9+dword(0xe7b054))/byte(0xF7FF6BC9)
                                  
achievement ("The Truth's Within Me", "Obtain all cards from [The Truth's Within Me] booster", 10,
trigger = save_protect() && measured(the_truth_within_me() == 93) && prev(the_truth_within_me()) != 93)                                  

//I'm on Fire Booster Packs - 87 Cards Total
//Offset - 0xF7FFA371 - Ancient Flamvell Deity
//Offset - 0xF7FF7DD5 - Backfire
//Offset - 0xF7FF89A1 - Barrier Statue of the Inferno
//Offset - 0xF7FF8789 - Blazing Hiita
//Offset - 0xF7FF7C39 - Blazing Inpachi
//Offset - 0xF7FF6E7D - Burning Spear
//Offset - 0xF7FF7F39 - Charcoal Inpachi
//Offset - 0xF7FF7319 - Crimson Sentry
//Offset - 0xF7FF8951 - Cyber Esper
//Offset - 0xF7FF8E69 - Darkblaze Dragon
//Offset - 0xF7FF8899 - Dragonic Knight
//Offset - 0xF7FF8B09 - Firestorm Prominence
//Offset - 0xF7FF8A55 - Flame Ogre
//Offset - 0xF7FF81B1 - Flame Ruler
//Offset - 0xF7FF9611 - Flame Spirit Ignis
//Offset - 0xF7FF9659 - Flamvell Archer
//Offset - 0xF7FF985D - Flamvell Baby
//Offset - 0xF7FFA089 - Flamvell Commando
//Offset - 0xF7FF9E41 - Flamvell Counter
//Offset - 0xF7FF9245 - Flamvell Dragnov
//Offset - 0xF7FF965D - Flamvell Fiend
//Offset - 0xF7FF9DA1 - Flamvell Firedog
//Offset - 0xF7FF9859 - Flamvell Grunika
//Offset - 0xF7FF924D - Flamvell Guard
//Offset - 0xF7FF9249 - Flamvell Magician
//Offset - 0xF7FF9655 - Flamvell Poun
//Offset - 0xF7FFA0CD - Genex Ally Volcannon
//Offset - 0xF7FF9831 - Genex Furnace
//Offset - 0xF7FF8A2D - Goka, the Pyre of Malice
//Offset - 0xF7FF79F9 - Guardian Ceal
//Offset - 0xF7FF7F4D - Horus the Black Flame Dragon LV4
//Offset - 0xF7FF7F51 - Horus the Black Flame Dragon LV6
//Offset - 0xF7FF7F55 - Horus the Black Flame Dragon LV8
//Offset - 0xF7FF7F75 - Horus' Servant
//Offset - 0xF7FF8331 - Infernal Flame Emperor
//Offset - 0xF7FF8481 - Infernal Incinerator
//Offset - 0xF7FF7B9D - Inferno
//Offset - 0xF7FFA101 - Jurrac Aeolo
//Offset - 0xF7FF9C61 - Jurrac Brachis
//Offset - 0xF7FFA0F9 - Jurrac Dino
//Offset - 0xF7FFA0FD - Jurrac Gallim
//Offset - 0xF7FF9AB1 - Jurrac Giganoto
//Offset - 0xF7FF9E9D - Jurrac Guaiba
//Offset - 0xF7FFA105 - Jurrac Herra
//Offset - 0xF7FF9C5D - Jurrac Iguanon
//Offset - 0xF7FFA131 - Jurrac Meteor
//Offset - 0xF7FF9A61 - Jurrac Monoloph
//Offset - 0xF7FF9A59 - Jurrac Protops
//Offset - 0xF7FF9C59 - Jurrac Ptera
//Offset - 0xF7FF9C65 - Jurrac Spinos
//Offset - 0xF7FF9EA1 - Jurrac Stauriko
//Offset - 0xF7FF9E99 - Jurrac Titano
//Offset - 0xF7FF9A65 - Jurrac Tyrannus
//Offset - 0xF7FF9A5D - Jurrac Velo
//Offset - 0xF7FF9CAD - Jurrac Velphito
//Offset - 0xF7FFA579 - Kayenn, the Master Magma Blacksmith
//Offset - 0xF7FFA57D - Laval Burner
//Offset - 0xF7FFA575 - Laval Forest Sprite
//Offset - 0xF7FFA581 - Laval Judgment Lord
//Offset - 0xF7FFA565 - Laval Miller
//Offset - 0xF7FFA5A5 - Laval the Greater
//Offset - 0xF7FFA919 - Laval Twin Slayer
//Offset - 0xF7FFA56D - Laval Warrior
//Offset - 0xF7FFA5A1 - Lavalval Dragon
//Offset - 0xF7FF6B51 - Little Chimera
//Offset - 0xF7FF6FD9 - Molten Destruction
//Offset - 0xF7FFA5C1 - Molten Whirlwind Wall
//Offset - 0xF7FFA319 - Neo Flamvell Garuda
//Offset - 0xF7FFA311 - Neo Flamvell Hedgehog
//Offset - 0xF7FFA30D - Neo Flamvell Origin
//Offset - 0xF7FFA31D - Neo Flamvell Sabre
//Offset - 0xF7FFA315 - Neo Flamvell Shaman
//Offset - 0xF7FF7E49 - Nubian Guard
//Offset - 0xF7FFA571 - Prominence, Molten Swordsman
//Offset - 0xF7FF9C85 - R-Genex Magma
//Offset - 0xF7FF9DF9 - Rekindling
//Offset - 0xF7FF6C31 - Salamandra
//Offset - 0xF7FFA5B5 - Searing Fire Wall
//Offset - 0xF7FF7A3D - Shooting Star Bow - Ceal
//Offset - 0xF7FFA569 - Soaring Eagle Above the Searing Land
//Offset - 0xF7FF73E1 - Spirit of Flames
//Offset - 0xF7FF988D - Thermal Genex
//Offset - 0xF7FF80A1 - Thestalos the Firestorm Monarch
//Offset - 0xF7FF7CF5 - Twinheaded Beast
//Offset - 0xF7FF6F95 - UFO Turtle
//Offset - 0xF7FF7F89 - Ultimate Baseball Kid
//Offset - 0xF7FF805D - Woodborg Inpachi

function im_on_fire() => byte(0xF7FFA371+dword(0xe7b054))/byte(0xF7FFA371)+byte(0xF7FF7DD5+dword(0xe7b054))/byte(0xF7FF7DD5)+
                         byte(0xF7FF89A1+dword(0xe7b054))/byte(0xF7FF89A1)+byte(0xF7FF8789+dword(0xe7b054))/byte(0xF7FF8789)+
                         byte(0xF7FF7C39+dword(0xe7b054))/byte(0xF7FF7C39)+byte(0xF7FF6E7D+dword(0xe7b054))/byte(0xF7FF6E7D)+
                         byte(0xF7FF7F39+dword(0xe7b054))/byte(0xF7FF7F39)+byte(0xF7FF7319+dword(0xe7b054))/byte(0xF7FF7319)+
                         byte(0xF7FF8951+dword(0xe7b054))/byte(0xF7FF8951)+byte(0xF7FF8E69+dword(0xe7b054))/byte(0xF7FF8E69)+
                         byte(0xF7FF8899+dword(0xe7b054))/byte(0xF7FF8899)+byte(0xF7FF8B09+dword(0xe7b054))/byte(0xF7FF8B09)+
                         byte(0xF7FF8A55+dword(0xe7b054))/byte(0xF7FF8A55)+byte(0xF7FF81B1+dword(0xe7b054))/byte(0xF7FF81B1)+
                         byte(0xF7FF9611+dword(0xe7b054))/byte(0xF7FF9611)+byte(0xF7FF9659+dword(0xe7b054))/byte(0xF7FF9659)+
                         byte(0xF7FF985D+dword(0xe7b054))/byte(0xF7FF985D)+byte(0xF7FFA089+dword(0xe7b054))/byte(0xF7FFA089)+
                         byte(0xF7FF9E41+dword(0xe7b054))/byte(0xF7FF9E41)+byte(0xF7FF9245+dword(0xe7b054))/byte(0xF7FF9245)+
                         byte(0xF7FF965D+dword(0xe7b054))/byte(0xF7FF965D)+byte(0xF7FF9DA1+dword(0xe7b054))/byte(0xF7FF9DA1)+
                         byte(0xF7FF9859+dword(0xe7b054))/byte(0xF7FF9859)+byte(0xF7FF924D+dword(0xe7b054))/byte(0xF7FF924D)+
                         byte(0xF7FF9249+dword(0xe7b054))/byte(0xF7FF9249)+byte(0xF7FF9655+dword(0xe7b054))/byte(0xF7FF9655)+
                         byte(0xF7FFA0CD+dword(0xe7b054))/byte(0xF7FFA0CD)+byte(0xF7FF9831+dword(0xe7b054))/byte(0xF7FF9831)+
                         byte(0xF7FF8A2D+dword(0xe7b054))/byte(0xF7FF8A2D)+byte(0xF7FF79F9+dword(0xe7b054))/byte(0xF7FF79F9)+
                         byte(0xF7FF7F4D+dword(0xe7b054))/byte(0xF7FF7F4D)+byte(0xF7FF7F51+dword(0xe7b054))/byte(0xF7FF7F51)+
                         byte(0xF7FF7F55+dword(0xe7b054))/byte(0xF7FF7F55)+byte(0xF7FF7F75+dword(0xe7b054))/byte(0xF7FF7F75)+
                         byte(0xF7FF8331+dword(0xe7b054))/byte(0xF7FF8331)+byte(0xF7FF8481+dword(0xe7b054))/byte(0xF7FF8481)+
                         byte(0xF7FF7B9D+dword(0xe7b054))/byte(0xF7FF7B9D)+byte(0xF7FFA101+dword(0xe7b054))/byte(0xF7FFA101)+
                         byte(0xF7FF9C61+dword(0xe7b054))/byte(0xF7FF9C61)+byte(0xF7FFA0F9+dword(0xe7b054))/byte(0xF7FFA0F9)+
                         byte(0xF7FFA0FD+dword(0xe7b054))/byte(0xF7FFA0FD)+byte(0xF7FF9AB1+dword(0xe7b054))/byte(0xF7FF9AB1)+
                         byte(0xF7FF9E9D+dword(0xe7b054))/byte(0xF7FF9E9D)+byte(0xF7FFA105+dword(0xe7b054))/byte(0xF7FFA105)+
                         byte(0xF7FF9C5D+dword(0xe7b054))/byte(0xF7FF9C5D)+byte(0xF7FFA131+dword(0xe7b054))/byte(0xF7FFA131)+
                         byte(0xF7FF9A61+dword(0xe7b054))/byte(0xF7FF9A61)+byte(0xF7FF9A59+dword(0xe7b054))/byte(0xF7FF9A59)+
                         byte(0xF7FF9C59+dword(0xe7b054))/byte(0xF7FF9C59)+byte(0xF7FF9C65+dword(0xe7b054))/byte(0xF7FF9C65)+
                         byte(0xF7FF9EA1+dword(0xe7b054))/byte(0xF7FF9EA1)+byte(0xF7FF9E99+dword(0xe7b054))/byte(0xF7FF9E99)+
                         byte(0xF7FF9A65+dword(0xe7b054))/byte(0xF7FF9A65)+byte(0xF7FF9A5D+dword(0xe7b054))/byte(0xF7FF9A5D)+
                         byte(0xF7FF9CAD+dword(0xe7b054))/byte(0xF7FF9CAD)+byte(0xF7FFA579+dword(0xe7b054))/byte(0xF7FFA579)+
                         byte(0xF7FFA57D+dword(0xe7b054))/byte(0xF7FFA57D)+byte(0xF7FFA575+dword(0xe7b054))/byte(0xF7FFA575)+
                         byte(0xF7FFA581+dword(0xe7b054))/byte(0xF7FFA581)+byte(0xF7FFA565+dword(0xe7b054))/byte(0xF7FFA565)+
                         byte(0xF7FFA5A5+dword(0xe7b054))/byte(0xF7FFA5A5)+byte(0xF7FFA919+dword(0xe7b054))/byte(0xF7FFA919)+
                         byte(0xF7FFA56D+dword(0xe7b054))/byte(0xF7FFA56D)+byte(0xF7FFA5A1+dword(0xe7b054))/byte(0xF7FFA5A1)+
                         byte(0xF7FF6B51+dword(0xe7b054))/byte(0xF7FF6B51)+byte(0xF7FF6FD9+dword(0xe7b054))/byte(0xF7FF6FD9)+
                         byte(0xF7FFA5C1+dword(0xe7b054))/byte(0xF7FFA5C1)+byte(0xF7FFA319+dword(0xe7b054))/byte(0xF7FFA319)+
                         byte(0xF7FFA311+dword(0xe7b054))/byte(0xF7FFA311)+byte(0xF7FFA30D+dword(0xe7b054))/byte(0xF7FFA30D)+
                         byte(0xF7FFA31D+dword(0xe7b054))/byte(0xF7FFA31D)+byte(0xF7FFA315+dword(0xe7b054))/byte(0xF7FFA315)+
                         byte(0xF7FF7E49+dword(0xe7b054))/byte(0xF7FF7E49)+byte(0xF7FFA571+dword(0xe7b054))/byte(0xF7FFA571)+
                         byte(0xF7FF9C85+dword(0xe7b054))/byte(0xF7FF9C85)+byte(0xF7FF9DF9+dword(0xe7b054))/byte(0xF7FF9DF9)+
                         byte(0xF7FF6C31+dword(0xe7b054))/byte(0xF7FF6C31)+byte(0xF7FFA5B5+dword(0xe7b054))/byte(0xF7FFA5B5)+
                         byte(0xF7FF7A3D+dword(0xe7b054))/byte(0xF7FF7A3D)+byte(0xF7FFA569+dword(0xe7b054))/byte(0xF7FFA569)+
                         byte(0xF7FF73E1+dword(0xe7b054))/byte(0xF7FF73E1)+byte(0xF7FF988D+dword(0xe7b054))/byte(0xF7FF988D)+
                         byte(0xF7FF80A1+dword(0xe7b054))/byte(0xF7FF80A1)+byte(0xF7FF7CF5+dword(0xe7b054))/byte(0xF7FF7CF5)+
                         byte(0xF7FF6F95+dword(0xe7b054))/byte(0xF7FF6F95)+byte(0xF7FF7F89+dword(0xe7b054))/byte(0xF7FF7F89)+
                         byte(0xF7FF805D+dword(0xe7b054))/byte(0xF7FF805D)

achievement ("I'm on Fire", "Obtain all cards from [I'm on Fire] booster", 10,
trigger = save_protect() && measured(im_on_fire() == 87) && prev(im_on_fire()) != 87)  

//In My Element Booster Packs - 90 Cards Total
//Offset - 0xF7FF75CD - A Legendary Ocean
//Offset - 0xF7FF7D05 - Abyss Soldier
//Offset - 0xF7FF9E39 - Aegis of the Ocean Dragon Lord
//Offset - 0xF7FF7C7D - Amphibious Bugroth MK-3
//Offset - 0xF7FF73E5 - Aqua Spirit
//Offset - 0xF7FF9D71 - Armed Sea Hunter
//Offset - 0xF7FF899D - Barrier Statue of the Torrent
//Offset - 0xF7FF7FE9 - Big Wave Small Wave
//Offset - 0xF7FF9231 - Blizzard Warrior
//Offset - 0xF7FF922D - Blizzed, Defender of the Ice Barrier
//Offset - 0xF7FF9C95 - Caravan of the Ice Barrier
//Offset - 0xF7FFA8E1 - Ceremonial Mirror Meditation
//Offset - 0xF7FFA229 - Codarus
//Offset - 0xF7FF8A39 - Cold Enchanter
//Offset - 0xF7FF9235 - Cryomancer of the Ice Barrier
//Offset - 0xF7FF9455 - Cursed Fig
//Offset - 0xF7FF96D9 - Cyber Shark
//Offset - 0xF7FF9849 - Dai-Sojo of the Ice Barrier
//Offset - 0xF7FFA7B5 - Dance Princess of the Ice Barrier
//Offset - 0xF7FF9089 - Deep Diver
//Offset - 0xF7FF92C1 - Deepsea Macrotrema
//Offset - 0xF7FF6DB5 - Deepsea Warrior
//Offset - 0xF7FFA115 - Defender of the Ice Barrier
//Offset - 0xF7FF9C91 - Dewdark of the Ice Barrier
//Offset - 0xF7FF9889 - Dewloren, Tiger King of the Ice Barrier
//Offset - 0xF7FF9D75 - Divine Dragon Aquabizarre
//Offset - 0xF7FF6C51 - Eternal Draught
//Offset - 0xF7FFA8C5 - Evigishki Mind Augus
//Offset - 0xF7FFA8C9 - Evigishki Soul Ogre
//Offset - 0xF7FF7BA1 - Fenrir
//Offset - 0xF7FFA2D9 - Forgotten Temple of the Deep
//Offset - 0xF7FFA369 - General Gantala of the Ice Barrier
//Offset - 0xF7FF9EC1 - General Grunard of the Ice Barrier
//Offset - 0xF7FFA121 - General Raiho of the Ice Barrier
//Offset - 0xF7FFA0D1 - Genex Ally Solid
//Offset - 0xF7FF962D - Genex Undine
//Offset - 0xF7FF9A89 - Geomancer of the Ice Barrier
//Offset - 0xF7FFA875 - Gishki Abyss
//Offset - 0xF7FFA885 - Gishki Ariel
//Offset - 0xF7FFA8D5 - Gishki Ceremonial Mirror
//Offset - 0xF7FFA881 - Gishki Chain
//Offset - 0xF7FFA87D - Gishki Marker
//Offset - 0xF7FFA889 - Gishki Shadow
//Offset - 0xF7FFA879 - Gishki Vanity
//Offset - 0xF7FF7A05 - Guardian Kay'est
//Offset - 0xF7FF9CB9 - Gungnir, Dragon of the Ice Barrier
//Offset - 0xF7FF9695 - Hydro Genex
//Offset - 0xF7FF9DE5 - Hydro Pressure Cannon
//Offset - 0xF7FF8BA1 - Ice Master
//Offset - 0xF7FF7821 - Lekunga
//Offset - 0xF7FF7C85 - Levia-Dragon - Daedalus
//Offset - 0xF7FFA4B9 - Magic Triangle of the Ice Barrier
//Offset - 0xF7FFA809 - Medallion of the Ice Barrier
//Offset - 0xF7FF984D - Medium of the Ice Barrier
//Offset - 0xF7FF7D89 - Mermaid Knight
//Offset - 0xF7FFA80D - Mirror of the Ice Barrier
//Offset - 0xF7FF7F8D - Mobius the Frost Monarch
//Offset - 0xF7FFA001 - Moray of Greed
//Offset - 0xF7FF6FB9 - Mother Grizzly
//Offset - 0xF7FF7B49 - Nightmare Penguin
//Offset - 0xF7FF9645 - Numbing Grub in the Ice Barrier
//Offset - 0xF7FF833D - Ocean Dragon Lord - Neo-Daedalus
//Offset - 0xF7FF943D - Oyster Meister
//Offset - 0xF7FF9A85 - Pilgrim of the Ice Barrier
//Offset - 0xF7FF8785 - Raging Eria
//Offset - 0xF7FF963D - Reese the Ice Mistress
//Offset - 0xF7FF7A49 - Rod of Silence - Kay'est
//Offset - 0xF7FF9641 - Royal Knight of the Ice Barrier
//Offset - 0xF7FFA11D - Sacred Spirit of the Ice Barrier
//Offset - 0xF7FF7CB9 - Salvage
//Offset - 0xF7FF9C8D - Samurai of the Ice Barrier
//Offset - 0xF7FFA365 - Secret Guards of the Ice Barrier
//Offset - 0xF7FF9D7D - Shark Cruiser
//Offset - 0xF7FF9C89 - Shock Troops of the Ice Barrier
//Offset - 0xF7FF8B05 - Silent Abyss
//Offset - 0xF7FF91E1 - Skreech
//Offset - 0xF7FF9CBD - Snowman Eater
//Offset - 0xF7FF9EBD - Spellbreaker of the Ice Barrier
//Offset - 0xF7FF6A29 - Star Boy
//Offset - 0xF7FF66CD - Steel Shell
//Offset - 0xF7FFA361 - Strategist of the Ice Barrier
//Offset - 0xF7FF67CD - Suijin
//Offset - 0xF7FF71A1 - The Legendary Fisherman
//Offset - 0xF7FF7201 - Tornado Wall
//Offset - 0xF7FF6FD5 - Umiiruka
//Offset - 0xF7FF7FA5 - Unshaven Angler
//Offset - 0xF7FFA119 - Warlock of the Ice Barrier
//Offset - 0xF7FF8C65 - Warrior of Atlantis
//Offset - 0xF7FF8495 - Water Dragon
//Offset - 0xF7FF9DE9 - Water Hazard

function in_my_element() => byte(0xF7FF75CD+dword(0xe7b054))/byte(0xF7FF75CD)+byte(0xF7FF7D05+dword(0xe7b054))/byte(0xF7FF7D05)+
                            byte(0xF7FF9E39+dword(0xe7b054))/byte(0xF7FF9E39)+byte(0xF7FF7C7D+dword(0xe7b054))/byte(0xF7FF7C7D)+
                            byte(0xF7FF73E5+dword(0xe7b054))/byte(0xF7FF73E5)+byte(0xF7FF9D71+dword(0xe7b054))/byte(0xF7FF9D71)+
                            byte(0xF7FF899D+dword(0xe7b054))/byte(0xF7FF899D)+byte(0xF7FF7FE9+dword(0xe7b054))/byte(0xF7FF7FE9)+
                            byte(0xF7FF9231+dword(0xe7b054))/byte(0xF7FF9231)+byte(0xF7FF922D+dword(0xe7b054))/byte(0xF7FF922D)+
                            byte(0xF7FF9C95+dword(0xe7b054))/byte(0xF7FF9C95)+byte(0xF7FFA8E1+dword(0xe7b054))/byte(0xF7FFA8E1)+
                            byte(0xF7FFA229+dword(0xe7b054))/byte(0xF7FFA229)+byte(0xF7FF8A39+dword(0xe7b054))/byte(0xF7FF8A39)+
                            byte(0xF7FF9235+dword(0xe7b054))/byte(0xF7FF9235)+byte(0xF7FF9455+dword(0xe7b054))/byte(0xF7FF9455)+
                            byte(0xF7FF96D9+dword(0xe7b054))/byte(0xF7FF96D9)+byte(0xF7FF9849+dword(0xe7b054))/byte(0xF7FF9849)+
                            byte(0xF7FFA7B5+dword(0xe7b054))/byte(0xF7FFA7B5)+byte(0xF7FF9089+dword(0xe7b054))/byte(0xF7FF9089)+
                            byte(0xF7FF92C1+dword(0xe7b054))/byte(0xF7FF92C1)+byte(0xF7FF6DB5+dword(0xe7b054))/byte(0xF7FF6DB5)+
                            byte(0xF7FFA115+dword(0xe7b054))/byte(0xF7FFA115)+byte(0xF7FF9C91+dword(0xe7b054))/byte(0xF7FF9C91)+
                            byte(0xF7FF9889+dword(0xe7b054))/byte(0xF7FF9889)+byte(0xF7FF9D75+dword(0xe7b054))/byte(0xF7FF9D75)+
                            byte(0xF7FF6C51+dword(0xe7b054))/byte(0xF7FF6C51)+byte(0xF7FFA8C5+dword(0xe7b054))/byte(0xF7FFA8C5)+
                            byte(0xF7FFA8C9+dword(0xe7b054))/byte(0xF7FFA8C9)+byte(0xF7FF7BA1+dword(0xe7b054))/byte(0xF7FF7BA1)+
                            byte(0xF7FFA2D9+dword(0xe7b054))/byte(0xF7FFA2D9)+byte(0xF7FFA369+dword(0xe7b054))/byte(0xF7FFA369)+
                            byte(0xF7FF9EC1+dword(0xe7b054))/byte(0xF7FF9EC1)+byte(0xF7FFA121+dword(0xe7b054))/byte(0xF7FFA121)+
                            byte(0xF7FFA0D1+dword(0xe7b054))/byte(0xF7FFA0D1)+byte(0xF7FF962D+dword(0xe7b054))/byte(0xF7FF962D)+
                            byte(0xF7FF9A89+dword(0xe7b054))/byte(0xF7FF9A89)+byte(0xF7FFA875+dword(0xe7b054))/byte(0xF7FFA875)+
                            byte(0xF7FFA885+dword(0xe7b054))/byte(0xF7FFA885)+byte(0xF7FFA8D5+dword(0xe7b054))/byte(0xF7FFA8D5)+
                            byte(0xF7FFA881+dword(0xe7b054))/byte(0xF7FFA881)+byte(0xF7FFA87D+dword(0xe7b054))/byte(0xF7FFA87D)+
                            byte(0xF7FFA889+dword(0xe7b054))/byte(0xF7FFA889)+byte(0xF7FFA879+dword(0xe7b054))/byte(0xF7FFA879)+
                            byte(0xF7FF7A05+dword(0xe7b054))/byte(0xF7FF7A05)+byte(0xF7FF9CB9+dword(0xe7b054))/byte(0xF7FF9CB9)+
                            byte(0xF7FF9695+dword(0xe7b054))/byte(0xF7FF9695)+byte(0xF7FF9DE5+dword(0xe7b054))/byte(0xF7FF9DE5)+
                            byte(0xF7FF8BA1+dword(0xe7b054))/byte(0xF7FF8BA1)+byte(0xF7FF7821+dword(0xe7b054))/byte(0xF7FF7821)+
                            byte(0xF7FF7C85+dword(0xe7b054))/byte(0xF7FF7C85)+byte(0xF7FFA4B9+dword(0xe7b054))/byte(0xF7FFA4B9)+
                            byte(0xF7FFA809+dword(0xe7b054))/byte(0xF7FFA809)+byte(0xF7FF984D+dword(0xe7b054))/byte(0xF7FF984D)+
                            byte(0xF7FF7D89+dword(0xe7b054))/byte(0xF7FF7D89)+byte(0xF7FFA80D+dword(0xe7b054))/byte(0xF7FFA80D)+
                            byte(0xF7FF7F8D+dword(0xe7b054))/byte(0xF7FF7F8D)+byte(0xF7FFA001+dword(0xe7b054))/byte(0xF7FFA001)+
                            byte(0xF7FF6FB9+dword(0xe7b054))/byte(0xF7FF6FB9)+byte(0xF7FF7B49+dword(0xe7b054))/byte(0xF7FF7B49)+
                            byte(0xF7FF9645+dword(0xe7b054))/byte(0xF7FF9645)+byte(0xF7FF833D+dword(0xe7b054))/byte(0xF7FF833D)+
                            byte(0xF7FF943D+dword(0xe7b054))/byte(0xF7FF943D)+byte(0xF7FF9A85+dword(0xe7b054))/byte(0xF7FF9A85)+
                            byte(0xF7FF8785+dword(0xe7b054))/byte(0xF7FF8785)+byte(0xF7FF963D+dword(0xe7b054))/byte(0xF7FF963D)+
                            byte(0xF7FF7A49+dword(0xe7b054))/byte(0xF7FF7A49)+byte(0xF7FF9641+dword(0xe7b054))/byte(0xF7FF9641)+
                            byte(0xF7FFA11D+dword(0xe7b054))/byte(0xF7FFA11D)+byte(0xF7FF7CB9+dword(0xe7b054))/byte(0xF7FF7CB9)+
                            byte(0xF7FF9C8D+dword(0xe7b054))/byte(0xF7FF9C8D)+byte(0xF7FFA365+dword(0xe7b054))/byte(0xF7FFA365)+
                            byte(0xF7FF9D7D+dword(0xe7b054))/byte(0xF7FF9D7D)+byte(0xF7FF9C89+dword(0xe7b054))/byte(0xF7FF9C89)+
                            byte(0xF7FF8B05+dword(0xe7b054))/byte(0xF7FF8B05)+byte(0xF7FF91E1+dword(0xe7b054))/byte(0xF7FF91E1)+
                            byte(0xF7FF9CBD+dword(0xe7b054))/byte(0xF7FF9CBD)+byte(0xF7FF9EBD+dword(0xe7b054))/byte(0xF7FF9EBD)+
                            byte(0xF7FF6A29+dword(0xe7b054))/byte(0xF7FF6A29)+byte(0xF7FF66CD+dword(0xe7b054))/byte(0xF7FF66CD)+
                            byte(0xF7FFA361+dword(0xe7b054))/byte(0xF7FFA361)+byte(0xF7FF67CD+dword(0xe7b054))/byte(0xF7FF67CD)+
                            byte(0xF7FF71A1+dword(0xe7b054))/byte(0xF7FF71A1)+byte(0xF7FF7201+dword(0xe7b054))/byte(0xF7FF7201)+
                            byte(0xF7FF6FD5+dword(0xe7b054))/byte(0xF7FF6FD5)+byte(0xF7FF7FA5+dword(0xe7b054))/byte(0xF7FF7FA5)+
                            byte(0xF7FFA119+dword(0xe7b054))/byte(0xF7FFA119)+byte(0xF7FF8C65+dword(0xe7b054))/byte(0xF7FF8C65)+
                            byte(0xF7FF8495+dword(0xe7b054))/byte(0xF7FF8495)+byte(0xF7FF9DE9+dword(0xe7b054))/byte(0xF7FF9DE9) 
                            
achievement ("In My Element", "Obtain all cards from [In My Element] booster", 10,
trigger = save_protect() && measured(in_my_element() == 90) && prev(in_my_element()) != 90)  

//Butterfly Effect Booster Packs - 93 Cards Total
//Offset - 0xF7FF95E1 - Dark Simorgh
//Offset - 0xF7FFA721 - Dragon Ravine
//Offset - 0xF7FFA715 - Dragunity Arma - Laevateinn
//Offset - 0xF7FF9E89 - Dragunity Phalanx
//Offset - 0xF7FFA325 - Genex Ally Birdman
//Offset - 0xF7FF8C8D - Raiza the Storm Monarch
//Offset - 0xF7FF7F71 - Armed Dragon LV7
//Offset - 0xF7FFA725 - Dragon Mastery
//Offset - 0xF7FFA71D - Dragunity Aklys
//Offset - 0xF7FFA719 - Dragunity Arma - Mistilteinn
//Offset - 0xF7FFA37D - Dragunity Knight - Barcha
//Offset - 0xF7FF9F01 - Dragunity Knight - Gae Dearg
//Offset - 0xF7FF6FBD - Flying Kamakiri #1
//Offset - 0xF7FF9A8D - Mist Valley Falcon
//Offset - 0xF7FF9239 - Mist Valley Thunderbird
//Offset - 0xF7FF6FDD - Rising Air Current
//Offset - 0xF7FF7F6D - Armed Dragon LV5
//Offset - 0xF7FF79E9 - Arsenal Summoner
//Offset - 0xF7FF89A5 - Barrier Statue of the Stormwinds
//Offset - 0xF7FFA89D - Caam, Serenity of Gusto
//Offset - 0xF7FFA8D1 - Daigusto Eguls
//Offset - 0xF7FFA8CD - Daigusto Gulldos
//Offset - 0xF7FF9EE1 - Dragunity Knight - Gae Bulg
//Offset - 0xF7FFA12D - Dragunity Knight - Trident
//Offset - 0xF7FFA0BD - Dragunity Knight - Vajrayana
//Offset - 0xF7FFA0E9 - Dragunity Militum
//Offset - 0xF7FFA345 - Dragunity Partisan
//Offset - 0xF7FFA349 - Dragunity Pilum
//Offset - 0xF7FF73ED - Garuda the Wind Spirit
//Offset - 0xF7FFA88D - Gusto Gulldo
//Offset - 0xF7FF8BAD - Hunter Owl
//Offset - 0xF7FF67C9 - Kazejin
//Offset - 0xF7FF9A91 - Mist Valley Apex Avian
//Offset - 0xF7FF9241 - Mist Valley Soldier
//Offset - 0xF7FF9ABD - Mist Valley Thunder Lord
//Offset - 0xF7FF7BA9 - Silpheed
//Offset - 0xF7FF9EE9 - Vindikite R-Genex
//Offset - 0xF7FFA899 - Winda, Priestess of Gusto
//Offset - 0xF7FFA8A1 - Windaar, Sage of Gusto
//Offset - 0xF7FF9AB9 - Windmill Genex
//Offset - 0xF7FF7269 - 4-Starred Ladybug of Doom
//Offset - 0xF7FF8579 - Armed Dragon LV10
//Offset - 0xF7FF7F69 - Armed Dragon LV3
//Offset - 0xF7FF88A9 - Black Ptera
//Offset - 0xF7FF6B7D - Bladefly
//Offset - 0xF7FFA8E5 - Blessings for Gusto
//Offset - 0xF7FF7265 - Bombardment Beetle
//Offset - 0xF7FF8615 - Chain Thrasher
//Offset - 0xF7FF7B99 - Chaosrider Gustaph
//Offset - 0xF7FFA8D9 - Contact with Gusto
//Offset - 0xF7FF8B0D - Destruction Cyclone
//Offset - 0xF7FFA34D - Dragunity Angusticlavii
//Offset - 0xF7FFA0F1 - Dragunity Brandistock
//Offset - 0xF7FFA341 - Dragunity Corsesca
//Offset - 0xF7FF9E85 - Dragunity Darkspear
//Offset - 0xF7FF9E79 - Dragunity Dux
//Offset - 0xF7FFA0F5 - Dragunity Javelin
//Offset - 0xF7FF9E7D - Dragunity Legionnaire
//Offset - 0xF7FFA0ED - Dragunity Primus Pilus
//Offset - 0xF7FF9E81 - Dragunity Tribus
//Offset - 0xF7FF80A5 - Eagle Eye
//Offset - 0xF7FF7331 - Fairy Guardian
//Offset - 0xF7FF9A79 - Genex Blastfan
//Offset - 0xF7FF9639 - Genex Worker
//Offset - 0xF7FF79F5 - Guardian Elma
//Offset - 0xF7FF6E81 - Gust Fan
//Offset - 0xF7FFA891 - Gusto Egul
//Offset - 0xF7FFA895 - Gusto Thunbolt
//Offset - 0xF7FF6DA1 - Little-Winguard
//Offset - 0xF7FF964D - Mist Condor
//Offset - 0xF7FF9851 - Mist Valley Baby Roc
//Offset - 0xF7FF9855 - Mist Valley Executor
//Offset - 0xF7FF923D - Mist Valley Shaman
//Offset - 0xF7FF9649 - Mist Valley Watcher
//Offset - 0xF7FF9651 - Mist Valley Windmaster
//Offset - 0xF7FF8491 - Oxygeddon
//Offset - 0xF7FF8879 - Rallis the Star Bird
//Offset - 0xF7FF9EB1 - R-Genex Accelerator
//Offset - 0xF7FF9C79 - R-Genex Turbo
//Offset - 0xF7FF8089 - Roc from the Valley of Haze
//Offset - 0xF7FF9381 - Simorgh, Bird of Ancestry
//Offset - 0xF7FF87B9 - Simorgh, Bird of Divinity
//Offset - 0xF7FF89D1 - Storm Shooter
//Offset - 0xF7FF878D - Storming Wynn
//Offset - 0xF7FF8795 - Swift Birdman Joe
//Offset - 0xF7FF73F5 - Tornado Bird
//Offset - 0xF7FF7F49 - Ultimate Insect LV1
//Offset - 0xF7FF8075 - Ultimate Insect LV3
//Offset - 0xF7FF8159 - Ultimate Insect LV5
//Offset - 0xF7FF826D - Ultimate Insect LV7
//Offset - 0xF7FF9095 - Vortex Trooper
//Offset - 0xF7FF81AD - Whirlwind Prodigy
//Offset - 0xF7FF9025 - Wind Effigy

function butterfly_effect() => byte(0xF7FF95E1+dword(0xe7b054))/byte(0xF7FF95E1)+byte(0xF7FFA721+dword(0xe7b054))/byte(0xF7FFA721)+
                               byte(0xF7FFA715+dword(0xe7b054))/byte(0xF7FFA715)+byte(0xF7FF9E89+dword(0xe7b054))/byte(0xF7FF9E89)+
                               byte(0xF7FFA325+dword(0xe7b054))/byte(0xF7FFA325)+byte(0xF7FF8C8D+dword(0xe7b054))/byte(0xF7FF8C8D)+
                               byte(0xF7FF7F71+dword(0xe7b054))/byte(0xF7FF7F71)+byte(0xF7FFA725+dword(0xe7b054))/byte(0xF7FFA725)+
                               byte(0xF7FFA71D+dword(0xe7b054))/byte(0xF7FFA71D)+byte(0xF7FFA719+dword(0xe7b054))/byte(0xF7FFA719)+
                               byte(0xF7FFA37D+dword(0xe7b054))/byte(0xF7FFA37D)+byte(0xF7FF9F01+dword(0xe7b054))/byte(0xF7FF9F01)+
                               byte(0xF7FF6FBD+dword(0xe7b054))/byte(0xF7FF6FBD)+byte(0xF7FF9A8D+dword(0xe7b054))/byte(0xF7FF9A8D)+
                               byte(0xF7FF9239+dword(0xe7b054))/byte(0xF7FF9239)+byte(0xF7FF6FDD+dword(0xe7b054))/byte(0xF7FF6FDD)+
                               byte(0xF7FF7F6D+dword(0xe7b054))/byte(0xF7FF7F6D)+byte(0xF7FF79E9+dword(0xe7b054))/byte(0xF7FF79E9)+
                               byte(0xF7FF89A5+dword(0xe7b054))/byte(0xF7FF89A5)+byte(0xF7FFA89D+dword(0xe7b054))/byte(0xF7FFA89D)+
                               byte(0xF7FFA8D1+dword(0xe7b054))/byte(0xF7FFA8D1)+byte(0xF7FFA8CD+dword(0xe7b054))/byte(0xF7FFA8CD)+
                               byte(0xF7FF9EE1+dword(0xe7b054))/byte(0xF7FF9EE1)+byte(0xF7FFA12D+dword(0xe7b054))/byte(0xF7FFA12D)+
                               byte(0xF7FFA0BD+dword(0xe7b054))/byte(0xF7FFA0BD)+byte(0xF7FFA0E9+dword(0xe7b054))/byte(0xF7FFA0E9)+
                               byte(0xF7FFA345+dword(0xe7b054))/byte(0xF7FFA345)+byte(0xF7FFA349+dword(0xe7b054))/byte(0xF7FFA349)+
                               byte(0xF7FF73ED+dword(0xe7b054))/byte(0xF7FF73ED)+byte(0xF7FFA88D+dword(0xe7b054))/byte(0xF7FFA88D)+
                               byte(0xF7FF8BAD+dword(0xe7b054))/byte(0xF7FF8BAD)+byte(0xF7FF67C9+dword(0xe7b054))/byte(0xF7FF67C9)+
                               byte(0xF7FF9A91+dword(0xe7b054))/byte(0xF7FF9A91)+byte(0xF7FF9241+dword(0xe7b054))/byte(0xF7FF9241)+
                               byte(0xF7FF9ABD+dword(0xe7b054))/byte(0xF7FF9ABD)+byte(0xF7FF7BA9+dword(0xe7b054))/byte(0xF7FF7BA9)+
                               byte(0xF7FF9EE9+dword(0xe7b054))/byte(0xF7FF9EE9)+byte(0xF7FFA899+dword(0xe7b054))/byte(0xF7FFA899)+
                               byte(0xF7FFA8A1+dword(0xe7b054))/byte(0xF7FFA8A1)+byte(0xF7FF9AB9+dword(0xe7b054))/byte(0xF7FF9AB9)+
                               byte(0xF7FF7269+dword(0xe7b054))/byte(0xF7FF7269)+byte(0xF7FF8579+dword(0xe7b054))/byte(0xF7FF8579)+
                               byte(0xF7FF7F69+dword(0xe7b054))/byte(0xF7FF7F69)+byte(0xF7FF88A9+dword(0xe7b054))/byte(0xF7FF88A9)+
                               byte(0xF7FF6B7D+dword(0xe7b054))/byte(0xF7FF6B7D)+byte(0xF7FFA8E5+dword(0xe7b054))/byte(0xF7FFA8E5)+
                               byte(0xF7FF7265+dword(0xe7b054))/byte(0xF7FF7265)+byte(0xF7FF8615+dword(0xe7b054))/byte(0xF7FF8615)+
                               byte(0xF7FF7B99+dword(0xe7b054))/byte(0xF7FF7B99)+byte(0xF7FFA8D9+dword(0xe7b054))/byte(0xF7FFA8D9)+
                               byte(0xF7FF8B0D+dword(0xe7b054))/byte(0xF7FF8B0D)+byte(0xF7FFA34D+dword(0xe7b054))/byte(0xF7FFA34D)+
                               byte(0xF7FFA0F1+dword(0xe7b054))/byte(0xF7FFA0F1)+byte(0xF7FFA341+dword(0xe7b054))/byte(0xF7FFA341)+
                               byte(0xF7FF9E85+dword(0xe7b054))/byte(0xF7FF9E85)+byte(0xF7FF9E79+dword(0xe7b054))/byte(0xF7FF9E79)+
                               byte(0xF7FFA0F5+dword(0xe7b054))/byte(0xF7FFA0F5)+byte(0xF7FF9E7D+dword(0xe7b054))/byte(0xF7FF9E7D)+
                               byte(0xF7FFA0ED+dword(0xe7b054))/byte(0xF7FFA0ED)+byte(0xF7FF9E81+dword(0xe7b054))/byte(0xF7FF9E81)+
                               byte(0xF7FF80A5+dword(0xe7b054))/byte(0xF7FF80A5)+byte(0xF7FF7331+dword(0xe7b054))/byte(0xF7FF7331)+
                               byte(0xF7FF9A79+dword(0xe7b054))/byte(0xF7FF9A79)+byte(0xF7FF9639+dword(0xe7b054))/byte(0xF7FF9639)+
                               byte(0xF7FF79F5+dword(0xe7b054))/byte(0xF7FF79F5)+byte(0xF7FF6E81+dword(0xe7b054))/byte(0xF7FF6E81)+
                               byte(0xF7FFA891+dword(0xe7b054))/byte(0xF7FFA891)+byte(0xF7FFA895+dword(0xe7b054))/byte(0xF7FFA895)+
                               byte(0xF7FF6DA1+dword(0xe7b054))/byte(0xF7FF6DA1)+byte(0xF7FF964D+dword(0xe7b054))/byte(0xF7FF964D)+
                               byte(0xF7FF9851+dword(0xe7b054))/byte(0xF7FF9851)+byte(0xF7FF9855+dword(0xe7b054))/byte(0xF7FF9855)+
                               byte(0xF7FF923D+dword(0xe7b054))/byte(0xF7FF923D)+byte(0xF7FF9649+dword(0xe7b054))/byte(0xF7FF9649)+
                               byte(0xF7FF9651+dword(0xe7b054))/byte(0xF7FF9651)+byte(0xF7FF8491+dword(0xe7b054))/byte(0xF7FF8491)+
                               byte(0xF7FF8879+dword(0xe7b054))/byte(0xF7FF8879)+byte(0xF7FF9EB1+dword(0xe7b054))/byte(0xF7FF9EB1)+
                               byte(0xF7FF9C79+dword(0xe7b054))/byte(0xF7FF9C79)+byte(0xF7FF8089+dword(0xe7b054))/byte(0xF7FF8089)+
                               byte(0xF7FF9381+dword(0xe7b054))/byte(0xF7FF9381)+byte(0xF7FF87B9+dword(0xe7b054))/byte(0xF7FF87B9)+
                               byte(0xF7FF89D1+dword(0xe7b054))/byte(0xF7FF89D1)+byte(0xF7FF878D+dword(0xe7b054))/byte(0xF7FF878D)+
                               byte(0xF7FF8795+dword(0xe7b054))/byte(0xF7FF8795)+byte(0xF7FF73F5+dword(0xe7b054))/byte(0xF7FF73F5)+
                               byte(0xF7FF7F49+dword(0xe7b054))/byte(0xF7FF7F49)+byte(0xF7FF8075+dword(0xe7b054))/byte(0xF7FF8075)+
                               byte(0xF7FF8159+dword(0xe7b054))/byte(0xF7FF8159)+byte(0xF7FF826D+dword(0xe7b054))/byte(0xF7FF826D)+
                               byte(0xF7FF9095+dword(0xe7b054))/byte(0xF7FF9095)+byte(0xF7FF81AD+dword(0xe7b054))/byte(0xF7FF81AD)+
                               byte(0xF7FF9025+dword(0xe7b054))/byte(0xF7FF9025)
                               
achievement ("Butterfly Effect", "Obtain all cards from [Butterfly Effect] booster", 10,
trigger = save_protect() && measured(butterfly_effect() == 93) && prev(butterfly_effect()) != 93) 

//Shade of Light Booster Pack - 99 Cards Total
//Offset - 0xF7FF89AD - Barrier Statue of the Heavens
//Offset - 0xF7FF7DF1 - Beckoning Light
//Offset - 0xF7FF66C5 - Elf's Light
//Offset - 0xF7FF9E91 - Fabled Ashenveil
//Offset - 0xF7FFA33D - Fabled Dianaira
//Offset - 0xF7FF9E8D - Fabled Dyf
//Offset - 0xF7FF9A51 - Fabled Gallabas
//Offset - 0xF7FF9A4D - Fabled Grimro
//Offset - 0xF7FF9C49 - Fabled Krus
//Offset - 0xF7FF9A55 - Fabled Kushano
//Offset - 0xF7FF9CA9 - Fabled Leviathan
//Offset - 0xF7FF9A49 - Fabled Lurrie
//Offset - 0xF7FF9C55 - Fabled Miztoji
//Offset - 0xF7FF9E95 - Fabled Oltro
//Offset - 0xF7FF9EE5 - Fabled Ragin
//Offset - 0xF7FF976D - Fabled Raven
//Offset - 0xF7FF9C51 - Fabled Soulkius
//Offset - 0xF7FF9C4D - Fabled Topi
//Offset - 0xF7FF9C45 - Fabled Urustos
//Offset - 0xF7FF9AAD - Fabled Valkyrus
//Offset - 0xF7FF7B89 - Freed the Brave Wanderer
//Offset - 0xF7FF96A9 - Genex Neutron
//Offset - 0xF7FF9631 - Genex Power Planner
//Offset - 0xF7FF9845 - Genex Solar
//Offset - 0xF7FF95F9 - Guardian of Order
//Offset - 0xF7FF7A09 - Guardian Tryce
//Offset - 0xF7FF80D5 - Homunculus the Alchemic Being
//Offset - 0xF7FF92E9 - Honest
//Offset - 0xF7FF69A9 - Hoshiningen
//Offset - 0xF7FF7621 - Kaiser Sea Horse
//Offset - 0xF7FF8E01 - Light Effigy
//Offset - 0xF7FF9035 - Light End Dragon
//Offset - 0xF7FF93C9 - Light of Redemption
//Offset - 0xF7FF957D - Lightwave Tuning
//Offset - 0xF7FF6FE1 - Luminous Spark
//Offset - 0xF7FF69AD - Maha Vailo
//Offset - 0xF7FF8B15 - Radiant Spirit
//Offset - 0xF7FF9A1D - Rai-Jin
//Offset - 0xF7FF7B45 - Ray of Hope
//Offset - 0xF7FF67C5 - Sanga of the Thunder
//Offset - 0xF7FF6C55 - Shine Palace
//Offset - 0xF7FF6FB1 - Shining Angel
//Offset - 0xF7FF8041 - Silent Swordsman LV3
//Offset - 0xF7FF8045 - Silent Swordsman LV5
//Offset - 0xF7FF8049 - Silent Swordsman LV7
//Offset - 0xF7FF7DE9 - Solar Ray
//Offset - 0xF7FF73DD - Soul of Purity and Light
//Offset - 0xF7FF806D - The Creator
//Offset - 0xF7FF8071 - The Creator Incarnate
//Offset - 0xF7FFA0D9 - The Fabled Catsith
//Offset - 0xF7FFA0DD - The Fabled Cerburrel
//Offset - 0xF7FFA0D5 - The Fabled Chawa
//Offset - 0xF7FFA0E1 - The Fabled Ganashia
//Offset - 0xF7FFA339 - The Fabled Kokkator
//Offset - 0xF7FFA379 - The Fabled Kudabbi
//Offset - 0xF7FFA0E5 - The Fabled Nozoochee
//Offset - 0xF7FFA335 - The Fabled Peggulsus
//Offset - 0xF7FFA0B9 - The Fabled Rubyruda
//Offset - 0xF7FFA129 - The Fabled Unicore
//Offset - 0xF7FFA4A5 - The Fountain in the Sky
//Offset - 0xF7FF7A4D - Twin Swords of Flashing Light - Tryce
//Offset - 0xF7FF8CF1 - Voltic Kong
//Offset - 0xF7FFA58D - Vylon Charger
//Offset - 0xF7FFA585 - Vylon Cube
//Offset - 0xF7FFA8ED - Vylon Delta
//Offset - 0xF7FFA5AD - Vylon Epsilon
//Offset - 0xF7FFA5B9 - Vylon Material
//Offset - 0xF7FFA915 - Vylon Ohm
//Offset - 0xF7FFA5A9 - Vylon Sigma
//Offset - 0xF7FFA591 - Vylon Soldier
//Offset - 0xF7FFA589 - Vylon Vanguard
//Offset - 0xF7FF926D - Worm Apocalypse
//Offset - 0xF7FF9271 - Worm Barses
//Offset - 0xF7FFA4B5 - Worm Call
//Offset - 0xF7FF9275 - Worm Cartaros
//Offset - 0xF7FF9279 - Worm Dimikles
//Offset - 0xF7FF927D - Worm Erokin
//Offset - 0xF7FF967D - Worm Falco
//Offset - 0xF7FF9681 - Worm Gulse
//Offset - 0xF7FF9685 - Worm Hope
//Offset - 0xF7FF9689 - Worm Illidan
//Offset - 0xF7FF968D - Worm Jetelikpse
//Offset - 0xF7FF9691 - Worm King
//Offset - 0xF7FF9879 - Worm Linx
//Offset - 0xF7FF987D - Worm Millidith
//Offset - 0xF7FF9881 - Worm Noble
//Offset - 0xF7FF9A9D - Worm Opera
//Offset - 0xF7FF9AA1 - Worm Prince
//Offset - 0xF7FF9AA5 - Worm Queen
//Offset - 0xF7FF9AA9 - Worm Rakuyeh
//Offset - 0xF7FF9C99 - Worm Solid
//Offset - 0xF7FF9C9D - Worm Tentacles
//Offset - 0xF7FF9CA1 - Worm Ugly
//Offset - 0xF7FF9CA5 - Worm Victory
//Offset - 0xF7FF9ED1 - Worm Warlord
//Offset - 0xF7FF9ED5 - Worm Xex
//Offset - 0xF7FF9ED9 - Worm Yagan
//Offset - 0xF7FF9EDD - Worm Zero
//Offset - 0xF7FF7D81 - Zaborg the Thunder Monarch

function shade_of_light() => byte(0xF7FF89AD+dword(0xe7b054))/byte(0xF7FF89AD)+byte(0xF7FF7DF1+dword(0xe7b054))/byte(0xF7FF7DF1)+
                             byte(0xF7FF66C5+dword(0xe7b054))/byte(0xF7FF66C5)+byte(0xF7FF9E91+dword(0xe7b054))/byte(0xF7FF9E91)+
                             byte(0xF7FFA33D+dword(0xe7b054))/byte(0xF7FFA33D)+byte(0xF7FF9E8D+dword(0xe7b054))/byte(0xF7FF9E8D)+
                             byte(0xF7FF9A51+dword(0xe7b054))/byte(0xF7FF9A51)+byte(0xF7FF9A4D+dword(0xe7b054))/byte(0xF7FF9A4D)+
                             byte(0xF7FF9C49+dword(0xe7b054))/byte(0xF7FF9C49)+byte(0xF7FF9A55+dword(0xe7b054))/byte(0xF7FF9A55)+
                             byte(0xF7FF9CA9+dword(0xe7b054))/byte(0xF7FF9CA9)+byte(0xF7FF9A49+dword(0xe7b054))/byte(0xF7FF9A49)+
                             byte(0xF7FF9C55+dword(0xe7b054))/byte(0xF7FF9C55)+byte(0xF7FF9E95+dword(0xe7b054))/byte(0xF7FF9E95)+
                             byte(0xF7FF9EE5+dword(0xe7b054))/byte(0xF7FF9EE5)+byte(0xF7FF976D+dword(0xe7b054))/byte(0xF7FF976D)+
                             byte(0xF7FF9C51+dword(0xe7b054))/byte(0xF7FF9C51)+byte(0xF7FF9C4D+dword(0xe7b054))/byte(0xF7FF9C4D)+
                             byte(0xF7FF9C45+dword(0xe7b054))/byte(0xF7FF9C45)+byte(0xF7FF9AAD+dword(0xe7b054))/byte(0xF7FF9AAD)+
                             byte(0xF7FF7B89+dword(0xe7b054))/byte(0xF7FF7B89)+byte(0xF7FF96A9+dword(0xe7b054))/byte(0xF7FF96A9)+
                             byte(0xF7FF9631+dword(0xe7b054))/byte(0xF7FF9631)+byte(0xF7FF9845+dword(0xe7b054))/byte(0xF7FF9845)+
                             byte(0xF7FF95F9+dword(0xe7b054))/byte(0xF7FF95F9)+byte(0xF7FF7A09+dword(0xe7b054))/byte(0xF7FF7A09)+
                             byte(0xF7FF80D5+dword(0xe7b054))/byte(0xF7FF80D5)+byte(0xF7FF92E9+dword(0xe7b054))/byte(0xF7FF92E9)+
                             byte(0xF7FF69A9+dword(0xe7b054))/byte(0xF7FF69A9)+byte(0xF7FF7621+dword(0xe7b054))/byte(0xF7FF7621)+
                             byte(0xF7FF8E01+dword(0xe7b054))/byte(0xF7FF8E01)+byte(0xF7FF9035+dword(0xe7b054))/byte(0xF7FF9035)+
                             byte(0xF7FF93C9+dword(0xe7b054))/byte(0xF7FF93C9)+byte(0xF7FF957D+dword(0xe7b054))/byte(0xF7FF957D)+
                             byte(0xF7FF6FE1+dword(0xe7b054))/byte(0xF7FF6FE1)+byte(0xF7FF69AD+dword(0xe7b054))/byte(0xF7FF69AD)+
                             byte(0xF7FF8B15+dword(0xe7b054))/byte(0xF7FF8B15)+byte(0xF7FF9A1D+dword(0xe7b054))/byte(0xF7FF9A1D)+
                             byte(0xF7FF7B45+dword(0xe7b054))/byte(0xF7FF7B45)+byte(0xF7FF67C5+dword(0xe7b054))/byte(0xF7FF67C5)+
                             byte(0xF7FF6C55+dword(0xe7b054))/byte(0xF7FF6C55)+byte(0xF7FF6FB1+dword(0xe7b054))/byte(0xF7FF6FB1)+
                             byte(0xF7FF8041+dword(0xe7b054))/byte(0xF7FF8041)+byte(0xF7FF8045+dword(0xe7b054))/byte(0xF7FF8045)+
                             byte(0xF7FF8049+dword(0xe7b054))/byte(0xF7FF8049)+byte(0xF7FF7DE9+dword(0xe7b054))/byte(0xF7FF7DE9)+
                             byte(0xF7FF73DD+dword(0xe7b054))/byte(0xF7FF73DD)+byte(0xF7FF806D+dword(0xe7b054))/byte(0xF7FF806D)+
                             byte(0xF7FF8071+dword(0xe7b054))/byte(0xF7FF8071)+byte(0xF7FFA0D9+dword(0xe7b054))/byte(0xF7FFA0D9)+
                             byte(0xF7FFA0DD+dword(0xe7b054))/byte(0xF7FFA0DD)+byte(0xF7FFA0D5+dword(0xe7b054))/byte(0xF7FFA0D5)+
                             byte(0xF7FFA0E1+dword(0xe7b054))/byte(0xF7FFA0E1)+byte(0xF7FFA339+dword(0xe7b054))/byte(0xF7FFA339)+
                             byte(0xF7FFA379+dword(0xe7b054))/byte(0xF7FFA379)+byte(0xF7FFA0E5+dword(0xe7b054))/byte(0xF7FFA0E5)+
                             byte(0xF7FFA335+dword(0xe7b054))/byte(0xF7FFA335)+byte(0xF7FFA0B9+dword(0xe7b054))/byte(0xF7FFA0B9)+
                             byte(0xF7FFA129+dword(0xe7b054))/byte(0xF7FFA129)+byte(0xF7FFA4A5+dword(0xe7b054))/byte(0xF7FFA4A5)+
                             byte(0xF7FF7A4D+dword(0xe7b054))/byte(0xF7FF7A4D)+byte(0xF7FF8CF1+dword(0xe7b054))/byte(0xF7FF8CF1)+
                             byte(0xF7FFA58D+dword(0xe7b054))/byte(0xF7FFA58D)+byte(0xF7FFA585+dword(0xe7b054))/byte(0xF7FFA585)+
                             byte(0xF7FFA8ED+dword(0xe7b054))/byte(0xF7FFA8ED)+byte(0xF7FFA5AD+dword(0xe7b054))/byte(0xF7FFA5AD)+
                             byte(0xF7FFA5B9+dword(0xe7b054))/byte(0xF7FFA5B9)+byte(0xF7FFA915+dword(0xe7b054))/byte(0xF7FFA915)+
                             byte(0xF7FFA5A9+dword(0xe7b054))/byte(0xF7FFA5A9)+byte(0xF7FFA591+dword(0xe7b054))/byte(0xF7FFA591)+
                             byte(0xF7FFA589+dword(0xe7b054))/byte(0xF7FFA589)+byte(0xF7FF926D+dword(0xe7b054))/byte(0xF7FF926D)+
                             byte(0xF7FF9271+dword(0xe7b054))/byte(0xF7FF9271)+byte(0xF7FFA4B5+dword(0xe7b054))/byte(0xF7FFA4B5)+
                             byte(0xF7FF9275+dword(0xe7b054))/byte(0xF7FF9275)+byte(0xF7FF9279+dword(0xe7b054))/byte(0xF7FF9279)+
                             byte(0xF7FF927D+dword(0xe7b054))/byte(0xF7FF927D)+byte(0xF7FF967D+dword(0xe7b054))/byte(0xF7FF967D)+
                             byte(0xF7FF9681+dword(0xe7b054))/byte(0xF7FF9681)+byte(0xF7FF9685+dword(0xe7b054))/byte(0xF7FF9685)+
                             byte(0xF7FF9689+dword(0xe7b054))/byte(0xF7FF9689)+byte(0xF7FF968D+dword(0xe7b054))/byte(0xF7FF968D)+
                             byte(0xF7FF9691+dword(0xe7b054))/byte(0xF7FF9691)+byte(0xF7FF9879+dword(0xe7b054))/byte(0xF7FF9879)+
                             byte(0xF7FF987D+dword(0xe7b054))/byte(0xF7FF987D)+byte(0xF7FF9881+dword(0xe7b054))/byte(0xF7FF9881)+
                             byte(0xF7FF9A9D+dword(0xe7b054))/byte(0xF7FF9A9D)+byte(0xF7FF9AA1+dword(0xe7b054))/byte(0xF7FF9AA1)+
                             byte(0xF7FF9AA5+dword(0xe7b054))/byte(0xF7FF9AA5)+byte(0xF7FF9AA9+dword(0xe7b054))/byte(0xF7FF9AA9)+
                             byte(0xF7FF9C99+dword(0xe7b054))/byte(0xF7FF9C99)+byte(0xF7FF9C9D+dword(0xe7b054))/byte(0xF7FF9C9D)+
                             byte(0xF7FF9CA1+dword(0xe7b054))/byte(0xF7FF9CA1)+byte(0xF7FF9CA5+dword(0xe7b054))/byte(0xF7FF9CA5)+
                             byte(0xF7FF9ED1+dword(0xe7b054))/byte(0xF7FF9ED1)+byte(0xF7FF9ED5+dword(0xe7b054))/byte(0xF7FF9ED5)+
                             byte(0xF7FF9ED9+dword(0xe7b054))/byte(0xF7FF9ED9)+byte(0xF7FF9EDD+dword(0xe7b054))/byte(0xF7FF9EDD)+
                             byte(0xF7FF7D81+dword(0xe7b054))/byte(0xF7FF7D81)
                             
achievement ("Shade of Light", "Obtain all cards from [Shade of Light] booster", 10,
trigger = save_protect() && measured(shade_of_light() == 99) && prev(shade_of_light()) != 99)

//I Walk the Earth Booster Packs - 98 Cards Total   
//Offset - 0xF7FF916D - Acidic Downpour
//Offset - 0xF7FF9E45 - At One With the Sword
//Offset - 0xF7FF8781 - Avalanching Aussa
//Offset - 0xF7FFA801 - Barkion's Bark
//Offset - 0xF7FF89A9 - Barrier Statue of the Drought
//Offset - 0xF7FF925D - Commander Gottoms, Swordmaster
//Offset - 0xF7FF9021 - Earth Effigy
//Offset - 0xF7FFA85D - Exterio's Fang
//Offset - 0xF7FF6FD1 - Gaia Power
//Offset - 0xF7FFA55D - Gem-Armadillo
//Offset - 0xF7FFA5BD - Gem-Enhancement
//Offset - 0xF7FFA559 - Gem-Knight Alexandrite
//Offset - 0xF7FFA599 - Gem-Knight Aquamarine
//Offset - 0xF7FFA911 - Gem-Knight Emerald
//Offset - 0xF7FFA5B1 - Gem-Knight Fusion
//Offset - 0xF7FFA54D - Gem-Knight Garnet
//Offset - 0xF7FFA595 - Gem-Knight Ruby
//Offset - 0xF7FFA551 - Gem-Knight Sapphire
//Offset - 0xF7FFA59D - Gem-Knight Topaz
//Offset - 0xF7FFA555 - Gem-Knight Tourmaline
//Offset - 0xF7FFA561 - Gem-Merchant
//Offset - 0xF7FF9A81 - Genex Army
//Offset - 0xF7FF9835 - Genex Gaia
//Offset - 0xF7FF9635 - Genex Searcher
//Offset - 0xF7FF983D - Genex Turbine
//Offset - 0xF7FF9891 - Geo Genex
//Offset - 0xF7FF6F8D - Giant Rat
//Offset - 0xF7FF7BA5 - Gigantes
//Offset - 0xF7FF9B85 - Gigastone Omega
//Offset - 0xF7FF9CFD - Gottoms' Emergency Call
//Offset - 0xF7FF815D - Granmarg the Rock Monarch
//Offset - 0xF7FF7A41 - Gravity Axe - Grarl
//Offset - 0xF7FF79FD - Guardian Grarl
//Offset - 0xF7FF6709 - Invigoration
//Offset - 0xF7FFA691 - Landoise's Luminous Moss
//Offset - 0xF7FFA805 - Leodrake's Mane
//Offset - 0xF7FF6A35 - Milus Radiant
//Offset - 0xF7FF8FC9 - Mormolith
//Offset - 0xF7FF7F61 - Mystic Swordsman LV2
//Offset - 0xF7FF7F65 - Mystic Swordsman LV4
//Offset - 0xF7FF8079 - Mystic Swordsman LV6
//Offset - 0xF7FF9A69 - Naturia Antjaw
//Offset - 0xF7FFA635 - Naturia Bamboo Shoot
//Offset - 0xF7FF9CB1 - Naturia Barkion
//Offset - 0xF7FFA631 - Naturia Beans
//Offset - 0xF7FF9885 - Naturia Beast
//Offset - 0xF7FF9821 - Naturia Beetle
//Offset - 0xF7FFA109 - Naturia Butterfly
//Offset - 0xF7FFA7A9 - Naturia Cherries
//Offset - 0xF7FF9C71 - Naturia Cliff
//Offset - 0xF7FF9A75 - Naturia Cosmobeet
//Offset - 0xF7FF9C69 - Naturia Dragonfly
//Offset - 0xF7FFA36D - Naturia Exterio
//Offset - 0xF7FFA68D - Naturia Forest
//Offset - 0xF7FF9EA9 - Naturia Fruitfly
//Offset - 0xF7FF9829 - Naturia Guardian
//Offset - 0xF7FF9EA5 - Naturia Horneedle
//Offset - 0xF7FF9EAD - Naturia Hydrangea
//Offset - 0xF7FFA10D - Naturia Ladybug
//Offset - 0xF7FFA135 - Naturia Landoise
//Offset - 0xF7FF9AB5 - Naturia Leodrake
//Offset - 0xF7FFA355 - Naturia Mantis
//Offset - 0xF7FFA62D - Naturia Mosquito
//Offset - 0xF7FFA7AD - Naturia Pumpkin
//Offset - 0xF7FFA359 - Naturia Ragweed
//Offset - 0xF7FF9825 - Naturia Rock
//Offset - 0xF7FF9A71 - Naturia Rosewhip
//Offset - 0xF7FF9A6D - Naturia Spiderfang
//Offset - 0xF7FFA7B1 - Naturia Stag Beetle
//Offset - 0xF7FFA351 - Naturia Stinkbug
//Offset - 0xF7FFA111 - Naturia Strawberry
//Offset - 0xF7FF9C6D - Naturia Sunflower
//Offset - 0xF7FF9C75 - Naturia Tulip
//Offset - 0xF7FF982D - Naturia Vein
//Offset - 0xF7FFA35D - Naturia White Oak
//Offset - 0xF7FF9C81 - R-Genex Crusher
//Offset - 0xF7FF9EB9 - R-Genex Ultimum
//Offset - 0xF7FF8B01 - Raging Earth
//Offset - 0xF7FFA2CD - Saber Hole
//Offset - 0xF7FF9DF1 - Saber Slash
//Offset - 0xF7FF9DF5 - Sword of Sparkles
//Offset - 0xF7FF73E9 - The Rock Spirit
//Offset - 0xF7FF7FA9 - The Trojan Horse
//Offset - 0xF7FF9255 - X-Saber Airbellum
//Offset - 0xF7FF9661 - X-Saber Anu Piranha
//Offset - 0xF7FF9251 - X-Saber Axel
//Offset - 0xF7FF9665 - X-Saber Galahad
//Offset - 0xF7FF9669 - X-Saber Palomuro
//Offset - 0xF7FF966D - X-Saber Pashuul
//Offset - 0xF7FF9259 - X-Saber Uruz
//Offset - 0xF7FFA3B1 - XX-Saber Emmersblade
//Offset - 0xF7FF9D9D - XX-Saber Faultroll
//Offset - 0xF7FFA075 - XX-Saber Fulhelmknight
//Offset - 0xF7FFA071 - XX-Saber Gardestrike
//Offset - 0xF7FFA211 - XX-Saber Garsem
//Offset - 0xF7FF9DB9 - XX-Saber Gottoms
//Offset - 0xF7FFA259 - XX-Saber Hyunlei
//Offset - 0xF7FF9D99 - XX-Saber Ragigura  

function i_walk_the_earth() => byte(0xF7FF916D+dword(0xe7b054))/byte(0xF7FF916D)+byte(0xF7FF9E45+dword(0xe7b054))/byte(0xF7FF9E45)+
                               byte(0xF7FF8781+dword(0xe7b054))/byte(0xF7FF8781)+byte(0xF7FFA801+dword(0xe7b054))/byte(0xF7FFA801)+
                               byte(0xF7FF89A9+dword(0xe7b054))/byte(0xF7FF89A9)+byte(0xF7FF925D+dword(0xe7b054))/byte(0xF7FF925D)+
                               byte(0xF7FF9021+dword(0xe7b054))/byte(0xF7FF9021)+byte(0xF7FFA85D+dword(0xe7b054))/byte(0xF7FFA85D)+
                               byte(0xF7FF6FD1+dword(0xe7b054))/byte(0xF7FF6FD1)+byte(0xF7FFA55D+dword(0xe7b054))/byte(0xF7FFA55D)+
                               byte(0xF7FFA5BD+dword(0xe7b054))/byte(0xF7FFA5BD)+byte(0xF7FFA559+dword(0xe7b054))/byte(0xF7FFA559)+
                               byte(0xF7FFA599+dword(0xe7b054))/byte(0xF7FFA599)+byte(0xF7FFA911+dword(0xe7b054))/byte(0xF7FFA911)+
                               byte(0xF7FFA5B1+dword(0xe7b054))/byte(0xF7FFA5B1)+byte(0xF7FFA54D+dword(0xe7b054))/byte(0xF7FFA54D)+
                               byte(0xF7FFA595+dword(0xe7b054))/byte(0xF7FFA595)+byte(0xF7FFA551+dword(0xe7b054))/byte(0xF7FFA551)+
                               byte(0xF7FFA59D+dword(0xe7b054))/byte(0xF7FFA59D)+byte(0xF7FFA555+dword(0xe7b054))/byte(0xF7FFA555)+
                               byte(0xF7FFA561+dword(0xe7b054))/byte(0xF7FFA561)+byte(0xF7FF9A81+dword(0xe7b054))/byte(0xF7FF9A81)+
                               byte(0xF7FF9835+dword(0xe7b054))/byte(0xF7FF9835)+byte(0xF7FF9635+dword(0xe7b054))/byte(0xF7FF9635)+
                               byte(0xF7FF983D+dword(0xe7b054))/byte(0xF7FF983D)+byte(0xF7FF9891+dword(0xe7b054))/byte(0xF7FF9891)+
                               byte(0xF7FF6F8D+dword(0xe7b054))/byte(0xF7FF6F8D)+byte(0xF7FF7BA5+dword(0xe7b054))/byte(0xF7FF7BA5)+
                               byte(0xF7FF9B85+dword(0xe7b054))/byte(0xF7FF9B85)+byte(0xF7FF9CFD+dword(0xe7b054))/byte(0xF7FF9CFD)+
                               byte(0xF7FF815D+dword(0xe7b054))/byte(0xF7FF815D)+byte(0xF7FF7A41+dword(0xe7b054))/byte(0xF7FF7A41)+
                               byte(0xF7FF79FD+dword(0xe7b054))/byte(0xF7FF79FD)+byte(0xF7FF6709+dword(0xe7b054))/byte(0xF7FF6709)+
                               byte(0xF7FFA691+dword(0xe7b054))/byte(0xF7FFA691)+byte(0xF7FFA805+dword(0xe7b054))/byte(0xF7FFA805)+
                               byte(0xF7FF6A35+dword(0xe7b054))/byte(0xF7FF6A35)+byte(0xF7FF8FC9+dword(0xe7b054))/byte(0xF7FF8FC9)+
                               byte(0xF7FF7F61+dword(0xe7b054))/byte(0xF7FF7F61)+byte(0xF7FF7F65+dword(0xe7b054))/byte(0xF7FF7F65)+
                               byte(0xF7FF8079+dword(0xe7b054))/byte(0xF7FF8079)+byte(0xF7FF9A69+dword(0xe7b054))/byte(0xF7FF9A69)+
                               byte(0xF7FFA635+dword(0xe7b054))/byte(0xF7FFA635)+byte(0xF7FF9CB1+dword(0xe7b054))/byte(0xF7FF9CB1)+
                               byte(0xF7FFA631+dword(0xe7b054))/byte(0xF7FFA631)+byte(0xF7FF9885+dword(0xe7b054))/byte(0xF7FF9885)+
                               byte(0xF7FF9821+dword(0xe7b054))/byte(0xF7FF9821)+byte(0xF7FFA109+dword(0xe7b054))/byte(0xF7FFA109)+
                               byte(0xF7FFA7A9+dword(0xe7b054))/byte(0xF7FFA7A9)+byte(0xF7FF9C71+dword(0xe7b054))/byte(0xF7FF9C71)+
                               byte(0xF7FF9A75+dword(0xe7b054))/byte(0xF7FF9A75)+byte(0xF7FF9C69+dword(0xe7b054))/byte(0xF7FF9C69)+
                               byte(0xF7FFA36D+dword(0xe7b054))/byte(0xF7FFA36D)+byte(0xF7FFA68D+dword(0xe7b054))/byte(0xF7FFA68D)+
                               byte(0xF7FF9EA9+dword(0xe7b054))/byte(0xF7FF9EA9)+byte(0xF7FF9829+dword(0xe7b054))/byte(0xF7FF9829)+
                               byte(0xF7FF9EA5+dword(0xe7b054))/byte(0xF7FF9EA5)+byte(0xF7FF9EAD+dword(0xe7b054))/byte(0xF7FF9EAD)+
                               byte(0xF7FFA10D+dword(0xe7b054))/byte(0xF7FFA10D)+byte(0xF7FFA135+dword(0xe7b054))/byte(0xF7FFA135)+
                               byte(0xF7FF9AB5+dword(0xe7b054))/byte(0xF7FF9AB5)+byte(0xF7FFA355+dword(0xe7b054))/byte(0xF7FFA355)+
                               byte(0xF7FFA62D+dword(0xe7b054))/byte(0xF7FFA62D)+byte(0xF7FFA7AD+dword(0xe7b054))/byte(0xF7FFA7AD)+
                               byte(0xF7FFA359+dword(0xe7b054))/byte(0xF7FFA359)+byte(0xF7FF9825+dword(0xe7b054))/byte(0xF7FF9825)+
                               byte(0xF7FF9A71+dword(0xe7b054))/byte(0xF7FF9A71)+byte(0xF7FF9A6D+dword(0xe7b054))/byte(0xF7FF9A6D)+
                               byte(0xF7FFA7B1+dword(0xe7b054))/byte(0xF7FFA7B1)+byte(0xF7FFA351+dword(0xe7b054))/byte(0xF7FFA351)+
                               byte(0xF7FFA111+dword(0xe7b054))/byte(0xF7FFA111)+byte(0xF7FF9C6D+dword(0xe7b054))/byte(0xF7FF9C6D)+
                               byte(0xF7FF9C75+dword(0xe7b054))/byte(0xF7FF9C75)+byte(0xF7FF982D+dword(0xe7b054))/byte(0xF7FF982D)+
                               byte(0xF7FFA35D+dword(0xe7b054))/byte(0xF7FFA35D)+byte(0xF7FF9C81+dword(0xe7b054))/byte(0xF7FF9C81)+
                               byte(0xF7FF9EB9+dword(0xe7b054))/byte(0xF7FF9EB9)+byte(0xF7FF8B01+dword(0xe7b054))/byte(0xF7FF8B01)+
                               byte(0xF7FFA2CD+dword(0xe7b054))/byte(0xF7FFA2CD)+byte(0xF7FF9DF1+dword(0xe7b054))/byte(0xF7FF9DF1)+
                               byte(0xF7FF9DF5+dword(0xe7b054))/byte(0xF7FF9DF5)+byte(0xF7FF73E9+dword(0xe7b054))/byte(0xF7FF73E9)+
                               byte(0xF7FF7FA9+dword(0xe7b054))/byte(0xF7FF7FA9)+byte(0xF7FF9255+dword(0xe7b054))/byte(0xF7FF9255)+
                               byte(0xF7FF9661+dword(0xe7b054))/byte(0xF7FF9661)+byte(0xF7FF9251+dword(0xe7b054))/byte(0xF7FF9251)+
                               byte(0xF7FF9665+dword(0xe7b054))/byte(0xF7FF9665)+byte(0xF7FF9669+dword(0xe7b054))/byte(0xF7FF9669)+
                               byte(0xF7FF966D+dword(0xe7b054))/byte(0xF7FF966D)+byte(0xF7FF9259+dword(0xe7b054))/byte(0xF7FF9259)+
                               byte(0xF7FFA3B1+dword(0xe7b054))/byte(0xF7FFA3B1)+byte(0xF7FF9D9D+dword(0xe7b054))/byte(0xF7FF9D9D)+
                               byte(0xF7FFA075+dword(0xe7b054))/byte(0xF7FFA075)+byte(0xF7FFA071+dword(0xe7b054))/byte(0xF7FFA071)+
                               byte(0xF7FFA211+dword(0xe7b054))/byte(0xF7FFA211)+byte(0xF7FF9DB9+dword(0xe7b054))/byte(0xF7FF9DB9)+
                               byte(0xF7FFA259+dword(0xe7b054))/byte(0xF7FFA259)+byte(0xF7FF9D99+dword(0xe7b054))/byte(0xF7FF9D99) 
                               
achievement ("I Walk the Earth", "Obtain all cards from [I Walk the Earth] booster", 10,
trigger = save_protect() && measured(i_walk_the_earth() == 98) && prev(i_walk_the_earth()) != 98)

//A Little Bit of Everything Booster Packs - 562 Cards Total
//Offset - 0xF7FF7269 - 4-Starred Ladybug of Doom
//Offset - 0xF7FF75CD - A Legendary Ocean
//Offset - 0xF7FF7D05 - Abyss Soldier
//Offset - 0xF7FF916D - Acidic Downpour
//Offset - 0xF7FF9E39 - Aegis of the Ocean Dragon Lord
//Offset - 0xF7FF92D9 - Allure of Darkness
//Offset - 0xF7FF9861 - Ally Mind
//Offset - 0xF7FF9291 - Ally of Justice Catastor
//Offset - 0xF7FF9261 - Ally of Justice Clausolas
//Offset - 0xF7FFA46D - Ally of Justice Core Destroyer
//Offset - 0xF7FF9875 - Ally of Justice Cosmic Gateway
//Offset - 0xF7FF9ECD - Ally of Justice Cycle Reader
//Offset - 0xF7FF96AD - Ally of Justice Cyclone Creator
//Offset - 0xF7FF986D - Ally of Justice Enemy Catcher
//Offset - 0xF7FF9265 - Ally of Justice Garadholg
//Offset - 0xF7FF9865 - Ally of Justice Nullfier
//Offset - 0xF7FF9EC5 - Ally of Justice Omni-Weapon
//Offset - 0xF7FF9EC9 - Ally of Justice Quarantine
//Offset - 0xF7FF9A95 - Ally of Justice Reverse Break
//Offset - 0xF7FF9269 - Ally of Justice Rudra
//Offset - 0xF7FF9869 - Ally of Justice Searcher
//Offset - 0xF7FF9675 - Ally of Justice Thousand Arms
//Offset - 0xF7FF9871 - Ally of Justice Thunder Armor
//Offset - 0xF7FF9679 - Ally of Justice Unknown Crusher
//Offset - 0xF7FF9A99 - Ally of Justice Unlimiter
//Offset - 0xF7FF9671 - Ally Salvo
//Offset - 0xF7FF7C7D - Amphibious Bugroth MK-3
//Offset - 0xF7FFA371 - Ancient Flamvell Deity
//Offset - 0xF7FF73E5 - Aqua Spirit
//Offset - 0xF7FF90E9 - Armageddon Knight
//Offset - 0xF7FF8579 - Armed Dragon LV10
//Offset - 0xF7FF7F69 - Armed Dragon LV3
//Offset - 0xF7FF7F6D - Armed Dragon LV5
//Offset - 0xF7FF7F71 - Armed Dragon LV7
//Offset - 0xF7FF9D71 - Armed Sea Hunter
//Offset - 0xF7FF79E9 - Arsenal Summoner
//Offset - 0xF7FF9E45 - At One With the Sword
//Offset - 0xF7FF8781 - Avalanching Aussa
//Offset - 0xF7FF7DD5 - Backfire
//Offset - 0xF7FFA801 - Barkion's Bark
//Offset - 0xF7FF8999 - Barrier Statue of the Abyss
//Offset - 0xF7FF89A9 - Barrier Statue of the Drought
//Offset - 0xF7FF89AD - Barrier Statue of the Heavens
//Offset - 0xF7FF89A1 - Barrier Statue of the Inferno
//Offset - 0xF7FF89A5 - Barrier Statue of the Stormwinds
//Offset - 0xF7FF899D - Barrier Statue of the Torrent
//Offset - 0xF7FF7DF1 - Beckoning Light
//Offset - 0xF7FF7FE9 - Big Wave Small Wave
//Offset - 0xF7FF88A9 - Black Ptera
//Offset - 0xF7FF6B7D - Bladefly
//Offset - 0xF7FF8789 - Blazing Hiita
//Offset - 0xF7FF7C39 - Blazing Inpachi
//Offset - 0xF7FFA8E5 - Blessings for Gusto
//Offset - 0xF7FF9231 - Blizzard Warrior
//Offset - 0xF7FF922D - Blizzed, Defender of the Ice Barrier
//Offset - 0xF7FF7265 - Bombardment Beetle
//Offset - 0xF7FF6E7D - Burning Spear
//Offset - 0xF7FFA89D - Caam, Serenity of Gusto
//Offset - 0xF7FF9211 - Caius the Shadow Monarch
//Offset - 0xF7FF9C95 - Caravan of the Ice Barrier
//Offset - 0xF7FFA8E1 - Ceremonial Mirror Meditation
//Offset - 0xF7FF8615 - Chain Thrasher
//Offset - 0xF7FF7B99 - Chaosrider Gustaph
//Offset - 0xF7FF7F39 - Charcoal Inpachi
//Offset - 0xF7FFA229 - Codarus
//Offset - 0xF7FF8A39 - Cold Enchanter
//Offset - 0xF7FF925D - Commander Gottoms, Swordmaster
//Offset - 0xF7FFA8D9 - Contact with Gusto
//Offset - 0xF7FF7319 - Crimson Sentry
//Offset - 0xF7FF9235 - Cryomancer of the Ice Barrier
//Offset - 0xF7FF9455 - Cursed Fig
//Offset - 0xF7FF8951 - Cyber Esper
//Offset - 0xF7FF96D9 - Cyber Shark
//Offset - 0xF7FF9849 - Dai-Sojo of the Ice Barrier
//Offset - 0xF7FFA8D1 - Daigusto Eguls
//Offset - 0xF7FFA8CD - Daigusto Gulldos
//Offset - 0xF7FFA7B5 - Dance Princess of the Ice Barrier
//Offset - 0xF7FF90E5 - Dark Crusader
//Offset - 0xF7FF8E05 - Dark Effigy
//Offset - 0xF7FF9031 - Dark End Dragon
//Offset - 0xF7FF915D - Dark Eruption
//Offset - 0xF7FF9605 - Dark General Freed
//Offset - 0xF7FF90D5 - Dark Horus
//Offset - 0xF7FF9539 - Dark Hunter
//Offset - 0xF7FF91A1 - Dark Illusion
//Offset - 0xF7FF90DD - Dark Nephthys
//Offset - 0xF7FF95E1 - Dark Simorgh
//Offset - 0xF7FF919D - Dark Spirit Art - Greed
//Offset - 0xF7FF9AE9 - Dark Voltanis
//Offset - 0xF7FF8E69 - Darkblaze Dragon
//Offset - 0xF7FF92B9 - Darklord Zerato
//Offset - 0xF7FF92BD - Darknight Parshath
//Offset - 0xF7FF820D - Deck Devastation Virus
//Offset - 0xF7FF9089 - Deep Diver
//Offset - 0xF7FF92C1 - Deepsea Macrotrema
//Offset - 0xF7FF6DB5 - Deepsea Warrior
//Offset - 0xF7FFA115 - Defender of the Ice Barrier
//Offset - 0xF7FFA7C5 - Delg the Dark Monarch
//Offset - 0xF7FF8B0D - Destruction Cyclone
//Offset - 0xF7FF9C91 - Dewdark of the Ice Barrier
//Offset - 0xF7FF9889 - Dewloren, Tiger King of the Ice Barrier
//Offset - 0xF7FF9441 - Dharc the Dark Charmer
//Offset - 0xF7FF9D75 - Divine Dragon Aquabizarre
//Offset - 0xF7FF90ED - Doomsday Horror
//Offset - 0xF7FF7E79 - Double Coston
//Offset - 0xF7FFA725 - Dragon Mastery
//Offset - 0xF7FFA721 - Dragon Ravine
//Offset - 0xF7FF8899 - Dragonic Knight
//Offset - 0xF7FFA71D - Dragunity Aklys
//Offset - 0xF7FFA34D - Dragunity Angusticlavii
//Offset - 0xF7FFA715 - Dragunity Arma - Laevateinn
//Offset - 0xF7FFA719 - Dragunity Arma - Mistilteinn
//Offset - 0xF7FFA0F1 - Dragunity Brandistock
//Offset - 0xF7FFA341 - Dragunity Corsesca
//Offset - 0xF7FF9E85 - Dragunity Darkspear
//Offset - 0xF7FF9E79 - Dragunity Dux
//Offset - 0xF7FFA0F5 - Dragunity Javelin
//Offset - 0xF7FFA37D - Dragunity Knight - Barcha
//Offset - 0xF7FF9EE1 - Dragunity Knight - Gae Bulg
//Offset - 0xF7FF9F01 - Dragunity Knight - Gae Dearg
//Offset - 0xF7FFA12D - Dragunity Knight - Trident
//Offset - 0xF7FFA0BD - Dragunity Knight - Vajrayana
//Offset - 0xF7FF9E7D - Dragunity Legionnaire
//Offset - 0xF7FFA0E9 - Dragunity Militum
//Offset - 0xF7FFA345 - Dragunity Partisan
//Offset - 0xF7FF9E89 - Dragunity Phalanx
//Offset - 0xF7FFA349 - Dragunity Pilum
//Offset - 0xF7FFA0ED - Dragunity Primus Pilus
//Offset - 0xF7FF9E81 - Dragunity Tribus
//Offset - 0xF7FF80A5 - Eagle Eye
//Offset - 0xF7FF9021 - Earth Effigy
//Offset - 0xF7FF66C5 - Elf's Light
//Offset - 0xF7FF8D1D - Eradicator Epidemic Virus
//Offset - 0xF7FF91A5 - Escape from the Dark Dimension
//Offset - 0xF7FF6C51 - Eternal Draught
//Offset - 0xF7FFA8C5 - Evigishki Mind Augus
//Offset - 0xF7FFA8C9 - Evigishki Soul Ogre
//Offset - 0xF7FFA85D - Exterio's Fang
//Offset - 0xF7FF9E91 - Fabled Ashenveil
//Offset - 0xF7FFA33D - Fabled Dianaira
//Offset - 0xF7FF9E8D - Fabled Dyf
//Offset - 0xF7FF9A51 - Fabled Gallabas
//Offset - 0xF7FF9A4D - Fabled Grimro
//Offset - 0xF7FF9C49 - Fabled Krus
//Offset - 0xF7FF9A55 - Fabled Kushano
//Offset - 0xF7FF9CA9 - Fabled Leviathan
//Offset - 0xF7FF9A49 - Fabled Lurrie
//Offset - 0xF7FF9C55 - Fabled Miztoji
//Offset - 0xF7FF9E95 - Fabled Oltro
//Offset - 0xF7FF9EE5 - Fabled Ragin
//Offset - 0xF7FF976D - Fabled Raven
//Offset - 0xF7FF9C51 - Fabled Soulkius
//Offset - 0xF7FF9C4D - Fabled Topi
//Offset - 0xF7FF9C45 - Fabled Urustos
//Offset - 0xF7FF9AAD - Fabled Valkyrus
//Offset - 0xF7FF7331 - Fairy Guardian
//Offset - 0xF7FF7BA1 - Fenrir
//Offset - 0xF7FF9161 - Fires of Doomsday
//Offset - 0xF7FF8B09 - Firestorm Prominence
//Offset - 0xF7FFA8DD - First Step Towards Infestation
//Offset - 0xF7FF8A55 - Flame Ogre
//Offset - 0xF7FF81B1 - Flame Ruler
//Offset - 0xF7FF9611 - Flame Spirit Ignis
//Offset - 0xF7FF9659 - Flamvell Archer
//Offset - 0xF7FF985D - Flamvell Baby
//Offset - 0xF7FFA089 - Flamvell Commando
//Offset - 0xF7FF9E41 - Flamvell Counter
//Offset - 0xF7FF9245 - Flamvell Dragnov
//Offset - 0xF7FF965D - Flamvell Fiend
//Offset - 0xF7FF9DA1 - Flamvell Firedog
//Offset - 0xF7FF9859 - Flamvell Grunika
//Offset - 0xF7FF924D - Flamvell Guard
//Offset - 0xF7FF9249 - Flamvell Magician
//Offset - 0xF7FF9655 - Flamvell Poun
//Offset - 0xF7FF6FBD - Flying Kamakiri #1
//Offset - 0xF7FFA2D9 - Forgotten Temple of the Deep
//Offset - 0xF7FF7B89 - Freed the Brave Wanderer
//Offset - 0xF7FF6FD1 - Gaia Power
//Offset - 0xF7FF73ED - Garuda the Wind Spirit
//Offset - 0xF7FF67D1 - Gate Guardian
//Offset - 0xF7FFA55D - Gem-Armadillo
//Offset - 0xF7FFA5BD - Gem-Enhancement
//Offset - 0xF7FFA559 - Gem-Knight Alexandrite
//Offset - 0xF7FFA599 - Gem-Knight Aquamarine
//Offset - 0xF7FFA911 - Gem-Knight Emerald
//Offset - 0xF7FFA5B1 - Gem-Knight Fusion
//Offset - 0xF7FFA54D - Gem-Knight Garnet
//Offset - 0xF7FFA595 - Gem-Knight Ruby
//Offset - 0xF7FFA551 - Gem-Knight Sapphire
//Offset - 0xF7FFA59D - Gem-Knight Topaz
//Offset - 0xF7FFA555 - Gem-Knight Tourmaline
//Offset - 0xF7FFA561 - Gem-Merchant
//Offset - 0xF7FFA369 - General Gantala of the Ice Barrier
//Offset - 0xF7FF9EC1 - General Grunard of the Ice Barrier
//Offset - 0xF7FFA121 - General Raiho of the Ice Barrier
//Offset - 0xF7FFA3D9 - Genex Ally Axel
//Offset - 0xF7FFA329 - Genex Ally Bellflame
//Offset - 0xF7FFA325 - Genex Ally Birdman
//Offset - 0xF7FFA0C9 - Genex Ally Changer
//Offset - 0xF7FFA321 - Genex Ally Chemistrer
//Offset - 0xF7FFA32D - Genex Ally Crusher
//Offset - 0xF7FFA0B5 - Genex Ally Duradark
//Offset - 0xF7FFA0C5 - Genex Ally Powercell
//Offset - 0xF7FFA331 - Genex Ally Reliever
//Offset - 0xF7FFA0C1 - Genex Ally Remote
//Offset - 0xF7FFA0D1 - Genex Ally Solid
//Offset - 0xF7FFA125 - Genex Ally Triarm
//Offset - 0xF7FFA375 - Genex Ally Triforce
//Offset - 0xF7FFA0CD - Genex Ally Volcannon
//Offset - 0xF7FF9A81 - Genex Army
//Offset - 0xF7FF9A79 - Genex Blastfan
//Offset - 0xF7FF9629 - Genex Controller
//Offset - 0xF7FF9841 - Genex Doctor
//Offset - 0xF7FF9831 - Genex Furnace
//Offset - 0xF7FF9835 - Genex Gaia
//Offset - 0xF7FF96A9 - Genex Neutron
//Offset - 0xF7FF9631 - Genex Power Planner
//Offset - 0xF7FF9A7D - Genex Recycled
//Offset - 0xF7FF9635 - Genex Searcher
//Offset - 0xF7FF9845 - Genex Solar
//Offset - 0xF7FF9839 - Genex Spare
//Offset - 0xF7FF983D - Genex Turbine
//Offset - 0xF7FF962D - Genex Undine
//Offset - 0xF7FF9639 - Genex Worker
//Offset - 0xF7FF9891 - Geo Genex
//Offset - 0xF7FF9A89 - Geomancer of the Ice Barrier
//Offset - 0xF7FF6F8D - Giant Rat
//Offset - 0xF7FF7BA5 - Gigantes
//Offset - 0xF7FF9B85 - Gigastone Omega
//Offset - 0xF7FFA875 - Gishki Abyss
//Offset - 0xF7FFA885 - Gishki Ariel
//Offset - 0xF7FFA8D5 - Gishki Ceremonial Mirror
//Offset - 0xF7FFA881 - Gishki Chain
//Offset - 0xF7FFA87D - Gishki Marker
//Offset - 0xF7FFA889 - Gishki Shadow
//Offset - 0xF7FFA879 - Gishki Vanity
//Offset - 0xF7FF8A2D - Goka, the Pyre of Malice
//Offset - 0xF7FF9CFD - Gottoms' Emergency Call
//Offset - 0xF7FF815D - Granmarg the Rock Monarch
//Offset - 0xF7FF7A41 - Gravity Axe - Grarl
//Offset - 0xF7FF7A01 - Guardian Baou
//Offset - 0xF7FF79F9 - Guardian Ceal
//Offset - 0xF7FF79F5 - Guardian Elma
//Offset - 0xF7FF79FD - Guardian Grarl
//Offset - 0xF7FF7A05 - Guardian Kay'est
//Offset - 0xF7FF95F9 - Guardian of Order
//Offset - 0xF7FF7A09 - Guardian Tryce
//Offset - 0xF7FF9CB9 - Gungnir, Dragon of the Ice Barrier
//Offset - 0xF7FF6E81 - Gust Fan
//Offset - 0xF7FFA891 - Gusto Egul
//Offset - 0xF7FFA88D - Gusto Gulldo
//Offset - 0xF7FFA895 - Gusto Thunbolt
//Offset - 0xF7FF770D - Hidden Soldiers
//Offset - 0xF7FF80D5 - Homunculus the Alchemic Being
//Offset - 0xF7FF92E9 - Honest
//Offset - 0xF7FF7F4D - Horus the Black Flame Dragon LV4
//Offset - 0xF7FF7F51 - Horus the Black Flame Dragon LV6
//Offset - 0xF7FF7F55 - Horus the Black Flame Dragon LV8
//Offset - 0xF7FF7F75 - Horus' Servant
//Offset - 0xF7FF69A9 - Hoshiningen
//Offset - 0xF7FF8BAD - Hunter Owl
//Offset - 0xF7FF9695 - Hydro Genex
//Offset - 0xF7FF9DE5 - Hydro Pressure Cannon
//Offset - 0xF7FF8BA1 - Ice Master
//Offset - 0xF7FF8331 - Infernal Flame Emperor
//Offset - 0xF7FF8481 - Infernal Incinerator
//Offset - 0xF7FF7B9D - Inferno
//Offset - 0xF7FFA8E9 - Infestation Wave
//Offset - 0xF7FF6709 - Invigoration
//Offset - 0xF7FFA101 - Jurrac Aeolo
//Offset - 0xF7FF9C61 - Jurrac Brachis
//Offset - 0xF7FFA0F9 - Jurrac Dino
//Offset - 0xF7FFA0FD - Jurrac Gallim
//Offset - 0xF7FF9AB1 - Jurrac Giganoto
//Offset - 0xF7FF9E9D - Jurrac Guaiba
//Offset - 0xF7FFA105 - Jurrac Herra
//Offset - 0xF7FF9C5D - Jurrac Iguanon
//Offset - 0xF7FFA131 - Jurrac Meteor
//Offset - 0xF7FF9A61 - Jurrac Monoloph
//Offset - 0xF7FF9A59 - Jurrac Protops
//Offset - 0xF7FF9C59 - Jurrac Ptera
//Offset - 0xF7FF9C65 - Jurrac Spinos
//Offset - 0xF7FF9EA1 - Jurrac Stauriko
//Offset - 0xF7FF9E99 - Jurrac Titano
//Offset - 0xF7FF9A65 - Jurrac Tyrannus
//Offset - 0xF7FF9A5D - Jurrac Velo
//Offset - 0xF7FF9CAD - Jurrac Velphito
//Offset - 0xF7FF7621 - Kaiser Sea Horse
//Offset - 0xF7FFA579 - Kayenn, the Master Magma Blacksmith
//Offset - 0xF7FF67C9 - Kazejin
//Offset - 0xF7FFA691 - Landoise's Luminous Moss
//Offset - 0xF7FFA57D - Laval Burner
//Offset - 0xF7FFA575 - Laval Forest Sprite
//Offset - 0xF7FFA581 - Laval Judgment Lord
//Offset - 0xF7FFA565 - Laval Miller
//Offset - 0xF7FFA5A5 - Laval the Greater
//Offset - 0xF7FFA919 - Laval Twin Slayer
//Offset - 0xF7FFA56D - Laval Warrior
//Offset - 0xF7FFA5A1 - Lavalval Dragon
//Offset - 0xF7FF7821 - Lekunga
//Offset - 0xF7FFA805 - Leodrake's Mane
//Offset - 0xF7FF7C85 - Levia-Dragon - Daedalus
//Offset - 0xF7FF8D05 - Lich Lord, King of the Underworld
//Offset - 0xF7FF8E01 - Light Effigy
//Offset - 0xF7FF9035 - Light End Dragon
//Offset - 0xF7FF93C9 - Light of Redemption
//Offset - 0xF7FF957D - Lightwave Tuning
//Offset - 0xF7FF6B51 - Little Chimera
//Offset - 0xF7FF6DA1 - Little-Winguard
//Offset - 0xF7FF9CB5 - Locomotion R-Genex
//Offset - 0xF7FF6FE1 - Luminous Spark
//Offset - 0xF7FFA4B9 - Magic Triangle of the Ice Barrier
//Offset - 0xF7FF69AD - Maha Vailo
//Offset - 0xF7FF960D - Maniacal Servant
//Offset - 0xF7FFA809 - Medallion of the Ice Barrier
//Offset - 0xF7FF984D - Medium of the Ice Barrier
//Offset - 0xF7FF7D89 - Mermaid Knight
//Offset - 0xF7FF92C5 - Metabo Globster
//Offset - 0xF7FF6A35 - Milus Radiant
//Offset - 0xF7FFA80D - Mirror of the Ice Barrier
//Offset - 0xF7FF964D - Mist Condor
//Offset - 0xF7FF9A91 - Mist Valley Apex Avian
//Offset - 0xF7FF9851 - Mist Valley Baby Roc
//Offset - 0xF7FF9855 - Mist Valley Executor
//Offset - 0xF7FF9A8D - Mist Valley Falcon
//Offset - 0xF7FF923D - Mist Valley Shaman
//Offset - 0xF7FF9241 - Mist Valley Soldier
//Offset - 0xF7FF9ABD - Mist Valley Thunder Lord
//Offset - 0xF7FF9239 - Mist Valley Thunderbird
//Offset - 0xF7FF9649 - Mist Valley Watcher
//Offset - 0xF7FF9651 - Mist Valley Windmaster
//Offset - 0xF7FF7F8D - Mobius the Frost Monarch
//Offset - 0xF7FF6FD9 - Molten Destruction
//Offset - 0xF7FFA5C1 - Molten Whirlwind Wall
//Offset - 0xF7FFA001 - Moray of Greed
//Offset - 0xF7FF8FC9 - Mormolith
//Offset - 0xF7FF6FB9 - Mother Grizzly
//Offset - 0xF7FF6FE5 - Mystic Plasma Zone
//Offset - 0xF7FF7F61 - Mystic Swordsman LV2
//Offset - 0xF7FF7F65 - Mystic Swordsman LV4
//Offset - 0xF7FF8079 - Mystic Swordsman LV6
//Offset - 0xF7FF6FC9 - Mystic Tomato
//Offset - 0xF7FF9A69 - Naturia Antjaw
//Offset - 0xF7FFA635 - Naturia Bamboo Shoot
//Offset - 0xF7FF9CB1 - Naturia Barkion
//Offset - 0xF7FFA631 - Naturia Beans
//Offset - 0xF7FF9885 - Naturia Beast
//Offset - 0xF7FF9821 - Naturia Beetle
//Offset - 0xF7FFA109 - Naturia Butterfly
//Offset - 0xF7FFA7A9 - Naturia Cherries
//Offset - 0xF7FF9C71 - Naturia Cliff
//Offset - 0xF7FF9A75 - Naturia Cosmobeet
//Offset - 0xF7FF9C69 - Naturia Dragonfly
//Offset - 0xF7FFA36D - Naturia Exterio
//Offset - 0xF7FFA68D - Naturia Forest
//Offset - 0xF7FF9EA9 - Naturia Fruitfly
//Offset - 0xF7FF9829 - Naturia Guardian
//Offset - 0xF7FF9EA5 - Naturia Horneedle
//Offset - 0xF7FF9EAD - Naturia Hydrangea
//Offset - 0xF7FFA10D - Naturia Ladybug
//Offset - 0xF7FFA135 - Naturia Landoise
//Offset - 0xF7FF9AB5 - Naturia Leodrake
//Offset - 0xF7FFA355 - Naturia Mantis
//Offset - 0xF7FFA62D - Naturia Mosquito
//Offset - 0xF7FFA7AD - Naturia Pumpkin
//Offset - 0xF7FFA359 - Naturia Ragweed
//Offset - 0xF7FF9825 - Naturia Rock
//Offset - 0xF7FF9A71 - Naturia Rosewhip
//Offset - 0xF7FF9A6D - Naturia Spiderfang
//Offset - 0xF7FFA7B1 - Naturia Stag Beetle
//Offset - 0xF7FFA351 - Naturia Stinkbug
//Offset - 0xF7FFA111 - Naturia Strawberry
//Offset - 0xF7FF9C6D - Naturia Sunflower
//Offset - 0xF7FF9C75 - Naturia Tulip
//Offset - 0xF7FF982D - Naturia Vein
//Offset - 0xF7FFA35D - Naturia White Oak
//Offset - 0xF7FFA319 - Neo Flamvell Garuda
//Offset - 0xF7FFA311 - Neo Flamvell Hedgehog
//Offset - 0xF7FFA30D - Neo Flamvell Origin
//Offset - 0xF7FFA31D - Neo Flamvell Sabre
//Offset - 0xF7FFA315 - Neo Flamvell Shaman
//Offset - 0xF7FF9A29 - Night's End Sorcerer
//Offset - 0xF7FF7B49 - Nightmare Penguin
//Offset - 0xF7FF7E49 - Nubian Guard
//Offset - 0xF7FF9645 - Numbing Grub in the Ice Barrier
//Offset - 0xF7FF90F1 - Obsidian Dragon
//Offset - 0xF7FF833D - Ocean Dragon Lord - Neo-Daedalus
//Offset - 0xF7FF8491 - Oxygeddon
//Offset - 0xF7FF943D - Oyster Meister
//Offset - 0xF7FF9A85 - Pilgrim of the Ice Barrier
//Offset - 0xF7FF8D09 - Prometheus, King of the Shadows
//Offset - 0xF7FFA571 - Prominence, Molten Swordsman
//Offset - 0xF7FF9EB1 - R-Genex Accelerator
//Offset - 0xF7FF9C81 - R-Genex Crusher
//Offset - 0xF7FF9C85 - R-Genex Magma
//Offset - 0xF7FF9EB5 - R-Genex Oracle
//Offset - 0xF7FF9C7D - R-Genex Overseer
//Offset - 0xF7FF9C79 - R-Genex Turbo
//Offset - 0xF7FF9EB9 - R-Genex Ultimum
//Offset - 0xF7FF8B15 - Radiant Spirit
//Offset - 0xF7FF8B01 - Raging Earth
//Offset - 0xF7FF8785 - Raging Eria
//Offset - 0xF7FF9A1D - Rai-Jin
//Offset - 0xF7FF90A5 - Rainbow Dark Dragon
//Offset - 0xF7FF8C8D - Raiza the Storm Monarch
//Offset - 0xF7FF8879 - Rallis the Star Bird
//Offset - 0xF7FF7B45 - Ray of Hope
//Offset - 0xF7FF8D15 - Recurring Nightmare
//Offset - 0xF7FF963D - Reese the Ice Mistress
//Offset - 0xF7FF9DF9 - Rekindling
//Offset - 0xF7FF6FDD - Rising Air Current
//Offset - 0xF7FF8089 - Roc from the Valley of Haze
//Offset - 0xF7FF7A49 - Rod of Silence - Kay'est
//Offset - 0xF7FF9641 - Royal Knight of the Ice Barrier
//Offset - 0xF7FFA2CD - Saber Hole
//Offset - 0xF7FF9DF1 - Saber Slash
//Offset - 0xF7FFA11D - Sacred Spirit of the Ice Barrier
//Offset - 0xF7FF6C31 - Salamandra
//Offset - 0xF7FF7CB9 - Salvage
//Offset - 0xF7FF9C8D - Samurai of the Ice Barrier
//Offset - 0xF7FF67C5 - Sanga of the Thunder
//Offset - 0xF7FFA5B5 - Searing Fire Wall
//Offset - 0xF7FFA365 - Secret Guards of the Ice Barrier
//Offset - 0xF7FF8DDD - Shadow Delver
//Offset - 0xF7FF9D7D - Shark Cruiser
//Offset - 0xF7FF6C55 - Shine Palace
//Offset - 0xF7FF6FB1 - Shining Angel
//Offset - 0xF7FF9C89 - Shock Troops of the Ice Barrier
//Offset - 0xF7FF7A3D - Shooting Star Bow - Ceal
//Offset - 0xF7FF8B05 - Silent Abyss
//Offset - 0xF7FF8041 - Silent Swordsman LV3
//Offset - 0xF7FF8045 - Silent Swordsman LV5
//Offset - 0xF7FF8049 - Silent Swordsman LV7
//Offset - 0xF7FF7BA9 - Silpheed
//Offset - 0xF7FF9381 - Simorgh, Bird of Ancestry
//Offset - 0xF7FF87B9 - Simorgh, Bird of Divinity
//Offset - 0xF7FF91E1 - Skreech
//Offset - 0xF7FF9CBD - Snowman Eater
//Offset - 0xF7FFA569 - Soaring Eagle Above the Searing Land
//Offset - 0xF7FF7DE9 - Solar Ray
//Offset - 0xF7FF73DD - Soul of Purity and Light
//Offset - 0xF7FF9EBD - Spellbreaker of the Ice Barrier
//Offset - 0xF7FF73E1 - Spirit of Flames
//Offset - 0xF7FF6A29 - Star Boy
//Offset - 0xF7FF66CD - Steel Shell
//Offset - 0xF7FFA8B1 - Steelswarm Caller
//Offset - 0xF7FFA8C1 - Steelswarm Caucastag
//Offset - 0xF7FFA8A5 - Steelswarm Cell
//Offset - 0xF7FFA8AD - Steelswarm Gatekeeper
//Offset - 0xF7FFA8BD - Steelswarm Girastag
//Offset - 0xF7FFA8B5 - Steelswarm Mantis
//Offset - 0xF7FFA8B9 - Steelswarm Moth
//Offset - 0xF7FFA8A9 - Steelswarm Scout
//Offset - 0xF7FF89D1 - Storm Shooter
//Offset - 0xF7FF878D - Storming Wynn
//Offset - 0xF7FFA361 - Strategist of the Ice Barrier
//Offset - 0xF7FF67CD - Suijin
//Offset - 0xF7FF8795 - Swift Birdman Joe
//Offset - 0xF7FF66B1 - Sword of Dark Destruction
//Offset - 0xF7FF8D19 - Sword of Dark Rites
//Offset - 0xF7FF9DF5 - Sword of Sparkles
//Offset - 0xF7FF9159 - The Beginning of the End
//Offset - 0xF7FF806D - The Creator
//Offset - 0xF7FF8071 - The Creator Incarnate
//Offset - 0xF7FF90D9 - The Dark Creator
//Offset - 0xF7FFA0D9 - The Fabled Catsith
//Offset - 0xF7FFA0DD - The Fabled Cerburrel
//Offset - 0xF7FFA0D5 - The Fabled Chawa
//Offset - 0xF7FFA0E1 - The Fabled Ganashia
//Offset - 0xF7FFA339 - The Fabled Kokkator
//Offset - 0xF7FFA379 - The Fabled Kudabbi
//Offset - 0xF7FFA0E5 - The Fabled Nozoochee
//Offset - 0xF7FFA335 - The Fabled Peggulsus
//Offset - 0xF7FFA0B9 - The Fabled Rubyruda
//Offset - 0xF7FFA129 - The Fabled Unicore
//Offset - 0xF7FFA4A5 - The Fountain in the Sky
//Offset - 0xF7FF71A1 - The Legendary Fisherman
//Offset - 0xF7FF73E9 - The Rock Spirit
//Offset - 0xF7FF7FA9 - The Trojan Horse
//Offset - 0xF7FF988D - Thermal Genex
//Offset - 0xF7FF80A1 - Thestalos the Firestorm Monarch
//Offset - 0xF7FF73F5 - Tornado Bird
//Offset - 0xF7FF7201 - Tornado Wall
//Offset - 0xF7FF7A4D - Twin Swords of Flashing Light - Tryce
//Offset - 0xF7FF7CF5 - Twinheaded Beast
//Offset - 0xF7FF6F95 - UFO Turtle
//Offset - 0xF7FF7F89 - Ultimate Baseball Kid
//Offset - 0xF7FF7F49 - Ultimate Insect LV1
//Offset - 0xF7FF8075 - Ultimate Insect LV3
//Offset - 0xF7FF8159 - Ultimate Insect LV5
//Offset - 0xF7FF826D - Ultimate Insect LV7
//Offset - 0xF7FF8B11 - Umbral Soul
//Offset - 0xF7FF6FD5 - Umiiruka
//Offset - 0xF7FF7FA5 - Unshaven Angler
//Offset - 0xF7FF91E9 - Veil of Darkness
//Offset - 0xF7FF9EE9 - Vindikite R-Genex
//Offset - 0xF7FF8CF1 - Voltic Kong
//Offset - 0xF7FF9095 - Vortex Trooper
//Offset - 0xF7FFA58D - Vylon Charger
//Offset - 0xF7FFA585 - Vylon Cube
//Offset - 0xF7FFA8ED - Vylon Delta
//Offset - 0xF7FFA5AD - Vylon Epsilon
//Offset - 0xF7FFA5B9 - Vylon Material
//Offset - 0xF7FFA915 - Vylon Ohm
//Offset - 0xF7FFA5A9 - Vylon Sigma
//Offset - 0xF7FFA591 - Vylon Soldier
//Offset - 0xF7FFA589 - Vylon Vanguard
//Offset - 0xF7FFA119 - Warlock of the Ice Barrier
//Offset - 0xF7FF8C65 - Warrior of Atlantis
//Offset - 0xF7FF8495 - Water Dragon
//Offset - 0xF7FF9DE9 - Water Hazard
//Offset - 0xF7FF81AD - Whirlwind Prodigy
//Offset - 0xF7FF7A45 - Wicked-Breaking Flamberge - Baou
//Offset - 0xF7FF9025 - Wind Effigy
//Offset - 0xF7FFA899 - Winda, Priestess of Gusto
//Offset - 0xF7FFA8A1 - Windaar, Sage of Gusto
//Offset - 0xF7FF9AB9 - Windmill Genex
//Offset - 0xF7FF6BC9 - Witch's Apprentice
//Offset - 0xF7FF805D - Woodborg Inpachi
//Offset - 0xF7FF926D - Worm Apocalypse
//Offset - 0xF7FF9271 - Worm Barses
//Offset - 0xF7FFA4B5 - Worm Call
//Offset - 0xF7FF9275 - Worm Cartaros
//Offset - 0xF7FF9279 - Worm Dimikles
//Offset - 0xF7FF927D - Worm Erokin
//Offset - 0xF7FF967D - Worm Falco
//Offset - 0xF7FF9681 - Worm Gulse
//Offset - 0xF7FF9685 - Worm Hope
//Offset - 0xF7FF9689 - Worm Illidan
//Offset - 0xF7FF968D - Worm Jetelikpse
//Offset - 0xF7FF9691 - Worm King
//Offset - 0xF7FF9879 - Worm Linx
//Offset - 0xF7FF987D - Worm Millidith
//Offset - 0xF7FF9881 - Worm Noble
//Offset - 0xF7FF9A9D - Worm Opera
//Offset - 0xF7FF9AA1 - Worm Prince
//Offset - 0xF7FF9AA5 - Worm Queen
//Offset - 0xF7FF9AA9 - Worm Rakuyeh
//Offset - 0xF7FF9C99 - Worm Solid
//Offset - 0xF7FF9C9D - Worm Tentacles
//Offset - 0xF7FF9CA1 - Worm Ugly
//Offset - 0xF7FF9CA5 - Worm Victory
//Offset - 0xF7FF9ED1 - Worm Warlord
//Offset - 0xF7FF9ED5 - Worm Xex
//Offset - 0xF7FF9ED9 - Worm Yagan
//Offset - 0xF7FF9EDD - Worm Zero
//Offset - 0xF7FF9255 - X-Saber Airbellum
//Offset - 0xF7FF9661 - X-Saber Anu Piranha
//Offset - 0xF7FF9251 - X-Saber Axel
//Offset - 0xF7FF9665 - X-Saber Galahad
//Offset - 0xF7FF9669 - X-Saber Palomuro
//Offset - 0xF7FF966D - X-Saber Pashuul
//Offset - 0xF7FF9259 - X-Saber Uruz
//Offset - 0xF7FFA3B1 - XX-Saber Emmersblade
//Offset - 0xF7FF9D9D - XX-Saber Faultroll
//Offset - 0xF7FFA075 - XX-Saber Fulhelmknight
//Offset - 0xF7FFA071 - XX-Saber Gardestrike
//Offset - 0xF7FFA211 - XX-Saber Garsem
//Offset - 0xF7FF9DB9 - XX-Saber Gottoms
//Offset - 0xF7FFA259 - XX-Saber Hyunlei
//Offset - 0xF7FF9D99 - XX-Saber Ragigura
//Offset - 0xF7FF7D81 - Zaborg the Thunder Monarch

function a_little_bit_of_everything() => byte(0xF7FF7269+dword(0xe7b054))/byte(0xF7FF7269)+byte(0xF7FF75CD+dword(0xe7b054))/byte(0xF7FF75CD)+
                                         byte(0xF7FF7D05+dword(0xe7b054))/byte(0xF7FF7D05)+byte(0xF7FF916D+dword(0xe7b054))/byte(0xF7FF916D)+
                                         byte(0xF7FF9E39+dword(0xe7b054))/byte(0xF7FF9E39)+byte(0xF7FF92D9+dword(0xe7b054))/byte(0xF7FF92D9)+
                                         byte(0xF7FF9861+dword(0xe7b054))/byte(0xF7FF9861)+byte(0xF7FF9291+dword(0xe7b054))/byte(0xF7FF9291)+
                                         byte(0xF7FF9261+dword(0xe7b054))/byte(0xF7FF9261)+byte(0xF7FFA46D+dword(0xe7b054))/byte(0xF7FFA46D)+
                                         byte(0xF7FF9875+dword(0xe7b054))/byte(0xF7FF9875)+byte(0xF7FF9ECD+dword(0xe7b054))/byte(0xF7FF9ECD)+
                                         byte(0xF7FF96AD+dword(0xe7b054))/byte(0xF7FF96AD)+byte(0xF7FF986D+dword(0xe7b054))/byte(0xF7FF986D)+
                                         byte(0xF7FF9265+dword(0xe7b054))/byte(0xF7FF9265)+byte(0xF7FF9865+dword(0xe7b054))/byte(0xF7FF9865)+
                                         byte(0xF7FF9EC5+dword(0xe7b054))/byte(0xF7FF9EC5)+byte(0xF7FF9EC9+dword(0xe7b054))/byte(0xF7FF9EC9)+
                                         byte(0xF7FF9A95+dword(0xe7b054))/byte(0xF7FF9A95)+byte(0xF7FF9269+dword(0xe7b054))/byte(0xF7FF9269)+
                                         byte(0xF7FF9869+dword(0xe7b054))/byte(0xF7FF9869)+byte(0xF7FF9675+dword(0xe7b054))/byte(0xF7FF9675)+
                                         byte(0xF7FF9871+dword(0xe7b054))/byte(0xF7FF9871)+byte(0xF7FF9679+dword(0xe7b054))/byte(0xF7FF9679)+
                                         byte(0xF7FF9A99+dword(0xe7b054))/byte(0xF7FF9A99)+byte(0xF7FF9671+dword(0xe7b054))/byte(0xF7FF9671)+
                                         byte(0xF7FF7C7D+dword(0xe7b054))/byte(0xF7FF7C7D)+byte(0xF7FFA371+dword(0xe7b054))/byte(0xF7FFA371)+
                                         byte(0xF7FF73E5+dword(0xe7b054))/byte(0xF7FF73E5)+byte(0xF7FF90E9+dword(0xe7b054))/byte(0xF7FF90E9)+
                                         byte(0xF7FF8579+dword(0xe7b054))/byte(0xF7FF8579)+byte(0xF7FF7F69+dword(0xe7b054))/byte(0xF7FF7F69)+
                                         byte(0xF7FF7F6D+dword(0xe7b054))/byte(0xF7FF7F6D)+byte(0xF7FF7F71+dword(0xe7b054))/byte(0xF7FF7F71)+
                                         byte(0xF7FF9D71+dword(0xe7b054))/byte(0xF7FF9D71)+byte(0xF7FF79E9+dword(0xe7b054))/byte(0xF7FF79E9)+
                                         byte(0xF7FF9E45+dword(0xe7b054))/byte(0xF7FF9E45)+byte(0xF7FF8781+dword(0xe7b054))/byte(0xF7FF8781)+
                                         byte(0xF7FF7DD5+dword(0xe7b054))/byte(0xF7FF7DD5)+byte(0xF7FFA801+dword(0xe7b054))/byte(0xF7FFA801)+
                                         byte(0xF7FF8999+dword(0xe7b054))/byte(0xF7FF8999)+byte(0xF7FF89A9+dword(0xe7b054))/byte(0xF7FF89A9)+
                                         byte(0xF7FF89AD+dword(0xe7b054))/byte(0xF7FF89AD)+byte(0xF7FF89A1+dword(0xe7b054))/byte(0xF7FF89A1)+
                                         byte(0xF7FF89A5+dword(0xe7b054))/byte(0xF7FF89A5)+byte(0xF7FF899D+dword(0xe7b054))/byte(0xF7FF899D)+
                                         byte(0xF7FF7DF1+dword(0xe7b054))/byte(0xF7FF7DF1)+byte(0xF7FF7FE9+dword(0xe7b054))/byte(0xF7FF7FE9)+
                                         byte(0xF7FF88A9+dword(0xe7b054))/byte(0xF7FF88A9)+byte(0xF7FF6B7D+dword(0xe7b054))/byte(0xF7FF6B7D)+
                                         byte(0xF7FF8789+dword(0xe7b054))/byte(0xF7FF8789)+byte(0xF7FF7C39+dword(0xe7b054))/byte(0xF7FF7C39)+
                                         byte(0xF7FFA8E5+dword(0xe7b054))/byte(0xF7FFA8E5)+byte(0xF7FF9231+dword(0xe7b054))/byte(0xF7FF9231)+
                                         byte(0xF7FF922D+dword(0xe7b054))/byte(0xF7FF922D)+byte(0xF7FF7265+dword(0xe7b054))/byte(0xF7FF7265)+
                                         byte(0xF7FF6E7D+dword(0xe7b054))/byte(0xF7FF6E7D)+byte(0xF7FFA89D+dword(0xe7b054))/byte(0xF7FFA89D)+
                                         byte(0xF7FF9211+dword(0xe7b054))/byte(0xF7FF9211)+byte(0xF7FF9C95+dword(0xe7b054))/byte(0xF7FF9C95)+
                                         byte(0xF7FFA8E1+dword(0xe7b054))/byte(0xF7FFA8E1)+byte(0xF7FF8615+dword(0xe7b054))/byte(0xF7FF8615)+
                                         byte(0xF7FF7B99+dword(0xe7b054))/byte(0xF7FF7B99)+byte(0xF7FF7F39+dword(0xe7b054))/byte(0xF7FF7F39)+
                                         byte(0xF7FFA229+dword(0xe7b054))/byte(0xF7FFA229)+byte(0xF7FF8A39+dword(0xe7b054))/byte(0xF7FF8A39)+
                                         byte(0xF7FF925D+dword(0xe7b054))/byte(0xF7FF925D)+byte(0xF7FFA8D9+dword(0xe7b054))/byte(0xF7FFA8D9)+
                                         byte(0xF7FF7319+dword(0xe7b054))/byte(0xF7FF7319)+byte(0xF7FF9235+dword(0xe7b054))/byte(0xF7FF9235)+
                                         byte(0xF7FF9455+dword(0xe7b054))/byte(0xF7FF9455)+byte(0xF7FF8951+dword(0xe7b054))/byte(0xF7FF8951)+
                                         byte(0xF7FF96D9+dword(0xe7b054))/byte(0xF7FF96D9)+byte(0xF7FF9849+dword(0xe7b054))/byte(0xF7FF9849)+
                                         byte(0xF7FFA8D1+dword(0xe7b054))/byte(0xF7FFA8D1)+byte(0xF7FFA8CD+dword(0xe7b054))/byte(0xF7FFA8CD)+
                                         byte(0xF7FFA7B5+dword(0xe7b054))/byte(0xF7FFA7B5)+byte(0xF7FF90E5+dword(0xe7b054))/byte(0xF7FF90E5)+
                                         byte(0xF7FF8E05+dword(0xe7b054))/byte(0xF7FF8E05)+byte(0xF7FF9031+dword(0xe7b054))/byte(0xF7FF9031)+
                                         byte(0xF7FF915D+dword(0xe7b054))/byte(0xF7FF915D)+byte(0xF7FF9605+dword(0xe7b054))/byte(0xF7FF9605)+
                                         byte(0xF7FF90D5+dword(0xe7b054))/byte(0xF7FF90D5)+byte(0xF7FF9539+dword(0xe7b054))/byte(0xF7FF9539)+
                                         byte(0xF7FF91A1+dword(0xe7b054))/byte(0xF7FF91A1)+byte(0xF7FF90DD+dword(0xe7b054))/byte(0xF7FF90DD)+
                                         byte(0xF7FF95E1+dword(0xe7b054))/byte(0xF7FF95E1)+byte(0xF7FF919D+dword(0xe7b054))/byte(0xF7FF919D)+
                                         byte(0xF7FF9AE9+dword(0xe7b054))/byte(0xF7FF9AE9)+byte(0xF7FF8E69+dword(0xe7b054))/byte(0xF7FF8E69)+
                                         byte(0xF7FF92B9+dword(0xe7b054))/byte(0xF7FF92B9)+byte(0xF7FF92BD+dword(0xe7b054))/byte(0xF7FF92BD)+
                                         byte(0xF7FF820D+dword(0xe7b054))/byte(0xF7FF820D)+byte(0xF7FF9089+dword(0xe7b054))/byte(0xF7FF9089)+
                                         byte(0xF7FF92C1+dword(0xe7b054))/byte(0xF7FF92C1)+byte(0xF7FF6DB5+dword(0xe7b054))/byte(0xF7FF6DB5)+
                                         byte(0xF7FFA115+dword(0xe7b054))/byte(0xF7FFA115)+byte(0xF7FFA7C5+dword(0xe7b054))/byte(0xF7FFA7C5)+
                                         byte(0xF7FF8B0D+dword(0xe7b054))/byte(0xF7FF8B0D)+byte(0xF7FF9C91+dword(0xe7b054))/byte(0xF7FF9C91)+
                                         byte(0xF7FF9889+dword(0xe7b054))/byte(0xF7FF9889)+byte(0xF7FF9441+dword(0xe7b054))/byte(0xF7FF9441)+
                                         byte(0xF7FF9D75+dword(0xe7b054))/byte(0xF7FF9D75)+byte(0xF7FF90ED+dword(0xe7b054))/byte(0xF7FF90ED)+
                                         byte(0xF7FF7E79+dword(0xe7b054))/byte(0xF7FF7E79)+byte(0xF7FFA725+dword(0xe7b054))/byte(0xF7FFA725)+
                                         byte(0xF7FFA721+dword(0xe7b054))/byte(0xF7FFA721)+byte(0xF7FF8899+dword(0xe7b054))/byte(0xF7FF8899)+
                                         byte(0xF7FFA71D+dword(0xe7b054))/byte(0xF7FFA71D)+byte(0xF7FFA34D+dword(0xe7b054))/byte(0xF7FFA34D)+
                                         byte(0xF7FFA715+dword(0xe7b054))/byte(0xF7FFA715)+byte(0xF7FFA719+dword(0xe7b054))/byte(0xF7FFA719)+
                                         byte(0xF7FFA0F1+dword(0xe7b054))/byte(0xF7FFA0F1)+byte(0xF7FFA341+dword(0xe7b054))/byte(0xF7FFA341)+
                                         byte(0xF7FF9E85+dword(0xe7b054))/byte(0xF7FF9E85)+byte(0xF7FF9E79+dword(0xe7b054))/byte(0xF7FF9E79)+
                                         byte(0xF7FFA0F5+dword(0xe7b054))/byte(0xF7FFA0F5)+byte(0xF7FFA37D+dword(0xe7b054))/byte(0xF7FFA37D)+
                                         byte(0xF7FF9EE1+dword(0xe7b054))/byte(0xF7FF9EE1)+byte(0xF7FF9F01+dword(0xe7b054))/byte(0xF7FF9F01)+
                                         byte(0xF7FFA12D+dword(0xe7b054))/byte(0xF7FFA12D)+byte(0xF7FFA0BD+dword(0xe7b054))/byte(0xF7FFA0BD)+
                                         byte(0xF7FF9E7D+dword(0xe7b054))/byte(0xF7FF9E7D)+byte(0xF7FFA0E9+dword(0xe7b054))/byte(0xF7FFA0E9)+
                                         byte(0xF7FFA345+dword(0xe7b054))/byte(0xF7FFA345)+byte(0xF7FF9E89+dword(0xe7b054))/byte(0xF7FF9E89)+
                                         byte(0xF7FFA349+dword(0xe7b054))/byte(0xF7FFA349)+byte(0xF7FFA0ED+dword(0xe7b054))/byte(0xF7FFA0ED)+
                                         byte(0xF7FF9E81+dword(0xe7b054))/byte(0xF7FF9E81)+byte(0xF7FF80A5+dword(0xe7b054))/byte(0xF7FF80A5)+
                                         byte(0xF7FF9021+dword(0xe7b054))/byte(0xF7FF9021)+byte(0xF7FF66C5+dword(0xe7b054))/byte(0xF7FF66C5)+
                                         byte(0xF7FF8D1D+dword(0xe7b054))/byte(0xF7FF8D1D)+byte(0xF7FF91A5+dword(0xe7b054))/byte(0xF7FF91A5)+
                                         byte(0xF7FF6C51+dword(0xe7b054))/byte(0xF7FF6C51)+byte(0xF7FFA8C5+dword(0xe7b054))/byte(0xF7FFA8C5)+
                                         byte(0xF7FFA8C9+dword(0xe7b054))/byte(0xF7FFA8C9)+byte(0xF7FFA85D+dword(0xe7b054))/byte(0xF7FFA85D)+
                                         byte(0xF7FF9E91+dword(0xe7b054))/byte(0xF7FF9E91)+byte(0xF7FFA33D+dword(0xe7b054))/byte(0xF7FFA33D)+
                                         byte(0xF7FF9E8D+dword(0xe7b054))/byte(0xF7FF9E8D)+byte(0xF7FF9A51+dword(0xe7b054))/byte(0xF7FF9A51)+
                                         byte(0xF7FF9A4D+dword(0xe7b054))/byte(0xF7FF9A4D)+byte(0xF7FF9C49+dword(0xe7b054))/byte(0xF7FF9C49)+
                                         byte(0xF7FF9A55+dword(0xe7b054))/byte(0xF7FF9A55)+byte(0xF7FF9CA9+dword(0xe7b054))/byte(0xF7FF9CA9)+
                                         byte(0xF7FF9A49+dword(0xe7b054))/byte(0xF7FF9A49)+byte(0xF7FF9C55+dword(0xe7b054))/byte(0xF7FF9C55)+
                                         byte(0xF7FF9E95+dword(0xe7b054))/byte(0xF7FF9E95)+byte(0xF7FF9EE5+dword(0xe7b054))/byte(0xF7FF9EE5)+
                                         byte(0xF7FF976D+dword(0xe7b054))/byte(0xF7FF976D)+byte(0xF7FF9C51+dword(0xe7b054))/byte(0xF7FF9C51)+
                                         byte(0xF7FF9C4D+dword(0xe7b054))/byte(0xF7FF9C4D)+byte(0xF7FF9C45+dword(0xe7b054))/byte(0xF7FF9C45)+
                                         byte(0xF7FF9AAD+dword(0xe7b054))/byte(0xF7FF9AAD)+byte(0xF7FF7331+dword(0xe7b054))/byte(0xF7FF7331)+
                                         byte(0xF7FF7BA1+dword(0xe7b054))/byte(0xF7FF7BA1)+byte(0xF7FF9161+dword(0xe7b054))/byte(0xF7FF9161)+
                                         byte(0xF7FF8B09+dword(0xe7b054))/byte(0xF7FF8B09)+byte(0xF7FFA8DD+dword(0xe7b054))/byte(0xF7FFA8DD)+
                                         byte(0xF7FF8A55+dword(0xe7b054))/byte(0xF7FF8A55)+byte(0xF7FF81B1+dword(0xe7b054))/byte(0xF7FF81B1)+
                                         byte(0xF7FF9611+dword(0xe7b054))/byte(0xF7FF9611)+byte(0xF7FF9659+dword(0xe7b054))/byte(0xF7FF9659)+
                                         byte(0xF7FF985D+dword(0xe7b054))/byte(0xF7FF985D)+byte(0xF7FFA089+dword(0xe7b054))/byte(0xF7FFA089)+
                                         byte(0xF7FF9E41+dword(0xe7b054))/byte(0xF7FF9E41)+byte(0xF7FF9245+dword(0xe7b054))/byte(0xF7FF9245)+
                                         byte(0xF7FF965D+dword(0xe7b054))/byte(0xF7FF965D)+byte(0xF7FF9DA1+dword(0xe7b054))/byte(0xF7FF9DA1)+
                                         byte(0xF7FF9859+dword(0xe7b054))/byte(0xF7FF9859)+byte(0xF7FF924D+dword(0xe7b054))/byte(0xF7FF924D)+
                                         byte(0xF7FF9249+dword(0xe7b054))/byte(0xF7FF9249)+byte(0xF7FF9655+dword(0xe7b054))/byte(0xF7FF9655)+
                                         byte(0xF7FF6FBD+dword(0xe7b054))/byte(0xF7FF6FBD)+byte(0xF7FFA2D9+dword(0xe7b054))/byte(0xF7FFA2D9)+
                                         byte(0xF7FF7B89+dword(0xe7b054))/byte(0xF7FF7B89)+byte(0xF7FF6FD1+dword(0xe7b054))/byte(0xF7FF6FD1)+
                                         byte(0xF7FF73ED+dword(0xe7b054))/byte(0xF7FF73ED)+byte(0xF7FF67D1+dword(0xe7b054))/byte(0xF7FF67D1)+
                                         byte(0xF7FFA55D+dword(0xe7b054))/byte(0xF7FFA55D)+byte(0xF7FFA5BD+dword(0xe7b054))/byte(0xF7FFA5BD)+
                                         byte(0xF7FFA559+dword(0xe7b054))/byte(0xF7FFA559)+byte(0xF7FFA599+dword(0xe7b054))/byte(0xF7FFA599)+
                                         byte(0xF7FFA911+dword(0xe7b054))/byte(0xF7FFA911)+byte(0xF7FFA5B1+dword(0xe7b054))/byte(0xF7FFA5B1)+
                                         byte(0xF7FFA54D+dword(0xe7b054))/byte(0xF7FFA54D)+byte(0xF7FFA595+dword(0xe7b054))/byte(0xF7FFA595)+
                                         byte(0xF7FFA551+dword(0xe7b054))/byte(0xF7FFA551)+byte(0xF7FFA59D+dword(0xe7b054))/byte(0xF7FFA59D)+
                                         byte(0xF7FFA555+dword(0xe7b054))/byte(0xF7FFA555)+byte(0xF7FFA561+dword(0xe7b054))/byte(0xF7FFA561)+
                                         byte(0xF7FFA369+dword(0xe7b054))/byte(0xF7FFA369)+byte(0xF7FF9EC1+dword(0xe7b054))/byte(0xF7FF9EC1)+
                                         byte(0xF7FFA121+dword(0xe7b054))/byte(0xF7FFA121)+byte(0xF7FFA3D9+dword(0xe7b054))/byte(0xF7FFA3D9)+
                                         byte(0xF7FFA329+dword(0xe7b054))/byte(0xF7FFA329)+byte(0xF7FFA325+dword(0xe7b054))/byte(0xF7FFA325)+
                                         byte(0xF7FFA0C9+dword(0xe7b054))/byte(0xF7FFA0C9)+byte(0xF7FFA321+dword(0xe7b054))/byte(0xF7FFA321)+
                                         byte(0xF7FFA32D+dword(0xe7b054))/byte(0xF7FFA32D)+byte(0xF7FFA0B5+dword(0xe7b054))/byte(0xF7FFA0B5)+
                                         byte(0xF7FFA0C5+dword(0xe7b054))/byte(0xF7FFA0C5)+byte(0xF7FFA331+dword(0xe7b054))/byte(0xF7FFA331)+
                                         byte(0xF7FFA0C1+dword(0xe7b054))/byte(0xF7FFA0C1)+byte(0xF7FFA0D1+dword(0xe7b054))/byte(0xF7FFA0D1)+
                                         byte(0xF7FFA125+dword(0xe7b054))/byte(0xF7FFA125)+byte(0xF7FFA375+dword(0xe7b054))/byte(0xF7FFA375)+
                                         byte(0xF7FFA0CD+dword(0xe7b054))/byte(0xF7FFA0CD)+byte(0xF7FF9A81+dword(0xe7b054))/byte(0xF7FF9A81)+
                                         byte(0xF7FF9A79+dword(0xe7b054))/byte(0xF7FF9A79)+byte(0xF7FF9629+dword(0xe7b054))/byte(0xF7FF9629)+
                                         byte(0xF7FF9841+dword(0xe7b054))/byte(0xF7FF9841)+byte(0xF7FF9831+dword(0xe7b054))/byte(0xF7FF9831)+
                                         byte(0xF7FF9835+dword(0xe7b054))/byte(0xF7FF9835)+byte(0xF7FF96A9+dword(0xe7b054))/byte(0xF7FF96A9)+
                                         byte(0xF7FF9631+dword(0xe7b054))/byte(0xF7FF9631)+byte(0xF7FF9A7D+dword(0xe7b054))/byte(0xF7FF9A7D)+
                                         byte(0xF7FF9635+dword(0xe7b054))/byte(0xF7FF9635)+byte(0xF7FF9845+dword(0xe7b054))/byte(0xF7FF9845)+
                                         byte(0xF7FF9839+dword(0xe7b054))/byte(0xF7FF9839)+byte(0xF7FF983D+dword(0xe7b054))/byte(0xF7FF983D)+
                                         byte(0xF7FF962D+dword(0xe7b054))/byte(0xF7FF962D)+byte(0xF7FF9639+dword(0xe7b054))/byte(0xF7FF9639)+
                                         byte(0xF7FF9891+dword(0xe7b054))/byte(0xF7FF9891)+byte(0xF7FF9A89+dword(0xe7b054))/byte(0xF7FF9A89)+
                                         byte(0xF7FF6F8D+dword(0xe7b054))/byte(0xF7FF6F8D)+byte(0xF7FF7BA5+dword(0xe7b054))/byte(0xF7FF7BA5)+
                                         byte(0xF7FF9B85+dword(0xe7b054))/byte(0xF7FF9B85)+byte(0xF7FFA875+dword(0xe7b054))/byte(0xF7FFA875)+
                                         byte(0xF7FFA885+dword(0xe7b054))/byte(0xF7FFA885)+byte(0xF7FFA8D5+dword(0xe7b054))/byte(0xF7FFA8D5)+
                                         byte(0xF7FFA881+dword(0xe7b054))/byte(0xF7FFA881)+byte(0xF7FFA87D+dword(0xe7b054))/byte(0xF7FFA87D)+
                                         byte(0xF7FFA889+dword(0xe7b054))/byte(0xF7FFA889)+byte(0xF7FFA879+dword(0xe7b054))/byte(0xF7FFA879)+
                                         byte(0xF7FF8A2D+dword(0xe7b054))/byte(0xF7FF8A2D)+byte(0xF7FF9CFD+dword(0xe7b054))/byte(0xF7FF9CFD)+
                                         byte(0xF7FF815D+dword(0xe7b054))/byte(0xF7FF815D)+byte(0xF7FF7A41+dword(0xe7b054))/byte(0xF7FF7A41)+
                                         byte(0xF7FF7A01+dword(0xe7b054))/byte(0xF7FF7A01)+byte(0xF7FF79F9+dword(0xe7b054))/byte(0xF7FF79F9)+
                                         byte(0xF7FF79F5+dword(0xe7b054))/byte(0xF7FF79F5)+byte(0xF7FF79FD+dword(0xe7b054))/byte(0xF7FF79FD)+
                                         byte(0xF7FF7A05+dword(0xe7b054))/byte(0xF7FF7A05)+byte(0xF7FF95F9+dword(0xe7b054))/byte(0xF7FF95F9)+
                                         byte(0xF7FF7A09+dword(0xe7b054))/byte(0xF7FF7A09)+byte(0xF7FF9CB9+dword(0xe7b054))/byte(0xF7FF9CB9)+
                                         byte(0xF7FF6E81+dword(0xe7b054))/byte(0xF7FF6E81)+byte(0xF7FFA891+dword(0xe7b054))/byte(0xF7FFA891)+
                                         byte(0xF7FFA88D+dword(0xe7b054))/byte(0xF7FFA88D)+byte(0xF7FFA895+dword(0xe7b054))/byte(0xF7FFA895)+
                                         byte(0xF7FF770D+dword(0xe7b054))/byte(0xF7FF770D)+byte(0xF7FF80D5+dword(0xe7b054))/byte(0xF7FF80D5)+
                                         byte(0xF7FF92E9+dword(0xe7b054))/byte(0xF7FF92E9)+byte(0xF7FF7F4D+dword(0xe7b054))/byte(0xF7FF7F4D)+
                                         byte(0xF7FF7F51+dword(0xe7b054))/byte(0xF7FF7F51)+byte(0xF7FF7F55+dword(0xe7b054))/byte(0xF7FF7F55)+
                                         byte(0xF7FF7F75+dword(0xe7b054))/byte(0xF7FF7F75)+byte(0xF7FF69A9+dword(0xe7b054))/byte(0xF7FF69A9)+
                                         byte(0xF7FF8BAD+dword(0xe7b054))/byte(0xF7FF8BAD)+byte(0xF7FF9695+dword(0xe7b054))/byte(0xF7FF9695)+
                                         byte(0xF7FF9DE5+dword(0xe7b054))/byte(0xF7FF9DE5)+byte(0xF7FF8BA1+dword(0xe7b054))/byte(0xF7FF8BA1)+
                                         byte(0xF7FF8331+dword(0xe7b054))/byte(0xF7FF8331)+byte(0xF7FF8481+dword(0xe7b054))/byte(0xF7FF8481)+
                                         byte(0xF7FF7B9D+dword(0xe7b054))/byte(0xF7FF7B9D)+byte(0xF7FFA8E9+dword(0xe7b054))/byte(0xF7FFA8E9)+
                                         byte(0xF7FF6709+dword(0xe7b054))/byte(0xF7FF6709)+byte(0xF7FFA101+dword(0xe7b054))/byte(0xF7FFA101)+
                                         byte(0xF7FF9C61+dword(0xe7b054))/byte(0xF7FF9C61)+byte(0xF7FFA0F9+dword(0xe7b054))/byte(0xF7FFA0F9)+
                                         byte(0xF7FFA0FD+dword(0xe7b054))/byte(0xF7FFA0FD)+byte(0xF7FF9AB1+dword(0xe7b054))/byte(0xF7FF9AB1)+
                                         byte(0xF7FF9E9D+dword(0xe7b054))/byte(0xF7FF9E9D)+byte(0xF7FFA105+dword(0xe7b054))/byte(0xF7FFA105)+
                                         byte(0xF7FF9C5D+dword(0xe7b054))/byte(0xF7FF9C5D)+byte(0xF7FFA131+dword(0xe7b054))/byte(0xF7FFA131)+
                                         byte(0xF7FF9A61+dword(0xe7b054))/byte(0xF7FF9A61)+byte(0xF7FF9A59+dword(0xe7b054))/byte(0xF7FF9A59)+
                                         byte(0xF7FF9C59+dword(0xe7b054))/byte(0xF7FF9C59)+byte(0xF7FF9C65+dword(0xe7b054))/byte(0xF7FF9C65)+
                                         byte(0xF7FF9EA1+dword(0xe7b054))/byte(0xF7FF9EA1)+byte(0xF7FF9E99+dword(0xe7b054))/byte(0xF7FF9E99)+
                                         byte(0xF7FF9A65+dword(0xe7b054))/byte(0xF7FF9A65)+byte(0xF7FF9A5D+dword(0xe7b054))/byte(0xF7FF9A5D)+
                                         byte(0xF7FF9CAD+dword(0xe7b054))/byte(0xF7FF9CAD)+byte(0xF7FF7621+dword(0xe7b054))/byte(0xF7FF7621)+
                                         byte(0xF7FFA579+dword(0xe7b054))/byte(0xF7FFA579)+byte(0xF7FF67C9+dword(0xe7b054))/byte(0xF7FF67C9)+
                                         byte(0xF7FFA691+dword(0xe7b054))/byte(0xF7FFA691)+byte(0xF7FFA57D+dword(0xe7b054))/byte(0xF7FFA57D)+
                                         byte(0xF7FFA575+dword(0xe7b054))/byte(0xF7FFA575)+byte(0xF7FFA581+dword(0xe7b054))/byte(0xF7FFA581)+
                                         byte(0xF7FFA565+dword(0xe7b054))/byte(0xF7FFA565)+byte(0xF7FFA5A5+dword(0xe7b054))/byte(0xF7FFA5A5)+
                                         byte(0xF7FFA919+dword(0xe7b054))/byte(0xF7FFA919)+byte(0xF7FFA56D+dword(0xe7b054))/byte(0xF7FFA56D)+
                                         byte(0xF7FFA5A1+dword(0xe7b054))/byte(0xF7FFA5A1)+byte(0xF7FF7821+dword(0xe7b054))/byte(0xF7FF7821)+
                                         byte(0xF7FFA805+dword(0xe7b054))/byte(0xF7FFA805)+byte(0xF7FF7C85+dword(0xe7b054))/byte(0xF7FF7C85)+
                                         byte(0xF7FF8D05+dword(0xe7b054))/byte(0xF7FF8D05)+byte(0xF7FF8E01+dword(0xe7b054))/byte(0xF7FF8E01)+
                                         byte(0xF7FF9035+dword(0xe7b054))/byte(0xF7FF9035)+byte(0xF7FF93C9+dword(0xe7b054))/byte(0xF7FF93C9)+
                                         byte(0xF7FF957D+dword(0xe7b054))/byte(0xF7FF957D)+byte(0xF7FF6B51+dword(0xe7b054))/byte(0xF7FF6B51)+
                                         byte(0xF7FF6DA1+dword(0xe7b054))/byte(0xF7FF6DA1)+byte(0xF7FF9CB5+dword(0xe7b054))/byte(0xF7FF9CB5)+
                                         byte(0xF7FF6FE1+dword(0xe7b054))/byte(0xF7FF6FE1)+byte(0xF7FFA4B9+dword(0xe7b054))/byte(0xF7FFA4B9)+
                                         byte(0xF7FF69AD+dword(0xe7b054))/byte(0xF7FF69AD)+byte(0xF7FF960D+dword(0xe7b054))/byte(0xF7FF960D)+
                                         byte(0xF7FFA809+dword(0xe7b054))/byte(0xF7FFA809)+byte(0xF7FF984D+dword(0xe7b054))/byte(0xF7FF984D)+
                                         byte(0xF7FF7D89+dword(0xe7b054))/byte(0xF7FF7D89)+byte(0xF7FF92C5+dword(0xe7b054))/byte(0xF7FF92C5)+
                                         byte(0xF7FF6A35+dword(0xe7b054))/byte(0xF7FF6A35)+byte(0xF7FFA80D+dword(0xe7b054))/byte(0xF7FFA80D)+
                                         byte(0xF7FF964D+dword(0xe7b054))/byte(0xF7FF964D)+byte(0xF7FF9A91+dword(0xe7b054))/byte(0xF7FF9A91)+
                                         byte(0xF7FF9851+dword(0xe7b054))/byte(0xF7FF9851)+byte(0xF7FF9855+dword(0xe7b054))/byte(0xF7FF9855)+
                                         byte(0xF7FF9A8D+dword(0xe7b054))/byte(0xF7FF9A8D)+byte(0xF7FF923D+dword(0xe7b054))/byte(0xF7FF923D)+
                                         byte(0xF7FF9241+dword(0xe7b054))/byte(0xF7FF9241)+byte(0xF7FF9ABD+dword(0xe7b054))/byte(0xF7FF9ABD)+
                                         byte(0xF7FF9239+dword(0xe7b054))/byte(0xF7FF9239)+byte(0xF7FF9649+dword(0xe7b054))/byte(0xF7FF9649)+
                                         byte(0xF7FF9651+dword(0xe7b054))/byte(0xF7FF9651)+byte(0xF7FF7F8D+dword(0xe7b054))/byte(0xF7FF7F8D)+
                                         byte(0xF7FF6FD9+dword(0xe7b054))/byte(0xF7FF6FD9)+byte(0xF7FFA5C1+dword(0xe7b054))/byte(0xF7FFA5C1)+
                                         byte(0xF7FFA001+dword(0xe7b054))/byte(0xF7FFA001)+byte(0xF7FF8FC9+dword(0xe7b054))/byte(0xF7FF8FC9)+
                                         byte(0xF7FF6FB9+dword(0xe7b054))/byte(0xF7FF6FB9)+byte(0xF7FF6FE5+dword(0xe7b054))/byte(0xF7FF6FE5)+
                                         byte(0xF7FF7F61+dword(0xe7b054))/byte(0xF7FF7F61)+byte(0xF7FF7F65+dword(0xe7b054))/byte(0xF7FF7F65)+
                                         byte(0xF7FF8079+dword(0xe7b054))/byte(0xF7FF8079)+byte(0xF7FF6FC9+dword(0xe7b054))/byte(0xF7FF6FC9)+
                                         byte(0xF7FF9A69+dword(0xe7b054))/byte(0xF7FF9A69)+byte(0xF7FFA635+dword(0xe7b054))/byte(0xF7FFA635)+
                                         byte(0xF7FF9CB1+dword(0xe7b054))/byte(0xF7FF9CB1)+byte(0xF7FFA631+dword(0xe7b054))/byte(0xF7FFA631)+
                                         byte(0xF7FF9885+dword(0xe7b054))/byte(0xF7FF9885)+byte(0xF7FF9821+dword(0xe7b054))/byte(0xF7FF9821)+
                                         byte(0xF7FFA109+dword(0xe7b054))/byte(0xF7FFA109)+byte(0xF7FFA7A9+dword(0xe7b054))/byte(0xF7FFA7A9)+
                                         byte(0xF7FF9C71+dword(0xe7b054))/byte(0xF7FF9C71)+byte(0xF7FF9A75+dword(0xe7b054))/byte(0xF7FF9A75)+
                                         byte(0xF7FF9C69+dword(0xe7b054))/byte(0xF7FF9C69)+byte(0xF7FFA36D+dword(0xe7b054))/byte(0xF7FFA36D)+
                                         byte(0xF7FFA68D+dword(0xe7b054))/byte(0xF7FFA68D)+byte(0xF7FF9EA9+dword(0xe7b054))/byte(0xF7FF9EA9)+
                                         byte(0xF7FF9829+dword(0xe7b054))/byte(0xF7FF9829)+byte(0xF7FF9EA5+dword(0xe7b054))/byte(0xF7FF9EA5)+
                                         byte(0xF7FF9EAD+dword(0xe7b054))/byte(0xF7FF9EAD)+byte(0xF7FFA10D+dword(0xe7b054))/byte(0xF7FFA10D)+
                                         byte(0xF7FFA135+dword(0xe7b054))/byte(0xF7FFA135)+byte(0xF7FF9AB5+dword(0xe7b054))/byte(0xF7FF9AB5)+
                                         byte(0xF7FFA355+dword(0xe7b054))/byte(0xF7FFA355)+byte(0xF7FFA62D+dword(0xe7b054))/byte(0xF7FFA62D)+
                                         byte(0xF7FFA7AD+dword(0xe7b054))/byte(0xF7FFA7AD)+byte(0xF7FFA359+dword(0xe7b054))/byte(0xF7FFA359)+
                                         byte(0xF7FF9825+dword(0xe7b054))/byte(0xF7FF9825)+byte(0xF7FF9A71+dword(0xe7b054))/byte(0xF7FF9A71)+
                                         byte(0xF7FF9A6D+dword(0xe7b054))/byte(0xF7FF9A6D)+byte(0xF7FFA7B1+dword(0xe7b054))/byte(0xF7FFA7B1)+
                                         byte(0xF7FFA351+dword(0xe7b054))/byte(0xF7FFA351)+byte(0xF7FFA111+dword(0xe7b054))/byte(0xF7FFA111)+
                                         byte(0xF7FF9C6D+dword(0xe7b054))/byte(0xF7FF9C6D)+byte(0xF7FF9C75+dword(0xe7b054))/byte(0xF7FF9C75)+
                                         byte(0xF7FF982D+dword(0xe7b054))/byte(0xF7FF982D)+byte(0xF7FFA35D+dword(0xe7b054))/byte(0xF7FFA35D)+
                                         byte(0xF7FFA319+dword(0xe7b054))/byte(0xF7FFA319)+byte(0xF7FFA311+dword(0xe7b054))/byte(0xF7FFA311)+
                                         byte(0xF7FFA30D+dword(0xe7b054))/byte(0xF7FFA30D)+byte(0xF7FFA31D+dword(0xe7b054))/byte(0xF7FFA31D)+
                                         byte(0xF7FFA315+dword(0xe7b054))/byte(0xF7FFA315)+byte(0xF7FF9A29+dword(0xe7b054))/byte(0xF7FF9A29)+
                                         byte(0xF7FF7B49+dword(0xe7b054))/byte(0xF7FF7B49)+byte(0xF7FF7E49+dword(0xe7b054))/byte(0xF7FF7E49)+
                                         byte(0xF7FF9645+dword(0xe7b054))/byte(0xF7FF9645)+byte(0xF7FF90F1+dword(0xe7b054))/byte(0xF7FF90F1)+
                                         byte(0xF7FF833D+dword(0xe7b054))/byte(0xF7FF833D)+byte(0xF7FF8491+dword(0xe7b054))/byte(0xF7FF8491)+
                                         byte(0xF7FF943D+dword(0xe7b054))/byte(0xF7FF943D)+byte(0xF7FF9A85+dword(0xe7b054))/byte(0xF7FF9A85)+
                                         byte(0xF7FF8D09+dword(0xe7b054))/byte(0xF7FF8D09)+byte(0xF7FFA571+dword(0xe7b054))/byte(0xF7FFA571)+
                                         byte(0xF7FF9EB1+dword(0xe7b054))/byte(0xF7FF9EB1)+byte(0xF7FF9C81+dword(0xe7b054))/byte(0xF7FF9C81)+
                                         byte(0xF7FF9C85+dword(0xe7b054))/byte(0xF7FF9C85)+byte(0xF7FF9EB5+dword(0xe7b054))/byte(0xF7FF9EB5)+
                                         byte(0xF7FF9C7D+dword(0xe7b054))/byte(0xF7FF9C7D)+byte(0xF7FF9C79+dword(0xe7b054))/byte(0xF7FF9C79)+
                                         byte(0xF7FF9EB9+dword(0xe7b054))/byte(0xF7FF9EB9)+byte(0xF7FF8B15+dword(0xe7b054))/byte(0xF7FF8B15)+
                                         byte(0xF7FF8B01+dword(0xe7b054))/byte(0xF7FF8B01)+byte(0xF7FF8785+dword(0xe7b054))/byte(0xF7FF8785)+
                                         byte(0xF7FF9A1D+dword(0xe7b054))/byte(0xF7FF9A1D)+byte(0xF7FF90A5+dword(0xe7b054))/byte(0xF7FF90A5)+
                                         byte(0xF7FF8C8D+dword(0xe7b054))/byte(0xF7FF8C8D)+byte(0xF7FF8879+dword(0xe7b054))/byte(0xF7FF8879)+
                                         byte(0xF7FF7B45+dword(0xe7b054))/byte(0xF7FF7B45)+byte(0xF7FF8D15+dword(0xe7b054))/byte(0xF7FF8D15)+
                                         byte(0xF7FF963D+dword(0xe7b054))/byte(0xF7FF963D)+byte(0xF7FF9DF9+dword(0xe7b054))/byte(0xF7FF9DF9)+
                                         byte(0xF7FF6FDD+dword(0xe7b054))/byte(0xF7FF6FDD)+byte(0xF7FF8089+dword(0xe7b054))/byte(0xF7FF8089)+
                                         byte(0xF7FF7A49+dword(0xe7b054))/byte(0xF7FF7A49)+byte(0xF7FF9641+dword(0xe7b054))/byte(0xF7FF9641)+
                                         byte(0xF7FFA2CD+dword(0xe7b054))/byte(0xF7FFA2CD)+byte(0xF7FF9DF1+dword(0xe7b054))/byte(0xF7FF9DF1)+
                                         byte(0xF7FFA11D+dword(0xe7b054))/byte(0xF7FFA11D)+byte(0xF7FF6C31+dword(0xe7b054))/byte(0xF7FF6C31)+
                                         byte(0xF7FF7CB9+dword(0xe7b054))/byte(0xF7FF7CB9)+byte(0xF7FF9C8D+dword(0xe7b054))/byte(0xF7FF9C8D)+
                                         byte(0xF7FF67C5+dword(0xe7b054))/byte(0xF7FF67C5)+byte(0xF7FFA5B5+dword(0xe7b054))/byte(0xF7FFA5B5)+
                                         byte(0xF7FFA365+dword(0xe7b054))/byte(0xF7FFA365)+byte(0xF7FF8DDD+dword(0xe7b054))/byte(0xF7FF8DDD)+
                                         byte(0xF7FF9D7D+dword(0xe7b054))/byte(0xF7FF9D7D)+byte(0xF7FF6C55+dword(0xe7b054))/byte(0xF7FF6C55)+
                                         byte(0xF7FF6FB1+dword(0xe7b054))/byte(0xF7FF6FB1)+byte(0xF7FF9C89+dword(0xe7b054))/byte(0xF7FF9C89)+
                                         byte(0xF7FF7A3D+dword(0xe7b054))/byte(0xF7FF7A3D)+byte(0xF7FF8B05+dword(0xe7b054))/byte(0xF7FF8B05)+
                                         byte(0xF7FF8041+dword(0xe7b054))/byte(0xF7FF8041)+byte(0xF7FF8045+dword(0xe7b054))/byte(0xF7FF8045)+
                                         byte(0xF7FF8049+dword(0xe7b054))/byte(0xF7FF8049)+byte(0xF7FF7BA9+dword(0xe7b054))/byte(0xF7FF7BA9)+
                                         byte(0xF7FF9381+dword(0xe7b054))/byte(0xF7FF9381)+byte(0xF7FF87B9+dword(0xe7b054))/byte(0xF7FF87B9)+
                                         byte(0xF7FF91E1+dword(0xe7b054))/byte(0xF7FF91E1)+byte(0xF7FF9CBD+dword(0xe7b054))/byte(0xF7FF9CBD)+
                                         byte(0xF7FFA569+dword(0xe7b054))/byte(0xF7FFA569)+byte(0xF7FF7DE9+dword(0xe7b054))/byte(0xF7FF7DE9)+
                                         byte(0xF7FF73DD+dword(0xe7b054))/byte(0xF7FF73DD)+byte(0xF7FF9EBD+dword(0xe7b054))/byte(0xF7FF9EBD)+
                                         byte(0xF7FF73E1+dword(0xe7b054))/byte(0xF7FF73E1)+byte(0xF7FF6A29+dword(0xe7b054))/byte(0xF7FF6A29)+
                                         byte(0xF7FF66CD+dword(0xe7b054))/byte(0xF7FF66CD)+byte(0xF7FFA8B1+dword(0xe7b054))/byte(0xF7FFA8B1)+
                                         byte(0xF7FFA8C1+dword(0xe7b054))/byte(0xF7FFA8C1)+byte(0xF7FFA8A5+dword(0xe7b054))/byte(0xF7FFA8A5)+
                                         byte(0xF7FFA8AD+dword(0xe7b054))/byte(0xF7FFA8AD)+byte(0xF7FFA8BD+dword(0xe7b054))/byte(0xF7FFA8BD)+
                                         byte(0xF7FFA8B5+dword(0xe7b054))/byte(0xF7FFA8B5)+byte(0xF7FFA8B9+dword(0xe7b054))/byte(0xF7FFA8B9)+
                                         byte(0xF7FFA8A9+dword(0xe7b054))/byte(0xF7FFA8A9)+byte(0xF7FF89D1+dword(0xe7b054))/byte(0xF7FF89D1)+
                                         byte(0xF7FF878D+dword(0xe7b054))/byte(0xF7FF878D)+byte(0xF7FFA361+dword(0xe7b054))/byte(0xF7FFA361)+
                                         byte(0xF7FF67CD+dword(0xe7b054))/byte(0xF7FF67CD)+byte(0xF7FF8795+dword(0xe7b054))/byte(0xF7FF8795)+
                                         byte(0xF7FF66B1+dword(0xe7b054))/byte(0xF7FF66B1)+byte(0xF7FF8D19+dword(0xe7b054))/byte(0xF7FF8D19)+
                                         byte(0xF7FF9DF5+dword(0xe7b054))/byte(0xF7FF9DF5)+byte(0xF7FF9159+dword(0xe7b054))/byte(0xF7FF9159)+
                                         byte(0xF7FF806D+dword(0xe7b054))/byte(0xF7FF806D)+byte(0xF7FF8071+dword(0xe7b054))/byte(0xF7FF8071)+
                                         byte(0xF7FF90D9+dword(0xe7b054))/byte(0xF7FF90D9)+byte(0xF7FFA0D9+dword(0xe7b054))/byte(0xF7FFA0D9)+
                                         byte(0xF7FFA0DD+dword(0xe7b054))/byte(0xF7FFA0DD)+byte(0xF7FFA0D5+dword(0xe7b054))/byte(0xF7FFA0D5)+
                                         byte(0xF7FFA0E1+dword(0xe7b054))/byte(0xF7FFA0E1)+byte(0xF7FFA339+dword(0xe7b054))/byte(0xF7FFA339)+
                                         byte(0xF7FFA379+dword(0xe7b054))/byte(0xF7FFA379)+byte(0xF7FFA0E5+dword(0xe7b054))/byte(0xF7FFA0E5)+
                                         byte(0xF7FFA335+dword(0xe7b054))/byte(0xF7FFA335)+byte(0xF7FFA0B9+dword(0xe7b054))/byte(0xF7FFA0B9)+
                                         byte(0xF7FFA129+dword(0xe7b054))/byte(0xF7FFA129)+byte(0xF7FFA4A5+dword(0xe7b054))/byte(0xF7FFA4A5)+
                                         byte(0xF7FF71A1+dword(0xe7b054))/byte(0xF7FF71A1)+byte(0xF7FF73E9+dword(0xe7b054))/byte(0xF7FF73E9)+
                                         byte(0xF7FF7FA9+dword(0xe7b054))/byte(0xF7FF7FA9)+byte(0xF7FF988D+dword(0xe7b054))/byte(0xF7FF988D)+
                                         byte(0xF7FF80A1+dword(0xe7b054))/byte(0xF7FF80A1)+byte(0xF7FF73F5+dword(0xe7b054))/byte(0xF7FF73F5)+
                                         byte(0xF7FF7201+dword(0xe7b054))/byte(0xF7FF7201)+byte(0xF7FF7A4D+dword(0xe7b054))/byte(0xF7FF7A4D)+
                                         byte(0xF7FF7CF5+dword(0xe7b054))/byte(0xF7FF7CF5)+byte(0xF7FF6F95+dword(0xe7b054))/byte(0xF7FF6F95)+
                                         byte(0xF7FF7F89+dword(0xe7b054))/byte(0xF7FF7F89)+byte(0xF7FF7F49+dword(0xe7b054))/byte(0xF7FF7F49)+
                                         byte(0xF7FF8075+dword(0xe7b054))/byte(0xF7FF8075)+byte(0xF7FF8159+dword(0xe7b054))/byte(0xF7FF8159)+
                                         byte(0xF7FF826D+dword(0xe7b054))/byte(0xF7FF826D)+byte(0xF7FF8B11+dword(0xe7b054))/byte(0xF7FF8B11)+
                                         byte(0xF7FF6FD5+dword(0xe7b054))/byte(0xF7FF6FD5)+byte(0xF7FF7FA5+dword(0xe7b054))/byte(0xF7FF7FA5)+
                                         byte(0xF7FF91E9+dword(0xe7b054))/byte(0xF7FF91E9)+byte(0xF7FF9EE9+dword(0xe7b054))/byte(0xF7FF9EE9)+
                                         byte(0xF7FF8CF1+dword(0xe7b054))/byte(0xF7FF8CF1)+byte(0xF7FF9095+dword(0xe7b054))/byte(0xF7FF9095)+
                                         byte(0xF7FFA58D+dword(0xe7b054))/byte(0xF7FFA58D)+byte(0xF7FFA585+dword(0xe7b054))/byte(0xF7FFA585)+
                                         byte(0xF7FFA8ED+dword(0xe7b054))/byte(0xF7FFA8ED)+byte(0xF7FFA5AD+dword(0xe7b054))/byte(0xF7FFA5AD)+
                                         byte(0xF7FFA5B9+dword(0xe7b054))/byte(0xF7FFA5B9)+byte(0xF7FFA915+dword(0xe7b054))/byte(0xF7FFA915)+
                                         byte(0xF7FFA5A9+dword(0xe7b054))/byte(0xF7FFA5A9)+byte(0xF7FFA591+dword(0xe7b054))/byte(0xF7FFA591)+
                                         byte(0xF7FFA589+dword(0xe7b054))/byte(0xF7FFA589)+byte(0xF7FFA119+dword(0xe7b054))/byte(0xF7FFA119)+
                                         byte(0xF7FF8C65+dword(0xe7b054))/byte(0xF7FF8C65)+byte(0xF7FF8495+dword(0xe7b054))/byte(0xF7FF8495)+
                                         byte(0xF7FF9DE9+dword(0xe7b054))/byte(0xF7FF9DE9)+byte(0xF7FF81AD+dword(0xe7b054))/byte(0xF7FF81AD)+
                                         byte(0xF7FF7A45+dword(0xe7b054))/byte(0xF7FF7A45)+byte(0xF7FF9025+dword(0xe7b054))/byte(0xF7FF9025)+
                                         byte(0xF7FFA899+dword(0xe7b054))/byte(0xF7FFA899)+byte(0xF7FFA8A1+dword(0xe7b054))/byte(0xF7FFA8A1)+
                                         byte(0xF7FF9AB9+dword(0xe7b054))/byte(0xF7FF9AB9)+byte(0xF7FF6BC9+dword(0xe7b054))/byte(0xF7FF6BC9)+
                                         byte(0xF7FF805D+dword(0xe7b054))/byte(0xF7FF805D)+byte(0xF7FF926D+dword(0xe7b054))/byte(0xF7FF926D)+
                                         byte(0xF7FF9271+dword(0xe7b054))/byte(0xF7FF9271)+byte(0xF7FFA4B5+dword(0xe7b054))/byte(0xF7FFA4B5)+
                                         byte(0xF7FF9275+dword(0xe7b054))/byte(0xF7FF9275)+byte(0xF7FF9279+dword(0xe7b054))/byte(0xF7FF9279)+
                                         byte(0xF7FF927D+dword(0xe7b054))/byte(0xF7FF927D)+byte(0xF7FF967D+dword(0xe7b054))/byte(0xF7FF967D)+
                                         byte(0xF7FF9681+dword(0xe7b054))/byte(0xF7FF9681)+byte(0xF7FF9685+dword(0xe7b054))/byte(0xF7FF9685)+
                                         byte(0xF7FF9689+dword(0xe7b054))/byte(0xF7FF9689)+byte(0xF7FF968D+dword(0xe7b054))/byte(0xF7FF968D)+
                                         byte(0xF7FF9691+dword(0xe7b054))/byte(0xF7FF9691)+byte(0xF7FF9879+dword(0xe7b054))/byte(0xF7FF9879)+
                                         byte(0xF7FF987D+dword(0xe7b054))/byte(0xF7FF987D)+byte(0xF7FF9881+dword(0xe7b054))/byte(0xF7FF9881)+
                                         byte(0xF7FF9A9D+dword(0xe7b054))/byte(0xF7FF9A9D)+byte(0xF7FF9AA1+dword(0xe7b054))/byte(0xF7FF9AA1)+
                                         byte(0xF7FF9AA5+dword(0xe7b054))/byte(0xF7FF9AA5)+byte(0xF7FF9AA9+dword(0xe7b054))/byte(0xF7FF9AA9)+
                                         byte(0xF7FF9C99+dword(0xe7b054))/byte(0xF7FF9C99)+byte(0xF7FF9C9D+dword(0xe7b054))/byte(0xF7FF9C9D)+
                                         byte(0xF7FF9CA1+dword(0xe7b054))/byte(0xF7FF9CA1)+byte(0xF7FF9CA5+dword(0xe7b054))/byte(0xF7FF9CA5)+
                                         byte(0xF7FF9ED1+dword(0xe7b054))/byte(0xF7FF9ED1)+byte(0xF7FF9ED5+dword(0xe7b054))/byte(0xF7FF9ED5)+
                                         byte(0xF7FF9ED9+dword(0xe7b054))/byte(0xF7FF9ED9)+byte(0xF7FF9EDD+dword(0xe7b054))/byte(0xF7FF9EDD)+
                                         byte(0xF7FF9255+dword(0xe7b054))/byte(0xF7FF9255)+byte(0xF7FF9661+dword(0xe7b054))/byte(0xF7FF9661)+
                                         byte(0xF7FF9251+dword(0xe7b054))/byte(0xF7FF9251)+byte(0xF7FF9665+dword(0xe7b054))/byte(0xF7FF9665)+
                                         byte(0xF7FF9669+dword(0xe7b054))/byte(0xF7FF9669)+byte(0xF7FF966D+dword(0xe7b054))/byte(0xF7FF966D)+
                                         byte(0xF7FF9259+dword(0xe7b054))/byte(0xF7FF9259)+byte(0xF7FFA3B1+dword(0xe7b054))/byte(0xF7FFA3B1)+
                                         byte(0xF7FF9D9D+dword(0xe7b054))/byte(0xF7FF9D9D)+byte(0xF7FFA075+dword(0xe7b054))/byte(0xF7FFA075)+
                                         byte(0xF7FFA071+dword(0xe7b054))/byte(0xF7FFA071)+byte(0xF7FFA211+dword(0xe7b054))/byte(0xF7FFA211)+
                                         byte(0xF7FF9DB9+dword(0xe7b054))/byte(0xF7FF9DB9)+byte(0xF7FFA259+dword(0xe7b054))/byte(0xF7FFA259)+
                                         byte(0xF7FF9D99+dword(0xe7b054))/byte(0xF7FF9D99)+byte(0xF7FF7D81+dword(0xe7b054))/byte(0xF7FF7D81)
                                         
achievement ("A Little Bit of Everything", "Obtain all cards from [A Little Bit of Everything] booster", 25,
trigger = save_protect() && measured(a_little_bit_of_everything() == 562) && prev(a_little_bit_of_everything()) != 562) 

//No Means No Booster Packs - 86 Cards Total
//Offset - 0xF7FF8B3D - Advanced Ritual Art
//Offset - 0xF7FF92D9 - Allure of Darkness
//Offset - 0xF7FF9BCD - Black Whirlwind
//Offset - 0xF7FF9905 - Blackwing - Gale the Whirlwind
//Offset - 0xF7FF7601 - Bottomless Trap Hole
//Offset - 0xF7FF6DF5 - Brain Control
//Offset - 0xF7FF8A61 - Burial from a Different Dimension
//Offset - 0xF7FF70B1 - Call of the Haunted
//Offset - 0xF7FF6E31 - Card Destruction
//Offset - 0xF7FF8A59 - Card Trooper
//Offset - 0xF7FF7031 - Ceasefire
//Offset - 0xF7FF89F1 - Chain Strike
//Offset - 0xF7FF7BAD - Chaos Sorcerer
//Offset - 0xF7FF9705 - Charge of the Light Brigade
//Offset - 0xF7FF7239 - Cold Wave
//Offset - 0xF7FF8361 - Cyber Dragon
//Offset - 0xF7FF86CD - Dandylion
//Offset - 0xF7FF8665 - Demise, King of Armageddon
//Offset - 0xF7FF8A85 - Destiny Draw
//Offset - 0xF7FF8A81 - Destiny Hero - Malicious
//Offset - 0xF7FF9889 - Dewloren, Tiger King of the Ice Barrier
//Offset - 0xF7FF8891 - Elemental Hero Stratos
//Offset - 0xF7FF9589 - Emergency Teleport
//Offset - 0xF7FF624D - Exodia the Forbidden One
//Offset - 0xF7FF73A9 - Foolish Burial
//Offset - 0xF7FF8889 - Future Fusion
//Offset - 0xF7FF6F79 - Giant Trunade
//Offset - 0xF7FF8EFD - Gladiator Beast Bestiari
//Offset - 0xF7FF7819 - Goblin Zombie
//Offset - 0xF7FF803D - Gold Sarcophagus
//Offset - 0xF7FF85A1 - Gorz the Emissary of Darkness
//Offset - 0xF7FF7255 - Gravity Bind
//Offset - 0xF7FF6F2D - Heavy Storm
//Offset - 0xF7FF92E9 - Honest
//Offset - 0xF7FF934D - Judgment Dragon
//Offset - 0xF7FF6249 - Left Arm of the Forbidden One
//Offset - 0xF7FF6241 - Left Leg of the Forbidden One
//Offset - 0xF7FF7EB1 - Level Limit - Area B
//Offset - 0xF7FF7241 - Limiter Removal
//Offset - 0xF7FF92D1 - Lonefire Blossom
//Offset - 0xF7FF9339 - Lumina, Lightsworn Summoner
//Offset - 0xF7FF722D - Magic Cylinder
//Offset - 0xF7FF8429 - Magical Explosion
//Offset - 0xF7FF79C5 - Magical Stone Excavation
//Offset - 0xF7FF7E01 - Marshmallon
//Offset - 0xF7FF6C39 - Megamorph
//Offset - 0xF7FF9015 - Mezuki
//Offset - 0xF7FF6E25 - Mind Control
//Offset - 0xF7FF8011 - Mind Crush
//Offset - 0xF7FF9505 - Mind Master
//Offset - 0xF7FF6F1D - Mirror Force
//Offset - 0xF7FF7DBD - Monster Gate
//Offset - 0xF7FF6B35 - Morphing Jar
//Offset - 0xF7FF6F75 - Mystical Space Typhoon
//Offset - 0xF7FF8D81 - Necro Gardna
//Offset - 0xF7FF7F01 - Necroface
//Offset - 0xF7FF8859 - Neo-Spacian Grand Mole
//Offset - 0xF7FF7E81 - Night Assailant
//Offset - 0xF7FF7A71 - Ojama Trio
//Offset - 0xF7FF9BB5 - One for One
//Offset - 0xF7FF888D - Overload Fusion
//Offset - 0xF7FF96CD - Plaguespreader Zombie
//Offset - 0xF7FF77A5 - Reasoning
//Offset - 0xF7FF74F1 - Reinforcement of the Army
//Offset - 0xF7FF81B9 - Rescue Cat
//Offset - 0xF7FF7F09 - Return from the Different Dimension
//Offset - 0xF7FF6245 - Right Arm of the Forbidden One
//Offset - 0xF7FF623D - Right Leg of the Forbidden One
//Offset - 0xF7FF6ECD - Royal Decree
//Offset - 0xF7FF75FD - Royal Oppression
//Offset - 0xF7FF62B9 - Sangan
//Offset - 0xF7FF6E29 - Scapegoat
//Offset - 0xF7FF7A79 - Skill Drain
//Offset - 0xF7FF898D - Snipe Hunter
//Offset - 0xF7FF6EB9 - Solemn Judgment
//Offset - 0xF7FF7795 - Spirit Reaper
//Offset - 0xF7FF8389 - Summoner Monk
//Offset - 0xF7FF81D1 - Swords of Concealing Light
//Offset - 0xF7FF8B75 - The Transmigration Prophecy
//Offset - 0xF7FF720D - Torrential Tribute
//Offset - 0xF7FF9A3D - Tragoedia
//Offset - 0xF7FF76B1 - Trap Dustshoot
//Offset - 0xF7FF863D - Treeborn Frog
//Offset - 0xF7FF6E91 - Ultimate Offering
//Offset - 0xF7FF7359 - United We Stand
//Offset - 0xF7FF7DE5 - Wall of Revealing Light

function no_means_no() => byte(0xF7FF8B3D+dword(0xe7b054))/byte(0xF7FF8B3D)+byte(0xF7FF92D9+dword(0xe7b054))/byte(0xF7FF92D9)+
                          byte(0xF7FF9BCD+dword(0xe7b054))/byte(0xF7FF9BCD)+byte(0xF7FF9905+dword(0xe7b054))/byte(0xF7FF9905)+
                          byte(0xF7FF7601+dword(0xe7b054))/byte(0xF7FF7601)+byte(0xF7FF6DF5+dword(0xe7b054))/byte(0xF7FF6DF5)+
                          byte(0xF7FF8A61+dword(0xe7b054))/byte(0xF7FF8A61)+byte(0xF7FF70B1+dword(0xe7b054))/byte(0xF7FF70B1)+
                          byte(0xF7FF6E31+dword(0xe7b054))/byte(0xF7FF6E31)+byte(0xF7FF8A59+dword(0xe7b054))/byte(0xF7FF8A59)+
                          byte(0xF7FF7031+dword(0xe7b054))/byte(0xF7FF7031)+byte(0xF7FF89F1+dword(0xe7b054))/byte(0xF7FF89F1)+
                          byte(0xF7FF7BAD+dword(0xe7b054))/byte(0xF7FF7BAD)+byte(0xF7FF9705+dword(0xe7b054))/byte(0xF7FF9705)+
                          byte(0xF7FF7239+dword(0xe7b054))/byte(0xF7FF7239)+byte(0xF7FF8361+dword(0xe7b054))/byte(0xF7FF8361)+
                          byte(0xF7FF86CD+dword(0xe7b054))/byte(0xF7FF86CD)+byte(0xF7FF8665+dword(0xe7b054))/byte(0xF7FF8665)+
                          byte(0xF7FF8A85+dword(0xe7b054))/byte(0xF7FF8A85)+byte(0xF7FF8A81+dword(0xe7b054))/byte(0xF7FF8A81)+
                          byte(0xF7FF9889+dword(0xe7b054))/byte(0xF7FF9889)+byte(0xF7FF8891+dword(0xe7b054))/byte(0xF7FF8891)+
                          byte(0xF7FF9589+dword(0xe7b054))/byte(0xF7FF9589)+byte(0xF7FF624D+dword(0xe7b054))/byte(0xF7FF624D)+
                          byte(0xF7FF73A9+dword(0xe7b054))/byte(0xF7FF73A9)+byte(0xF7FF8889+dword(0xe7b054))/byte(0xF7FF8889)+
                          byte(0xF7FF6F79+dword(0xe7b054))/byte(0xF7FF6F79)+byte(0xF7FF8EFD+dword(0xe7b054))/byte(0xF7FF8EFD)+
                          byte(0xF7FF7819+dword(0xe7b054))/byte(0xF7FF7819)+byte(0xF7FF803D+dword(0xe7b054))/byte(0xF7FF803D)+
                          byte(0xF7FF85A1+dword(0xe7b054))/byte(0xF7FF85A1)+byte(0xF7FF7255+dword(0xe7b054))/byte(0xF7FF7255)+
                          byte(0xF7FF6F2D+dword(0xe7b054))/byte(0xF7FF6F2D)+byte(0xF7FF92E9+dword(0xe7b054))/byte(0xF7FF92E9)+
                          byte(0xF7FF934D+dword(0xe7b054))/byte(0xF7FF934D)+byte(0xF7FF6249+dword(0xe7b054))/byte(0xF7FF6249)+
                          byte(0xF7FF6241+dword(0xe7b054))/byte(0xF7FF6241)+byte(0xF7FF7EB1+dword(0xe7b054))/byte(0xF7FF7EB1)+
                          byte(0xF7FF7241+dword(0xe7b054))/byte(0xF7FF7241)+byte(0xF7FF92D1+dword(0xe7b054))/byte(0xF7FF92D1)+
                          byte(0xF7FF9339+dword(0xe7b054))/byte(0xF7FF9339)+byte(0xF7FF722D+dword(0xe7b054))/byte(0xF7FF722D)+
                          byte(0xF7FF8429+dword(0xe7b054))/byte(0xF7FF8429)+byte(0xF7FF79C5+dword(0xe7b054))/byte(0xF7FF79C5)+
                          byte(0xF7FF7E01+dword(0xe7b054))/byte(0xF7FF7E01)+byte(0xF7FF6C39+dword(0xe7b054))/byte(0xF7FF6C39)+
                          byte(0xF7FF9015+dword(0xe7b054))/byte(0xF7FF9015)+byte(0xF7FF6E25+dword(0xe7b054))/byte(0xF7FF6E25)+
                          byte(0xF7FF8011+dword(0xe7b054))/byte(0xF7FF8011)+byte(0xF7FF9505+dword(0xe7b054))/byte(0xF7FF9505)+
                          byte(0xF7FF6F1D+dword(0xe7b054))/byte(0xF7FF6F1D)+byte(0xF7FF7DBD+dword(0xe7b054))/byte(0xF7FF7DBD)+
                          byte(0xF7FF6B35+dword(0xe7b054))/byte(0xF7FF6B35)+byte(0xF7FF6F75+dword(0xe7b054))/byte(0xF7FF6F75)+
                          byte(0xF7FF8D81+dword(0xe7b054))/byte(0xF7FF8D81)+byte(0xF7FF7F01+dword(0xe7b054))/byte(0xF7FF7F01)+
                          byte(0xF7FF8859+dword(0xe7b054))/byte(0xF7FF8859)+byte(0xF7FF7E81+dword(0xe7b054))/byte(0xF7FF7E81)+
                          byte(0xF7FF7A71+dword(0xe7b054))/byte(0xF7FF7A71)+byte(0xF7FF9BB5+dword(0xe7b054))/byte(0xF7FF9BB5)+
                          byte(0xF7FF888D+dword(0xe7b054))/byte(0xF7FF888D)+byte(0xF7FF96CD+dword(0xe7b054))/byte(0xF7FF96CD)+
                          byte(0xF7FF77A5+dword(0xe7b054))/byte(0xF7FF77A5)+byte(0xF7FF74F1+dword(0xe7b054))/byte(0xF7FF74F1)+
                          byte(0xF7FF81B9+dword(0xe7b054))/byte(0xF7FF81B9)+byte(0xF7FF7F09+dword(0xe7b054))/byte(0xF7FF7F09)+
                          byte(0xF7FF6245+dword(0xe7b054))/byte(0xF7FF6245)+byte(0xF7FF623D+dword(0xe7b054))/byte(0xF7FF623D)+
                          byte(0xF7FF6ECD+dword(0xe7b054))/byte(0xF7FF6ECD)+byte(0xF7FF75FD+dword(0xe7b054))/byte(0xF7FF75FD)+
                          byte(0xF7FF62B9+dword(0xe7b054))/byte(0xF7FF62B9)+byte(0xF7FF6E29+dword(0xe7b054))/byte(0xF7FF6E29)+
                          byte(0xF7FF7A79+dword(0xe7b054))/byte(0xF7FF7A79)+byte(0xF7FF898D+dword(0xe7b054))/byte(0xF7FF898D)+
                          byte(0xF7FF6EB9+dword(0xe7b054))/byte(0xF7FF6EB9)+byte(0xF7FF7795+dword(0xe7b054))/byte(0xF7FF7795)+
                          byte(0xF7FF8389+dword(0xe7b054))/byte(0xF7FF8389)+byte(0xF7FF81D1+dword(0xe7b054))/byte(0xF7FF81D1)+
                          byte(0xF7FF8B75+dword(0xe7b054))/byte(0xF7FF8B75)+byte(0xF7FF720D+dword(0xe7b054))/byte(0xF7FF720D)+
                          byte(0xF7FF9A3D+dword(0xe7b054))/byte(0xF7FF9A3D)+byte(0xF7FF76B1+dword(0xe7b054))/byte(0xF7FF76B1)+
                          byte(0xF7FF863D+dword(0xe7b054))/byte(0xF7FF863D)+byte(0xF7FF6E91+dword(0xe7b054))/byte(0xF7FF6E91)+
                          byte(0xF7FF7359+dword(0xe7b054))/byte(0xF7FF7359)+byte(0xF7FF7DE5+dword(0xe7b054))/byte(0xF7FF7DE5)
                          
achievement ("No Means No", "Obtain all cards from [No Means No] booster", 10,
trigger = save_protect() && measured(no_means_no() == 86) && prev(no_means_no()) != 86)    

//Totally Taboo Booster Packs -  66 Cards Total
//Offset - 0xF7FFA1A5 - Aggiba, the Malevolent Sh'nn S'yo
//Offset - 0xF7FF6EA1 - Anti Raigeki
//Offset - 0xF7FF8AA9 - Armament of the Lethal Lords
//Offset - 0xF7FF7D6D - Avatar of the Pot
//Offset - 0xF7FF7BB5 - Black Luster Soldier - Envoy of the Beginning
//Offset - 0xF7FF7A39 - Butterfly Dagger - Elma
//Offset - 0xF7FF6EB1 - Call of Darkness
//Offset - 0xF7FF6E9D - Call of the Grave
//Offset - 0xF7FF7229 - Card of Safe Return
//Offset - 0xF7FF6EB5 - Change of Heart
//Offset - 0xF7FF7C19 - Chaos Emperor Dragon - Envoy of the End
//Offset - 0xF7FF9039 - Chimaera, the Master of Beasts
//Offset - 0xF7FF6F51 - Confiscation
//Offset - 0xF7FF6C45 - Crush Card Virus
//Offset - 0xF7FF6F85 - Cyber Jar
//Offset - 0xF7FF6889 - Cyber-Stein
//Offset - 0xF7FF6739 - Dark Hole
//Offset - 0xF7FF7C49 - Dark Magician of Chaos
//Offset - 0xF7FF9965 - Dark Strike Fighter
//Offset - 0xF7FF7CB5 - Dedication through Light and Darkness
//Offset - 0xF7FF6F55 - Delinquent Duo
//Offset - 0xF7FF8C49 - Destiny Hero - Disk Commander
//Offset - 0xF7FF7CB1 - Dimension Fusion
//Offset - 0xF7FF903D - Emperor of Lightning
//Offset - 0xF7FF7571 - Exchange of the Spirit
//Offset - 0xF7FF758D - Fiber Jar
//Offset - 0xF7FF6E11 - Graceful Charity
//Offset - 0xF7FF6F31 - Gryphon Wing
//Offset - 0xF7FF6C65 - Harpie's Feather Duster
//Offset - 0xF7FF703D - Imperial Order
//Offset - 0xF7FF798D - Jar Robber
//Offset - 0xF7FF7619 - Last Turn
//Offset - 0xF7FF6F15 - Last Will
//Offset - 0xF7FF98CD - Lorelei, the Symphonic Arsenal
//Offset - 0xF7FF7949 - Magical Scientist
//Offset - 0xF7FF68A9 - Magician of Faith
//Offset - 0xF7FF7459 - Makyura the Destructor
//Offset - 0xF7FF77C9 - Metamorphosis
//Offset - 0xF7FF7D0D - Meteo the Matchless
//Offset - 0xF7FF7681 - Mirage of Nightmare
//Offset - 0xF7FF6E6D - Monster Reborn
//Offset - 0xF7FF6F7D - Painful Choice
//Offset - 0xF7FF6E75 - Pot of Greed
//Offset - 0xF7FF7055 - Premature Burial
//Offset - 0xF7FF7BE1 - Primal Seed
//Offset - 0xF7FF8561 - Queen of Fate - Eternia
//Offset - 0xF7FF673D - Raigeki
//Offset - 0xF7FF70E1 - Ring of Destruction
//Offset - 0xF7FF6965 - Sinister Serpent
//Offset - 0xF7FF7D31 - Sixth Sense
//Offset - 0xF7FFA1A9 - Skuna, the Leonine Rakan
//Offset - 0xF7FF6F49 - Snatch Steal
//Offset - 0xF7FF7B75 - Spirit of the Pot of Greed
//Offset - 0xF7FF739D - Temple of the Kings
//Offset - 0xF7FF8AA5 - Testament of the Arcane Lords
//Offset - 0xF7FF6F6D - The Forceful Sentry
//Offset - 0xF7FF6D2D - Thousand-Eyes Restrict
//Offset - 0xF7FF709D - Time Seal
//Offset - 0xF7FF7955 - Tribe-Infecting Virus
//Offset - 0xF7FF7AF5 - Tsukuyomi
//Offset - 0xF7FF98C9 - Tyr, the Vanquishing Warlord
//Offset - 0xF7FF7CFD - Ulevo
//Offset - 0xF7FF7C1D - Victory Dragon
//Offset - 0xF7FF6E99 - White Hole
//Offset - 0xF7FF6AF1 - Witch of the Black Forest
//Offset - 0xF7FF759D - Yata-Garasu

function totally_taboo() =>   byte(0xF7FFA1A5+dword(0xe7b054))/byte(0xF7FFA1A5)+byte(0xF7FF6EA1+dword(0xe7b054))/byte(0xF7FF6EA1)+
                              byte(0xF7FF8AA9+dword(0xe7b054))/byte(0xF7FF8AA9)+byte(0xF7FF7D6D+dword(0xe7b054))/byte(0xF7FF7D6D)+
                              byte(0xF7FF7BB5+dword(0xe7b054))/byte(0xF7FF7BB5)+byte(0xF7FF7A39+dword(0xe7b054))/byte(0xF7FF7A39)+
                              byte(0xF7FF6EB1+dword(0xe7b054))/byte(0xF7FF6EB1)+byte(0xF7FF6E9D+dword(0xe7b054))/byte(0xF7FF6E9D)+
                              byte(0xF7FF7229+dword(0xe7b054))/byte(0xF7FF7229)+byte(0xF7FF6EB5+dword(0xe7b054))/byte(0xF7FF6EB5)+
                              byte(0xF7FF7C19+dword(0xe7b054))/byte(0xF7FF7C19)+byte(0xF7FF9039+dword(0xe7b054))/byte(0xF7FF9039)+
                              byte(0xF7FF6F51+dword(0xe7b054))/byte(0xF7FF6F51)+byte(0xF7FF6C45+dword(0xe7b054))/byte(0xF7FF6C45)+
                              byte(0xF7FF6F85+dword(0xe7b054))/byte(0xF7FF6F85)+byte(0xF7FF6889+dword(0xe7b054))/byte(0xF7FF6889)+
                              byte(0xF7FF6739+dword(0xe7b054))/byte(0xF7FF6739)+byte(0xF7FF7C49+dword(0xe7b054))/byte(0xF7FF7C49)+
                              byte(0xF7FF9965+dword(0xe7b054))/byte(0xF7FF9965)+byte(0xF7FF7CB5+dword(0xe7b054))/byte(0xF7FF7CB5)+
                              byte(0xF7FF6F55+dword(0xe7b054))/byte(0xF7FF6F55)+byte(0xF7FF8C49+dword(0xe7b054))/byte(0xF7FF8C49)+
                              byte(0xF7FF7CB1+dword(0xe7b054))/byte(0xF7FF7CB1)+byte(0xF7FF903D+dword(0xe7b054))/byte(0xF7FF903D)+
                              byte(0xF7FF7571+dword(0xe7b054))/byte(0xF7FF7571)+byte(0xF7FF758D+dword(0xe7b054))/byte(0xF7FF758D)+
                              byte(0xF7FF6E11+dword(0xe7b054))/byte(0xF7FF6E11)+byte(0xF7FF6F31+dword(0xe7b054))/byte(0xF7FF6F31)+
                              byte(0xF7FF6C65+dword(0xe7b054))/byte(0xF7FF6C65)+byte(0xF7FF703D+dword(0xe7b054))/byte(0xF7FF703D)+
                              byte(0xF7FF798D+dword(0xe7b054))/byte(0xF7FF798D)+byte(0xF7FF7619+dword(0xe7b054))/byte(0xF7FF7619)+
                              byte(0xF7FF6F15+dword(0xe7b054))/byte(0xF7FF6F15)+byte(0xF7FF98CD+dword(0xe7b054))/byte(0xF7FF98CD)+
                              byte(0xF7FF7949+dword(0xe7b054))/byte(0xF7FF7949)+byte(0xF7FF68A9+dword(0xe7b054))/byte(0xF7FF68A9)+
                              byte(0xF7FF7459+dword(0xe7b054))/byte(0xF7FF7459)+byte(0xF7FF77C9+dword(0xe7b054))/byte(0xF7FF77C9)+
                              byte(0xF7FF7D0D+dword(0xe7b054))/byte(0xF7FF7D0D)+byte(0xF7FF7681+dword(0xe7b054))/byte(0xF7FF7681)+
                              byte(0xF7FF6E6D+dword(0xe7b054))/byte(0xF7FF6E6D)+byte(0xF7FF6F7D+dword(0xe7b054))/byte(0xF7FF6F7D)+
                              byte(0xF7FF6E75+dword(0xe7b054))/byte(0xF7FF6E75)+byte(0xF7FF7055+dword(0xe7b054))/byte(0xF7FF7055)+
                              byte(0xF7FF7BE1+dword(0xe7b054))/byte(0xF7FF7BE1)+byte(0xF7FF8561+dword(0xe7b054))/byte(0xF7FF8561)+
                              byte(0xF7FF673D+dword(0xe7b054))/byte(0xF7FF673D)+byte(0xF7FF70E1+dword(0xe7b054))/byte(0xF7FF70E1)+
                              byte(0xF7FF6965+dword(0xe7b054))/byte(0xF7FF6965)+byte(0xF7FF7D31+dword(0xe7b054))/byte(0xF7FF7D31)+
                              byte(0xF7FFA1A9+dword(0xe7b054))/byte(0xF7FFA1A9)+byte(0xF7FF6F49+dword(0xe7b054))/byte(0xF7FF6F49)+
                              byte(0xF7FF7B75+dword(0xe7b054))/byte(0xF7FF7B75)+byte(0xF7FF739D+dword(0xe7b054))/byte(0xF7FF739D)+
                              byte(0xF7FF8AA5+dword(0xe7b054))/byte(0xF7FF8AA5)+byte(0xF7FF6F6D+dword(0xe7b054))/byte(0xF7FF6F6D)+
                              byte(0xF7FF6D2D+dword(0xe7b054))/byte(0xF7FF6D2D)+byte(0xF7FF709D+dword(0xe7b054))/byte(0xF7FF709D)+
                              byte(0xF7FF7955+dword(0xe7b054))/byte(0xF7FF7955)+byte(0xF7FF7AF5+dword(0xe7b054))/byte(0xF7FF7AF5)+
                              byte(0xF7FF98C9+dword(0xe7b054))/byte(0xF7FF98C9)+byte(0xF7FF7CFD+dword(0xe7b054))/byte(0xF7FF7CFD)+
                              byte(0xF7FF7C1D+dword(0xe7b054))/byte(0xF7FF7C1D)+byte(0xF7FF6E99+dword(0xe7b054))/byte(0xF7FF6E99)+
                              byte(0xF7FF6AF1+dword(0xe7b054))/byte(0xF7FF6AF1)+byte(0xF7FF759D+dword(0xe7b054))/byte(0xF7FF759D)
                              
achievement ("Totally Taboo", "Obtain all cards from [Totally Taboo] booster", 10,
trigger = save_protect() && measured(totally_taboo() == 66) && prev(totally_taboo()) != 66) 

//Wonder in Simplicity Booster Packs - 444 Cards Total
//Offset - 0xF7FF68FD - 30,000-Year White Turtle
//Offset - 0xF7FF6B05 - Abyss Flower
//Offset - 0xF7FF6BF9 - Acid Crawler
//Offset - 0xF7FF6959 - Air Eater
//Offset - 0xF7FF64F1 - Akakieisu
//Offset - 0xF7FF6451 - Akihiron
//Offset - 0xF7FF696D - Alinsection
//Offset - 0xF7FF6D91 - Alligator's Sword
//Offset - 0xF7FF6BC1 - Amazon of the Seas
//Offset - 0xF7FF64B5 - Ancient Brain
//Offset - 0xF7FF68BD - Ancient Elf
//Offset - 0xF7FF6BD1 - Ancient Lizard Warrior
//Offset - 0xF7FF6AF5 - Ancient One of the Deep Forest
//Offset - 0xF7FF6605 - Ancient Sorcerer
//Offset - 0xF7FF63E9 - Ancient Tool
//Offset - 0xF7FF663D - Ancient Tree of Enlightenment
//Offset - 0xF7FF63F5 - Ansatsu
//Offset - 0xF7FF6AD9 - Anthrosaurus
//Offset - 0xF7FF68F1 - Aqua Snake
//Offset - 0xF7FF660D - Archfiend Mirror
//Offset - 0xF7FF64C9 - Arlownay
//Offset - 0xF7FF6509 - Arma Knight
//Offset - 0xF7FF64A9 - Armaill
//Offset - 0xF7FF62C5 - Armored Lizard
//Offset - 0xF7FF6BCD - Armored Rat
//Offset - 0xF7FF6B95 - Armored Starfish
//Offset - 0xF7FF6379 - Armored Zombie
//Offset - 0xF7FF6331 - Axe Raider
//Offset - 0xF7FF6AE5 - B. Dragon Jungle King
//Offset - 0xF7FF6209 - Baby Dragon
//Offset - 0xF7FF6F09 - Baron of the Fiend Sword
//Offset - 0xF7FF699D - Barrel Lily
//Offset - 0xF7FF6915 - Barrel Rock
//Offset - 0xF7FF62C1 - Basic Insect
//Offset - 0xF7FF6865 - Bat
//Offset - 0xF7FF6261 - Battle Ox
//Offset - 0xF7FF6231 - Battle Steer
//Offset - 0xF7FF6389 - Battle Warrior
//Offset - 0xF7FF6B31 - Beaked Snake
//Offset - 0xF7FF69F5 - Bean Soldier
//Offset - 0xF7FF68C1 - Beautiful Beast Trainer
//Offset - 0xF7FF6265 - Beaver Warrior
//Offset - 0xF7FF6A91 - Behegon
//Offset - 0xF7FF62BD - Big Insect
//Offset - 0xF7FF6B19 - Binding Chain
//Offset - 0xF7FF6695 - Bio Plant
//Offset - 0xF7FF7341 - Bio-Mage
//Offset - 0xF7FF6221 - Blackland Fire Dragon
//Offset - 0xF7FF6425 - Blue-Eyed Silver Zombie
//Offset - 0xF7FF6BE9 - Blue-Winged Crown
//Offset - 0xF7FF6929 - Bolt Escargot
//Offset - 0xF7FF692D - Bolt Penguin
//Offset - 0xF7FF6A89 - Bone Mouse
//Offset - 0xF7FF7175 - Boneheimer
//Offset - 0xF7FF6991 - Boo Koo
//Offset - 0xF7FF68D5 - Bottom Dweller
//Offset - 0xF7FF6A11 - Boulder Tortoise
//Offset - 0xF7FF6A01 - Brave Scizzar
//Offset - 0xF7FF697D - Burglar
//Offset - 0xF7FF65C1 - Candle of Fate
//Offset - 0xF7FF629D - Celtic Guardian
//Offset - 0xF7FF667D - Change Slime
//Offset - 0xF7FF64C1 - Claw Reacher
//Offset - 0xF7FF6A65 - Corroding Shark
//Offset - 0xF7FF6371 - Crawling Dragon
//Offset - 0xF7FF633D - Crawling Dragon #2
//Offset - 0xF7FF69E5 - Crazy Fish
//Offset - 0xF7FF6AFD - Crow Goblin
//Offset - 0xF7FF6399 - Curtain of the Dark Ones
//Offset - 0xF7FF7081 - Cyber Falcon
//Offset - 0xF7FF686D - Cyber Soldier
//Offset - 0xF7FF669D - Cyber Soldier of Darkworld
//Offset - 0xF7FF69D1 - D. Human
//Offset - 0xF7FF65BD - Dark Assailant
//Offset - 0xF7FF7085 - Dark Bat
//Offset - 0xF7FF6355 - Dark Chimera
//Offset - 0xF7FF63BD - Dark Gray
//Offset - 0xF7FF649D - Dark King of the Abyss
//Offset - 0xF7FF63E5 - Dark Plant
//Offset - 0xF7FF64AD - Dark Prisoner
//Offset - 0xF7FF67F9 - Dark Rabbit
//Offset - 0xF7FF64CD - Dark Shade
//Offset - 0xF7FF659D - Dark Titan of Terror
//Offset - 0xF7FF6B11 - Dark Witch
//Offset - 0xF7FF7071 - Darkfire Soldier #1
//Offset - 0xF7FF7079 - Darkfire Soldier #2
//Offset - 0xF7FF6AD5 - Darkworld Thorns
//Offset - 0xF7FF6911 - Destroyer Golem
//Offset - 0xF7FF6A79 - Dharma Cannon
//Offset - 0xF7FF6895 - Dice Armadillo
//Offset - 0xF7FF6475 - Dig Beak
//Offset - 0xF7FF6C05 - Disk Magician
//Offset - 0xF7FF65C9 - Dissolverock
//Offset - 0xF7FF6439 - Djinn the Watcher of the Wind
//Offset - 0xF7FF645D - Dokuroizo the Grim Reaper
//Offset - 0xF7FF7295 - Dokuroyaiba
//Offset - 0xF7FF63B5 - Doma The Angel of Silence
//Offset - 0xF7FF6505 - Doron
//Offset - 0xF7FF652D - Dorover
//Offset - 0xF7FF6421 - Dragon Statue
//Offset - 0xF7FF637D - Dragon Zombie
//Offset - 0xF7FF6535 - Droll Bird
//Offset - 0xF7FF6ADD - Drooling Lizard
//Offset - 0xF7FF67D5 - Dungeon Worm
//Offset - 0xF7FF6A41 - Eldeen
//Offset - 0xF7FF65F1 - Embryonic Beast
//Offset - 0xF7FF6839 - Emperor of the Land and Sea
//Offset - 0xF7FF7335 - Empress Mantis
//Offset - 0xF7FF65E5 - Enchanting Mermaid
//Offset - 0xF7FF64DD - Eyearmor
//Offset - 0xF7FF6B65 - Fairy Dragon
//Offset - 0xF7FF6BBD - Fairy of the Fountain
//Offset - 0xF7FF67A5 - Fairy's Gift
//Offset - 0xF7FF65ED - Fairywitch
//Offset - 0xF7FF63ED - Faith Bird
//Offset - 0xF7FF6211 - Feral Imp
//Offset - 0xF7FF6311 - Fiend Kraken
//Offset - 0xF7FF6B45 - Fiend Reflection #1
//Offset - 0xF7FF64E1 - Fiend Reflection #2
//Offset - 0xF7FF7E2D - Fiend Scorpion
//Offset - 0xF7FF657D - Fiend Sword
//Offset - 0xF7FF6415 - Fiend's Hand
//Offset - 0xF7FF64B9 - Fire Eye
//Offset - 0xF7FF6A15 - Fire Kraken
//Offset - 0xF7FF6461 - Fire Reaper
//Offset - 0xF7FF646D - Firegrass
//Offset - 0xF7FF6CE9 - Firewing Pegasus
//Offset - 0xF7FF6685 - Fireyarou
//Offset - 0xF7FF6A3D - Flame Cerebrus
//Offset - 0xF7FF7069 - Flame Champion
//Offset - 0xF7FF7179 - Flame Dancer
//Offset - 0xF7FF6431 - Flame Manipulator
//Offset - 0xF7FF6C09 - Flame Viper
//Offset - 0xF7FF7195 - Flying Fish
//Offset - 0xF7FF7089 - Flying Kamakiri #2
//Offset - 0xF7FF679D - Flying Penguin
//Offset - 0xF7FF651D - Frenzied Panda
//Offset - 0xF7FF69D9 - Fungi of the Musk
//Offset - 0xF7FF6969 - Ganigumo
//Offset - 0xF7FF6DCD - Garnecia Elefantis
//Offset - 0xF7FF6309 - Garoozis
//Offset - 0xF7FF6985 - Garvas
//Offset - 0xF7FF64E5 - Gate Deeg
//Offset - 0xF7FF6671 - Gatekeeper
//Offset - 0xF7FF64D9 - Genin
//Offset - 0xF7FF6B49 - Ghoul with an Appetite
//Offset - 0xF7FF62D5 - Giant Flea
//Offset - 0xF7FF6859 - Giant Mech-Soldier
//Offset - 0xF7FF6AF9 - Giant Scorpion of the Tundra
//Offset - 0xF7FF6B3D - Giant Turtle Who Feeds on Flames
//Offset - 0xF7FF6869 - Giga-Tech Wolf
//Offset - 0xF7FF6885 - Giganto
//Offset - 0xF7FF725D - Girochin Kuwagata
//Offset - 0xF7FF62D1 - Gokibore
//Offset - 0xF7FF6881 - Golgoil
//Offset - 0xF7FF664D - Gorgon Egg
//Offset - 0xF7FF632D - Grappler
//Offset - 0xF7FF63A9 - Graveyard and the Hand of Invitation
//Offset - 0xF7FF6B75 - Great Bill
//Offset - 0xF7FF62E9 - Great White
//Offset - 0xF7FF6641 - Green Phantom King
//Offset - 0xF7FF62B1 - Griffore
//Offset - 0xF7FF6645 - Ground Attacker Bugroth
//Offset - 0xF7FF6C11 - Gruesome Goo
//Offset - 0xF7FF65A9 - Guardian of the Labyrinth
//Offset - 0xF7FF69FD - Guardian of the Throne Room
//Offset - 0xF7FF6361 - Gyakutenno Megami
//Offset - 0xF7FF6469 - Hard Armor
//Offset - 0xF7FF7379 - Headless Knight
//Offset - 0xF7FF62C9 - Hercules Beetle
//Offset - 0xF7FF63B1 - Hero of the East
//Offset - 0xF7FF6C1D - Hibikime
//Offset - 0xF7FF6BB9 - High Tide Gyojin
//Offset - 0xF7FF6541 - Hinotama Soul
//Offset - 0xF7FF6585 - Hitodenchak
//Offset - 0xF7FF6205 - Hitotsu-Me Giant
//Offset - 0xF7FF6665 - Holograh
//Offset - 0xF7FF625D - Horn Imp
//Offset - 0xF7FF658D - Hourglass of Life
//Offset - 0xF7FF6B91 - Hunter Spider
//Offset - 0xF7FF64B1 - Hurricail
//Offset - 0xF7FF65E1 - Hyo
//Offset - 0xF7FF6C15 - Hyosube
//Offset - 0xF7FF6D39 - Hyozanryu
//Offset - 0xF7FF68B5 - Ice Water
//Offset - 0xF7FF6BB1 - Ill Witch
//Offset - 0xF7FF62A1 - Illusionist Faceless Mage
//Offset - 0xF7FF6315 - Jellyfish
//Offset - 0xF7FF6395 - Job-Change Mirror
//Offset - 0xF7FF627D - Judge Man
//Offset - 0xF7FF7749 - Kabazauls
//Offset - 0xF7FF63A5 - Kageningen
//Offset - 0xF7FF631D - Kairyu-Shin
//Offset - 0xF7FF6A55 - Kamakiriman
//Offset - 0xF7FF6779 - Kanan the Swordmistress
//Offset - 0xF7FF6901 - Kappa Avenger
//Offset - 0xF7FF69C5 - Kattapillar
//Offset - 0xF7FF6B59 - Key Mace #2
//Offset - 0xF7FF62CD - Killer Needle
//Offset - 0xF7FF6655 - King Fog
//Offset - 0xF7FF634D - King of Yamimakai
//Offset - 0xF7FF6301 - Kojikocy
//Offset - 0xF7FF698D - Korogashi
//Offset - 0xF7FF6275 - Koumori Dragon
//Offset - 0xF7FF6329 - Krokodilus
//Offset - 0xF7FF656D - Kumootoko
//Offset - 0xF7FF66A9 - Kurama
//Offset - 0xF7FF6979 - Kuwagata a
//Offset - 0xF7FF64F5 - LaLa Li-Oon
//Offset - 0xF7FF63F9 - LaMoon
//Offset - 0xF7FF6465 - Larvas
//Offset - 0xF7FF69F1 - Laughing Flower
//Offset - 0xF7FF6811 - Launcher Spider
//Offset - 0xF7FF6B01 - Leo Wizard
//Offset - 0xF7FF6845 - Leogun
//Offset - 0xF7FF6ABD - Lesser Dragon
//Offset - 0xF7FF71AD - Lightning Conger
//Offset - 0xF7FF6B6D - Liquid Beast
//Offset - 0xF7FF6485 - Lisark
//Offset - 0xF7FF6AED - Little D
//Offset - 0xF7FF6B29 - Living Vase
//Offset - 0xF7FF7515 - Lizard Soldier
//Offset - 0xF7FF644D - Lord of the Lamp
//Offset - 0xF7FF6489 - Lord of Zemia
//Offset - 0xF7FF64D5 - Lucky Trinket
//Offset - 0xF7FF6479 - M-Warrior #1
//Offset - 0xF7FF647D - M-Warrior #2
//Offset - 0xF7FF6529 - Mabarrel
//Offset - 0xF7FF6C19 - Machine Attacker
//Offset - 0xF7FF6599 - Madjinn Gunn
//Offset - 0xF7FF6951 - Magical Ghost
//Offset - 0xF7FF62E5 - Mammoth Graveyard
//Offset - 0xF7FF6471 - Man Eater
//Offset - 0xF7FF6325 - Man-Eating Plant
//Offset - 0xF7FF6F0D - Man-Eating Treasure Chest
//Offset - 0xF7FF668D - Masaki The Legendary Swordsman
//Offset - 0xF7FF64D1 - Masked Clown
//Offset - 0xF7FF65D9 - Master & Expert
//Offset - 0xF7FF68DD - Mech Bass
//Offset - 0xF7FF650D - Mech Mole Zombie
//Offset - 0xF7FF6A59 - Mechaleon
//Offset - 0xF7FF6B1D - Mechanical Snail
//Offset - 0xF7FF65CD - Meda Bat
//Offset - 0xF7FF6A5D - Mega Thunderball
//Offset - 0xF7FF6785 - Megasonic Eye
//Offset - 0xF7FF6335 - Megazowler
//Offset - 0xF7FF6635 - Megirus Light
//Offset - 0xF7FF6549 - Meotoko
//Offset - 0xF7FF68D1 - Metal Fish
//Offset - 0xF7FF6359 - Metal Guardian
//Offset - 0xF7FF6CE1 - Meteor Dragon
//Offset - 0xF7FF6571 - Midnight Fiend
//Offset - 0xF7FF6CDD - Mikazukinoyaiba
//Offset - 0xF7FF690D - Millennium Golem
//Offset - 0xF7FF6919 - Minomushi Warrior
//Offset - 0xF7FF6A71 - Misairuzame
//Offset - 0xF7FF7135 - Molten Behemoth
//Offset - 0xF7FF6B25 - Mon Larvas
//Offset - 0xF7FF6445 - Monster Egg
//Offset - 0xF7FF67D9 - Monster Tamer
//Offset - 0xF7FF6A21 - Monstrous Bird
//Offset - 0xF7FF64BD - Monsturtle
//Offset - 0xF7FF6681 - Moon Envoy
//Offset - 0xF7FF626D - Mountain Warrior
//Offset - 0xF7FF7075 - Mr.Volcano
//Offset - 0xF7FF6B39 - Muse-A
//Offset - 0xF7FF641D - Mystery Hand
//Offset - 0xF7FF665D - Mystic Clown
//Offset - 0xF7FF6365 - Mystic Horseman
//Offset - 0xF7FF6411 - Mystical Capture Chain
//Offset - 0xF7FF6661 - Mystical Sheep #2
//Offset - 0xF7FF6A31 - Neck Hunter
//Offset - 0xF7FF6435 - Necrolancer the Timelord
//Offset - 0xF7FF65E9 - Nekogal #1
//Offset - 0xF7FF6BC5 - Nekogal #2
//Offset - 0xF7FF63FD - Nemuriko
//Offset - 0xF7FF6F05 - Neo the Magic Swordsman
//Offset - 0xF7FF6BE1 - Night Lizard
//Offset - 0xF7FF63C9 - Nightmare Scorpion
//Offset - 0xF7FF6A61 - Niwatori
//Offset - 0xF7FF6B69 - Obese Marmot of Nefariousness
//Offset - 0xF7FF6405 - Octoberser
//Offset - 0xF7FF6829 - Ocubeam
//Offset - 0xF7FF6675 - Ogre of the Black Shadow
//Offset - 0xF7FF65D1 - One Who Hunts Souls
//Offset - 0xF7FF6699 - One-Eyed Shield Dragon
//Offset - 0xF7FF63F1 - Orion the Battle King
//Offset - 0xF7FF6B4D - Pale Beast
//Offset - 0xF7FF67F5 - Parrot Dragon
//Offset - 0xF7FF69A5 - Peacock
//Offset - 0xF7FF6809 - Pendulum Machine
//Offset - 0xF7FF6539 - Petit Angel
//Offset - 0xF7FF64C5 - Phantom Dewan
//Offset - 0xF7FF6525 - Phantom Ghost
//Offset - 0xF7FF6659 - Protector of the Throne
//Offset - 0xF7FF6689 - Psychic Kappa
//Offset - 0xF7FF6949 - Queen Bird
//Offset - 0xF7FF6BF1 - Queen of Autumn Leaves
//Offset - 0xF7FF69B1 - Rainbow Marine Mermaid
//Offset - 0xF7FF6649 - Ray & Temperature
//Offset - 0xF7FF6D09 - Red Archery Girl
//Offset - 0xF7FF6455 - Rhaimundos of the Red Sword
//Offset - 0xF7FF6269 - Rock Ogre Grotto #1
//Offset - 0xF7FF6615 - Rock Ogre Grotto #2
//Offset - 0xF7FF6BA5 - Rock Spirit
//Offset - 0xF7FF62A9 - Rogue Doll
//Offset - 0xF7FF65D5 - Root Water
//Offset - 0xF7FF6C0D - Royal Guard
//Offset - 0xF7FF67F1 - Rude Kaiser
//Offset - 0xF7FF620D - Ryu-Kishin
//Offset - 0xF7FF67DD - Ryu-Kishin Powered
//Offset - 0xF7FF6D0D - Ryu-Ran
//Offset - 0xF7FF684D - Saber Slasher
//Offset - 0xF7FF6281 - Saggi the Dark Clown
//Offset - 0xF7FF6A0D - Sand Stone
//Offset - 0xF7FF728D - Science Soldier
//Offset - 0xF7FF6961 - Sea Kamen
//Offset - 0xF7FF68E5 - Sea King Dragon
//Offset - 0xF7FF6629 - Sectarian of Secrets
//Offset - 0xF7FF6791 - Seiyaryu
//Offset - 0xF7FF68ED - Sentinel of the Seas
//Offset - 0xF7FF666D - Serpent Marauder
//Offset - 0xF7FF6CC9 - Serpent Night Dragon
//Offset - 0xF7FF7159 - Shapesnatch
//Offset - 0xF7FF6B79 - Shining Friendship
//Offset - 0xF7FF6871 - Shovel Crusher
//Offset - 0xF7FF62FD - Silver Fang
//Offset - 0xF7FF7279 - Skull Mariner
//Offset - 0xF7FF6941 - Skull Red Bird
//Offset - 0xF7FF6581 - Skull Stalker
//Offset - 0xF7FF6899 - Sky Dragon
//Offset - 0xF7FF63DD - Sleeping Lion
//Offset - 0xF7FF6D05 - Slot Machine
//Offset - 0xF7FF6BA9 - Snakeyashi
//Offset - 0xF7FF6565 - Solitude
//Offset - 0xF7FF6F11 - Sorcerer of the Doomed
//Offset - 0xF7FF7151 - Souleater
//Offset - 0xF7FF7291 - Souls of the Forgotten
//Offset - 0xF7FF71B1 - Spherous Lady
//Offset - 0xF7FF68F9 - Spike Seadra
//Offset - 0xF7FF6DBD - Spikebot
//Offset - 0xF7FF642D - Spiked Snail
//Offset - 0xF7FF63CD - Spirit of the Books
//Offset - 0xF7FF6A2D - Spirit of the Mountain
//Offset - 0xF7FF63A1 - Spirit of the Winds
//Offset - 0xF7FF6AAD - Steel Ogre Grotto #1
//Offset - 0xF7FF6D31 - Steel Ogre Grotto #2
//Offset - 0xF7FF65FD - Stone Armadiller
//Offset - 0xF7FF68A1 - Stone Dragon
//Offset - 0xF7FF691D - Stone Ghost
//Offset - 0xF7FF6BD9 - Stone Ogre Grotto
//Offset - 0xF7FF6781 - Stuffed Animal
//Offset - 0xF7FF6BAD - Succubus Knight
//Offset - 0xF7FF63D1 - Supporter in the Shadows
//Offset - 0xF7FF6225 - Sword Arm of Dragon
//Offset - 0xF7FF6D75 - Swordsman of Landstar
//Offset - 0xF7FF67E1 - Swordstalker
//Offset - 0xF7FF64E9 - Synchar
//Offset - 0xF7FF677D - Takriminos
//Offset - 0xF7FF6B0D - Takuhee
//Offset - 0xF7FF6669 - Tao the Chanter
//Offset - 0xF7FF6849 - Tatsunootoshigo
//Offset - 0xF7FF6441 - Temple of Skulls
//Offset - 0xF7FF6B5D - Tenderness
//Offset - 0xF7FF6B2D - Tentacle Plant
//Offset - 0xF7FF6501 - Terra the Terrible
//Offset - 0xF7FF63B9 - That Which Feeds on Life
//Offset - 0xF7FF6409 - The 13th Grave
//Offset - 0xF7FF727D - The All-Seeing White Tiger
//Offset - 0xF7FF643D - The Bewitching Phantom Thief
//Offset - 0xF7FF65B9 - The Drdek
//Offset - 0xF7FF7395 - The Earl of Demise
//Offset - 0xF7FF661D - The Furious Sea King
//Offset - 0xF7FF710D - The Illusory Gentleman
//Offset - 0xF7FF648D - The Judgement Hand
//Offset - 0xF7FF6459 - The Melting Red Shadow
//Offset - 0xF7FF7371 - The Portrait's Secret
//Offset - 0xF7FF6449 - The Shadow Who Controls the Dark
//Offset - 0xF7FF6289 - The Snake Hair
//Offset - 0xF7FF6BB5 - The Thing That Hides in the Mud
//Offset - 0xF7FF6AA9 - The Wandering Doomed
//Offset - 0xF7FF6D59 - Three-Headed Geedo
//Offset - 0xF7FF6795 - Three-Legged Zombies
//Offset - 0xF7FF6545 - Thunder Kid
//Offset - 0xF7FF62F9 - Tiger Axe
//Offset - 0xF7FF6429 - Toad Master
//Offset - 0xF7FF6A39 - Togex
//Offset - 0xF7FF639D - Tomozaurus
//Offset - 0xF7FF6A75 - Tongyo
//Offset - 0xF7FF67ED - Toon Alligator
//Offset - 0xF7FF62B5 - Torike
//Offset - 0xF7FF6AE1 - Trakodon
//Offset - 0xF7FF6BED - Trent
//Offset - 0xF7FF63D5 - Trial of Nightmare
//Offset - 0xF7FF6925 - Tripwire Beast
//Offset - 0xF7FF6A19 - Turtle Bird
//Offset - 0xF7FF69D5 - Turtle Raccoon
//Offset - 0xF7FF64FD - Turtle Tiger
//Offset - 0xF7FF68E9 - Turu-Purun
//Offset - 0xF7FF6531 - Twin Long Rods #1
//Offset - 0xF7FF6B71 - Twin Long Rods #2
//Offset - 0xF7FF706D - Twin-Headed Fire Dragon
//Offset - 0xF7FF6279 - Two-Headed King Rex
//Offset - 0xF7FF6561 - Two-Mouth Darkruler
//Offset - 0xF7FF6AA5 - Tyhone #2
//Offset - 0xF7FF6625 - Unknown Warrior of Fiend
//Offset - 0xF7FF6339 - Uraby
//Offset - 0xF7FF683D - Ushi Oni
//Offset - 0xF7FF6B55 - Violent Rain
//Offset - 0xF7FF65B5 - Vishwar Randi
//Offset - 0xF7FF65C5 - Water Element
//Offset - 0xF7FF68C5 - Water Girl
//Offset - 0xF7FF68B1 - Water Magician
//Offset - 0xF7FF65DD - Water Omotics
//Offset - 0xF7FF68B9 - Waterdragon Fairy
//Offset - 0xF7FF6401 - Weather Control
//Offset - 0xF7FF6631 - Wetha
//Offset - 0xF7FF6C21 - Whiptail Crow
//Offset - 0xF7FF68C9 - White Dolphin
//Offset - 0xF7FF66A1 - Wicked Dragon with the Ersatz Head
//Offset - 0xF7FF69B9 - Wilmee
//Offset - 0xF7FF6939 - Wing Eagle
//Offset - 0xF7FF6619 - Wing Egg Elf
//Offset - 0xF7FF653D - Winged Cleaver
//Offset - 0xF7FF6215 - Winged Dragon, Guardian of the Fortress #1
//Offset - 0xF7FF6A99 - Winged Dragon, Guardian of the Fortress #2
//Offset - 0xF7FF6BDD - Winged Egg of New Life
//Offset - 0xF7FF638D - Wings of Wicked Flame
//Offset - 0xF7FF6419 - Witty Phantom
//Offset - 0xF7FF62ED - Wolf
//Offset - 0xF7FF7109 - Wolf Axwielder
//Offset - 0xF7FF6595 - Wood Clown
//Offset - 0xF7FF6589 - Wood Remains
//Offset - 0xF7FF7189 - Worm Drake
//Offset - 0xF7FF6A81 - Wow Warrior
//Offset - 0xF7FF6AC5 - Wretched Ghost of the Attic
//Offset - 0xF7FF6851 - Yaiba Robo
//Offset - 0xF7FF678D - Yamadron
//Offset - 0xF7FF63E1 - Yamatano Dragon Scroll
//Offset - 0xF7FF6775 - Yaranzo
//Offset - 0xF7FF65B1 - Yashinoki
//Offset - 0xF7FF6AD1 - Yormungarde
//Offset - 0xF7FF636D - Zanki
//Offset - 0xF7FF6909 - Zarigun

function wonder_in_simplicity() => byte(0xF7FF68FD+dword(0xe7b054))/byte(0xF7FF68FD)+byte(0xF7FF6B05+dword(0xe7b054))/byte(0xF7FF6B05)+
                                   byte(0xF7FF6BF9+dword(0xe7b054))/byte(0xF7FF6BF9)+byte(0xF7FF6959+dword(0xe7b054))/byte(0xF7FF6959)+
                                   byte(0xF7FF64F1+dword(0xe7b054))/byte(0xF7FF64F1)+byte(0xF7FF6451+dword(0xe7b054))/byte(0xF7FF6451)+
                                   byte(0xF7FF696D+dword(0xe7b054))/byte(0xF7FF696D)+byte(0xF7FF6D91+dword(0xe7b054))/byte(0xF7FF6D91)+
                                   byte(0xF7FF6BC1+dword(0xe7b054))/byte(0xF7FF6BC1)+byte(0xF7FF64B5+dword(0xe7b054))/byte(0xF7FF64B5)+
                                   byte(0xF7FF68BD+dword(0xe7b054))/byte(0xF7FF68BD)+byte(0xF7FF6BD1+dword(0xe7b054))/byte(0xF7FF6BD1)+
                                   byte(0xF7FF6AF5+dword(0xe7b054))/byte(0xF7FF6AF5)+byte(0xF7FF6605+dword(0xe7b054))/byte(0xF7FF6605)+
                                   byte(0xF7FF63E9+dword(0xe7b054))/byte(0xF7FF63E9)+byte(0xF7FF663D+dword(0xe7b054))/byte(0xF7FF663D)+
                                   byte(0xF7FF63F5+dword(0xe7b054))/byte(0xF7FF63F5)+byte(0xF7FF6AD9+dword(0xe7b054))/byte(0xF7FF6AD9)+
                                   byte(0xF7FF68F1+dword(0xe7b054))/byte(0xF7FF68F1)+byte(0xF7FF660D+dword(0xe7b054))/byte(0xF7FF660D)+
                                   byte(0xF7FF64C9+dword(0xe7b054))/byte(0xF7FF64C9)+byte(0xF7FF6509+dword(0xe7b054))/byte(0xF7FF6509)+
                                   byte(0xF7FF64A9+dword(0xe7b054))/byte(0xF7FF64A9)+byte(0xF7FF62C5+dword(0xe7b054))/byte(0xF7FF62C5)+
                                   byte(0xF7FF6BCD+dword(0xe7b054))/byte(0xF7FF6BCD)+byte(0xF7FF6B95+dword(0xe7b054))/byte(0xF7FF6B95)+
                                   byte(0xF7FF6379+dword(0xe7b054))/byte(0xF7FF6379)+byte(0xF7FF6331+dword(0xe7b054))/byte(0xF7FF6331)+
                                   byte(0xF7FF6AE5+dword(0xe7b054))/byte(0xF7FF6AE5)+byte(0xF7FF6209+dword(0xe7b054))/byte(0xF7FF6209)+
                                   byte(0xF7FF6F09+dword(0xe7b054))/byte(0xF7FF6F09)+byte(0xF7FF699D+dword(0xe7b054))/byte(0xF7FF699D)+
                                   byte(0xF7FF6915+dword(0xe7b054))/byte(0xF7FF6915)+byte(0xF7FF62C1+dword(0xe7b054))/byte(0xF7FF62C1)+
                                   byte(0xF7FF6865+dword(0xe7b054))/byte(0xF7FF6865)+byte(0xF7FF6261+dword(0xe7b054))/byte(0xF7FF6261)+
                                   byte(0xF7FF6231+dword(0xe7b054))/byte(0xF7FF6231)+byte(0xF7FF6389+dword(0xe7b054))/byte(0xF7FF6389)+
                                   byte(0xF7FF6B31+dword(0xe7b054))/byte(0xF7FF6B31)+byte(0xF7FF69F5+dword(0xe7b054))/byte(0xF7FF69F5)+
                                   byte(0xF7FF68C1+dword(0xe7b054))/byte(0xF7FF68C1)+byte(0xF7FF6265+dword(0xe7b054))/byte(0xF7FF6265)+
                                   byte(0xF7FF6A91+dword(0xe7b054))/byte(0xF7FF6A91)+byte(0xF7FF62BD+dword(0xe7b054))/byte(0xF7FF62BD)+
                                   byte(0xF7FF6B19+dword(0xe7b054))/byte(0xF7FF6B19)+byte(0xF7FF6695+dword(0xe7b054))/byte(0xF7FF6695)+
                                   byte(0xF7FF7341+dword(0xe7b054))/byte(0xF7FF7341)+byte(0xF7FF6221+dword(0xe7b054))/byte(0xF7FF6221)+
                                   byte(0xF7FF6425+dword(0xe7b054))/byte(0xF7FF6425)+byte(0xF7FF6BE9+dword(0xe7b054))/byte(0xF7FF6BE9)+
                                   byte(0xF7FF6929+dword(0xe7b054))/byte(0xF7FF6929)+byte(0xF7FF692D+dword(0xe7b054))/byte(0xF7FF692D)+
                                   byte(0xF7FF6A89+dword(0xe7b054))/byte(0xF7FF6A89)+byte(0xF7FF7175+dword(0xe7b054))/byte(0xF7FF7175)+
                                   byte(0xF7FF6991+dword(0xe7b054))/byte(0xF7FF6991)+byte(0xF7FF68D5+dword(0xe7b054))/byte(0xF7FF68D5)+
                                   byte(0xF7FF6A11+dword(0xe7b054))/byte(0xF7FF6A11)+byte(0xF7FF6A01+dword(0xe7b054))/byte(0xF7FF6A01)+
                                   byte(0xF7FF697D+dword(0xe7b054))/byte(0xF7FF697D)+byte(0xF7FF65C1+dword(0xe7b054))/byte(0xF7FF65C1)+
                                   byte(0xF7FF629D+dword(0xe7b054))/byte(0xF7FF629D)+byte(0xF7FF667D+dword(0xe7b054))/byte(0xF7FF667D)+
                                   byte(0xF7FF64C1+dword(0xe7b054))/byte(0xF7FF64C1)+byte(0xF7FF6A65+dword(0xe7b054))/byte(0xF7FF6A65)+
                                   byte(0xF7FF6371+dword(0xe7b054))/byte(0xF7FF6371)+byte(0xF7FF633D+dword(0xe7b054))/byte(0xF7FF633D)+
                                   byte(0xF7FF69E5+dword(0xe7b054))/byte(0xF7FF69E5)+byte(0xF7FF6AFD+dword(0xe7b054))/byte(0xF7FF6AFD)+
                                   byte(0xF7FF6399+dword(0xe7b054))/byte(0xF7FF6399)+byte(0xF7FF7081+dword(0xe7b054))/byte(0xF7FF7081)+
                                   byte(0xF7FF686D+dword(0xe7b054))/byte(0xF7FF686D)+byte(0xF7FF669D+dword(0xe7b054))/byte(0xF7FF669D)+
                                   byte(0xF7FF69D1+dword(0xe7b054))/byte(0xF7FF69D1)+byte(0xF7FF65BD+dword(0xe7b054))/byte(0xF7FF65BD)+
                                   byte(0xF7FF7085+dword(0xe7b054))/byte(0xF7FF7085)+byte(0xF7FF6355+dword(0xe7b054))/byte(0xF7FF6355)+
                                   byte(0xF7FF63BD+dword(0xe7b054))/byte(0xF7FF63BD)+byte(0xF7FF649D+dword(0xe7b054))/byte(0xF7FF649D)+
                                   byte(0xF7FF63E5+dword(0xe7b054))/byte(0xF7FF63E5)+byte(0xF7FF64AD+dword(0xe7b054))/byte(0xF7FF64AD)+
                                   byte(0xF7FF67F9+dword(0xe7b054))/byte(0xF7FF67F9)+byte(0xF7FF64CD+dword(0xe7b054))/byte(0xF7FF64CD)+
                                   byte(0xF7FF659D+dword(0xe7b054))/byte(0xF7FF659D)+byte(0xF7FF6B11+dword(0xe7b054))/byte(0xF7FF6B11)+
                                   byte(0xF7FF7071+dword(0xe7b054))/byte(0xF7FF7071)+byte(0xF7FF7079+dword(0xe7b054))/byte(0xF7FF7079)+
                                   byte(0xF7FF6AD5+dword(0xe7b054))/byte(0xF7FF6AD5)+byte(0xF7FF6911+dword(0xe7b054))/byte(0xF7FF6911)+
                                   byte(0xF7FF6A79+dword(0xe7b054))/byte(0xF7FF6A79)+byte(0xF7FF6895+dword(0xe7b054))/byte(0xF7FF6895)+
                                   byte(0xF7FF6475+dword(0xe7b054))/byte(0xF7FF6475)+byte(0xF7FF6C05+dword(0xe7b054))/byte(0xF7FF6C05)+
                                   byte(0xF7FF65C9+dword(0xe7b054))/byte(0xF7FF65C9)+byte(0xF7FF6439+dword(0xe7b054))/byte(0xF7FF6439)+
                                   byte(0xF7FF645D+dword(0xe7b054))/byte(0xF7FF645D)+byte(0xF7FF7295+dword(0xe7b054))/byte(0xF7FF7295)+
                                   byte(0xF7FF63B5+dword(0xe7b054))/byte(0xF7FF63B5)+byte(0xF7FF6505+dword(0xe7b054))/byte(0xF7FF6505)+
                                   byte(0xF7FF652D+dword(0xe7b054))/byte(0xF7FF652D)+byte(0xF7FF6421+dword(0xe7b054))/byte(0xF7FF6421)+
                                   byte(0xF7FF637D+dword(0xe7b054))/byte(0xF7FF637D)+byte(0xF7FF6535+dword(0xe7b054))/byte(0xF7FF6535)+
                                   byte(0xF7FF6ADD+dword(0xe7b054))/byte(0xF7FF6ADD)+byte(0xF7FF67D5+dword(0xe7b054))/byte(0xF7FF67D5)+
                                   byte(0xF7FF6A41+dword(0xe7b054))/byte(0xF7FF6A41)+byte(0xF7FF65F1+dword(0xe7b054))/byte(0xF7FF65F1)+
                                   byte(0xF7FF6839+dword(0xe7b054))/byte(0xF7FF6839)+byte(0xF7FF7335+dword(0xe7b054))/byte(0xF7FF7335)+
                                   byte(0xF7FF65E5+dword(0xe7b054))/byte(0xF7FF65E5)+byte(0xF7FF64DD+dword(0xe7b054))/byte(0xF7FF64DD)+
                                   byte(0xF7FF6B65+dword(0xe7b054))/byte(0xF7FF6B65)+byte(0xF7FF6BBD+dword(0xe7b054))/byte(0xF7FF6BBD)+
                                   byte(0xF7FF67A5+dword(0xe7b054))/byte(0xF7FF67A5)+byte(0xF7FF65ED+dword(0xe7b054))/byte(0xF7FF65ED)+
                                   byte(0xF7FF63ED+dword(0xe7b054))/byte(0xF7FF63ED)+byte(0xF7FF6211+dword(0xe7b054))/byte(0xF7FF6211)+
                                   byte(0xF7FF6311+dword(0xe7b054))/byte(0xF7FF6311)+byte(0xF7FF6B45+dword(0xe7b054))/byte(0xF7FF6B45)+
                                   byte(0xF7FF64E1+dword(0xe7b054))/byte(0xF7FF64E1)+byte(0xF7FF7E2D+dword(0xe7b054))/byte(0xF7FF7E2D)+
                                   byte(0xF7FF657D+dword(0xe7b054))/byte(0xF7FF657D)+byte(0xF7FF6415+dword(0xe7b054))/byte(0xF7FF6415)+
                                   byte(0xF7FF64B9+dword(0xe7b054))/byte(0xF7FF64B9)+byte(0xF7FF6A15+dword(0xe7b054))/byte(0xF7FF6A15)+
                                   byte(0xF7FF6461+dword(0xe7b054))/byte(0xF7FF6461)+byte(0xF7FF646D+dword(0xe7b054))/byte(0xF7FF646D)+
                                   byte(0xF7FF6CE9+dword(0xe7b054))/byte(0xF7FF6CE9)+byte(0xF7FF6685+dword(0xe7b054))/byte(0xF7FF6685)+
                                   byte(0xF7FF6A3D+dword(0xe7b054))/byte(0xF7FF6A3D)+byte(0xF7FF7069+dword(0xe7b054))/byte(0xF7FF7069)+
                                   byte(0xF7FF7179+dword(0xe7b054))/byte(0xF7FF7179)+byte(0xF7FF6431+dword(0xe7b054))/byte(0xF7FF6431)+
                                   byte(0xF7FF6C09+dword(0xe7b054))/byte(0xF7FF6C09)+byte(0xF7FF7195+dword(0xe7b054))/byte(0xF7FF7195)+
                                   byte(0xF7FF7089+dword(0xe7b054))/byte(0xF7FF7089)+byte(0xF7FF679D+dword(0xe7b054))/byte(0xF7FF679D)+
                                   byte(0xF7FF651D+dword(0xe7b054))/byte(0xF7FF651D)+byte(0xF7FF69D9+dword(0xe7b054))/byte(0xF7FF69D9)+
                                   byte(0xF7FF6969+dword(0xe7b054))/byte(0xF7FF6969)+byte(0xF7FF6DCD+dword(0xe7b054))/byte(0xF7FF6DCD)+
                                   byte(0xF7FF6309+dword(0xe7b054))/byte(0xF7FF6309)+byte(0xF7FF6985+dword(0xe7b054))/byte(0xF7FF6985)+
                                   byte(0xF7FF64E5+dword(0xe7b054))/byte(0xF7FF64E5)+byte(0xF7FF6671+dword(0xe7b054))/byte(0xF7FF6671)+
                                   byte(0xF7FF64D9+dword(0xe7b054))/byte(0xF7FF64D9)+byte(0xF7FF6B49+dword(0xe7b054))/byte(0xF7FF6B49)+
                                   byte(0xF7FF62D5+dword(0xe7b054))/byte(0xF7FF62D5)+byte(0xF7FF6859+dword(0xe7b054))/byte(0xF7FF6859)+
                                   byte(0xF7FF6AF9+dword(0xe7b054))/byte(0xF7FF6AF9)+byte(0xF7FF6B3D+dword(0xe7b054))/byte(0xF7FF6B3D)+
                                   byte(0xF7FF6869+dword(0xe7b054))/byte(0xF7FF6869)+byte(0xF7FF6885+dword(0xe7b054))/byte(0xF7FF6885)+
                                   byte(0xF7FF725D+dword(0xe7b054))/byte(0xF7FF725D)+byte(0xF7FF62D1+dword(0xe7b054))/byte(0xF7FF62D1)+
                                   byte(0xF7FF6881+dword(0xe7b054))/byte(0xF7FF6881)+byte(0xF7FF664D+dword(0xe7b054))/byte(0xF7FF664D)+
                                   byte(0xF7FF632D+dword(0xe7b054))/byte(0xF7FF632D)+byte(0xF7FF63A9+dword(0xe7b054))/byte(0xF7FF63A9)+
                                   byte(0xF7FF6B75+dword(0xe7b054))/byte(0xF7FF6B75)+byte(0xF7FF62E9+dword(0xe7b054))/byte(0xF7FF62E9)+
                                   byte(0xF7FF6641+dword(0xe7b054))/byte(0xF7FF6641)+byte(0xF7FF62B1+dword(0xe7b054))/byte(0xF7FF62B1)+
                                   byte(0xF7FF6645+dword(0xe7b054))/byte(0xF7FF6645)+byte(0xF7FF6C11+dword(0xe7b054))/byte(0xF7FF6C11)+
                                   byte(0xF7FF65A9+dword(0xe7b054))/byte(0xF7FF65A9)+byte(0xF7FF69FD+dword(0xe7b054))/byte(0xF7FF69FD)+
                                   byte(0xF7FF6361+dword(0xe7b054))/byte(0xF7FF6361)+byte(0xF7FF6469+dword(0xe7b054))/byte(0xF7FF6469)+
                                   byte(0xF7FF7379+dword(0xe7b054))/byte(0xF7FF7379)+byte(0xF7FF62C9+dword(0xe7b054))/byte(0xF7FF62C9)+
                                   byte(0xF7FF63B1+dword(0xe7b054))/byte(0xF7FF63B1)+byte(0xF7FF6C1D+dword(0xe7b054))/byte(0xF7FF6C1D)+
                                   byte(0xF7FF6BB9+dword(0xe7b054))/byte(0xF7FF6BB9)+byte(0xF7FF6541+dword(0xe7b054))/byte(0xF7FF6541)+
                                   byte(0xF7FF6585+dword(0xe7b054))/byte(0xF7FF6585)+byte(0xF7FF6205+dword(0xe7b054))/byte(0xF7FF6205)+
                                   byte(0xF7FF6665+dword(0xe7b054))/byte(0xF7FF6665)+byte(0xF7FF625D+dword(0xe7b054))/byte(0xF7FF625D)+
                                   byte(0xF7FF658D+dword(0xe7b054))/byte(0xF7FF658D)+byte(0xF7FF6B91+dword(0xe7b054))/byte(0xF7FF6B91)+
                                   byte(0xF7FF64B1+dword(0xe7b054))/byte(0xF7FF64B1)+byte(0xF7FF65E1+dword(0xe7b054))/byte(0xF7FF65E1)+
                                   byte(0xF7FF6C15+dword(0xe7b054))/byte(0xF7FF6C15)+byte(0xF7FF6D39+dword(0xe7b054))/byte(0xF7FF6D39)+
                                   byte(0xF7FF68B5+dword(0xe7b054))/byte(0xF7FF68B5)+byte(0xF7FF6BB1+dword(0xe7b054))/byte(0xF7FF6BB1)+
                                   byte(0xF7FF62A1+dword(0xe7b054))/byte(0xF7FF62A1)+byte(0xF7FF6315+dword(0xe7b054))/byte(0xF7FF6315)+
                                   byte(0xF7FF6395+dword(0xe7b054))/byte(0xF7FF6395)+byte(0xF7FF627D+dword(0xe7b054))/byte(0xF7FF627D)+
                                   byte(0xF7FF7749+dword(0xe7b054))/byte(0xF7FF7749)+byte(0xF7FF63A5+dword(0xe7b054))/byte(0xF7FF63A5)+
                                   byte(0xF7FF631D+dword(0xe7b054))/byte(0xF7FF631D)+byte(0xF7FF6A55+dword(0xe7b054))/byte(0xF7FF6A55)+
                                   byte(0xF7FF6779+dword(0xe7b054))/byte(0xF7FF6779)+byte(0xF7FF6901+dword(0xe7b054))/byte(0xF7FF6901)+
                                   byte(0xF7FF69C5+dword(0xe7b054))/byte(0xF7FF69C5)+byte(0xF7FF6B59+dword(0xe7b054))/byte(0xF7FF6B59)+
                                   byte(0xF7FF62CD+dword(0xe7b054))/byte(0xF7FF62CD)+byte(0xF7FF6655+dword(0xe7b054))/byte(0xF7FF6655)+
                                   byte(0xF7FF634D+dword(0xe7b054))/byte(0xF7FF634D)+byte(0xF7FF6301+dword(0xe7b054))/byte(0xF7FF6301)+
                                   byte(0xF7FF698D+dword(0xe7b054))/byte(0xF7FF698D)+byte(0xF7FF6275+dword(0xe7b054))/byte(0xF7FF6275)+
                                   byte(0xF7FF6329+dword(0xe7b054))/byte(0xF7FF6329)+byte(0xF7FF656D+dword(0xe7b054))/byte(0xF7FF656D)+
                                   byte(0xF7FF66A9+dword(0xe7b054))/byte(0xF7FF66A9)+byte(0xF7FF6979+dword(0xe7b054))/byte(0xF7FF6979)+
                                   byte(0xF7FF64F5+dword(0xe7b054))/byte(0xF7FF64F5)+byte(0xF7FF63F9+dword(0xe7b054))/byte(0xF7FF63F9)+
                                   byte(0xF7FF6465+dword(0xe7b054))/byte(0xF7FF6465)+byte(0xF7FF69F1+dword(0xe7b054))/byte(0xF7FF69F1)+
                                   byte(0xF7FF6811+dword(0xe7b054))/byte(0xF7FF6811)+byte(0xF7FF6B01+dword(0xe7b054))/byte(0xF7FF6B01)+
                                   byte(0xF7FF6845+dword(0xe7b054))/byte(0xF7FF6845)+byte(0xF7FF6ABD+dword(0xe7b054))/byte(0xF7FF6ABD)+
                                   byte(0xF7FF71AD+dword(0xe7b054))/byte(0xF7FF71AD)+byte(0xF7FF6B6D+dword(0xe7b054))/byte(0xF7FF6B6D)+
                                   byte(0xF7FF6485+dword(0xe7b054))/byte(0xF7FF6485)+byte(0xF7FF6AED+dword(0xe7b054))/byte(0xF7FF6AED)+
                                   byte(0xF7FF6B29+dword(0xe7b054))/byte(0xF7FF6B29)+byte(0xF7FF7515+dword(0xe7b054))/byte(0xF7FF7515)+
                                   byte(0xF7FF644D+dword(0xe7b054))/byte(0xF7FF644D)+byte(0xF7FF6489+dword(0xe7b054))/byte(0xF7FF6489)+
                                   byte(0xF7FF64D5+dword(0xe7b054))/byte(0xF7FF64D5)+byte(0xF7FF6479+dword(0xe7b054))/byte(0xF7FF6479)+
                                   byte(0xF7FF647D+dword(0xe7b054))/byte(0xF7FF647D)+byte(0xF7FF6529+dword(0xe7b054))/byte(0xF7FF6529)+
                                   byte(0xF7FF6C19+dword(0xe7b054))/byte(0xF7FF6C19)+byte(0xF7FF6599+dword(0xe7b054))/byte(0xF7FF6599)+
                                   byte(0xF7FF6951+dword(0xe7b054))/byte(0xF7FF6951)+byte(0xF7FF62E5+dword(0xe7b054))/byte(0xF7FF62E5)+
                                   byte(0xF7FF6471+dword(0xe7b054))/byte(0xF7FF6471)+byte(0xF7FF6325+dword(0xe7b054))/byte(0xF7FF6325)+
                                   byte(0xF7FF6F0D+dword(0xe7b054))/byte(0xF7FF6F0D)+byte(0xF7FF668D+dword(0xe7b054))/byte(0xF7FF668D)+
                                   byte(0xF7FF64D1+dword(0xe7b054))/byte(0xF7FF64D1)+byte(0xF7FF65D9+dword(0xe7b054))/byte(0xF7FF65D9)+
                                   byte(0xF7FF68DD+dword(0xe7b054))/byte(0xF7FF68DD)+byte(0xF7FF650D+dword(0xe7b054))/byte(0xF7FF650D)+
                                   byte(0xF7FF6A59+dword(0xe7b054))/byte(0xF7FF6A59)+byte(0xF7FF6B1D+dword(0xe7b054))/byte(0xF7FF6B1D)+
                                   byte(0xF7FF65CD+dword(0xe7b054))/byte(0xF7FF65CD)+byte(0xF7FF6A5D+dword(0xe7b054))/byte(0xF7FF6A5D)+
                                   byte(0xF7FF6785+dword(0xe7b054))/byte(0xF7FF6785)+byte(0xF7FF6335+dword(0xe7b054))/byte(0xF7FF6335)+
                                   byte(0xF7FF6635+dword(0xe7b054))/byte(0xF7FF6635)+byte(0xF7FF6549+dword(0xe7b054))/byte(0xF7FF6549)+
                                   byte(0xF7FF68D1+dword(0xe7b054))/byte(0xF7FF68D1)+byte(0xF7FF6359+dword(0xe7b054))/byte(0xF7FF6359)+
                                   byte(0xF7FF6CE1+dword(0xe7b054))/byte(0xF7FF6CE1)+byte(0xF7FF6571+dword(0xe7b054))/byte(0xF7FF6571)+
                                   byte(0xF7FF6CDD+dword(0xe7b054))/byte(0xF7FF6CDD)+byte(0xF7FF690D+dword(0xe7b054))/byte(0xF7FF690D)+
                                   byte(0xF7FF6919+dword(0xe7b054))/byte(0xF7FF6919)+byte(0xF7FF6A71+dword(0xe7b054))/byte(0xF7FF6A71)+
                                   byte(0xF7FF7135+dword(0xe7b054))/byte(0xF7FF7135)+byte(0xF7FF6B25+dword(0xe7b054))/byte(0xF7FF6B25)+
                                   byte(0xF7FF6445+dword(0xe7b054))/byte(0xF7FF6445)+byte(0xF7FF67D9+dword(0xe7b054))/byte(0xF7FF67D9)+
                                   byte(0xF7FF6A21+dword(0xe7b054))/byte(0xF7FF6A21)+byte(0xF7FF64BD+dword(0xe7b054))/byte(0xF7FF64BD)+
                                   byte(0xF7FF6681+dword(0xe7b054))/byte(0xF7FF6681)+byte(0xF7FF626D+dword(0xe7b054))/byte(0xF7FF626D)+
                                   byte(0xF7FF7075+dword(0xe7b054))/byte(0xF7FF7075)+byte(0xF7FF6B39+dword(0xe7b054))/byte(0xF7FF6B39)+
                                   byte(0xF7FF641D+dword(0xe7b054))/byte(0xF7FF641D)+byte(0xF7FF665D+dword(0xe7b054))/byte(0xF7FF665D)+
                                   byte(0xF7FF6365+dword(0xe7b054))/byte(0xF7FF6365)+byte(0xF7FF6411+dword(0xe7b054))/byte(0xF7FF6411)+
                                   byte(0xF7FF6661+dword(0xe7b054))/byte(0xF7FF6661)+byte(0xF7FF6A31+dword(0xe7b054))/byte(0xF7FF6A31)+
                                   byte(0xF7FF6435+dword(0xe7b054))/byte(0xF7FF6435)+byte(0xF7FF65E9+dword(0xe7b054))/byte(0xF7FF65E9)+
                                   byte(0xF7FF6BC5+dword(0xe7b054))/byte(0xF7FF6BC5)+byte(0xF7FF63FD+dword(0xe7b054))/byte(0xF7FF63FD)+
                                   byte(0xF7FF6F05+dword(0xe7b054))/byte(0xF7FF6F05)+byte(0xF7FF6BE1+dword(0xe7b054))/byte(0xF7FF6BE1)+
                                   byte(0xF7FF63C9+dword(0xe7b054))/byte(0xF7FF63C9)+byte(0xF7FF6A61+dword(0xe7b054))/byte(0xF7FF6A61)+
                                   byte(0xF7FF6B69+dword(0xe7b054))/byte(0xF7FF6B69)+byte(0xF7FF6405+dword(0xe7b054))/byte(0xF7FF6405)+
                                   byte(0xF7FF6829+dword(0xe7b054))/byte(0xF7FF6829)+byte(0xF7FF6675+dword(0xe7b054))/byte(0xF7FF6675)+
                                   byte(0xF7FF65D1+dword(0xe7b054))/byte(0xF7FF65D1)+byte(0xF7FF6699+dword(0xe7b054))/byte(0xF7FF6699)+
                                   byte(0xF7FF63F1+dword(0xe7b054))/byte(0xF7FF63F1)+byte(0xF7FF6B4D+dword(0xe7b054))/byte(0xF7FF6B4D)+
                                   byte(0xF7FF67F5+dword(0xe7b054))/byte(0xF7FF67F5)+byte(0xF7FF69A5+dword(0xe7b054))/byte(0xF7FF69A5)+
                                   byte(0xF7FF6809+dword(0xe7b054))/byte(0xF7FF6809)+byte(0xF7FF6539+dword(0xe7b054))/byte(0xF7FF6539)+
                                   byte(0xF7FF64C5+dword(0xe7b054))/byte(0xF7FF64C5)+byte(0xF7FF6525+dword(0xe7b054))/byte(0xF7FF6525)+
                                   byte(0xF7FF6659+dword(0xe7b054))/byte(0xF7FF6659)+byte(0xF7FF6689+dword(0xe7b054))/byte(0xF7FF6689)+
                                   byte(0xF7FF6949+dword(0xe7b054))/byte(0xF7FF6949)+byte(0xF7FF6BF1+dword(0xe7b054))/byte(0xF7FF6BF1)+
                                   byte(0xF7FF69B1+dword(0xe7b054))/byte(0xF7FF69B1)+byte(0xF7FF6649+dword(0xe7b054))/byte(0xF7FF6649)+
                                   byte(0xF7FF6D09+dword(0xe7b054))/byte(0xF7FF6D09)+byte(0xF7FF6455+dword(0xe7b054))/byte(0xF7FF6455)+
                                   byte(0xF7FF6269+dword(0xe7b054))/byte(0xF7FF6269)+byte(0xF7FF6615+dword(0xe7b054))/byte(0xF7FF6615)+
                                   byte(0xF7FF6BA5+dword(0xe7b054))/byte(0xF7FF6BA5)+byte(0xF7FF62A9+dword(0xe7b054))/byte(0xF7FF62A9)+
                                   byte(0xF7FF65D5+dword(0xe7b054))/byte(0xF7FF65D5)+byte(0xF7FF6C0D+dword(0xe7b054))/byte(0xF7FF6C0D)+
                                   byte(0xF7FF67F1+dword(0xe7b054))/byte(0xF7FF67F1)+byte(0xF7FF620D+dword(0xe7b054))/byte(0xF7FF620D)+
                                   byte(0xF7FF67DD+dword(0xe7b054))/byte(0xF7FF67DD)+byte(0xF7FF6D0D+dword(0xe7b054))/byte(0xF7FF6D0D)+
                                   byte(0xF7FF684D+dword(0xe7b054))/byte(0xF7FF684D)+byte(0xF7FF6281+dword(0xe7b054))/byte(0xF7FF6281)+
                                   byte(0xF7FF6A0D+dword(0xe7b054))/byte(0xF7FF6A0D)+byte(0xF7FF728D+dword(0xe7b054))/byte(0xF7FF728D)+
                                   byte(0xF7FF6961+dword(0xe7b054))/byte(0xF7FF6961)+byte(0xF7FF68E5+dword(0xe7b054))/byte(0xF7FF68E5)+
                                   byte(0xF7FF6629+dword(0xe7b054))/byte(0xF7FF6629)+byte(0xF7FF6791+dword(0xe7b054))/byte(0xF7FF6791)+
                                   byte(0xF7FF68ED+dword(0xe7b054))/byte(0xF7FF68ED)+byte(0xF7FF666D+dword(0xe7b054))/byte(0xF7FF666D)+
                                   byte(0xF7FF6CC9+dword(0xe7b054))/byte(0xF7FF6CC9)+byte(0xF7FF7159+dword(0xe7b054))/byte(0xF7FF7159)+
                                   byte(0xF7FF6B79+dword(0xe7b054))/byte(0xF7FF6B79)+byte(0xF7FF6871+dword(0xe7b054))/byte(0xF7FF6871)+
                                   byte(0xF7FF62FD+dword(0xe7b054))/byte(0xF7FF62FD)+byte(0xF7FF7279+dword(0xe7b054))/byte(0xF7FF7279)+
                                   byte(0xF7FF6941+dword(0xe7b054))/byte(0xF7FF6941)+byte(0xF7FF6581+dword(0xe7b054))/byte(0xF7FF6581)+
                                   byte(0xF7FF6899+dword(0xe7b054))/byte(0xF7FF6899)+byte(0xF7FF63DD+dword(0xe7b054))/byte(0xF7FF63DD)+
                                   byte(0xF7FF6D05+dword(0xe7b054))/byte(0xF7FF6D05)+byte(0xF7FF6BA9+dword(0xe7b054))/byte(0xF7FF6BA9)+
                                   byte(0xF7FF6565+dword(0xe7b054))/byte(0xF7FF6565)+byte(0xF7FF6F11+dword(0xe7b054))/byte(0xF7FF6F11)+
                                   byte(0xF7FF7151+dword(0xe7b054))/byte(0xF7FF7151)+byte(0xF7FF7291+dword(0xe7b054))/byte(0xF7FF7291)+
                                   byte(0xF7FF71B1+dword(0xe7b054))/byte(0xF7FF71B1)+byte(0xF7FF68F9+dword(0xe7b054))/byte(0xF7FF68F9)+
                                   byte(0xF7FF6DBD+dword(0xe7b054))/byte(0xF7FF6DBD)+byte(0xF7FF642D+dword(0xe7b054))/byte(0xF7FF642D)+
                                   byte(0xF7FF63CD+dword(0xe7b054))/byte(0xF7FF63CD)+byte(0xF7FF6A2D+dword(0xe7b054))/byte(0xF7FF6A2D)+
                                   byte(0xF7FF63A1+dword(0xe7b054))/byte(0xF7FF63A1)+byte(0xF7FF6AAD+dword(0xe7b054))/byte(0xF7FF6AAD)+
                                   byte(0xF7FF6D31+dword(0xe7b054))/byte(0xF7FF6D31)+byte(0xF7FF65FD+dword(0xe7b054))/byte(0xF7FF65FD)+
                                   byte(0xF7FF68A1+dword(0xe7b054))/byte(0xF7FF68A1)+byte(0xF7FF691D+dword(0xe7b054))/byte(0xF7FF691D)+
                                   byte(0xF7FF6BD9+dword(0xe7b054))/byte(0xF7FF6BD9)+byte(0xF7FF6781+dword(0xe7b054))/byte(0xF7FF6781)+
                                   byte(0xF7FF6BAD+dword(0xe7b054))/byte(0xF7FF6BAD)+byte(0xF7FF63D1+dword(0xe7b054))/byte(0xF7FF63D1)+
                                   byte(0xF7FF6225+dword(0xe7b054))/byte(0xF7FF6225)+byte(0xF7FF6D75+dword(0xe7b054))/byte(0xF7FF6D75)+
                                   byte(0xF7FF67E1+dword(0xe7b054))/byte(0xF7FF67E1)+byte(0xF7FF64E9+dword(0xe7b054))/byte(0xF7FF64E9)+
                                   byte(0xF7FF677D+dword(0xe7b054))/byte(0xF7FF677D)+byte(0xF7FF6B0D+dword(0xe7b054))/byte(0xF7FF6B0D)+
                                   byte(0xF7FF6669+dword(0xe7b054))/byte(0xF7FF6669)+byte(0xF7FF6849+dword(0xe7b054))/byte(0xF7FF6849)+
                                   byte(0xF7FF6441+dword(0xe7b054))/byte(0xF7FF6441)+byte(0xF7FF6B5D+dword(0xe7b054))/byte(0xF7FF6B5D)+
                                   byte(0xF7FF6B2D+dword(0xe7b054))/byte(0xF7FF6B2D)+byte(0xF7FF6501+dword(0xe7b054))/byte(0xF7FF6501)+
                                   byte(0xF7FF63B9+dword(0xe7b054))/byte(0xF7FF63B9)+byte(0xF7FF6409+dword(0xe7b054))/byte(0xF7FF6409)+
                                   byte(0xF7FF727D+dword(0xe7b054))/byte(0xF7FF727D)+byte(0xF7FF643D+dword(0xe7b054))/byte(0xF7FF643D)+
                                   byte(0xF7FF65B9+dword(0xe7b054))/byte(0xF7FF65B9)+byte(0xF7FF7395+dword(0xe7b054))/byte(0xF7FF7395)+
                                   byte(0xF7FF661D+dword(0xe7b054))/byte(0xF7FF661D)+byte(0xF7FF710D+dword(0xe7b054))/byte(0xF7FF710D)+
                                   byte(0xF7FF648D+dword(0xe7b054))/byte(0xF7FF648D)+byte(0xF7FF6459+dword(0xe7b054))/byte(0xF7FF6459)+
                                   byte(0xF7FF7371+dword(0xe7b054))/byte(0xF7FF7371)+byte(0xF7FF6449+dword(0xe7b054))/byte(0xF7FF6449)+
                                   byte(0xF7FF6289+dword(0xe7b054))/byte(0xF7FF6289)+byte(0xF7FF6BB5+dword(0xe7b054))/byte(0xF7FF6BB5)+
                                   byte(0xF7FF6AA9+dword(0xe7b054))/byte(0xF7FF6AA9)+byte(0xF7FF6D59+dword(0xe7b054))/byte(0xF7FF6D59)+
                                   byte(0xF7FF6795+dword(0xe7b054))/byte(0xF7FF6795)+byte(0xF7FF6545+dword(0xe7b054))/byte(0xF7FF6545)+
                                   byte(0xF7FF62F9+dword(0xe7b054))/byte(0xF7FF62F9)+byte(0xF7FF6429+dword(0xe7b054))/byte(0xF7FF6429)+
                                   byte(0xF7FF6A39+dword(0xe7b054))/byte(0xF7FF6A39)+byte(0xF7FF639D+dword(0xe7b054))/byte(0xF7FF639D)+
                                   byte(0xF7FF6A75+dword(0xe7b054))/byte(0xF7FF6A75)+byte(0xF7FF67ED+dword(0xe7b054))/byte(0xF7FF67ED)+
                                   byte(0xF7FF62B5+dword(0xe7b054))/byte(0xF7FF62B5)+byte(0xF7FF6AE1+dword(0xe7b054))/byte(0xF7FF6AE1)+
                                   byte(0xF7FF6BED+dword(0xe7b054))/byte(0xF7FF6BED)+byte(0xF7FF63D5+dword(0xe7b054))/byte(0xF7FF63D5)+
                                   byte(0xF7FF6925+dword(0xe7b054))/byte(0xF7FF6925)+byte(0xF7FF6A19+dword(0xe7b054))/byte(0xF7FF6A19)+
                                   byte(0xF7FF69D5+dword(0xe7b054))/byte(0xF7FF69D5)+byte(0xF7FF64FD+dword(0xe7b054))/byte(0xF7FF64FD)+
                                   byte(0xF7FF68E9+dword(0xe7b054))/byte(0xF7FF68E9)+byte(0xF7FF6531+dword(0xe7b054))/byte(0xF7FF6531)+
                                   byte(0xF7FF6B71+dword(0xe7b054))/byte(0xF7FF6B71)+byte(0xF7FF706D+dword(0xe7b054))/byte(0xF7FF706D)+
                                   byte(0xF7FF6279+dword(0xe7b054))/byte(0xF7FF6279)+byte(0xF7FF6561+dword(0xe7b054))/byte(0xF7FF6561)+
                                   byte(0xF7FF6AA5+dword(0xe7b054))/byte(0xF7FF6AA5)+byte(0xF7FF6625+dword(0xe7b054))/byte(0xF7FF6625)+
                                   byte(0xF7FF6339+dword(0xe7b054))/byte(0xF7FF6339)+byte(0xF7FF683D+dword(0xe7b054))/byte(0xF7FF683D)+
                                   byte(0xF7FF6B55+dword(0xe7b054))/byte(0xF7FF6B55)+byte(0xF7FF65B5+dword(0xe7b054))/byte(0xF7FF65B5)+
                                   byte(0xF7FF65C5+dword(0xe7b054))/byte(0xF7FF65C5)+byte(0xF7FF68C5+dword(0xe7b054))/byte(0xF7FF68C5)+
                                   byte(0xF7FF68B1+dword(0xe7b054))/byte(0xF7FF68B1)+byte(0xF7FF65DD+dword(0xe7b054))/byte(0xF7FF65DD)+
                                   byte(0xF7FF68B9+dword(0xe7b054))/byte(0xF7FF68B9)+byte(0xF7FF6401+dword(0xe7b054))/byte(0xF7FF6401)+
                                   byte(0xF7FF6631+dword(0xe7b054))/byte(0xF7FF6631)+byte(0xF7FF6C21+dword(0xe7b054))/byte(0xF7FF6C21)+
                                   byte(0xF7FF68C9+dword(0xe7b054))/byte(0xF7FF68C9)+byte(0xF7FF66A1+dword(0xe7b054))/byte(0xF7FF66A1)+
                                   byte(0xF7FF69B9+dword(0xe7b054))/byte(0xF7FF69B9)+byte(0xF7FF6939+dword(0xe7b054))/byte(0xF7FF6939)+
                                   byte(0xF7FF6619+dword(0xe7b054))/byte(0xF7FF6619)+byte(0xF7FF653D+dword(0xe7b054))/byte(0xF7FF653D)+
                                   byte(0xF7FF6215+dword(0xe7b054))/byte(0xF7FF6215)+byte(0xF7FF6A99+dword(0xe7b054))/byte(0xF7FF6A99)+
                                   byte(0xF7FF6BDD+dword(0xe7b054))/byte(0xF7FF6BDD)+byte(0xF7FF638D+dword(0xe7b054))/byte(0xF7FF638D)+
                                   byte(0xF7FF6419+dword(0xe7b054))/byte(0xF7FF6419)+byte(0xF7FF62ED+dword(0xe7b054))/byte(0xF7FF62ED)+
                                   byte(0xF7FF7109+dword(0xe7b054))/byte(0xF7FF7109)+byte(0xF7FF6595+dword(0xe7b054))/byte(0xF7FF6595)+
                                   byte(0xF7FF6589+dword(0xe7b054))/byte(0xF7FF6589)+byte(0xF7FF7189+dword(0xe7b054))/byte(0xF7FF7189)+
                                   byte(0xF7FF6A81+dword(0xe7b054))/byte(0xF7FF6A81)+byte(0xF7FF6AC5+dword(0xe7b054))/byte(0xF7FF6AC5)+
                                   byte(0xF7FF6851+dword(0xe7b054))/byte(0xF7FF6851)+byte(0xF7FF678D+dword(0xe7b054))/byte(0xF7FF678D)+
                                   byte(0xF7FF63E1+dword(0xe7b054))/byte(0xF7FF63E1)+byte(0xF7FF6775+dword(0xe7b054))/byte(0xF7FF6775)+
                                   byte(0xF7FF65B1+dword(0xe7b054))/byte(0xF7FF65B1)+byte(0xF7FF6AD1+dword(0xe7b054))/byte(0xF7FF6AD1)+
                                   byte(0xF7FF636D+dword(0xe7b054))/byte(0xF7FF636D)+byte(0xF7FF6909+dword(0xe7b054))/byte(0xF7FF6909)
                                   
achievement ("Wonder in Simplicity", "Obtain all cards from [Wonder in Simplicity] booster", 25,
trigger = save_protect() && measured(wonder_in_simplicity() == 444) && prev(wonder_in_simplicity()) != 444)

//Picking Flowers Booster Packs - 61 Cards Total
//Offset - 0xF7FF8425 - A Rival Appears!
//Offset - 0xF7FF6521 - Archfiend Marmot of Nefariousness
//Offset - 0xF7FF82AD - Aussa the Earth Charmer
//Offset - 0xF7FF65A1 - Beautiful Headhuntress
//Offset - 0xF7FFA21D - Black Potan
//Offset - 0xF7FF9BF9 - Calming Magic
//Offset - 0xF7FF96F9 - Counselor Lily
//Offset - 0xF7FF6825 - Dancing Elf
//Offset - 0xF7FF6A95 - Dark Elf
//Offset - 0xF7FF82E9 - Doriado's Blessing
//Offset - 0xF7FF6559 - Dryad
//Offset - 0xF7FF6DC9 - Dunames Dark Witch
//Offset - 0xF7FF83ED - Ebon Magician Curran
//Offset - 0xF7FFA5C9 - Effect Veiler
//Offset - 0xF7FF82CD - Elemental Mistress Doriado
//Offset - 0xF7FF82B1 - Eria the Water Charmer
//Offset - 0xF7FF84F9 - Familiar-Possessed - Aussa
//Offset - 0xF7FF84FD - Familiar-Possessed - Eria
//Offset - 0xF7FF8501 - Familiar-Possessed - Hiita
//Offset - 0xF7FF8505 - Familiar-Possessed - Wynn
//Offset - 0xF7FF80C1 - Fox Fire
//Offset - 0xF7FF8BC1 - Freya, Spirit of Victory
//Offset - 0xF7FF9BA1 - G.B. Hunter
//Offset - 0xF7FF6A49 - Gemini Elf
//Offset - 0xF7FF7E25 - Gigobyte
//Offset - 0xF7FF68AD - Goddess of Whim
//Offset - 0xF7FFA09D - Guardian Eatos
//Offset - 0xF7FF8069 - Harpie Girl
//Offset - 0xF7FF82B5 - Hiita the Fire Charmer
//Offset - 0xF7FF713D - Injection Fairy Lily
//Offset - 0xF7FF9531 - Kunoichi
//Offset - 0xF7FF6B89 - Lady of Faith
//Offset - 0xF7FF6609 - Lunar Queen Elzaim
//Offset - 0xF7FFA439 - Lyna the Light Charmer
//Offset - 0xF7FF9609 - Magical Exemplar
//Offset - 0xF7FF7129 - Maiden of the Aqua
//Offset - 0xF7FF6BD5 - Maiden of the Moonlight
//Offset - 0xF7FF6A45 - Mystical Sand
//Offset - 0xF7FF9935 - Night Wing Sorceress
//Offset - 0xF7FF6C79 - Novox's Prayer
//Offset - 0xF7FF6519 - Petit Dragon
//Offset - 0xF7FF8129 - Pikeru's Circle of Enchantment
//Offset - 0xF7FF8305 - Pikeru's Second Sight
//Offset - 0xF7FF8649 - Princess Curran
//Offset - 0xF7FF8645 - Princess Pikeru
//Offset - 0xF7FF9A21 - Rai-Mei
//Offset - 0xF7FF9139 - Rainbow Veil
//Offset - 0xF7FF74E5 - Shadow Tamer
//Offset - 0xF7FF90F5 - Shadowpriestess of Ohm
//Offset - 0xF7FF66A5 - Sonic Maid
//Offset - 0xF7FF8415 - Spiritual Earth Art - Kurogane
//Offset - 0xF7FF841D - Spiritual Fire Art - Kurenai
//Offset - 0xF7FF8419 - Spiritual Water Art - Aoi
//Offset - 0xF7FF8421 - Spiritual Wind Art - Miyabi
//Offset - 0xF7FF7D59 - The Unhappy Girl
//Offset - 0xF7FF6EED - The Unhappy Maiden
//Offset - 0xF7FF7131 - Thunder Nyan Nyan
//Offset - 0xF7FF8671 - Trial of the Princesses
//Offset - 0xF7FF7DA9 - White Magician Pikeru
//Offset - 0xF7FF9D91 - White Potan
//Offset - 0xF7FF82B9 - Wynn the Wind Charmer

function picking_flowers() => byte(0xF7FF8425+dword(0xe7b054))/byte(0xF7FF8425)+byte(0xF7FF6521+dword(0xe7b054))/byte(0xF7FF6521)+
                              byte(0xF7FF82AD+dword(0xe7b054))/byte(0xF7FF82AD)+byte(0xF7FF65A1+dword(0xe7b054))/byte(0xF7FF65A1)+
                              byte(0xF7FFA21D+dword(0xe7b054))/byte(0xF7FFA21D)+byte(0xF7FF9BF9+dword(0xe7b054))/byte(0xF7FF9BF9)+
                              byte(0xF7FF96F9+dword(0xe7b054))/byte(0xF7FF96F9)+byte(0xF7FF6825+dword(0xe7b054))/byte(0xF7FF6825)+
                              byte(0xF7FF6A95+dword(0xe7b054))/byte(0xF7FF6A95)+byte(0xF7FF82E9+dword(0xe7b054))/byte(0xF7FF82E9)+
                              byte(0xF7FF6559+dword(0xe7b054))/byte(0xF7FF6559)+byte(0xF7FF6DC9+dword(0xe7b054))/byte(0xF7FF6DC9)+
                              byte(0xF7FF83ED+dword(0xe7b054))/byte(0xF7FF83ED)+byte(0xF7FFA5C9+dword(0xe7b054))/byte(0xF7FFA5C9)+
                              byte(0xF7FF82CD+dword(0xe7b054))/byte(0xF7FF82CD)+byte(0xF7FF82B1+dword(0xe7b054))/byte(0xF7FF82B1)+
                              byte(0xF7FF84F9+dword(0xe7b054))/byte(0xF7FF84F9)+byte(0xF7FF84FD+dword(0xe7b054))/byte(0xF7FF84FD)+
                              byte(0xF7FF8501+dword(0xe7b054))/byte(0xF7FF8501)+byte(0xF7FF8505+dword(0xe7b054))/byte(0xF7FF8505)+
                              byte(0xF7FF80C1+dword(0xe7b054))/byte(0xF7FF80C1)+byte(0xF7FF8BC1+dword(0xe7b054))/byte(0xF7FF8BC1)+
                              byte(0xF7FF9BA1+dword(0xe7b054))/byte(0xF7FF9BA1)+byte(0xF7FF6A49+dword(0xe7b054))/byte(0xF7FF6A49)+
                              byte(0xF7FF7E25+dword(0xe7b054))/byte(0xF7FF7E25)+byte(0xF7FF68AD+dword(0xe7b054))/byte(0xF7FF68AD)+
                              byte(0xF7FFA09D+dword(0xe7b054))/byte(0xF7FFA09D)+byte(0xF7FF8069+dword(0xe7b054))/byte(0xF7FF8069)+
                              byte(0xF7FF82B5+dword(0xe7b054))/byte(0xF7FF82B5)+byte(0xF7FF713D+dword(0xe7b054))/byte(0xF7FF713D)+
                              byte(0xF7FF9531+dword(0xe7b054))/byte(0xF7FF9531)+byte(0xF7FF6B89+dword(0xe7b054))/byte(0xF7FF6B89)+
                              byte(0xF7FF6609+dword(0xe7b054))/byte(0xF7FF6609)+byte(0xF7FFA439+dword(0xe7b054))/byte(0xF7FFA439)+
                              byte(0xF7FF9609+dword(0xe7b054))/byte(0xF7FF9609)+byte(0xF7FF7129+dword(0xe7b054))/byte(0xF7FF7129)+
                              byte(0xF7FF6BD5+dword(0xe7b054))/byte(0xF7FF6BD5)+byte(0xF7FF6A45+dword(0xe7b054))/byte(0xF7FF6A45)+
                              byte(0xF7FF9935+dword(0xe7b054))/byte(0xF7FF9935)+byte(0xF7FF6C79+dword(0xe7b054))/byte(0xF7FF6C79)+
                              byte(0xF7FF6519+dword(0xe7b054))/byte(0xF7FF6519)+byte(0xF7FF8129+dword(0xe7b054))/byte(0xF7FF8129)+
                              byte(0xF7FF8305+dword(0xe7b054))/byte(0xF7FF8305)+byte(0xF7FF8649+dword(0xe7b054))/byte(0xF7FF8649)+
                              byte(0xF7FF8645+dword(0xe7b054))/byte(0xF7FF8645)+byte(0xF7FF9A21+dword(0xe7b054))/byte(0xF7FF9A21)+
                              byte(0xF7FF9139+dword(0xe7b054))/byte(0xF7FF9139)+byte(0xF7FF74E5+dword(0xe7b054))/byte(0xF7FF74E5)+
                              byte(0xF7FF90F5+dword(0xe7b054))/byte(0xF7FF90F5)+byte(0xF7FF66A5+dword(0xe7b054))/byte(0xF7FF66A5)+
                              byte(0xF7FF8415+dword(0xe7b054))/byte(0xF7FF8415)+byte(0xF7FF841D+dword(0xe7b054))/byte(0xF7FF841D)+
                              byte(0xF7FF8419+dword(0xe7b054))/byte(0xF7FF8419)+byte(0xF7FF8421+dword(0xe7b054))/byte(0xF7FF8421)+
                              byte(0xF7FF7D59+dword(0xe7b054))/byte(0xF7FF7D59)+byte(0xF7FF6EED+dword(0xe7b054))/byte(0xF7FF6EED)+
                              byte(0xF7FF7131+dword(0xe7b054))/byte(0xF7FF7131)+byte(0xF7FF8671+dword(0xe7b054))/byte(0xF7FF8671)+
                              byte(0xF7FF7DA9+dword(0xe7b054))/byte(0xF7FF7DA9)+byte(0xF7FF9D91+dword(0xe7b054))/byte(0xF7FF9D91)+
                              byte(0xF7FF82B9+dword(0xe7b054))/byte(0xF7FF82B9)
                              
achievement ("Picking Flowers", "Obtain all cards from [Picking Flowers] booster", 10,
trigger = save_protect() && measured(picking_flowers() == 61) && prev(picking_flowers()) != 61)

//High Noon Constellation Booster Packs - 60 Cards Total
//Offset - 0xF7FF80D1 - A-Team: Trap Disposal Unit
//Offset - 0xF7FF790D - Aitsu
//Offset - 0xF7FFA651 - Ambitious Gofer
//Offset - 0xF7FF6041 - B.E.S. Assault Core
//Offset - 0xF7FF9475 - B.E.S. Big Core MK-2
//Offset - 0xF7FF860D - B.E.S. Covered Core
//Offset - 0xF7FF83C5 - B.E.S. Crystal Core
//Offset - 0xF7FF84D5 - B.E.S. Tetran
//Offset - 0xF7FF80C5 - Big Core
//Offset - 0xF7FF9125 - Blue Thunder T-45
//Offset - 0xF7FF8515 - Boss Rush
//Offset - 0xF7FF9B71 - Brain Golem
//Offset - 0xF7FFA431 - Cherry Inmato
//Offset - 0xF7FF688D - Cyber Commander
//Offset - 0xF7FF7429 - Cyclon Laser
//Offset - 0xF7FF921D - D.D.R. - Different Dimension Reincarnation
//Offset - 0xF7FFA451 - Delta Tri
//Offset - 0xF7FF8619 - Disciple of the Forbidden Spell
//Offset - 0xF7FF83D5 - Doitsu
//Offset - 0xF7FFA4A9 - Dragon Laser
//Offset - 0xF7FF9379 - DUCKER Mobile Cannon
//Offset - 0xF7FF9DA9 - Falchion b
//Offset - 0xF7FF91F1 - Fire Trooper
//Offset - 0xF7FF80F1 - Flint
//Offset - 0xF7FF8DE1 - Flint Lock
//Offset - 0xF7FF8E15 - Flint Missile
//Offset - 0xF7FF87B5 - Forced Back
//Offset - 0xF7FF9E01 - Fossil Dig
//Offset - 0xF7FF88DD - Fossil Excavation
//Offset - 0xF7FF7C9D - Getsu Fuhma
//Offset - 0xF7FF8C85 - Goe Goe the Gallant Ninja
//Offset - 0xF7FF726D - Gradius
//Offset - 0xF7FF7591 - Gradius' Option
//Offset - 0xF7FFA83D - Gravity Collapse
//Offset - 0xF7FF9941 - Inmato
//Offset - 0xF7FF96B9 - Jade Knight
//Offset - 0xF7FF855D - King of Destruction - Xexex
//Offset - 0xF7FF7965 - Koitsu
//Offset - 0xF7FF7D9D - Lady Ninja Yae
//Offset - 0xF7FF9FA5 - Lord British Space Fighter
//Offset - 0xF7FF827D - Moai Interceptor Cannons
//Offset - 0xF7FF84D9 - Nanobreaker
//Offset - 0xF7FF7DED - Ninjitsu Art of Transformation
//Offset - 0xF7FF8691 - Option Hunter
//Offset - 0xF7FF9FA9 - Oshaleon
//Offset - 0xF7FF879D - Power Capsule
//Offset - 0xF7FF740D - Riryoku Field
//Offset - 0xF7FF7CA1 - Ryu Kokki
//Offset - 0xF7FF762D - Sasuke Samurai
//Offset - 0xF7FF7AB5 - Sasuke Samurai #2
//Offset - 0xF7FF7B7D - Sasuke Samurai #3
//Offset - 0xF7FF808D - Sasuke Samurai #4
//Offset - 0xF7FF6045 - Shield Recovery
//Offset - 0xF7FF83A5 - Soitsu
//Offset - 0xF7FF7DA5 - Solar Flare Dragon
//Offset - 0xF7FF8141 - Space Mambo
//Offset - 0xF7FF80A9 - Tactical Espionage Expert
//Offset - 0xF7FF6A05 - The Statue of Easter Island
//Offset - 0xF7FFA455 - Trigon
//Offset - 0xF7FF8745 - Victory Viper XX03

function high_noon_constellation() => byte(0xF7FF80D1+dword(0xe7b054))/byte(0xF7FF80D1)+byte(0xF7FF790D+dword(0xe7b054))/byte(0xF7FF790D)+
                                      byte(0xF7FFA651+dword(0xe7b054))/byte(0xF7FFA651)+byte(0xF7FF6041+dword(0xe7b054))/byte(0xF7FF6041)+
                                      byte(0xF7FF9475+dword(0xe7b054))/byte(0xF7FF9475)+byte(0xF7FF860D+dword(0xe7b054))/byte(0xF7FF860D)+
                                      byte(0xF7FF83C5+dword(0xe7b054))/byte(0xF7FF83C5)+byte(0xF7FF84D5+dword(0xe7b054))/byte(0xF7FF84D5)+
                                      byte(0xF7FF80C5+dword(0xe7b054))/byte(0xF7FF80C5)+byte(0xF7FF9125+dword(0xe7b054))/byte(0xF7FF9125)+
                                      byte(0xF7FF8515+dword(0xe7b054))/byte(0xF7FF8515)+byte(0xF7FF9B71+dword(0xe7b054))/byte(0xF7FF9B71)+
                                      byte(0xF7FFA431+dword(0xe7b054))/byte(0xF7FFA431)+byte(0xF7FF688D+dword(0xe7b054))/byte(0xF7FF688D)+
                                      byte(0xF7FF7429+dword(0xe7b054))/byte(0xF7FF7429)+byte(0xF7FF921D+dword(0xe7b054))/byte(0xF7FF921D)+
                                      byte(0xF7FFA451+dword(0xe7b054))/byte(0xF7FFA451)+byte(0xF7FF8619+dword(0xe7b054))/byte(0xF7FF8619)+
                                      byte(0xF7FF83D5+dword(0xe7b054))/byte(0xF7FF83D5)+byte(0xF7FFA4A9+dword(0xe7b054))/byte(0xF7FFA4A9)+
                                      byte(0xF7FF9379+dword(0xe7b054))/byte(0xF7FF9379)+byte(0xF7FF9DA9+dword(0xe7b054))/byte(0xF7FF9DA9)+
                                      byte(0xF7FF91F1+dword(0xe7b054))/byte(0xF7FF91F1)+byte(0xF7FF80F1+dword(0xe7b054))/byte(0xF7FF80F1)+
                                      byte(0xF7FF8DE1+dword(0xe7b054))/byte(0xF7FF8DE1)+byte(0xF7FF8E15+dword(0xe7b054))/byte(0xF7FF8E15)+
                                      byte(0xF7FF87B5+dword(0xe7b054))/byte(0xF7FF87B5)+byte(0xF7FF9E01+dword(0xe7b054))/byte(0xF7FF9E01)+
                                      byte(0xF7FF88DD+dword(0xe7b054))/byte(0xF7FF88DD)+byte(0xF7FF7C9D+dword(0xe7b054))/byte(0xF7FF7C9D)+
                                      byte(0xF7FF8C85+dword(0xe7b054))/byte(0xF7FF8C85)+byte(0xF7FF726D+dword(0xe7b054))/byte(0xF7FF726D)+
                                      byte(0xF7FF7591+dword(0xe7b054))/byte(0xF7FF7591)+byte(0xF7FFA83D+dword(0xe7b054))/byte(0xF7FFA83D)+
                                      byte(0xF7FF9941+dword(0xe7b054))/byte(0xF7FF9941)+byte(0xF7FF96B9+dword(0xe7b054))/byte(0xF7FF96B9)+
                                      byte(0xF7FF855D+dword(0xe7b054))/byte(0xF7FF855D)+byte(0xF7FF7965+dword(0xe7b054))/byte(0xF7FF7965)+
                                      byte(0xF7FF7D9D+dword(0xe7b054))/byte(0xF7FF7D9D)+byte(0xF7FF9FA5+dword(0xe7b054))/byte(0xF7FF9FA5)+
                                      byte(0xF7FF827D+dword(0xe7b054))/byte(0xF7FF827D)+byte(0xF7FF84D9+dword(0xe7b054))/byte(0xF7FF84D9)+
                                      byte(0xF7FF7DED+dword(0xe7b054))/byte(0xF7FF7DED)+byte(0xF7FF8691+dword(0xe7b054))/byte(0xF7FF8691)+
                                      byte(0xF7FF9FA9+dword(0xe7b054))/byte(0xF7FF9FA9)+byte(0xF7FF879D+dword(0xe7b054))/byte(0xF7FF879D)+
                                      byte(0xF7FF740D+dword(0xe7b054))/byte(0xF7FF740D)+byte(0xF7FF7CA1+dword(0xe7b054))/byte(0xF7FF7CA1)+
                                      byte(0xF7FF762D+dword(0xe7b054))/byte(0xF7FF762D)+byte(0xF7FF7AB5+dword(0xe7b054))/byte(0xF7FF7AB5)+
                                      byte(0xF7FF7B7D+dword(0xe7b054))/byte(0xF7FF7B7D)+byte(0xF7FF808D+dword(0xe7b054))/byte(0xF7FF808D)+
                                      byte(0xF7FF6045+dword(0xe7b054))/byte(0xF7FF6045)+byte(0xF7FF83A5+dword(0xe7b054))/byte(0xF7FF83A5)+
                                      byte(0xF7FF7DA5+dword(0xe7b054))/byte(0xF7FF7DA5)+byte(0xF7FF8141+dword(0xe7b054))/byte(0xF7FF8141)+
                                      byte(0xF7FF80A9+dword(0xe7b054))/byte(0xF7FF80A9)+byte(0xF7FF6A05+dword(0xe7b054))/byte(0xF7FF6A05)+
                                      byte(0xF7FFA455+dword(0xe7b054))/byte(0xF7FFA455)+byte(0xF7FF8745+dword(0xe7b054))/byte(0xF7FF8745)
                                      
achievement ("High Noon Constellation", "Obtain all cards from [High Noon Constellation] booster", 25,
trigger = save_protect() && measured(high_noon_constellation() == 60) && prev(high_noon_constellation()) != 60)

//Clustering Bonds, Take Flight! Booster Packs - 112 Cards Total
//Offset - 0xF7FFA5D5 - A/D Changer
//Offset - 0xF7FF9DC5 - Advance Draw
//Offset - 0xF7FF98B5 - Armory Arm
//Offset - 0xF7FFA199 - Backup Warrior
//Offset - 0xF7FF97CD - Battle Mania
//Offset - 0xF7FFA1B1 - Bicular
//Offset - 0xF7FFA675 - Blind Spot Strike
//Offset - 0xF7FFA3ED - Card Breaker
//Offset - 0xF7FF9789 - Card Rotator
//Offset - 0xF7FFA25D - Cards of Consonance
//Offset - 0xF7FFA3E9 - Changer Synchron
//Offset - 0xF7FF97D1 - Confusion Chaff
//Offset - 0xF7FFA82D - D2 Shield
//Offset - 0xF7FFA5D1 - Damage Eater
//Offset - 0xF7FFA5CD - Dash Warrior
//Offset - 0xF7FF98ED - Debris Dragon
//Offset - 0xF7FF95A5 - Defense Draw
//Offset - 0xF7FF99C9 - Descending Lost Star
//Offset - 0xF7FFA6BD - Desperate Tag
//Offset - 0xF7FF956D - Domino Effect
//Offset - 0xF7FFA679 - Double Cyclone
//Offset - 0xF7FFA659 - Dragon Knight Draco-Equiste
//Offset - 0xF7FFA1B9 - Drill Synchron
//Offset - 0xF7FFA24D - Drill Warrior
//Offset - 0xF7FFA5C5 - Earthquake Giant
//Offset - 0xF7FFA13D - Eccentric Boy
//Offset - 0xF7FF959D - Equip Shot
//Offset - 0xF7FF9569 - Fighting Spirit
//Offset - 0xF7FFA7D5 - Formula Synchron
//Offset - 0xF7FF98AD - Fortress Warrior
//Offset - 0xF7FFA139 - Gauntlet Warrior
//Offset - 0xF7FF94D5 - Ghost Gardna
//Offset - 0xF7FF98B9 - Give and Take
//Offset - 0xF7FF95A1 - Graceful Revival
//Offset - 0xF7FFA535 - Half Shut
//Offset - 0xF7FF9709 - Healing Wave Generator
//Offset - 0xF7FF98F1 - Hyper Synchron
//Offset - 0xF7FFA141 - Junk Archer
//Offset - 0xF7FF9571 - Junk Barrage
//Offset - 0xF7FFA38D - Junk Blader
//Offset - 0xF7FFA195 - Junk Collector
//Offset - 0xF7FFA529 - Junk Destroyer
//Offset - 0xF7FF9499 - Junk Synchron
//Offset - 0xF7FF94BD - Junk Warrior
//Offset - 0xF7FF6905 - Kanikabuto
//Offset - 0xF7FF9F2D - Level Eater
//Offset - 0xF7FF9B11 - Level Warrior
//Offset - 0xF7FFA391 - Lightning Warrior
//Offset - 0xF7FF98BD - Limiter Overload
//Offset - 0xF7FF9F1D - Majestic Dragon
//Offset - 0xF7FF9FB9 - Majestic Star Dragon
//Offset - 0xF7FF9F25 - Max Warrior
//Offset - 0xF7FF9BFD - Miracle Locus
//Offset - 0xF7FFA19D - Miracle's Wake
//Offset - 0xF7FFA739 - Mirror Ladybug
//Offset - 0xF7FFA745 - Necro Linker
//Offset - 0xF7FFA741 - Needle Soldier
//Offset - 0xF7FF94CD - Nitro Synchron
//Offset - 0xF7FF9551 - Nitro Warrior
//Offset - 0xF7FF9BB5 - One for One
//Offset - 0xF7FFA4D1 - Power Frame
//Offset - 0xF7FF9979 - Prevention Star
//Offset - 0xF7FFA3AD - Quick-Span Knight
//Offset - 0xF7FF9F29 - Quickdraw Synchron
//Offset - 0xF7FF94D1 - Quillbolt Hedgehog
//Offset - 0xF7FFA52D - Rapid Warrior
//Offset - 0xF7FFA73D - Reed Butterfly
//Offset - 0xF7FF9E09 - Reinforce Truth
//Offset - 0xF7FF9DBD - Release Restraint Wave
//Offset - 0xF7FF95A9 - Remote Revenge
//Offset - 0xF7FFA749 - Rescue Warrior
//Offset - 0xF7FF96B1 - Road Synchron
//Offset - 0xF7FF9479 - Road Warrior
//Offset - 0xF7FF9B0D - Rockstone Warrior
//Offset - 0xF7FF94B5 - Scrap-Iron Scarecrow
//Offset - 0xF7FFA145 - Scrubbed Raid
//Offset - 0xF7FFA3F1 - Second Booster
//Offset - 0xF7FFA8F1 - Seven Swords Warrior
//Offset - 0xF7FF94D9 - Shield Warrior
//Offset - 0xF7FF98C1 - Shield Wing
//Offset - 0xF7FF99CD - Shining Silver Force
//Offset - 0xF7FF9DC1 - Silver Wing
//Offset - 0xF7FF9E05 - Skill Successor
//Offset - 0xF7FFA015 - Slip Summon
//Offset - 0xF7FF9495 - Sonic Chick
//Offset - 0xF7FF949D - Speed Warrior
//Offset - 0xF7FF99C5 - Spirit Force
//Offset - 0xF7FF9555 - Stardust Dragon
//Offset - 0xF7FF9F21 - Stardust Xiaolong
//Offset - 0xF7FFA1A1 - Starlight Road
//Offset - 0xF7FFA5D9 - Stronghold Guardian
//Offset - 0xF7FFA735 - Swift Scarecrow
//Offset - 0xF7FFA019 - Synchro Barrier
//Offset - 0xF7FF5EA5 - Synchro Spirits
//Offset - 0xF7FF97D9 - Synchro Strike
//Offset - 0xF7FFA531 - Synchron Explorer
//Offset - 0xF7FF5EA9 - Trick Battle
//Offset - 0xF7FFA1B5 - Tricular
//Offset - 0xF7FFA149 - Tuner's Barrier
//Offset - 0xF7FFA7E5 - Tuning
//Offset - 0xF7FF98B1 - Tuningware
//Offset - 0xF7FF94C9 - Turbo Booster
//Offset - 0xF7FF9DAD - Turbo Cannon
//Offset - 0xF7FF9D49 - Turbo Rocket
//Offset - 0xF7FF970D - Turbo Synchron
//Offset - 0xF7FF9779 - Turbo Warrior
//Offset - 0xF7FF98E9 - Turret Warrior
//Offset - 0xF7FFA1AD - Unicycular
//Offset - 0xF7FF97D5 - Urgent Tuning
//Offset - 0xF7FFA261 - Variety Comes Out
//Offset - 0xF7FFA525 - Wild Tornado
//Offset - 0xF7FF9F31 - Zero Gardna

function clustering_bonds_take_flight() => byte(0xF7FFA5D5+dword(0xe7b054))/byte(0xF7FFA5D5)+byte(0xF7FF9DC5+dword(0xe7b054))/byte(0xF7FF9DC5)+
                                           byte(0xF7FF98B5+dword(0xe7b054))/byte(0xF7FF98B5)+byte(0xF7FFA199+dword(0xe7b054))/byte(0xF7FFA199)+
                                           byte(0xF7FF97CD+dword(0xe7b054))/byte(0xF7FF97CD)+byte(0xF7FFA1B1+dword(0xe7b054))/byte(0xF7FFA1B1)+
                                           byte(0xF7FFA675+dword(0xe7b054))/byte(0xF7FFA675)+byte(0xF7FFA3ED+dword(0xe7b054))/byte(0xF7FFA3ED)+
                                           byte(0xF7FF9789+dword(0xe7b054))/byte(0xF7FF9789)+byte(0xF7FFA25D+dword(0xe7b054))/byte(0xF7FFA25D)+
                                           byte(0xF7FFA3E9+dword(0xe7b054))/byte(0xF7FFA3E9)+byte(0xF7FF97D1+dword(0xe7b054))/byte(0xF7FF97D1)+
                                           byte(0xF7FFA82D+dword(0xe7b054))/byte(0xF7FFA82D)+byte(0xF7FFA5D1+dword(0xe7b054))/byte(0xF7FFA5D1)+
                                           byte(0xF7FFA5CD+dword(0xe7b054))/byte(0xF7FFA5CD)+byte(0xF7FF98ED+dword(0xe7b054))/byte(0xF7FF98ED)+
                                           byte(0xF7FF95A5+dword(0xe7b054))/byte(0xF7FF95A5)+byte(0xF7FF99C9+dword(0xe7b054))/byte(0xF7FF99C9)+
                                           byte(0xF7FFA6BD+dword(0xe7b054))/byte(0xF7FFA6BD)+byte(0xF7FF956D+dword(0xe7b054))/byte(0xF7FF956D)+
                                           byte(0xF7FFA679+dword(0xe7b054))/byte(0xF7FFA679)+byte(0xF7FFA659+dword(0xe7b054))/byte(0xF7FFA659)+
                                           byte(0xF7FFA1B9+dword(0xe7b054))/byte(0xF7FFA1B9)+byte(0xF7FFA24D+dword(0xe7b054))/byte(0xF7FFA24D)+
                                           byte(0xF7FFA5C5+dword(0xe7b054))/byte(0xF7FFA5C5)+byte(0xF7FFA13D+dword(0xe7b054))/byte(0xF7FFA13D)+
                                           byte(0xF7FF959D+dword(0xe7b054))/byte(0xF7FF959D)+byte(0xF7FF9569+dword(0xe7b054))/byte(0xF7FF9569)+
                                           byte(0xF7FFA7D5+dword(0xe7b054))/byte(0xF7FFA7D5)+byte(0xF7FF98AD+dword(0xe7b054))/byte(0xF7FF98AD)+
                                           byte(0xF7FFA139+dword(0xe7b054))/byte(0xF7FFA139)+byte(0xF7FF94D5+dword(0xe7b054))/byte(0xF7FF94D5)+
                                           byte(0xF7FF98B9+dword(0xe7b054))/byte(0xF7FF98B9)+byte(0xF7FF95A1+dword(0xe7b054))/byte(0xF7FF95A1)+
                                           byte(0xF7FFA535+dword(0xe7b054))/byte(0xF7FFA535)+byte(0xF7FF9709+dword(0xe7b054))/byte(0xF7FF9709)+
                                           byte(0xF7FF98F1+dword(0xe7b054))/byte(0xF7FF98F1)+byte(0xF7FFA141+dword(0xe7b054))/byte(0xF7FFA141)+
                                           byte(0xF7FF9571+dword(0xe7b054))/byte(0xF7FF9571)+byte(0xF7FFA38D+dword(0xe7b054))/byte(0xF7FFA38D)+
                                           byte(0xF7FFA195+dword(0xe7b054))/byte(0xF7FFA195)+byte(0xF7FFA529+dword(0xe7b054))/byte(0xF7FFA529)+
                                           byte(0xF7FF9499+dword(0xe7b054))/byte(0xF7FF9499)+byte(0xF7FF94BD+dword(0xe7b054))/byte(0xF7FF94BD)+
                                           byte(0xF7FF6905+dword(0xe7b054))/byte(0xF7FF6905)+byte(0xF7FF9F2D+dword(0xe7b054))/byte(0xF7FF9F2D)+
                                           byte(0xF7FF9B11+dword(0xe7b054))/byte(0xF7FF9B11)+byte(0xF7FFA391+dword(0xe7b054))/byte(0xF7FFA391)+
                                           byte(0xF7FF98BD+dword(0xe7b054))/byte(0xF7FF98BD)+byte(0xF7FF9F1D+dword(0xe7b054))/byte(0xF7FF9F1D)+
                                           byte(0xF7FF9FB9+dword(0xe7b054))/byte(0xF7FF9FB9)+byte(0xF7FF9F25+dword(0xe7b054))/byte(0xF7FF9F25)+
                                           byte(0xF7FF9BFD+dword(0xe7b054))/byte(0xF7FF9BFD)+byte(0xF7FFA19D+dword(0xe7b054))/byte(0xF7FFA19D)+
                                           byte(0xF7FFA739+dword(0xe7b054))/byte(0xF7FFA739)+byte(0xF7FFA745+dword(0xe7b054))/byte(0xF7FFA745)+
                                           byte(0xF7FFA741+dword(0xe7b054))/byte(0xF7FFA741)+byte(0xF7FF94CD+dword(0xe7b054))/byte(0xF7FF94CD)+
                                           byte(0xF7FF9551+dword(0xe7b054))/byte(0xF7FF9551)+byte(0xF7FF9BB5+dword(0xe7b054))/byte(0xF7FF9BB5)+
                                           byte(0xF7FFA4D1+dword(0xe7b054))/byte(0xF7FFA4D1)+byte(0xF7FF9979+dword(0xe7b054))/byte(0xF7FF9979)+
                                           byte(0xF7FFA3AD+dword(0xe7b054))/byte(0xF7FFA3AD)+byte(0xF7FF9F29+dword(0xe7b054))/byte(0xF7FF9F29)+
                                           byte(0xF7FF94D1+dword(0xe7b054))/byte(0xF7FF94D1)+byte(0xF7FFA52D+dword(0xe7b054))/byte(0xF7FFA52D)+
                                           byte(0xF7FFA73D+dword(0xe7b054))/byte(0xF7FFA73D)+byte(0xF7FF9E09+dword(0xe7b054))/byte(0xF7FF9E09)+
                                           byte(0xF7FF9DBD+dword(0xe7b054))/byte(0xF7FF9DBD)+byte(0xF7FF95A9+dword(0xe7b054))/byte(0xF7FF95A9)+
                                           byte(0xF7FFA749+dword(0xe7b054))/byte(0xF7FFA749)+byte(0xF7FF96B1+dword(0xe7b054))/byte(0xF7FF96B1)+
                                           byte(0xF7FF9479+dword(0xe7b054))/byte(0xF7FF9479)+byte(0xF7FF9B0D+dword(0xe7b054))/byte(0xF7FF9B0D)+
                                           byte(0xF7FF94B5+dword(0xe7b054))/byte(0xF7FF94B5)+byte(0xF7FFA145+dword(0xe7b054))/byte(0xF7FFA145)+
                                           byte(0xF7FFA3F1+dword(0xe7b054))/byte(0xF7FFA3F1)+byte(0xF7FFA8F1+dword(0xe7b054))/byte(0xF7FFA8F1)+
                                           byte(0xF7FF94D9+dword(0xe7b054))/byte(0xF7FF94D9)+byte(0xF7FF98C1+dword(0xe7b054))/byte(0xF7FF98C1)+
                                           byte(0xF7FF99CD+dword(0xe7b054))/byte(0xF7FF99CD)+byte(0xF7FF9DC1+dword(0xe7b054))/byte(0xF7FF9DC1)+
                                           byte(0xF7FF9E05+dword(0xe7b054))/byte(0xF7FF9E05)+byte(0xF7FFA015+dword(0xe7b054))/byte(0xF7FFA015)+
                                           byte(0xF7FF9495+dword(0xe7b054))/byte(0xF7FF9495)+byte(0xF7FF949D+dword(0xe7b054))/byte(0xF7FF949D)+
                                           byte(0xF7FF99C5+dword(0xe7b054))/byte(0xF7FF99C5)+byte(0xF7FF9555+dword(0xe7b054))/byte(0xF7FF9555)+
                                           byte(0xF7FF9F21+dword(0xe7b054))/byte(0xF7FF9F21)+byte(0xF7FFA1A1+dword(0xe7b054))/byte(0xF7FFA1A1)+
                                           byte(0xF7FFA5D9+dword(0xe7b054))/byte(0xF7FFA5D9)+byte(0xF7FFA735+dword(0xe7b054))/byte(0xF7FFA735)+
                                           byte(0xF7FFA019+dword(0xe7b054))/byte(0xF7FFA019)+byte(0xF7FF5EA5+dword(0xe7b054))/byte(0xF7FF5EA5)+
                                           byte(0xF7FF97D9+dword(0xe7b054))/byte(0xF7FF97D9)+byte(0xF7FFA531+dword(0xe7b054))/byte(0xF7FFA531)+
                                           byte(0xF7FF5EA9+dword(0xe7b054))/byte(0xF7FF5EA9)+byte(0xF7FFA1B5+dword(0xe7b054))/byte(0xF7FFA1B5)+
                                           byte(0xF7FFA149+dword(0xe7b054))/byte(0xF7FFA149)+byte(0xF7FFA7E5+dword(0xe7b054))/byte(0xF7FFA7E5)+
                                           byte(0xF7FF98B1+dword(0xe7b054))/byte(0xF7FF98B1)+byte(0xF7FF94C9+dword(0xe7b054))/byte(0xF7FF94C9)+
                                           byte(0xF7FF9DAD+dword(0xe7b054))/byte(0xF7FF9DAD)+byte(0xF7FF9D49+dword(0xe7b054))/byte(0xF7FF9D49)+
                                           byte(0xF7FF970D+dword(0xe7b054))/byte(0xF7FF970D)+byte(0xF7FF9779+dword(0xe7b054))/byte(0xF7FF9779)+
                                           byte(0xF7FF98E9+dword(0xe7b054))/byte(0xF7FF98E9)+byte(0xF7FFA1AD+dword(0xe7b054))/byte(0xF7FFA1AD)+
                                           byte(0xF7FF97D5+dword(0xe7b054))/byte(0xF7FF97D5)+byte(0xF7FFA261+dword(0xe7b054))/byte(0xF7FFA261)+
                                           byte(0xF7FFA525+dword(0xe7b054))/byte(0xF7FFA525)+byte(0xF7FF9F31+dword(0xe7b054))/byte(0xF7FF9F31)
                                           
achievement ("Clustering Bonds, Take Flight!", "Obtain all cards from [Clustering Bonds, Take Flight!] booster", 10,
trigger = save_protect() && measured(clustering_bonds_take_flight() == 112) && prev(clustering_bonds_take_flight()) != 112) 

//Rapid Enforcement Booster Packs - 75 Cards Total
//Offset - 0xF7FF8C71 - Archfiend General
//Offset - 0xF7FF7AAD - Archfiend Soldier
//Offset - 0xF7FF7B19 - Archfiend's Oath
//Offset - 0xF7FF7B35 - Archfiend's Roar
//Offset - 0xF7FFA6D1 - Barrier Wave
//Offset - 0xF7FF7B2D - Battle-Scarred
//Offset - 0xF7FFA6D5 - Chain Whirlwind
//Offset - 0xF7FF7B11 - Checkmate
//Offset - 0xF7FF83BD - Cyber Archfiend
//Offset - 0xF7FF83B5 - Cybernetic Cyclopean
//Offset - 0xF7FFA4ED - Damage Gate
//Offset - 0xF7FF9E25 - Damage Translation
//Offset - 0xF7FF7ADD - Darkbishop Archfiend
//Offset - 0xF7FFA601 - Delta Flyer
//Offset - 0xF7FF9E21 - Depth Amulet
//Offset - 0xF7FF7AE1 - Desrook Archfiend
//Offset - 0xF7FF8E41 - Destructive Draw
//Offset - 0xF7FF8411 - Fire Darts
//Offset - 0xF7FF918D - Hate Buster
//Offset - 0xF7FFA18D - Hundred Eyes Dragon Light
//Offset - 0xF7FFA609 - Hypnocorn
//Offset - 0xF7FF902D - Imprisoned Queen Archfiend
//Offset - 0xF7FF7AE5 - Infernalqueen Archfiend
//Offset - 0xF7FF9CE1 - Infernity Archfiend
//Offset - 0xF7FFA415 - Infernity Avenger
//Offset - 0xF7FF9D3D - Infernity Beast
//Offset - 0xF7FFA411 - Infernity Beetle
//Offset - 0xF7FFA4E9 - Infernity Break
//Offset - 0xF7FF5F69 - Infernity Des Gunman
//Offset - 0xF7FF9CED - Infernity Destroyer
//Offset - 0xF7FF9CE5 - Infernity Dwarf
//Offset - 0xF7FFA03D - Infernity Force
//Offset - 0xF7FF9CE9 - Infernity Guardian
//Offset - 0xF7FFA4F1 - Infernity Inferno
//Offset - 0xF7FFA495 - Infernity Launcher
//Offset - 0xF7FFA409 - Infernity Mirage
//Offset - 0xF7FF9F39 - Infernity Necromancer
//Offset - 0xF7FFA40D - Infernity Randomizer
//Offset - 0xF7FFA4E5 - Infernity Reflector
//Offset - 0xF7FF5F65 - Infernity Zero
//Offset - 0xF7FFA499 - Into the Void
//Offset - 0xF7FFA669 - Lightning Tricorn
//Offset - 0xF7FFA039 - Limit Impulse
//Offset - 0xF7FF8429 - Magical Explosion
//Offset - 0xF7FF83B9 - Mechanical Hound
//Offset - 0xF7FF7B21 - Pandemonium
//Offset - 0xF7FF7AB1 - Pandemonium Watchbear
//Offset - 0xF7FFA4F5 - Phantom Hand
//Offset - 0xF7FF9CF9 - Pride of the Weak
//Offset - 0xF7FFA6CD - Reanimation Wave
//Offset - 0xF7FF8475 - Reborn Zombie
//Offset - 0xF7FF7E11 - Return Zombie
//Offset - 0xF7FFA605 - Rhinotaurus
//Offset - 0xF7FFA615 - Scrap Beast
//Offset - 0xF7FFA60D - Scrap Chimera
//Offset - 0xF7FFA855 - Scrap Crash
//Offset - 0xF7FFA611 - Scrap Goblin
//Offset - 0xF7FFA61D - Scrap Golem
//Offset - 0xF7FFA619 - Scrap Hunter
//Offset - 0xF7FFA7F5 - Scrap Lube
//Offset - 0xF7FFA6D9 - Scrap Rage
//Offset - 0xF7FFA795 - Scrap Searcher
//Offset - 0xF7FFA685 - Scrap Sheen
//Offset - 0xF7FFA791 - Scrap Soldier
//Offset - 0xF7FFA7E1 - Scrap Twin Dragon
//Offset - 0xF7FFA681 - Scrapstorm
//Offset - 0xF7FFA67D - Scrapyard
//Offset - 0xF7FF7AD9 - Shadowknight Archfiend
//Offset - 0xF7FF7AED - Skull Archfiend of Lightning
//Offset - 0xF7FF7AE9 - Terrorking Archfiend
//Offset - 0xF7FFA5FD - Trident Warrior
//Offset - 0xF7FF796D - Ultimate Obedient Fiend
//Offset - 0xF7FF7AD5 - Vilepawn Archfiend
//Offset - 0xF7FF70DD - Vorse Raider
//Offset - 0xF7FFA491 - ZERO-MAX

function rapid_enforcement() => byte(0xF7FF8C71+dword(0xe7b054))/byte(0xF7FF8C71)+byte(0xF7FF7AAD+dword(0xe7b054))/byte(0xF7FF7AAD)+
                                byte(0xF7FF7B19+dword(0xe7b054))/byte(0xF7FF7B19)+byte(0xF7FF7B35+dword(0xe7b054))/byte(0xF7FF7B35)+
                                byte(0xF7FFA6D1+dword(0xe7b054))/byte(0xF7FFA6D1)+byte(0xF7FF7B2D+dword(0xe7b054))/byte(0xF7FF7B2D)+
                                byte(0xF7FFA6D5+dword(0xe7b054))/byte(0xF7FFA6D5)+byte(0xF7FF7B11+dword(0xe7b054))/byte(0xF7FF7B11)+
                                byte(0xF7FF83BD+dword(0xe7b054))/byte(0xF7FF83BD)+byte(0xF7FF83B5+dword(0xe7b054))/byte(0xF7FF83B5)+
                                byte(0xF7FFA4ED+dword(0xe7b054))/byte(0xF7FFA4ED)+byte(0xF7FF9E25+dword(0xe7b054))/byte(0xF7FF9E25)+
                                byte(0xF7FF7ADD+dword(0xe7b054))/byte(0xF7FF7ADD)+byte(0xF7FFA601+dword(0xe7b054))/byte(0xF7FFA601)+
                                byte(0xF7FF9E21+dword(0xe7b054))/byte(0xF7FF9E21)+byte(0xF7FF7AE1+dword(0xe7b054))/byte(0xF7FF7AE1)+
                                byte(0xF7FF8E41+dword(0xe7b054))/byte(0xF7FF8E41)+byte(0xF7FF8411+dword(0xe7b054))/byte(0xF7FF8411)+
                                byte(0xF7FF918D+dword(0xe7b054))/byte(0xF7FF918D)+byte(0xF7FFA18D+dword(0xe7b054))/byte(0xF7FFA18D)+
                                byte(0xF7FFA609+dword(0xe7b054))/byte(0xF7FFA609)+byte(0xF7FF902D+dword(0xe7b054))/byte(0xF7FF902D)+
                                byte(0xF7FF7AE5+dword(0xe7b054))/byte(0xF7FF7AE5)+byte(0xF7FF9CE1+dword(0xe7b054))/byte(0xF7FF9CE1)+
                                byte(0xF7FFA415+dword(0xe7b054))/byte(0xF7FFA415)+byte(0xF7FF9D3D+dword(0xe7b054))/byte(0xF7FF9D3D)+
                                byte(0xF7FFA411+dword(0xe7b054))/byte(0xF7FFA411)+byte(0xF7FFA4E9+dword(0xe7b054))/byte(0xF7FFA4E9)+
                                byte(0xF7FF5F69+dword(0xe7b054))/byte(0xF7FF5F69)+byte(0xF7FF9CED+dword(0xe7b054))/byte(0xF7FF9CED)+
                                byte(0xF7FF9CE5+dword(0xe7b054))/byte(0xF7FF9CE5)+byte(0xF7FFA03D+dword(0xe7b054))/byte(0xF7FFA03D)+
                                byte(0xF7FF9CE9+dword(0xe7b054))/byte(0xF7FF9CE9)+byte(0xF7FFA4F1+dword(0xe7b054))/byte(0xF7FFA4F1)+
                                byte(0xF7FFA495+dword(0xe7b054))/byte(0xF7FFA495)+byte(0xF7FFA409+dword(0xe7b054))/byte(0xF7FFA409)+
                                byte(0xF7FF9F39+dword(0xe7b054))/byte(0xF7FF9F39)+byte(0xF7FFA40D+dword(0xe7b054))/byte(0xF7FFA40D)+
                                byte(0xF7FFA4E5+dword(0xe7b054))/byte(0xF7FFA4E5)+byte(0xF7FF5F65+dword(0xe7b054))/byte(0xF7FF5F65)+
                                byte(0xF7FFA499+dword(0xe7b054))/byte(0xF7FFA499)+byte(0xF7FFA669+dword(0xe7b054))/byte(0xF7FFA669)+
                                byte(0xF7FFA039+dword(0xe7b054))/byte(0xF7FFA039)+byte(0xF7FF8429+dword(0xe7b054))/byte(0xF7FF8429)+
                                byte(0xF7FF83B9+dword(0xe7b054))/byte(0xF7FF83B9)+byte(0xF7FF7B21+dword(0xe7b054))/byte(0xF7FF7B21)+
                                byte(0xF7FF7AB1+dword(0xe7b054))/byte(0xF7FF7AB1)+byte(0xF7FFA4F5+dword(0xe7b054))/byte(0xF7FFA4F5)+
                                byte(0xF7FF9CF9+dword(0xe7b054))/byte(0xF7FF9CF9)+byte(0xF7FFA6CD+dword(0xe7b054))/byte(0xF7FFA6CD)+
                                byte(0xF7FF8475+dword(0xe7b054))/byte(0xF7FF8475)+byte(0xF7FF7E11+dword(0xe7b054))/byte(0xF7FF7E11)+
                                byte(0xF7FFA605+dword(0xe7b054))/byte(0xF7FFA605)+byte(0xF7FFA615+dword(0xe7b054))/byte(0xF7FFA615)+
                                byte(0xF7FFA60D+dword(0xe7b054))/byte(0xF7FFA60D)+byte(0xF7FFA855+dword(0xe7b054))/byte(0xF7FFA855)+
                                byte(0xF7FFA611+dword(0xe7b054))/byte(0xF7FFA611)+byte(0xF7FFA61D+dword(0xe7b054))/byte(0xF7FFA61D)+
                                byte(0xF7FFA619+dword(0xe7b054))/byte(0xF7FFA619)+byte(0xF7FFA7F5+dword(0xe7b054))/byte(0xF7FFA7F5)+
                                byte(0xF7FFA6D9+dword(0xe7b054))/byte(0xF7FFA6D9)+byte(0xF7FFA795+dword(0xe7b054))/byte(0xF7FFA795)+
                                byte(0xF7FFA685+dword(0xe7b054))/byte(0xF7FFA685)+byte(0xF7FFA791+dword(0xe7b054))/byte(0xF7FFA791)+
                                byte(0xF7FFA7E1+dword(0xe7b054))/byte(0xF7FFA7E1)+byte(0xF7FFA681+dword(0xe7b054))/byte(0xF7FFA681)+
                                byte(0xF7FFA67D+dword(0xe7b054))/byte(0xF7FFA67D)+byte(0xF7FF7AD9+dword(0xe7b054))/byte(0xF7FF7AD9)+
                                byte(0xF7FF7AED+dword(0xe7b054))/byte(0xF7FF7AED)+byte(0xF7FF7AE9+dword(0xe7b054))/byte(0xF7FF7AE9)+
                                byte(0xF7FFA5FD+dword(0xe7b054))/byte(0xF7FFA5FD)+byte(0xF7FF796D+dword(0xe7b054))/byte(0xF7FF796D)+
                                byte(0xF7FF7AD5+dword(0xe7b054))/byte(0xF7FF7AD5)+byte(0xF7FF70DD+dword(0xe7b054))/byte(0xF7FF70DD)+
                                byte(0xF7FFA491+dword(0xe7b054))/byte(0xF7FFA491)                                         
                                
achievement ("Rapid Enforcement", "Obtain all cards from [Rapid Enforcement] booster", 10,
trigger = save_protect() && measured(rapid_enforcement() == 75) && prev(rapid_enforcement()) != 75) 

//Proud Spirit Booster Packs - 68 Cards Total
//Offset - 0xF7FFA3F5 - Archfiend Interceptor
//Offset - 0xF7FFA4F9 - Assault Spirits
//Offset - 0xF7FFA769 - Attack Gainer
//Offset - 0xF7FF8595 - Axe Dragonute
//Offset - 0xF7FFA1C1 - Battle Fader
//Offset - 0xF7FFA6C1 - Battle Instinct
//Offset - 0xF7FF94E5 - Big Piece Golem
//Offset - 0xF7FFA2A5 - Changing Destiny
//Offset - 0xF7FFA479 - Chaos King Archfiend
//Offset - 0xF7FFA765 - Creation Resonator
//Offset - 0xF7FF9C01 - Crimson Fire
//Offset - 0xF7FFA5ED - D.D. Unicorn Knight
//Offset - 0xF7FFA1D1 - Dark Bug
//Offset - 0xF7FF94ED - Dark Resonator
//Offset - 0xF7FF9901 - Dark Tinker
//Offset - 0xF7FFA3F9 - Dread Dragon
//Offset - 0xF7FFA705 - Dust Lord Ash Gash
//Offset - 0xF7FFA5E1 - Egotistical Ape
//Offset - 0xF7FF5EF5 - Endless Loan
//Offset - 0xF7FF9BA5 - Exploder Dragonwing
//Offset - 0xF7FFA75D - Extra Veiler
//Offset - 0xF7FFA2A9 - Fiendish Chain
//Offset - 0xF7FFA401 - Flare Resonator
//Offset - 0xF7FF99D1 - Half or Nothing
//Offset - 0xF7FFA6C5 - Howl of the Wild
//Offset - 0xF7FFA755 - Lancer Archfiend
//Offset - 0xF7FF97E5 - Lineage of Destruction
//Offset - 0xF7FF9711 - Mad Archfiend
//Offset - 0xF7FFA1C9 - Magic Hole Golem
//Offset - 0xF7FFA249 - Majestic Red Dragon
//Offset - 0xF7FF94E1 - Medium Piece Golem
//Offset - 0xF7FF9BB9 - Mind Trust
//Offset - 0xF7FFA5E9 - Monoceros
//Offset - 0xF7FF954D - Multiple Piece Golem
//Offset - 0xF7FF99D5 - Nightmare Archfiends
//Offset - 0xF7FFA1BD - Ogre of the Scarlet Sorrow
//Offset - 0xF7FFA6C9 - Parallel Selection
//Offset - 0xF7FFA5DD - Playful Possum
//Offset - 0xF7FFA759 - Power Breaker
//Offset - 0xF7FFA74D - Power Giant
//Offset - 0xF7FFA1CD - Power Invader
//Offset - 0xF7FFA1C5 - Power Supplier
//Offset - 0xF7FF5EF9 - Powerful Rebirth
//Offset - 0xF7FF97DD - Prideful Roar
//Offset - 0xF7FF858D - Rancer Dragonute
//Offset - 0xF7FF9559 - Red Dragon Archfiend
//Offset - 0xF7FFA831 - Red Screen
//Offset - 0xF7FF97E1 - Revival Gift
//Offset - 0xF7FF94E9 - Sinister Sprocket
//Offset - 0xF7FF7155 - Slate Warrior
//Offset - 0xF7FF94DD - Small Piece Golem
//Offset - 0xF7FF95AD - Spacegate
//Offset - 0xF7FF9B15 - Strong Wind Dragon
//Offset - 0xF7FFA1D5 - Sword Master
//Offset - 0xF7FF95B1 - Synchro Deflector
//Offset - 0xF7FFA405 - Synchro Magnet
//Offset - 0xF7FFA761 - Synchro Soldier
//Offset - 0xF7FFA661 - Thunder Unicorn
//Offset - 0xF7FF5EF1 - Toichi the Nefarious Debt Collector
//Offset - 0xF7FF98F9 - Trap Eater
//Offset - 0xF7FFA3FD - Trust Guardian
//Offset - 0xF7FF94F1 - Twin-Shield Defender
//Offset - 0xF7FF98FD - Twin-Sword Marauder
//Offset - 0xF7FFA5E5 - Uni-Horned Familiar
//Offset - 0xF7FFA5F1 - Unibird
//Offset - 0xF7FFA69D - Unicorn Beacon
//Offset - 0xF7FFA751 - Vice Berserker
//Offset - 0xF7FF98C5 - Vice Dragon

function proud_spirit() =>  byte(0xF7FFA3F5+dword(0xe7b054))/byte(0xF7FFA3F5)+byte(0xF7FFA4F9+dword(0xe7b054))/byte(0xF7FFA4F9)+
                            byte(0xF7FFA769+dword(0xe7b054))/byte(0xF7FFA769)+byte(0xF7FF8595+dword(0xe7b054))/byte(0xF7FF8595)+
                            byte(0xF7FFA1C1+dword(0xe7b054))/byte(0xF7FFA1C1)+byte(0xF7FFA6C1+dword(0xe7b054))/byte(0xF7FFA6C1)+
                            byte(0xF7FF94E5+dword(0xe7b054))/byte(0xF7FF94E5)+byte(0xF7FFA2A5+dword(0xe7b054))/byte(0xF7FFA2A5)+
                            byte(0xF7FFA479+dword(0xe7b054))/byte(0xF7FFA479)+byte(0xF7FFA765+dword(0xe7b054))/byte(0xF7FFA765)+
                            byte(0xF7FF9C01+dword(0xe7b054))/byte(0xF7FF9C01)+byte(0xF7FFA5ED+dword(0xe7b054))/byte(0xF7FFA5ED)+
                            byte(0xF7FFA1D1+dword(0xe7b054))/byte(0xF7FFA1D1)+byte(0xF7FF94ED+dword(0xe7b054))/byte(0xF7FF94ED)+
                            byte(0xF7FF9901+dword(0xe7b054))/byte(0xF7FF9901)+byte(0xF7FFA3F9+dword(0xe7b054))/byte(0xF7FFA3F9)+
                            byte(0xF7FFA705+dword(0xe7b054))/byte(0xF7FFA705)+byte(0xF7FFA5E1+dword(0xe7b054))/byte(0xF7FFA5E1)+
                            byte(0xF7FF5EF5+dword(0xe7b054))/byte(0xF7FF5EF5)+byte(0xF7FF9BA5+dword(0xe7b054))/byte(0xF7FF9BA5)+
                            byte(0xF7FFA75D+dword(0xe7b054))/byte(0xF7FFA75D)+byte(0xF7FFA2A9+dword(0xe7b054))/byte(0xF7FFA2A9)+
                            byte(0xF7FFA401+dword(0xe7b054))/byte(0xF7FFA401)+byte(0xF7FF99D1+dword(0xe7b054))/byte(0xF7FF99D1)+
                            byte(0xF7FFA6C5+dword(0xe7b054))/byte(0xF7FFA6C5)+byte(0xF7FFA755+dword(0xe7b054))/byte(0xF7FFA755)+
                            byte(0xF7FF97E5+dword(0xe7b054))/byte(0xF7FF97E5)+byte(0xF7FF9711+dword(0xe7b054))/byte(0xF7FF9711)+
                            byte(0xF7FFA1C9+dword(0xe7b054))/byte(0xF7FFA1C9)+byte(0xF7FFA249+dword(0xe7b054))/byte(0xF7FFA249)+
                            byte(0xF7FF94E1+dword(0xe7b054))/byte(0xF7FF94E1)+byte(0xF7FF9BB9+dword(0xe7b054))/byte(0xF7FF9BB9)+
                            byte(0xF7FFA5E9+dword(0xe7b054))/byte(0xF7FFA5E9)+byte(0xF7FF954D+dword(0xe7b054))/byte(0xF7FF954D)+
                            byte(0xF7FF99D5+dword(0xe7b054))/byte(0xF7FF99D5)+byte(0xF7FFA1BD+dword(0xe7b054))/byte(0xF7FFA1BD)+
                            byte(0xF7FFA6C9+dword(0xe7b054))/byte(0xF7FFA6C9)+byte(0xF7FFA5DD+dword(0xe7b054))/byte(0xF7FFA5DD)+
                            byte(0xF7FFA759+dword(0xe7b054))/byte(0xF7FFA759)+byte(0xF7FFA74D+dword(0xe7b054))/byte(0xF7FFA74D)+
                            byte(0xF7FFA1CD+dword(0xe7b054))/byte(0xF7FFA1CD)+byte(0xF7FFA1C5+dword(0xe7b054))/byte(0xF7FFA1C5)+
                            byte(0xF7FF5EF9+dword(0xe7b054))/byte(0xF7FF5EF9)+byte(0xF7FF97DD+dword(0xe7b054))/byte(0xF7FF97DD)+
                            byte(0xF7FF858D+dword(0xe7b054))/byte(0xF7FF858D)+byte(0xF7FF9559+dword(0xe7b054))/byte(0xF7FF9559)+
                            byte(0xF7FFA831+dword(0xe7b054))/byte(0xF7FFA831)+byte(0xF7FF97E1+dword(0xe7b054))/byte(0xF7FF97E1)+
                            byte(0xF7FF94E9+dword(0xe7b054))/byte(0xF7FF94E9)+byte(0xF7FF7155+dword(0xe7b054))/byte(0xF7FF7155)+
                            byte(0xF7FF94DD+dword(0xe7b054))/byte(0xF7FF94DD)+byte(0xF7FF95AD+dword(0xe7b054))/byte(0xF7FF95AD)+
                            byte(0xF7FF9B15+dword(0xe7b054))/byte(0xF7FF9B15)+byte(0xF7FFA1D5+dword(0xe7b054))/byte(0xF7FFA1D5)+
                            byte(0xF7FF95B1+dword(0xe7b054))/byte(0xF7FF95B1)+byte(0xF7FFA405+dword(0xe7b054))/byte(0xF7FFA405)+
                            byte(0xF7FFA761+dword(0xe7b054))/byte(0xF7FFA761)+byte(0xF7FFA661+dword(0xe7b054))/byte(0xF7FFA661)+
                            byte(0xF7FF5EF1+dword(0xe7b054))/byte(0xF7FF5EF1)+byte(0xF7FF98F9+dword(0xe7b054))/byte(0xF7FF98F9)+
                            byte(0xF7FFA3FD+dword(0xe7b054))/byte(0xF7FFA3FD)+byte(0xF7FF94F1+dword(0xe7b054))/byte(0xF7FF94F1)+
                            byte(0xF7FF98FD+dword(0xe7b054))/byte(0xF7FF98FD)+byte(0xF7FFA5E5+dword(0xe7b054))/byte(0xF7FFA5E5)+
                            byte(0xF7FFA5F1+dword(0xe7b054))/byte(0xF7FFA5F1)+byte(0xF7FFA69D+dword(0xe7b054))/byte(0xF7FFA69D)+
                            byte(0xF7FFA751+dword(0xe7b054))/byte(0xF7FFA751)+byte(0xF7FF98C5+dword(0xe7b054))/byte(0xF7FF98C5)
                            
achievement ("Proud Spirit", "Obtain all cards from [Proud Spirit] booster", 10,
trigger = save_protect() && measured(proud_spirit() == 68) && prev(proud_spirit()) != 68)

//Soaring Blackwings Booster Packs - 60 Cards Total
//Offset - 0xF7FF9BC9 - Against the Wind
//Offset - 0xF7FFA5F5 - Bicorn Re'em
//Offset - 0xF7FF98DD - Black Salvo
//Offset - 0xF7FFA4DD - Black Thunder
//Offset - 0xF7FF9BCD - Black Whirlwind
//Offset - 0xF7FFA489 - Black-Winged Strafe
//Offset - 0xF7FFA835 - Blackback
//Offset - 0xF7FFA775 - Blackwing - Abrolhos the Megaquake
//Offset - 0xF7FFA771 - Blackwing - Aurora the Northern Lights
//Offset - 0xF7FFA4D5 - Blackwing - Backlash
//Offset - 0xF7FF9B2D - Blackwing - Blizzard the Far North
//Offset - 0xF7FFA4D9 - Blackwing - Bombardment
//Offset - 0xF7FFA841 - Blackwing - Boobytrap
//Offset - 0xF7FF9909 - Blackwing - Bora the Spear
//Offset - 0xF7FFA3E5 - Blackwing - Breeze the Zephyr
//Offset - 0xF7FF9B39 - Blackwing - Elphin the Raven
//Offset - 0xF7FFA76D - Blackwing - Etesian of Two Swords
//Offset - 0xF7FF9D25 - Blackwing - Fane the Steel Chain
//Offset - 0xF7FF9905 - Blackwing - Gale the Whirlwind
//Offset - 0xF7FFA3DD - Blackwing - Ghibli the Searing Wind
//Offset - 0xF7FFA3E1 - Blackwing - Gust the Backblast
//Offset - 0xF7FF9B35 - Blackwing - Kalut the Moon Shadow
//Offset - 0xF7FF9D1D - Blackwing - Mistral the Silver Shield
//Offset - 0xF7FF9B31 - Blackwing - Shura the Blue Flame
//Offset - 0xF7FF9FBD - Blackwing - Silverwind the Ascendant
//Offset - 0xF7FF990D - Blackwing - Sirocco the Dawn
//Offset - 0xF7FF9D21 - Blackwing - Vayu the Emblem of Honor
//Offset - 0xF7FF9BA9 - Blackwing Armed Wing
//Offset - 0xF7FF9969 - Blackwing Armor Master
//Offset - 0xF7FF5FB9 - Card of Distrain
//Offset - 0xF7FFA48D - Cards for Black Feathers
//Offset - 0xF7FF5E6D - Chariot Pile
//Offset - 0xF7FF9D45 - Darksea Float
//Offset - 0xF7FF9D41 - Darksea Rescue
//Offset - 0xF7FFA839 - Defenders Intersect
//Offset - 0xF7FF9C11 - Delta Crow - Anti Reverse
//Offset - 0xF7FF9E19 - Discord
//Offset - 0xF7FF99D9 - Ebon Arrow
//Offset - 0xF7FF99E1 - Fake Explosion
//Offset - 0xF7FF9C19 - Fake Feather
//Offset - 0xF7FF98D5 - Flying Fortress SKY FIRE
//Offset - 0xF7FFA4E1 - Guard Mines
//Offset - 0xF7FF5FC1 - Hidden Passage
//Offset - 0xF7FFA471 - Hunter of Black Feathers
//Offset - 0xF7FF9E15 - Imperial Custom
//Offset - 0xF7FF9D31 - Jester Confit
//Offset - 0xF7FF9D2D - Jester Lord
//Offset - 0xF7FF5FBD - Jester's Panic
//Offset - 0xF7FF5FC5 - Late Penalty
//Offset - 0xF7FF9C15 - Level Retuner
//Offset - 0xF7FFA5F9 - Mine Mole
//Offset - 0xF7FF9985 - Raptor Wing Strike
//Offset - 0xF7FF98E1 - Spell Reactor・RE
//Offset - 0xF7FF9DD1 - Spirit Burner
//Offset - 0xF7FF9981 - Star Blast
//Offset - 0xF7FF98D1 - Summon Reactor・SK
//Offset - 0xF7FF98D9 - Trap Reactor・Y FI
//Offset - 0xF7FF9C1D - Trap Stun
//Offset - 0xF7FF5FC9 - Tuning Barrier
//Offset - 0xF7FFA665 - Voltic Bicorn

function soaring_blackwings() => byte(0xF7FF9BC9+dword(0xe7b054))/byte(0xF7FF9BC9)+byte(0xF7FFA5F5+dword(0xe7b054))/byte(0xF7FFA5F5)+
                                 byte(0xF7FF98DD+dword(0xe7b054))/byte(0xF7FF98DD)+byte(0xF7FFA4DD+dword(0xe7b054))/byte(0xF7FFA4DD)+
                                 byte(0xF7FF9BCD+dword(0xe7b054))/byte(0xF7FF9BCD)+byte(0xF7FFA489+dword(0xe7b054))/byte(0xF7FFA489)+
                                 byte(0xF7FFA835+dword(0xe7b054))/byte(0xF7FFA835)+byte(0xF7FFA775+dword(0xe7b054))/byte(0xF7FFA775)+
                                 byte(0xF7FFA771+dword(0xe7b054))/byte(0xF7FFA771)+byte(0xF7FFA4D5+dword(0xe7b054))/byte(0xF7FFA4D5)+
                                 byte(0xF7FF9B2D+dword(0xe7b054))/byte(0xF7FF9B2D)+byte(0xF7FFA4D9+dword(0xe7b054))/byte(0xF7FFA4D9)+
                                 byte(0xF7FFA841+dword(0xe7b054))/byte(0xF7FFA841)+byte(0xF7FF9909+dword(0xe7b054))/byte(0xF7FF9909)+
                                 byte(0xF7FFA3E5+dword(0xe7b054))/byte(0xF7FFA3E5)+byte(0xF7FF9B39+dword(0xe7b054))/byte(0xF7FF9B39)+
                                 byte(0xF7FFA76D+dword(0xe7b054))/byte(0xF7FFA76D)+byte(0xF7FF9D25+dword(0xe7b054))/byte(0xF7FF9D25)+
                                 byte(0xF7FF9905+dword(0xe7b054))/byte(0xF7FF9905)+byte(0xF7FFA3DD+dword(0xe7b054))/byte(0xF7FFA3DD)+
                                 byte(0xF7FFA3E1+dword(0xe7b054))/byte(0xF7FFA3E1)+byte(0xF7FF9B35+dword(0xe7b054))/byte(0xF7FF9B35)+
                                 byte(0xF7FF9D1D+dword(0xe7b054))/byte(0xF7FF9D1D)+byte(0xF7FF9B31+dword(0xe7b054))/byte(0xF7FF9B31)+
                                 byte(0xF7FF9FBD+dword(0xe7b054))/byte(0xF7FF9FBD)+byte(0xF7FF990D+dword(0xe7b054))/byte(0xF7FF990D)+
                                 byte(0xF7FF9D21+dword(0xe7b054))/byte(0xF7FF9D21)+byte(0xF7FF9BA9+dword(0xe7b054))/byte(0xF7FF9BA9)+
                                 byte(0xF7FF9969+dword(0xe7b054))/byte(0xF7FF9969)+byte(0xF7FF5FB9+dword(0xe7b054))/byte(0xF7FF5FB9)+
                                 byte(0xF7FFA48D+dword(0xe7b054))/byte(0xF7FFA48D)+byte(0xF7FF5E6D+dword(0xe7b054))/byte(0xF7FF5E6D)+
                                 byte(0xF7FF9D45+dword(0xe7b054))/byte(0xF7FF9D45)+byte(0xF7FF9D41+dword(0xe7b054))/byte(0xF7FF9D41)+
                                 byte(0xF7FFA839+dword(0xe7b054))/byte(0xF7FFA839)+byte(0xF7FF9C11+dword(0xe7b054))/byte(0xF7FF9C11)+
                                 byte(0xF7FF9E19+dword(0xe7b054))/byte(0xF7FF9E19)+byte(0xF7FF99D9+dword(0xe7b054))/byte(0xF7FF99D9)+
                                 byte(0xF7FF99E1+dword(0xe7b054))/byte(0xF7FF99E1)+byte(0xF7FF9C19+dword(0xe7b054))/byte(0xF7FF9C19)+
                                 byte(0xF7FF98D5+dword(0xe7b054))/byte(0xF7FF98D5)+byte(0xF7FFA4E1+dword(0xe7b054))/byte(0xF7FFA4E1)+
                                 byte(0xF7FF5FC1+dword(0xe7b054))/byte(0xF7FF5FC1)+byte(0xF7FFA471+dword(0xe7b054))/byte(0xF7FFA471)+
                                 byte(0xF7FF9E15+dword(0xe7b054))/byte(0xF7FF9E15)+byte(0xF7FF9D31+dword(0xe7b054))/byte(0xF7FF9D31)+
                                 byte(0xF7FF9D2D+dword(0xe7b054))/byte(0xF7FF9D2D)+byte(0xF7FF5FBD+dword(0xe7b054))/byte(0xF7FF5FBD)+
                                 byte(0xF7FF5FC5+dword(0xe7b054))/byte(0xF7FF5FC5)+byte(0xF7FF9C15+dword(0xe7b054))/byte(0xF7FF9C15)+
                                 byte(0xF7FFA5F9+dword(0xe7b054))/byte(0xF7FFA5F9)+byte(0xF7FF9985+dword(0xe7b054))/byte(0xF7FF9985)+
                                 byte(0xF7FF98E1+dword(0xe7b054))/byte(0xF7FF98E1)+byte(0xF7FF9DD1+dword(0xe7b054))/byte(0xF7FF9DD1)+
                                 byte(0xF7FF9981+dword(0xe7b054))/byte(0xF7FF9981)+byte(0xF7FF98D1+dword(0xe7b054))/byte(0xF7FF98D1)+
                                 byte(0xF7FF98D9+dword(0xe7b054))/byte(0xF7FF98D9)+byte(0xF7FF9C1D+dword(0xe7b054))/byte(0xF7FF9C1D)+
                                 byte(0xF7FF5FC9+dword(0xe7b054))/byte(0xF7FF5FC9)+byte(0xF7FFA665+dword(0xe7b054))/byte(0xF7FFA665)
                                 
achievement ("Soaring Blackwings", "Obtain all cards from [Soaring Blackwings] booster", 10,
trigger = save_protect() && measured(soaring_blackwings() == 60) && prev(soaring_blackwings()) != 60)

//The Secret Flower Garden Boost Packs - 81 Cards Total
//Offset - 0xF7FF9D81 - Armored Axon Kicker
//Offset - 0xF7FF9E29 - Battle Teleportation
//Offset - 0xF7FF9795 - Black Garden
//Offset - 0xF7FFA4FD - Blossom Bombardment
//Offset - 0xF7FF9DED - Brain Research Lab
//Offset - 0xF7FF9719 - Copy Plant
//Offset - 0xF7FF9B19 - Dark Verger
//Offset - 0xF7FF9521 - Destructotron
//Offset - 0xF7FF9509 - Doctor Cranium
//Offset - 0xF7FF97E9 - Doppleganger
//Offset - 0xF7FF9589 - Emergency Teleport
//Offset - 0xF7FF9B29 - Evil Thorn
//Offset - 0xF7FFA655 - Final Psychic Ogre
//Offset - 0xF7FF97B9 - Fragrance Storm
//Offset - 0xF7FF9D85 - Genetic Woman
//Offset - 0xF7FF90F9 - Gigaplant
//Offset - 0xF7FFA779 - Glow-up Bulb
//Offset - 0xF7FF96FD - Grapple Blocker
//Offset - 0xF7FFA849 - Half Counter
//Offset - 0xF7FF9B25 - Hedge Guard
//Offset - 0xF7FF996D - Hyper Psychic Blaster
//Offset - 0xF7FF9921 - Hyper Psychic Blaster/Assault Mode
//Offset - 0xF7FF99DD - Ivy Shackles
//Offset - 0xF7FF950D - Krebons
//Offset - 0xF7FF9939 - Lifeforce Harmonizer
//Offset - 0xF7FF9BC1 - Magic Planter
//Offset - 0xF7FF9561 - Magical Android
//Offset - 0xF7FF9791 - Mark of the Rose
//Offset - 0xF7FF9B7D - Master Gig
//Offset - 0xF7FF99F9 - Metaphysical Regeneration
//Offset - 0xF7FF9505 - Mind Master
//Offset - 0xF7FF95C1 - Mind Over Matter
//Offset - 0xF7FF9511 - Mind Protector
//Offset - 0xF7FFA2AD - Nature's Reflection
//Offset - 0xF7FF9C09 - Overdoom Line
//Offset - 0xF7FF9A19 - Overdrive Teleporter
//Offset - 0xF7FFA225 - Pandaborg
//Offset - 0xF7FF9B21 - Phoenixian Cluster Amaryllis
//Offset - 0xF7FF9B1D - Phoenixian Seed
//Offset - 0xF7FF9759 - Power Injector
//Offset - 0xF7FFA2E1 - Psi-Curse
//Offset - 0xF7FF9585 - Psi-Impulse
//Offset - 0xF7FF9581 - Psi-Station
//Offset - 0xF7FF9515 - Psychic Commander
//Offset - 0xF7FFA081 - Psychic Emperor
//Offset - 0xF7FF9761 - Psychic Jumper
//Offset - 0xF7FF95F1 - Psychic Overload
//Offset - 0xF7FF9BE9 - Psychic Path
//Offset - 0xF7FF95D5 - Psychic Rejuvenation
//Offset - 0xF7FF9519 - Psychic Snail
//Offset - 0xF7FF9E3D - Psychic Soul
//Offset - 0xF7FF999D - Psychic Sword
//Offset - 0xF7FF97F5 - Psychic Trigger
//Offset - 0xF7FF99F5 - Psychic Tuning
//Offset - 0xF7FF97B5 - Psychokinesis
//Offset - 0xF7FFA731 - Queen Angel of Roses
//Offset - 0xF7FF944D - Queen of Thorns
//Offset - 0xF7FF9B79 - Reinforced Human Psychic Borg
//Offset - 0xF7FFA419 - Revival Rose
//Offset - 0xF7FFA1DD - Rose Fairy
//Offset - 0xF7FF98E5 - Rose Tentacles
//Offset - 0xF7FFA72D - Rose Witch
//Offset - 0xF7FF978D - Seed of Deception
//Offset - 0xF7FFA481 - Splendid Rose
//Offset - 0xF7FFA845 - Star Siphon
//Offset - 0xF7FF975D - Storm Caller
//Offset - 0xF7FF5EAD - Synchro Back
//Offset - 0xF7FF9701 - Telekinetic Charging Cell
//Offset - 0xF7FF99A1 - Telekinetic Power Well
//Offset - 0xF7FF951D - Telekinetic Shocker
//Offset - 0xF7FF95BD - Telepathic Power
//Offset - 0xF7FF97B1 - Teleport
//Offset - 0xF7FF9BBD - Thorn of Malice
//Offset - 0xF7FF9565 - Thought Ruler Archfiend
//Offset - 0xF7FF9911 - Twilight Rose Knight
//Offset - 0xF7FF997D - Vengeful Servant
//Offset - 0xF7FF9A39 - Violet Witch
//Offset - 0xF7FF9715 - Wall of Ivy
//Offset - 0xF7FF9C0D - Wicked Rebirth
//Offset - 0xF7FFA1D9 - Witch of the Black Rose
//Offset - 0xF7FF9BC5 - Wonder Clover

function secret_flower_garden() => byte(0xF7FF9D81+dword(0xe7b054))/byte(0xF7FF9D81)+byte(0xF7FF9E29+dword(0xe7b054))/byte(0xF7FF9E29)+
                                   byte(0xF7FF9795+dword(0xe7b054))/byte(0xF7FF9795)+byte(0xF7FFA4FD+dword(0xe7b054))/byte(0xF7FFA4FD)+
                                   byte(0xF7FF9DED+dword(0xe7b054))/byte(0xF7FF9DED)+byte(0xF7FF9719+dword(0xe7b054))/byte(0xF7FF9719)+
                                   byte(0xF7FF9B19+dword(0xe7b054))/byte(0xF7FF9B19)+byte(0xF7FF9521+dword(0xe7b054))/byte(0xF7FF9521)+
                                   byte(0xF7FF9509+dword(0xe7b054))/byte(0xF7FF9509)+byte(0xF7FF97E9+dword(0xe7b054))/byte(0xF7FF97E9)+
                                   byte(0xF7FF9589+dword(0xe7b054))/byte(0xF7FF9589)+byte(0xF7FF9B29+dword(0xe7b054))/byte(0xF7FF9B29)+
                                   byte(0xF7FFA655+dword(0xe7b054))/byte(0xF7FFA655)+byte(0xF7FF97B9+dword(0xe7b054))/byte(0xF7FF97B9)+
                                   byte(0xF7FF9D85+dword(0xe7b054))/byte(0xF7FF9D85)+byte(0xF7FF90F9+dword(0xe7b054))/byte(0xF7FF90F9)+
                                   byte(0xF7FFA779+dword(0xe7b054))/byte(0xF7FFA779)+byte(0xF7FF96FD+dword(0xe7b054))/byte(0xF7FF96FD)+
                                   byte(0xF7FFA849+dword(0xe7b054))/byte(0xF7FFA849)+byte(0xF7FF9B25+dword(0xe7b054))/byte(0xF7FF9B25)+
                                   byte(0xF7FF996D+dword(0xe7b054))/byte(0xF7FF996D)+byte(0xF7FF9921+dword(0xe7b054))/byte(0xF7FF9921)+
                                   byte(0xF7FF99DD+dword(0xe7b054))/byte(0xF7FF99DD)+byte(0xF7FF950D+dword(0xe7b054))/byte(0xF7FF950D)+
                                   byte(0xF7FF9939+dword(0xe7b054))/byte(0xF7FF9939)+byte(0xF7FF9BC1+dword(0xe7b054))/byte(0xF7FF9BC1)+
                                   byte(0xF7FF9561+dword(0xe7b054))/byte(0xF7FF9561)+byte(0xF7FF9791+dword(0xe7b054))/byte(0xF7FF9791)+
                                   byte(0xF7FF9B7D+dword(0xe7b054))/byte(0xF7FF9B7D)+byte(0xF7FF99F9+dword(0xe7b054))/byte(0xF7FF99F9)+
                                   byte(0xF7FF9505+dword(0xe7b054))/byte(0xF7FF9505)+byte(0xF7FF95C1+dword(0xe7b054))/byte(0xF7FF95C1)+
                                   byte(0xF7FF9511+dword(0xe7b054))/byte(0xF7FF9511)+byte(0xF7FFA2AD+dword(0xe7b054))/byte(0xF7FFA2AD)+
                                   byte(0xF7FF9C09+dword(0xe7b054))/byte(0xF7FF9C09)+byte(0xF7FF9A19+dword(0xe7b054))/byte(0xF7FF9A19)+
                                   byte(0xF7FFA225+dword(0xe7b054))/byte(0xF7FFA225)+byte(0xF7FF9B21+dword(0xe7b054))/byte(0xF7FF9B21)+
                                   byte(0xF7FF9B1D+dword(0xe7b054))/byte(0xF7FF9B1D)+byte(0xF7FF9759+dword(0xe7b054))/byte(0xF7FF9759)+
                                   byte(0xF7FFA2E1+dword(0xe7b054))/byte(0xF7FFA2E1)+byte(0xF7FF9585+dword(0xe7b054))/byte(0xF7FF9585)+
                                   byte(0xF7FF9581+dword(0xe7b054))/byte(0xF7FF9581)+byte(0xF7FF9515+dword(0xe7b054))/byte(0xF7FF9515)+
                                   byte(0xF7FFA081+dword(0xe7b054))/byte(0xF7FFA081)+byte(0xF7FF9761+dword(0xe7b054))/byte(0xF7FF9761)+
                                   byte(0xF7FF95F1+dword(0xe7b054))/byte(0xF7FF95F1)+byte(0xF7FF9BE9+dword(0xe7b054))/byte(0xF7FF9BE9)+
                                   byte(0xF7FF95D5+dword(0xe7b054))/byte(0xF7FF95D5)+byte(0xF7FF9519+dword(0xe7b054))/byte(0xF7FF9519)+
                                   byte(0xF7FF9E3D+dword(0xe7b054))/byte(0xF7FF9E3D)+byte(0xF7FF999D+dword(0xe7b054))/byte(0xF7FF999D)+
                                   byte(0xF7FF97F5+dword(0xe7b054))/byte(0xF7FF97F5)+byte(0xF7FF99F5+dword(0xe7b054))/byte(0xF7FF99F5)+
                                   byte(0xF7FF97B5+dword(0xe7b054))/byte(0xF7FF97B5)+byte(0xF7FFA731+dword(0xe7b054))/byte(0xF7FFA731)+
                                   byte(0xF7FF944D+dword(0xe7b054))/byte(0xF7FF944D)+byte(0xF7FF9B79+dword(0xe7b054))/byte(0xF7FF9B79)+
                                   byte(0xF7FFA419+dword(0xe7b054))/byte(0xF7FFA419)+byte(0xF7FFA1DD+dword(0xe7b054))/byte(0xF7FFA1DD)+
                                   byte(0xF7FF98E5+dword(0xe7b054))/byte(0xF7FF98E5)+byte(0xF7FFA72D+dword(0xe7b054))/byte(0xF7FFA72D)+
                                   byte(0xF7FF978D+dword(0xe7b054))/byte(0xF7FF978D)+byte(0xF7FFA481+dword(0xe7b054))/byte(0xF7FFA481)+
                                   byte(0xF7FFA845+dword(0xe7b054))/byte(0xF7FFA845)+byte(0xF7FF975D+dword(0xe7b054))/byte(0xF7FF975D)+
                                   byte(0xF7FF5EAD+dword(0xe7b054))/byte(0xF7FF5EAD)+byte(0xF7FF9701+dword(0xe7b054))/byte(0xF7FF9701)+
                                   byte(0xF7FF99A1+dword(0xe7b054))/byte(0xF7FF99A1)+byte(0xF7FF951D+dword(0xe7b054))/byte(0xF7FF951D)+
                                   byte(0xF7FF95BD+dword(0xe7b054))/byte(0xF7FF95BD)+byte(0xF7FF97B1+dword(0xe7b054))/byte(0xF7FF97B1)+
                                   byte(0xF7FF9BBD+dword(0xe7b054))/byte(0xF7FF9BBD)+byte(0xF7FF9565+dword(0xe7b054))/byte(0xF7FF9565)+
                                   byte(0xF7FF9911+dword(0xe7b054))/byte(0xF7FF9911)+byte(0xF7FF997D+dword(0xe7b054))/byte(0xF7FF997D)+
                                   byte(0xF7FF9A39+dword(0xe7b054))/byte(0xF7FF9A39)+byte(0xF7FF9715+dword(0xe7b054))/byte(0xF7FF9715)+
                                   byte(0xF7FF9C0D+dword(0xe7b054))/byte(0xF7FF9C0D)+byte(0xF7FFA1D9+dword(0xe7b054))/byte(0xF7FFA1D9)+
                                   byte(0xF7FF9BC5+dword(0xe7b054))/byte(0xF7FF9BC5)
                                   
achievement ("The Secret Flower Garden", "Obtain all cards from [The Secret Flower Garden] booster", 10,
trigger = save_protect() && measured(secret_flower_garden() == 81) && prev(secret_flower_garden()) != 81)

//The Twins Booster Packs - 83 Cards Total
//Offset - 0xF7FF9DC9 - Ancient Forest
//Offset - 0xF7FF82E1 - Battery Charger
//Offset - 0xF7FF82BD - Batteryman AA
//Offset - 0xF7FFA461 - Batteryman AAA
//Offset - 0xF7FF83E9 - Batteryman C
//Offset - 0xF7FF935D - Batteryman Charger
//Offset - 0xF7FF8791 - Batteryman D
//Offset - 0xF7FFA465 - Batteryman Fuel Cell
//Offset - 0xF7FF9361 - Batteryman Industrial Strength
//Offset - 0xF7FF9365 - Batteryman Micro-Cell
//Offset - 0xF7FFA421 - Bird of Roses
//Offset - 0xF7FFA279 - Break! Draw!
//Offset - 0xF7FF5EB5 - Central Shield
//Offset - 0xF7FF9BD5 - Double Tool C&D
//Offset - 0xF7FFA4B1 - Electromagnetic Shield
//Offset - 0xF7FF9DCD - Emergency Assistance
//Offset - 0xF7FF9799 - Factory of 100 Machines
//Offset - 0xF7FFA429 - Fairy Archer
//Offset - 0xF7FF9E11 - Fairy Wind
//Offset - 0xF7FF9B49 - Gadget Arms
//Offset - 0xF7FF973D - Gadget Driver
//Offset - 0xF7FF9739 - Gadget Hauler
//Offset - 0xF7FF66E1 - Horn of the Unicorn
//Offset - 0xF7FF95D1 - Judgment of Thunder
//Offset - 0xF7FF9BD1 - Junk Box
//Offset - 0xF7FF9D11 - Kuribon
//Offset - 0xF7FF97ED - Morphtransition
//Offset - 0xF7FF979D - Morphtronic Accelerator
//Offset - 0xF7FF9C21 - Morphtronic Bind
//Offset - 0xF7FF9915 - Morphtronic Boarden
//Offset - 0xF7FF9729 - Morphtronic Boomboxen
//Offset - 0xF7FF972D - Morphtronic Cameran
//Offset - 0xF7FF971D - Morphtronic Celfon
//Offset - 0xF7FF9735 - Morphtronic Clocken
//Offset - 0xF7FF97A1 - Morphtronic Cord
//Offset - 0xF7FF9725 - Morphtronic Datatron
//Offset - 0xF7FF97A5 - Morphtronic Engine
//Offset - 0xF7FF99E5 - Morphtronic Forcefield
//Offset - 0xF7FF9721 - Morphtronic Magnen
//Offset - 0xF7FF9D29 - Morphtronic Magnen Bar
//Offset - 0xF7FF998D - Morphtronic Map
//Offset - 0xF7FF99E9 - Morphtronic Mix-up
//Offset - 0xF7FF97F1 - Morphtronic Monitron
//Offset - 0xF7FF9731 - Morphtronic Radion
//Offset - 0xF7FF9B3D - Morphtronic Remoten
//Offset - 0xF7FF9BD9 - Morphtronic Repair Unit
//Offset - 0xF7FF9989 - Morphtronic Rusty Engine
//Offset - 0xF7FF9B45 - Morphtronic Scopen
//Offset - 0xF7FF9919 - Morphtronic Slingen
//Offset - 0xF7FFA41D - Morphtronic Vacuumen
//Offset - 0xF7FF9B41 - Morphtronic Videon
//Offset - 0xF7FFA501 - Morphtronics, Scramble!
//Offset - 0xF7FF62AD - Wattkid
//Offset - 0xF7FF5EB9 - Pain to Power
//Offset - 0xF7FF9E0D - Pixie Ring
//Offset - 0xF7FF940D - Portable Battery Pack
//Offset - 0xF7FFA505 - Power Break
//Offset - 0xF7FF5EB1 - Power Converter
//Offset - 0xF7FFA27D - Power Pickaxe
//Offset - 0xF7FF93C1 - Quick Charger
//Offset - 0xF7FF9595 - Recycling Batteries
//Offset - 0xF7FF9F35 - Regulus
//Offset - 0xF7FFA275 - Rocket Pilder
//Offset - 0xF7FF93C5 - Short Circuit
//Offset - 0xF7FFA425 - Spore
//Offset - 0xF7FF9D19 - Sunlight Unicorn
//Offset - 0xF7FF9D15 - Sunny Pixie
//Offset - 0xF7FFA621 - Wattbetta
//Offset - 0xF7FFA6DD - Wattcannon
//Offset - 0xF7FFA7F9 - Wattcastle
//Offset - 0xF7FFA689 - Wattcine
//Offset - 0xF7FFA4AD - Wattcube
//Offset - 0xF7FFA7A1 - Wattdragonfly
//Offset - 0xF7FFA441 - Wattfox
//Offset - 0xF7FFA43D - Wattgiraffe
//Offset - 0xF7FFA79D - Watthopper
//Offset - 0xF7FFA7FD - Wattjustment
//Offset - 0xF7FFA859 - Wattkeeper
//Offset - 0xF7FFA799 - Wattkiwi
//Offset - 0xF7FFA625 - Wattlemur
//Offset - 0xF7FFA629 - Wattpheasant
//Offset - 0xF7FFA7A5 - Wattsquirrel
//Offset - 0xF7FFA445 - Wattwoodpecker

function the_twins() => byte(0xF7FF9DC9+dword(0xe7b054))/byte(0xF7FF9DC9)+byte(0xF7FF82E1+dword(0xe7b054))/byte(0xF7FF82E1)+
                        byte(0xF7FF82BD+dword(0xe7b054))/byte(0xF7FF82BD)+byte(0xF7FFA461+dword(0xe7b054))/byte(0xF7FFA461)+
                        byte(0xF7FF83E9+dword(0xe7b054))/byte(0xF7FF83E9)+byte(0xF7FF935D+dword(0xe7b054))/byte(0xF7FF935D)+
                        byte(0xF7FF8791+dword(0xe7b054))/byte(0xF7FF8791)+byte(0xF7FFA465+dword(0xe7b054))/byte(0xF7FFA465)+
                        byte(0xF7FF9361+dword(0xe7b054))/byte(0xF7FF9361)+byte(0xF7FF9365+dword(0xe7b054))/byte(0xF7FF9365)+
                        byte(0xF7FFA421+dword(0xe7b054))/byte(0xF7FFA421)+byte(0xF7FFA279+dword(0xe7b054))/byte(0xF7FFA279)+
                        byte(0xF7FF5EB5+dword(0xe7b054))/byte(0xF7FF5EB5)+byte(0xF7FF9BD5+dword(0xe7b054))/byte(0xF7FF9BD5)+
                        byte(0xF7FFA4B1+dword(0xe7b054))/byte(0xF7FFA4B1)+byte(0xF7FF9DCD+dword(0xe7b054))/byte(0xF7FF9DCD)+
                        byte(0xF7FF9799+dword(0xe7b054))/byte(0xF7FF9799)+byte(0xF7FFA429+dword(0xe7b054))/byte(0xF7FFA429)+
                        byte(0xF7FF9E11+dword(0xe7b054))/byte(0xF7FF9E11)+byte(0xF7FF9B49+dword(0xe7b054))/byte(0xF7FF9B49)+
                        byte(0xF7FF973D+dword(0xe7b054))/byte(0xF7FF973D)+byte(0xF7FF9739+dword(0xe7b054))/byte(0xF7FF9739)+
                        byte(0xF7FF66E1+dword(0xe7b054))/byte(0xF7FF66E1)+byte(0xF7FF95D1+dword(0xe7b054))/byte(0xF7FF95D1)+
                        byte(0xF7FF9BD1+dword(0xe7b054))/byte(0xF7FF9BD1)+byte(0xF7FF9D11+dword(0xe7b054))/byte(0xF7FF9D11)+
                        byte(0xF7FF97ED+dword(0xe7b054))/byte(0xF7FF97ED)+byte(0xF7FF979D+dword(0xe7b054))/byte(0xF7FF979D)+
                        byte(0xF7FF9C21+dword(0xe7b054))/byte(0xF7FF9C21)+byte(0xF7FF9915+dword(0xe7b054))/byte(0xF7FF9915)+
                        byte(0xF7FF9729+dword(0xe7b054))/byte(0xF7FF9729)+byte(0xF7FF972D+dword(0xe7b054))/byte(0xF7FF972D)+
                        byte(0xF7FF971D+dword(0xe7b054))/byte(0xF7FF971D)+byte(0xF7FF9735+dword(0xe7b054))/byte(0xF7FF9735)+
                        byte(0xF7FF97A1+dword(0xe7b054))/byte(0xF7FF97A1)+byte(0xF7FF9725+dword(0xe7b054))/byte(0xF7FF9725)+
                        byte(0xF7FF97A5+dword(0xe7b054))/byte(0xF7FF97A5)+byte(0xF7FF99E5+dword(0xe7b054))/byte(0xF7FF99E5)+
                        byte(0xF7FF9721+dword(0xe7b054))/byte(0xF7FF9721)+byte(0xF7FF9D29+dword(0xe7b054))/byte(0xF7FF9D29)+
                        byte(0xF7FF998D+dword(0xe7b054))/byte(0xF7FF998D)+byte(0xF7FF99E9+dword(0xe7b054))/byte(0xF7FF99E9)+
                        byte(0xF7FF97F1+dword(0xe7b054))/byte(0xF7FF97F1)+byte(0xF7FF9731+dword(0xe7b054))/byte(0xF7FF9731)+
                        byte(0xF7FF9B3D+dword(0xe7b054))/byte(0xF7FF9B3D)+byte(0xF7FF9BD9+dword(0xe7b054))/byte(0xF7FF9BD9)+
                        byte(0xF7FF9989+dword(0xe7b054))/byte(0xF7FF9989)+byte(0xF7FF9B45+dword(0xe7b054))/byte(0xF7FF9B45)+
                        byte(0xF7FF9919+dword(0xe7b054))/byte(0xF7FF9919)+byte(0xF7FFA41D+dword(0xe7b054))/byte(0xF7FFA41D)+
                        byte(0xF7FF9B41+dword(0xe7b054))/byte(0xF7FF9B41)+byte(0xF7FFA501+dword(0xe7b054))/byte(0xF7FFA501)+
                        byte(0xF7FF62AD+dword(0xe7b054))/byte(0xF7FF62AD)+byte(0xF7FF5EB9+dword(0xe7b054))/byte(0xF7FF5EB9)+
                        byte(0xF7FF9E0D+dword(0xe7b054))/byte(0xF7FF9E0D)+byte(0xF7FF940D+dword(0xe7b054))/byte(0xF7FF940D)+
                        byte(0xF7FFA505+dword(0xe7b054))/byte(0xF7FFA505)+byte(0xF7FF5EB1+dword(0xe7b054))/byte(0xF7FF5EB1)+
                        byte(0xF7FFA27D+dword(0xe7b054))/byte(0xF7FFA27D)+byte(0xF7FF93C1+dword(0xe7b054))/byte(0xF7FF93C1)+
                        byte(0xF7FF9595+dword(0xe7b054))/byte(0xF7FF9595)+byte(0xF7FF9F35+dword(0xe7b054))/byte(0xF7FF9F35)+
                        byte(0xF7FFA275+dword(0xe7b054))/byte(0xF7FFA275)+byte(0xF7FF93C5+dword(0xe7b054))/byte(0xF7FF93C5)+
                        byte(0xF7FFA425+dword(0xe7b054))/byte(0xF7FFA425)+byte(0xF7FF9D19+dword(0xe7b054))/byte(0xF7FF9D19)+
                        byte(0xF7FF9D15+dword(0xe7b054))/byte(0xF7FF9D15)+byte(0xF7FFA621+dword(0xe7b054))/byte(0xF7FFA621)+
                        byte(0xF7FFA6DD+dword(0xe7b054))/byte(0xF7FFA6DD)+byte(0xF7FFA7F9+dword(0xe7b054))/byte(0xF7FFA7F9)+
                        byte(0xF7FFA689+dword(0xe7b054))/byte(0xF7FFA689)+byte(0xF7FFA4AD+dword(0xe7b054))/byte(0xF7FFA4AD)+
                        byte(0xF7FFA7A1+dword(0xe7b054))/byte(0xF7FFA7A1)+byte(0xF7FFA441+dword(0xe7b054))/byte(0xF7FFA441)+
                        byte(0xF7FFA43D+dword(0xe7b054))/byte(0xF7FFA43D)+byte(0xF7FFA79D+dword(0xe7b054))/byte(0xF7FFA79D)+
                        byte(0xF7FFA7FD+dword(0xe7b054))/byte(0xF7FFA7FD)+byte(0xF7FFA859+dword(0xe7b054))/byte(0xF7FFA859)+
                        byte(0xF7FFA799+dword(0xe7b054))/byte(0xF7FFA799)+byte(0xF7FFA625+dword(0xe7b054))/byte(0xF7FFA625)+
                        byte(0xF7FFA629+dword(0xe7b054))/byte(0xF7FFA629)+byte(0xF7FFA7A5+dword(0xe7b054))/byte(0xF7FFA7A5)+
                        byte(0xF7FFA445+dword(0xe7b054))/byte(0xF7FFA445)
                        
achievement ("The Twins", "Obtain all cards from [The Twins] booster", 10,
trigger = save_protect() && measured(the_twins() == 83) && prev(the_twins()) != 83)

//Unforgivable Sun Booster Packs - 62 Cards Total
//Offset - 0xF7FF5E51 - Ashoka Pillar
//Offset - 0xF7FF5EC1 - Assault Dog
//Offset - 0xF7FF6D89 - Big Shield Gardna
//Offset - 0xF7FF5E95 - Blizzard Lizard
//Offset - 0xF7FF95B5 - Broken Blocker
//Offset - 0xF7FF9CD9 - Burning Skull Head
//Offset - 0xF7FF5F8D - Buster Blaster
//Offset - 0xF7FF5E55 - Cabrera Stone
//Offset - 0xF7FF60B9 - Climactic Barricade
//Offset - 0xF7FF5E4D - Crystal Skull
//Offset - 0xF7FF5EA1 - Defender's Mind
//Offset - 0xF7FF5EC9 - Discord Counter
//Offset - 0xF7FF5F91 - Double Type Rescue
//Offset - 0xF7FF6C81 - Eatgaboon
//Offset - 0xF7FF60B5 - Final Penalty
//Offset - 0xF7FF5E9D - Gate Defender
//Offset - 0xF7FF5E5D - Giant Ushi Oni
//Offset - 0xF7FF9501 - Gonogo
//Offset - 0xF7FF94F9 - Handcuffs Dragon
//Offset - 0xF7FF5F6D - Hook the Hidden Knight
//Offset - 0xF7FF5E99 - Ice Mirror
//Offset - 0xF7FF9A35 - Ido the Supreme Magical Force
//Offset - 0xF7FF95CD - Intercept
//Offset - 0xF7FF9751 - Iron Chain Blaster
//Offset - 0xF7FF9755 - Iron Chain Coil
//Offset - 0xF7FF9749 - Iron Chain Repairman
//Offset - 0xF7FF974D - Iron Chain Snake
//Offset - 0xF7FF94F5 - Jutte Fighter
//Offset - 0xF7FF5E61 - Masked Knight LV3
//Offset - 0xF7FF5E65 - Masked Knight LV5
//Offset - 0xF7FF5E69 - Masked Knight LV7
//Offset - 0xF7FF82A5 - Mid Shield Gardna
//Offset - 0xF7FF94FD - Montage Dragon
//Offset - 0xF7FF8805 - No Entry!!
//Offset - 0xF7FF97AD - Paralyzing Chain
//Offset - 0xF7FF97A9 - Poison Chain
//Offset - 0xF7FF9745 - Pursuit Chaser
//Offset - 0xF7FFA069 - Regretful Rebirth
//Offset - 0xF7FFA395 - Samurai Sword Baron
//Offset - 0xF7FF9741 - Search Striker
//Offset - 0xF7FF91ED - Security Orb
//Offset - 0xF7FFA06D - Shield Worm
//Offset - 0xF7FF9CDD - Skull Conductor
//Offset - 0xF7FF9CD5 - Skull Flame
//Offset - 0xF7FF6D61 - Stone Statue of the Aztecs
//Offset - 0xF7FFA399 - Stygian Security
//Offset - 0xF7FFA39D - Stygian Sergeants
//Offset - 0xF7FFA3A1 - Stygian Street Patrol
//Offset - 0xF7FF9CD1 - Supersonic Skull Flame
//Offset - 0xF7FF5F71 - Tech Genus Cyber Magician SC-01
//Offset - 0xF7FF5F81 - Tech Genus Power Gladiator WAX-1000
//Offset - 0xF7FF5F7D - Tech Genus Rush Rhino BE-04
//Offset - 0xF7FF5F75 - Tech Genus Striker WA-01
//Offset - 0xF7FF5F79 - Tech Genus Werewolf BW-03
//Offset - 0xF7FF5F85 - Tech Genus Wonder Magician SCX-1000
//Offset - 0xF7FF5ECD - Terminal Countdown
//Offset - 0xF7FF9B4D - Torapart
//Offset - 0xF7FF5E59 - Triangle O
//Offset - 0xF7FF622D - Tyhone
//Offset - 0xF7FFA061 - Warm Worm
//Offset - 0xF7FF5EC5 - Wiretap
//Offset - 0xF7FFA065 - Worm Bait

function unforgivable_sun() => byte(0xF7FF5E51+dword(0xe7b054))/byte(0xF7FF5E51)+byte(0xF7FF5EC1+dword(0xe7b054))/byte(0xF7FF5EC1)+
                               byte(0xF7FF6D89+dword(0xe7b054))/byte(0xF7FF6D89)+byte(0xF7FF5E95+dword(0xe7b054))/byte(0xF7FF5E95)+
                               byte(0xF7FF95B5+dword(0xe7b054))/byte(0xF7FF95B5)+byte(0xF7FF9CD9+dword(0xe7b054))/byte(0xF7FF9CD9)+
                               byte(0xF7FF5F8D+dword(0xe7b054))/byte(0xF7FF5F8D)+byte(0xF7FF5E55+dword(0xe7b054))/byte(0xF7FF5E55)+
                               byte(0xF7FF60B9+dword(0xe7b054))/byte(0xF7FF60B9)+byte(0xF7FF5E4D+dword(0xe7b054))/byte(0xF7FF5E4D)+
                               byte(0xF7FF5EA1+dword(0xe7b054))/byte(0xF7FF5EA1)+byte(0xF7FF5EC9+dword(0xe7b054))/byte(0xF7FF5EC9)+
                               byte(0xF7FF5F91+dword(0xe7b054))/byte(0xF7FF5F91)+byte(0xF7FF6C81+dword(0xe7b054))/byte(0xF7FF6C81)+
                               byte(0xF7FF60B5+dword(0xe7b054))/byte(0xF7FF60B5)+byte(0xF7FF5E9D+dword(0xe7b054))/byte(0xF7FF5E9D)+
                               byte(0xF7FF5E5D+dword(0xe7b054))/byte(0xF7FF5E5D)+byte(0xF7FF9501+dword(0xe7b054))/byte(0xF7FF9501)+
                               byte(0xF7FF94F9+dword(0xe7b054))/byte(0xF7FF94F9)+byte(0xF7FF5F6D+dword(0xe7b054))/byte(0xF7FF5F6D)+
                               byte(0xF7FF5E99+dword(0xe7b054))/byte(0xF7FF5E99)+byte(0xF7FF9A35+dword(0xe7b054))/byte(0xF7FF9A35)+
                               byte(0xF7FF95CD+dword(0xe7b054))/byte(0xF7FF95CD)+byte(0xF7FF9751+dword(0xe7b054))/byte(0xF7FF9751)+
                               byte(0xF7FF9755+dword(0xe7b054))/byte(0xF7FF9755)+byte(0xF7FF9749+dword(0xe7b054))/byte(0xF7FF9749)+
                               byte(0xF7FF974D+dword(0xe7b054))/byte(0xF7FF974D)+byte(0xF7FF94F5+dword(0xe7b054))/byte(0xF7FF94F5)+
                               byte(0xF7FF5E61+dword(0xe7b054))/byte(0xF7FF5E61)+byte(0xF7FF5E65+dword(0xe7b054))/byte(0xF7FF5E65)+
                               byte(0xF7FF5E69+dword(0xe7b054))/byte(0xF7FF5E69)+byte(0xF7FF82A5+dword(0xe7b054))/byte(0xF7FF82A5)+
                               byte(0xF7FF94FD+dword(0xe7b054))/byte(0xF7FF94FD)+byte(0xF7FF8805+dword(0xe7b054))/byte(0xF7FF8805)+
                               byte(0xF7FF97AD+dword(0xe7b054))/byte(0xF7FF97AD)+byte(0xF7FF97A9+dword(0xe7b054))/byte(0xF7FF97A9)+
                               byte(0xF7FF9745+dword(0xe7b054))/byte(0xF7FF9745)+byte(0xF7FFA069+dword(0xe7b054))/byte(0xF7FFA069)+
                               byte(0xF7FFA395+dword(0xe7b054))/byte(0xF7FFA395)+byte(0xF7FF9741+dword(0xe7b054))/byte(0xF7FF9741)+
                               byte(0xF7FF91ED+dword(0xe7b054))/byte(0xF7FF91ED)+byte(0xF7FFA06D+dword(0xe7b054))/byte(0xF7FFA06D)+
                               byte(0xF7FF9CDD+dword(0xe7b054))/byte(0xF7FF9CDD)+byte(0xF7FF9CD5+dword(0xe7b054))/byte(0xF7FF9CD5)+
                               byte(0xF7FF6D61+dword(0xe7b054))/byte(0xF7FF6D61)+byte(0xF7FFA399+dword(0xe7b054))/byte(0xF7FFA399)+
                               byte(0xF7FFA39D+dword(0xe7b054))/byte(0xF7FFA39D)+byte(0xF7FFA3A1+dword(0xe7b054))/byte(0xF7FFA3A1)+
                               byte(0xF7FF9CD1+dword(0xe7b054))/byte(0xF7FF9CD1)+byte(0xF7FF5F71+dword(0xe7b054))/byte(0xF7FF5F71)+
                               byte(0xF7FF5F81+dword(0xe7b054))/byte(0xF7FF5F81)+byte(0xF7FF5F7D+dword(0xe7b054))/byte(0xF7FF5F7D)+
                               byte(0xF7FF5F75+dword(0xe7b054))/byte(0xF7FF5F75)+byte(0xF7FF5F79+dword(0xe7b054))/byte(0xF7FF5F79)+
                               byte(0xF7FF5F85+dword(0xe7b054))/byte(0xF7FF5F85)+byte(0xF7FF5ECD+dword(0xe7b054))/byte(0xF7FF5ECD)+
                               byte(0xF7FF9B4D+dword(0xe7b054))/byte(0xF7FF9B4D)+byte(0xF7FF5E59+dword(0xe7b054))/byte(0xF7FF5E59)+
                               byte(0xF7FF622D+dword(0xe7b054))/byte(0xF7FF622D)+byte(0xF7FFA061+dword(0xe7b054))/byte(0xF7FFA061)+
                               byte(0xF7FF5EC5+dword(0xe7b054))/byte(0xF7FF5EC5)+byte(0xF7FFA065+dword(0xe7b054))/byte(0xF7FFA065)
                               
achievement ("Unforgivable Sun", "Obtain all cards from [Unforgivable Sun] booster", 10,
trigger = save_protect() && measured(unforgivable_sun() == 62) && prev(unforgivable_sun()) != 62)

//Flowers on All Sides Booster Packs - 72 Cards Total
//Offset - 0xF7FF8975 - Allure Queen LV3
//Offset - 0xF7FF8979 - Allure Queen LV5
//Offset - 0xF7FF897D - Allure Queen LV7
//Offset - 0xF7FF9DB5 - Ancient Sacred Wyvern
//Offset - 0xF7FF74F5 - Array of Revealing Light
//Offset - 0xF7FF9FD9 - Attack Pheromones
//Offset - 0xF7FF96F5 - Avenging Knight Parshath
//Offset - 0xF7FF79C1 - Bowganian
//Offset - 0xF7FF9F51 - Catoblepas and the Witch of Fate
//Offset - 0xF7FF5FD9 - Centaur Mina
//Offset - 0xF7FF5FE5 - Chain Close
//Offset - 0xF7FF91BD - Cry Havoc!
//Offset - 0xF7FF8DED - Crystal Seer
//Offset - 0xF7FF7A25 - D.D. Warrior Lady
//Offset - 0xF7FF732D - Dancing Fairy
//Offset - 0xF7FF92B5 - Dark Grepher
//Offset - 0xF7FF8981 - Dark Lucius LV4
//Offset - 0xF7FF8985 - Dark Lucius LV6
//Offset - 0xF7FF8989 - Dark Lucius LV8
//Offset - 0xF7FF8439 - Dimension Wall
//Offset - 0xF7FF8A15 - Dimensional Inversion
//Offset - 0xF7FF7B0D - Falling Down
//Offset - 0xF7FFA901 - Fleur Synchron
//Offset - 0xF7FF5FE1 - Floral Shield
//Offset - 0xF7FF5FDD - For Our Dreams
//Offset - 0xF7FF5E81 - Fortune Fairy Ann
//Offset - 0xF7FF5E85 - Fortune Fairy Chee
//Offset - 0xF7FF5E75 - Fortune Fairy En
//Offset - 0xF7FF5E71 - Fortune Fairy Hikari
//Offset - 0xF7FF5E79 - Fortune Fairy Hu
//Offset - 0xF7FF5E7D - Fortune Fairy Swee
//Offset - 0xF7FF9F45 - Fortune Lady Dark
//Offset - 0xF7FF9F49 - Fortune Lady Earth
//Offset - 0xF7FF9D39 - Fortune Lady Fire
//Offset - 0xF7FF9D35 - Fortune Lady Light
//Offset - 0xF7FF9F41 - Fortune Lady Water
//Offset - 0xF7FF9F3D - Fortune Lady Wind
//Offset - 0xF7FF7AA1 - Gagagigo
//Offset - 0xF7FF7C25 - Giga Gagagigo
//Offset - 0xF7FF7D35 - Gogiga Gagagigo
//Offset - 0xF7FF9435 - Hanewata
//Offset - 0xF7FF6511 - Happy Lover
//Offset - 0xF7FF5FD1 - Horse of the Floral Knights
//Offset - 0xF7FF64F9 - Key Mace
//Offset - 0xF7FF7721 - Lava Golem
//Offset - 0xF7FFA909 - Liberty at Last!
//Offset - 0xF7FF5E8D - Luck Loan
//Offset - 0xF7FF71F1 - Mask of the Accursed
//Offset - 0xF7FF5E91 - Miracle Stone
//Offset - 0xF7FF7E21 - Mokey Mokey
//Offset - 0xF7FF80DD - Mokey Mokey King
//Offset - 0xF7FF80F5 - Mokey Mokey Smackdown
//Offset - 0xF7FF7A61 - Morale Boost
//Offset - 0xF7FF7479 - Nightmare Wheel
//Offset - 0xF7FF89BD - Queen's Bodyguard
//Offset - 0xF7FFA90D - Sacred Knight Joan
//Offset - 0xF7FF5FD5 - Sacred Knight's Shield Bearer
//Offset - 0xF7FF5FCD - Sacred Knight's Spearholder
//Offset - 0xF7FF7B41 - Sakuretsu Armor
//Offset - 0xF7FF8525 - Simultaneous Loss
//Offset - 0xF7FF9E1D - Slip of Fortune
//Offset - 0xF7FF9F4D - Solitaire Magician
//Offset - 0xF7FF7329 - Spirit of the Breeze
//Offset - 0xF7FF7C51 - Stealth Bird
//Offset - 0xF7FF7649 - Swarm of Locusts
//Offset - 0xF7FF7645 - Swarm of Scarabs
//Offset - 0xF7FF74ED - The A. Forces
//Offset - 0xF7FF88D5 - The Paths of Destiny
//Offset - 0xF7FF5E89 - Unacceptable Result
//Offset - 0xF7FF74D1 - Warrior Dai Grepher
//Offset - 0xF7FF8451 - Warrior Lady of the Wasteland
//Offset - 0xF7FF78BD - Wave-Motion Cannon

function flowers_on_all_sides() => byte(0xF7FF8975+dword(0xe7b054))/byte(0xF7FF8975)+byte(0xF7FF8979+dword(0xe7b054))/byte(0xF7FF8979)+
                                   byte(0xF7FF897D+dword(0xe7b054))/byte(0xF7FF897D)+byte(0xF7FF9DB5+dword(0xe7b054))/byte(0xF7FF9DB5)+
                                   byte(0xF7FF74F5+dword(0xe7b054))/byte(0xF7FF74F5)+byte(0xF7FF9FD9+dword(0xe7b054))/byte(0xF7FF9FD9)+
                                   byte(0xF7FF96F5+dword(0xe7b054))/byte(0xF7FF96F5)+byte(0xF7FF79C1+dword(0xe7b054))/byte(0xF7FF79C1)+
                                   byte(0xF7FF9F51+dword(0xe7b054))/byte(0xF7FF9F51)+byte(0xF7FF5FD9+dword(0xe7b054))/byte(0xF7FF5FD9)+
                                   byte(0xF7FF5FE5+dword(0xe7b054))/byte(0xF7FF5FE5)+byte(0xF7FF91BD+dword(0xe7b054))/byte(0xF7FF91BD)+
                                   byte(0xF7FF8DED+dword(0xe7b054))/byte(0xF7FF8DED)+byte(0xF7FF7A25+dword(0xe7b054))/byte(0xF7FF7A25)+
                                   byte(0xF7FF732D+dword(0xe7b054))/byte(0xF7FF732D)+byte(0xF7FF92B5+dword(0xe7b054))/byte(0xF7FF92B5)+
                                   byte(0xF7FF8981+dword(0xe7b054))/byte(0xF7FF8981)+byte(0xF7FF8985+dword(0xe7b054))/byte(0xF7FF8985)+
                                   byte(0xF7FF8989+dword(0xe7b054))/byte(0xF7FF8989)+byte(0xF7FF8439+dword(0xe7b054))/byte(0xF7FF8439)+
                                   byte(0xF7FF8A15+dword(0xe7b054))/byte(0xF7FF8A15)+byte(0xF7FF7B0D+dword(0xe7b054))/byte(0xF7FF7B0D)+
                                   byte(0xF7FFA901+dword(0xe7b054))/byte(0xF7FFA901)+byte(0xF7FF5FE1+dword(0xe7b054))/byte(0xF7FF5FE1)+
                                   byte(0xF7FF5FDD+dword(0xe7b054))/byte(0xF7FF5FDD)+byte(0xF7FF5E81+dword(0xe7b054))/byte(0xF7FF5E81)+
                                   byte(0xF7FF5E85+dword(0xe7b054))/byte(0xF7FF5E85)+byte(0xF7FF5E75+dword(0xe7b054))/byte(0xF7FF5E75)+
                                   byte(0xF7FF5E71+dword(0xe7b054))/byte(0xF7FF5E71)+byte(0xF7FF5E79+dword(0xe7b054))/byte(0xF7FF5E79)+
                                   byte(0xF7FF5E7D+dword(0xe7b054))/byte(0xF7FF5E7D)+byte(0xF7FF9F45+dword(0xe7b054))/byte(0xF7FF9F45)+
                                   byte(0xF7FF9F49+dword(0xe7b054))/byte(0xF7FF9F49)+byte(0xF7FF9D39+dword(0xe7b054))/byte(0xF7FF9D39)+
                                   byte(0xF7FF9D35+dword(0xe7b054))/byte(0xF7FF9D35)+byte(0xF7FF9F41+dword(0xe7b054))/byte(0xF7FF9F41)+
                                   byte(0xF7FF9F3D+dword(0xe7b054))/byte(0xF7FF9F3D)+byte(0xF7FF7AA1+dword(0xe7b054))/byte(0xF7FF7AA1)+
                                   byte(0xF7FF7C25+dword(0xe7b054))/byte(0xF7FF7C25)+byte(0xF7FF7D35+dword(0xe7b054))/byte(0xF7FF7D35)+
                                   byte(0xF7FF9435+dword(0xe7b054))/byte(0xF7FF9435)+byte(0xF7FF6511+dword(0xe7b054))/byte(0xF7FF6511)+
                                   byte(0xF7FF5FD1+dword(0xe7b054))/byte(0xF7FF5FD1)+byte(0xF7FF64F9+dword(0xe7b054))/byte(0xF7FF64F9)+
                                   byte(0xF7FF7721+dword(0xe7b054))/byte(0xF7FF7721)+byte(0xF7FFA909+dword(0xe7b054))/byte(0xF7FFA909)+
                                   byte(0xF7FF5E8D+dword(0xe7b054))/byte(0xF7FF5E8D)+byte(0xF7FF71F1+dword(0xe7b054))/byte(0xF7FF71F1)+
                                   byte(0xF7FF5E91+dword(0xe7b054))/byte(0xF7FF5E91)+byte(0xF7FF7E21+dword(0xe7b054))/byte(0xF7FF7E21)+
                                   byte(0xF7FF80DD+dword(0xe7b054))/byte(0xF7FF80DD)+byte(0xF7FF80F5+dword(0xe7b054))/byte(0xF7FF80F5)+
                                   byte(0xF7FF7A61+dword(0xe7b054))/byte(0xF7FF7A61)+byte(0xF7FF7479+dword(0xe7b054))/byte(0xF7FF7479)+
                                   byte(0xF7FF89BD+dword(0xe7b054))/byte(0xF7FF89BD)+byte(0xF7FFA90D+dword(0xe7b054))/byte(0xF7FFA90D)+
                                   byte(0xF7FF5FD5+dword(0xe7b054))/byte(0xF7FF5FD5)+byte(0xF7FF5FCD+dword(0xe7b054))/byte(0xF7FF5FCD)+
                                   byte(0xF7FF7B41+dword(0xe7b054))/byte(0xF7FF7B41)+byte(0xF7FF8525+dword(0xe7b054))/byte(0xF7FF8525)+
                                   byte(0xF7FF9E1D+dword(0xe7b054))/byte(0xF7FF9E1D)+byte(0xF7FF9F4D+dword(0xe7b054))/byte(0xF7FF9F4D)+
                                   byte(0xF7FF7329+dword(0xe7b054))/byte(0xF7FF7329)+byte(0xF7FF7C51+dword(0xe7b054))/byte(0xF7FF7C51)+
                                   byte(0xF7FF7649+dword(0xe7b054))/byte(0xF7FF7649)+byte(0xF7FF7645+dword(0xe7b054))/byte(0xF7FF7645)+
                                   byte(0xF7FF74ED+dword(0xe7b054))/byte(0xF7FF74ED)+byte(0xF7FF88D5+dword(0xe7b054))/byte(0xF7FF88D5)+
                                   byte(0xF7FF5E89+dword(0xe7b054))/byte(0xF7FF5E89)+byte(0xF7FF74D1+dword(0xe7b054))/byte(0xF7FF74D1)+
                                   byte(0xF7FF8451+dword(0xe7b054))/byte(0xF7FF8451)+byte(0xF7FF78BD+dword(0xe7b054))/byte(0xF7FF78BD)
                                   
achievement ("Flowers on All Sides", "Obtain all cards from [Flowers on All Sides] booster", 10,
trigger = save_protect() && measured(flowers_on_all_sides() == 72) && prev(flowers_on_all_sides()) != 72)

//Triangle Fixer Booster Packs - 107 Cards Total
//Offset - 0xF7FF5FA9 - Absurd Stealer
//Offset - 0xF7FFA269 - Advance Force
//Offset - 0xF7FF5EBD - Altar of the Bound Deity
//Offset - 0xF7FFA201 - Apocatequil
//Offset - 0xF7FF5FA1 - Battle Return
//Offset - 0xF7FFA021 - Bending Destiny
//Offset - 0xF7FFA2C1 - Call of the Reaper
//Offset - 0xF7FF5FAD - Convert Ghost
//Offset - 0xF7FF5E25 - Dark Diviner
//Offset - 0xF7FF5ED9 - Dark Flattop
//Offset - 0xF7FF5EE5 - Dark Matter
//Offset - 0xF7FF9F55 - Dark Spider
//Offset - 0xF7FF5E35 - Dark Tuner Catastrogue
//Offset - 0xF7FF5E39 - Dark Tuner Chaos Rogue
//Offset - 0xF7FF5E45 - Dark Tuner Dark Ape
//Offset - 0xF7FF5ED5 - Dark Tuner Dark Goddess Witaka
//Offset - 0xF7FF5ED1 - Dark Tuner Doom Submarine
//Offset - 0xF7FF5E3D - Dark Tuner Nightmare Hand
//Offset - 0xF7FF5E41 - Dark Tuner Spider Cocoon
//Offset - 0xF7FF5E49 - Dark Wave
//Offset - 0xF7FFA2BD - Destruct Potion
//Offset - 0xF7FF5FA5 - Divergence
//Offset - 0xF7FFA1E1 - Dragon Queen of Tragic Endings
//Offset - 0xF7FF9B51 - Earthbound Immortal Aslla Piscu
//Offset - 0xF7FF9B55 - Earthbound Immortal Ccapac Apu
//Offset - 0xF7FF9F79 - Earthbound Immortal Ccarayhua
//Offset - 0xF7FF9D51 - Earthbound Immortal Chacu Challhua
//Offset - 0xF7FF9D4D - Earthbound Immortal Cusillu
//Offset - 0xF7FF9F7D - Earthbound Immortal Uru
//Offset - 0xF7FF9F81 - Earthbound Immortal Wiraqocha Rasca
//Offset - 0xF7FFA3CD - Earthbound Linewalker
//Offset - 0xF7FFA17D - Earthbound Revival
//Offset - 0xF7FFA031 - Earthbound Wave
//Offset - 0xF7FF9FD1 - Earthbound Whirlwind
//Offset - 0xF7FFA01D - Enlightenment
//Offset - 0xF7FFA1F9 - Fire Ant Ascator
//Offset - 0xF7FF9FE5 - Fortune's Future
//Offset - 0xF7FF5E21 - Frozen Fitzgerald
//Offset - 0xF7FF5F05 - Grand Core
//Offset - 0xF7FF5F39 - Grannel Attack
//Offset - 0xF7FF5F41 - Grannel Carrier
//Offset - 0xF7FF5F3D - Grannel Guard
//Offset - 0xF7FF5F35 - Grannel Top
//Offset - 0xF7FF9F59 - Ground Spider
//Offset - 0xF7FF5FB1 - Infinity Force
//Offset - 0xF7FFA209 - Informer Spider
//Offset - 0xF7FFA025 - Inherited Fortune
//Offset - 0xF7FF5F9D - Labyrinth of Kline
//Offset - 0xF7FFA2C5 - Lair Wire
//Offset - 0xF7FFA2B5 - Meteor Flare
//Offset - 0xF7FF9FDD - Molting Escape
//Offset - 0xF7FFA255 - Moon Dragon Quilla Light
//Offset - 0xF7FF5EDD - Moon Dragon Quilla Dark
//Offset - 0xF7FF9F61 - Mother Spider
//Offset - 0xF7FFA2B9 - Offering to the Immortals
//Offset - 0xF7FFA1F5 - Oracle of the Sun
//Offset - 0xF7FF9F5D - Relinquished Spider
//Offset - 0xF7FFA1E9 - Reptilianne Gardna
//Offset - 0xF7FF9F69 - Reptilianne Gorgon
//Offset - 0xF7FF9FC1 - Reptilianne Hydra
//Offset - 0xF7FF9F6D - Reptilianne Medusa
//Offset - 0xF7FFA1ED - Reptilianne Naga
//Offset - 0xF7FFA181 - Reptilianne Poison
//Offset - 0xF7FFA265 - Reptilianne Rage
//Offset - 0xF7FF9F71 - Reptilianne Scylla
//Offset - 0xF7FFA1E5 - Reptilianne Servant
//Offset - 0xF7FF9FE1 - Reptilianne Spawn
//Offset - 0xF7FFA1F1 - Reptilianne Vaskii
//Offset - 0xF7FF9F75 - Reptilianne Viper
//Offset - 0xF7FFA095 - Revival of the Immortals
//Offset - 0xF7FFA035 - Roar of the Earthbound
//Offset - 0xF7FF9FD5 - Savage Colosseum
//Offset - 0xF7FFA2B1 - Serpent Suppression
//Offset - 0xF7FF5F25 - Skiel Attack
//Offset - 0xF7FF5F51 - Skiel Attack 3
//Offset - 0xF7FF5F59 - Skiel Attack 5
//Offset - 0xF7FF5F2D - Skiel Carrier
//Offset - 0xF7FF5F55 - Skiel Carrier 3
//Offset - 0xF7FF5F5D - Skiel Carrier 5
//Offset - 0xF7FF5F29 - Skiel Guard
//Offset - 0xF7FF5F21 - Skiel Top
//Offset - 0xF7FF5F01 - Sky Core
//Offset - 0xF7FF5F99 - Spark Breaker
//Offset - 0xF7FFA029 - Spider Egg
//Offset - 0xF7FF9FCD - Spider Web
//Offset - 0xF7FFA281 - Spider's Lair
//Offset - 0xF7FF9F65 - Spyder Spider
//Offset - 0xF7FFA251 - Sun Dragon Inti
//Offset - 0xF7FFA205 - Supay
//Offset - 0xF7FFA271 - Temple of the Sun
//Offset - 0xF7FF9FE9 - Time Passage
//Offset - 0xF7FF5F95 - Twin Vortex
//Offset - 0xF7FFA189 - Underground Arachnid Light
//Offset - 0xF7FF5E2D - Underground Arachnid Dark
//Offset - 0xF7FFA26D - Viper's Rebirth
//Offset - 0xF7FFA1FD - Weeping Idol
//Offset - 0xF7FF5EFD - Wise Core
//Offset - 0xF7FF5F11 - Wisel Attack
//Offset - 0xF7FF5F49 - Wisel Attack 3
//Offset - 0xF7FF5F19 - Wisel Carrier
//Offset - 0xF7FF5F15 - Wisel Guard
//Offset - 0xF7FF5F4D - Wisel Guard 3
//Offset - 0xF7FF5F0D - Wisel Top
//Offset - 0xF7FF5F45 - Wisel Top 3
//Offset - 0xF7FFA02D - Wolf in Sheep's Clothing
//Offset - 0xF7FF5E31 - Zeman the Ape King Dark
//Offset - 0xF7FFA191 - Zeman the Ape King Light

function triangle_fixer() => byte(0xF7FF5FA9+dword(0xe7b054))/byte(0xF7FF5FA9)+byte(0xF7FFA269+dword(0xe7b054))/byte(0xF7FFA269)+
                             byte(0xF7FF5EBD+dword(0xe7b054))/byte(0xF7FF5EBD)+byte(0xF7FFA201+dword(0xe7b054))/byte(0xF7FFA201)+
                             byte(0xF7FF5FA1+dword(0xe7b054))/byte(0xF7FF5FA1)+byte(0xF7FFA021+dword(0xe7b054))/byte(0xF7FFA021)+
                             byte(0xF7FFA2C1+dword(0xe7b054))/byte(0xF7FFA2C1)+byte(0xF7FF5FAD+dword(0xe7b054))/byte(0xF7FF5FAD)+
                             byte(0xF7FF5E25+dword(0xe7b054))/byte(0xF7FF5E25)+byte(0xF7FF5ED9+dword(0xe7b054))/byte(0xF7FF5ED9)+
                             byte(0xF7FF5EE5+dword(0xe7b054))/byte(0xF7FF5EE5)+byte(0xF7FF9F55+dword(0xe7b054))/byte(0xF7FF9F55)+
                             byte(0xF7FF5E35+dword(0xe7b054))/byte(0xF7FF5E35)+byte(0xF7FF5E39+dword(0xe7b054))/byte(0xF7FF5E39)+
                             byte(0xF7FF5E45+dword(0xe7b054))/byte(0xF7FF5E45)+byte(0xF7FF5ED5+dword(0xe7b054))/byte(0xF7FF5ED5)+
                             byte(0xF7FF5ED1+dword(0xe7b054))/byte(0xF7FF5ED1)+byte(0xF7FF5E3D+dword(0xe7b054))/byte(0xF7FF5E3D)+
                             byte(0xF7FF5E41+dword(0xe7b054))/byte(0xF7FF5E41)+byte(0xF7FF5E49+dword(0xe7b054))/byte(0xF7FF5E49)+
                             byte(0xF7FFA2BD+dword(0xe7b054))/byte(0xF7FFA2BD)+byte(0xF7FF5FA5+dword(0xe7b054))/byte(0xF7FF5FA5)+
                             byte(0xF7FFA1E1+dword(0xe7b054))/byte(0xF7FFA1E1)+byte(0xF7FF9B51+dword(0xe7b054))/byte(0xF7FF9B51)+
                             byte(0xF7FF9B55+dword(0xe7b054))/byte(0xF7FF9B55)+byte(0xF7FF9F79+dword(0xe7b054))/byte(0xF7FF9F79)+
                             byte(0xF7FF9D51+dword(0xe7b054))/byte(0xF7FF9D51)+byte(0xF7FF9D4D+dword(0xe7b054))/byte(0xF7FF9D4D)+
                             byte(0xF7FF9F7D+dword(0xe7b054))/byte(0xF7FF9F7D)+byte(0xF7FF9F81+dword(0xe7b054))/byte(0xF7FF9F81)+
                             byte(0xF7FFA3CD+dword(0xe7b054))/byte(0xF7FFA3CD)+byte(0xF7FFA17D+dword(0xe7b054))/byte(0xF7FFA17D)+
                             byte(0xF7FFA031+dword(0xe7b054))/byte(0xF7FFA031)+byte(0xF7FF9FD1+dword(0xe7b054))/byte(0xF7FF9FD1)+
                             byte(0xF7FFA01D+dword(0xe7b054))/byte(0xF7FFA01D)+byte(0xF7FFA1F9+dword(0xe7b054))/byte(0xF7FFA1F9)+
                             byte(0xF7FF9FE5+dword(0xe7b054))/byte(0xF7FF9FE5)+byte(0xF7FF5E21+dword(0xe7b054))/byte(0xF7FF5E21)+
                             byte(0xF7FF5F05+dword(0xe7b054))/byte(0xF7FF5F05)+byte(0xF7FF5F39+dword(0xe7b054))/byte(0xF7FF5F39)+
                             byte(0xF7FF5F41+dword(0xe7b054))/byte(0xF7FF5F41)+byte(0xF7FF5F3D+dword(0xe7b054))/byte(0xF7FF5F3D)+
                             byte(0xF7FF5F35+dword(0xe7b054))/byte(0xF7FF5F35)+byte(0xF7FF9F59+dword(0xe7b054))/byte(0xF7FF9F59)+
                             byte(0xF7FF5FB1+dword(0xe7b054))/byte(0xF7FF5FB1)+byte(0xF7FFA209+dword(0xe7b054))/byte(0xF7FFA209)+
                             byte(0xF7FFA025+dword(0xe7b054))/byte(0xF7FFA025)+byte(0xF7FF5F9D+dword(0xe7b054))/byte(0xF7FF5F9D)+
                             byte(0xF7FFA2C5+dword(0xe7b054))/byte(0xF7FFA2C5)+byte(0xF7FFA2B5+dword(0xe7b054))/byte(0xF7FFA2B5)+
                             byte(0xF7FF9FDD+dword(0xe7b054))/byte(0xF7FF9FDD)+byte(0xF7FFA255+dword(0xe7b054))/byte(0xF7FFA255)+
                             byte(0xF7FF5EDD+dword(0xe7b054))/byte(0xF7FF5EDD)+byte(0xF7FF9F61+dword(0xe7b054))/byte(0xF7FF9F61)+
                             byte(0xF7FFA2B9+dword(0xe7b054))/byte(0xF7FFA2B9)+byte(0xF7FFA1F5+dword(0xe7b054))/byte(0xF7FFA1F5)+
                             byte(0xF7FF9F5D+dword(0xe7b054))/byte(0xF7FF9F5D)+byte(0xF7FFA1E9+dword(0xe7b054))/byte(0xF7FFA1E9)+
                             byte(0xF7FF9F69+dword(0xe7b054))/byte(0xF7FF9F69)+byte(0xF7FF9FC1+dword(0xe7b054))/byte(0xF7FF9FC1)+
                             byte(0xF7FF9F6D+dword(0xe7b054))/byte(0xF7FF9F6D)+byte(0xF7FFA1ED+dword(0xe7b054))/byte(0xF7FFA1ED)+
                             byte(0xF7FFA181+dword(0xe7b054))/byte(0xF7FFA181)+byte(0xF7FFA265+dword(0xe7b054))/byte(0xF7FFA265)+
                             byte(0xF7FF9F71+dword(0xe7b054))/byte(0xF7FF9F71)+byte(0xF7FFA1E5+dword(0xe7b054))/byte(0xF7FFA1E5)+
                             byte(0xF7FF9FE1+dword(0xe7b054))/byte(0xF7FF9FE1)+byte(0xF7FFA1F1+dword(0xe7b054))/byte(0xF7FFA1F1)+
                             byte(0xF7FF9F75+dword(0xe7b054))/byte(0xF7FF9F75)+byte(0xF7FFA095+dword(0xe7b054))/byte(0xF7FFA095)+
                             byte(0xF7FFA035+dword(0xe7b054))/byte(0xF7FFA035)+byte(0xF7FF9FD5+dword(0xe7b054))/byte(0xF7FF9FD5)+
                             byte(0xF7FFA2B1+dword(0xe7b054))/byte(0xF7FFA2B1)+byte(0xF7FF5F25+dword(0xe7b054))/byte(0xF7FF5F25)+
                             byte(0xF7FF5F51+dword(0xe7b054))/byte(0xF7FF5F51)+byte(0xF7FF5F59+dword(0xe7b054))/byte(0xF7FF5F59)+
                             byte(0xF7FF5F2D+dword(0xe7b054))/byte(0xF7FF5F2D)+byte(0xF7FF5F55+dword(0xe7b054))/byte(0xF7FF5F55)+
                             byte(0xF7FF5F5D+dword(0xe7b054))/byte(0xF7FF5F5D)+byte(0xF7FF5F29+dword(0xe7b054))/byte(0xF7FF5F29)+
                             byte(0xF7FF5F21+dword(0xe7b054))/byte(0xF7FF5F21)+byte(0xF7FF5F01+dword(0xe7b054))/byte(0xF7FF5F01)+
                             byte(0xF7FF5F99+dword(0xe7b054))/byte(0xF7FF5F99)+byte(0xF7FFA029+dword(0xe7b054))/byte(0xF7FFA029)+
                             byte(0xF7FF9FCD+dword(0xe7b054))/byte(0xF7FF9FCD)+byte(0xF7FFA281+dword(0xe7b054))/byte(0xF7FFA281)+
                             byte(0xF7FF9F65+dword(0xe7b054))/byte(0xF7FF9F65)+byte(0xF7FFA251+dword(0xe7b054))/byte(0xF7FFA251)+
                             byte(0xF7FFA205+dword(0xe7b054))/byte(0xF7FFA205)+byte(0xF7FFA271+dword(0xe7b054))/byte(0xF7FFA271)+
                             byte(0xF7FF9FE9+dword(0xe7b054))/byte(0xF7FF9FE9)+byte(0xF7FF5F95+dword(0xe7b054))/byte(0xF7FF5F95)+
                             byte(0xF7FFA189+dword(0xe7b054))/byte(0xF7FFA189)+byte(0xF7FF5E2D+dword(0xe7b054))/byte(0xF7FF5E2D)+
                             byte(0xF7FFA26D+dword(0xe7b054))/byte(0xF7FFA26D)+byte(0xF7FFA1FD+dword(0xe7b054))/byte(0xF7FFA1FD)+
                             byte(0xF7FF5EFD+dword(0xe7b054))/byte(0xF7FF5EFD)+byte(0xF7FF5F11+dword(0xe7b054))/byte(0xF7FF5F11)+
                             byte(0xF7FF5F49+dword(0xe7b054))/byte(0xF7FF5F49)+byte(0xF7FF5F19+dword(0xe7b054))/byte(0xF7FF5F19)+
                             byte(0xF7FF5F15+dword(0xe7b054))/byte(0xF7FF5F15)+byte(0xF7FF5F4D+dword(0xe7b054))/byte(0xF7FF5F4D)+
                             byte(0xF7FF5F0D+dword(0xe7b054))/byte(0xF7FF5F0D)+byte(0xF7FF5F45+dword(0xe7b054))/byte(0xF7FF5F45)+
                             byte(0xF7FFA02D+dword(0xe7b054))/byte(0xF7FFA02D)+byte(0xF7FF5E31+dword(0xe7b054))/byte(0xF7FF5E31)+
                             byte(0xF7FFA191+dword(0xe7b054))/byte(0xF7FFA191)
                             
 achievement ("Triangle Fixer", "Obtain all cards from [Triangle Fixer] booster", 10,
 trigger = save_protect() && measured(triangle_fixer() == 107) && prev(triangle_fixer()) != 107)
 
 //Super Polymerization Overdrive Booster Packs - 93 Cards Total
 //Offset - 0xF7FF6D3D - Alpha the Magnet Warrior
//Offset - 0xF7FF8449 - Arcana Knight Joker
//Offset - 0xF7FF71B9 - Archfiend of Gilfer
//Offset - 0xF7FF6D65 - Berfomet
//Offset - 0xF7FF929D - Berserker Crush
//Offset - 0xF7FF6D85 - Beta the Magnet Warrior
//Offset - 0xF7FF6CFD - Black Magic Ritual
//Offset - 0xF7FF7941 - Breaker the Magical Warrior
//Offset - 0xF7FF7099 - Buster Blader
//Offset - 0xF7FF91F9 - Card Ejector
//Offset - 0xF7FF6D69 - Chimera the Flying Mythical Beast
//Offset - 0xF7FF8D25 - Chrysalis Chicky
//Offset - 0xF7FF8841 - Chrysalis Dolphin
//Offset - 0xF7FF8D69 - Chrysalis Larva
//Offset - 0xF7FF8D6D - Chrysalis Mole
//Offset - 0xF7FF8D29 - Chrysalis Pantail
//Offset - 0xF7FF8D2D - Chrysalis Pinny
//Offset - 0xF7FF8D21 - Cocoon Party
//Offset - 0xF7FF8E0D - Cocoon Rebirth
//Offset - 0xF7FF8D31 - Cocoon Veil
//Offset - 0xF7FF8881 - Common Soul
//Offset - 0xF7FF8869 - Contact
//Offset - 0xF7FF8E89 - Contact Out
//Offset - 0xF7FF8D35 - Convert Contact
//Offset - 0xF7FF92ED - Cross Porter
//Offset - 0xF7FF6295 - Curse of Dragon
//Offset - 0xF7FF7EBD - Dark Magic Attack
//Offset - 0xF7FF6E45 - Dark Magic Curtain
//Offset - 0xF7FF6285 - Dark Magician
//Offset - 0xF7FF6D8D - Dark Magician Girl
//Offset - 0xF7FF78F5 - Dark Paladin
//Offset - 0xF7FF7399 - Dark Sage
//Offset - 0xF7FF9299 - Detonate
//Offset - 0xF7FF7901 - Diffusion Wave-Motion
//Offset - 0xF7FF8B21 - Elemental Hero Air Neos
//Offset - 0xF7FF8849 - Elemental Hero Aqua Neos
//Offset - 0xF7FF8ED5 - Elemental Hero Chaos Neos
//Offset - 0xF7FF8845 - Elemental Hero Dark Neos
//Offset - 0xF7FF884D - Elemental Hero Flare Neos
//Offset - 0xF7FF8B1D - Elemental Hero Glow Neos
//Offset - 0xF7FF8B25 - Elemental Hero Grand Neos
//Offset - 0xF7FF8D7D - Elemental Hero Magma Neos
//Offset - 0xF7FF8D75 - Elemental Hero Marine Neos
//Offset - 0xF7FF86C9 - Elemental Hero Neos
//Offset - 0xF7FF8DB9 - Elemental Hero Neos Alius
//Offset - 0xF7FFA541 - Elemental Hero Neos Knight
//Offset - 0xF7FF9131 - Elemental Hero Storm Neos
//Offset - 0xF7FF7989 - Emblem of Dragon Destroyer
//Offset - 0xF7FF628D - Gaia the Dragon Champion
//Offset - 0xF7FF6291 - Gaia the Fierce Knight
//Offset - 0xF7FF6DDD - Gamma the Magnet Warrior
//Offset - 0xF7FF6D5D - Gazelle the King of Mythical Beasts
//Offset - 0xF7FF6321 - Giant Soldier of Stone
//Offset - 0xF7FF9145 - Instant Neo Space
//Offset - 0xF7FF7811 - Jack's Knight
//Offset - 0xF7FF780D - King's Knight
//Offset - 0xF7FF62E1 - Kuriboh
//Offset - 0xF7FF7381 - Magic Formula
//Offset - 0xF7FF6D01 - Magician of Black Chaos
//Offset - 0xF7FF7C21 - Magician's Valkyria
//Offset - 0xF7FF6DFD - Multiply
//Offset - 0xF7FF6201 - Mystical Elf
//Offset - 0xF7FF886D - Neo Space
//Offset - 0xF7FF8DF1 - Neo Space Pathfinder
//Offset - 0xF7FF8855 - Neo-Spacian Air Hummingbird
//Offset - 0xF7FF8851 - Neo-Spacian Aqua Dolphin
//Offset - 0xF7FF8861 - Neo-Spacian Dark Panther
//Offset - 0xF7FF8865 - Neo-Spacian Flare Scarab
//Offset - 0xF7FF885D - Neo-Spacian Glow Moss
//Offset - 0xF7FF8859 - Neo-Spacian Grand Mole
//Offset - 0xF7FF8D71 - Neo-Spacian Marine Dolphin
//Offset - 0xF7FF912D - Neo-Spacian Twinkle Moss
//Offset - 0xF7FF8B31 - Neos Force
//Offset - 0xF7FF9621 - Neos Wiseman
//Offset - 0xF7FF8D41 - NEX
//Offset - 0xF7FF7739 - Queen's Knight
//Offset - 0xF7FF8D45 - Reverse of Neos
//Offset - 0xF7FF7A9D - Sage's Stone
//Offset - 0xF7FF7929 - Skilled Dark Magician
//Offset - 0xF7FF7925 - Skilled White Magician
//Offset - 0xF7FF939D - Space Gift
//Offset - 0xF7FF6251 - Summoned Skull
//Offset - 0xF7FF73BD - Swift Gaia the Fierce Knight
//Offset - 0xF7FF869D - The Flute of Summoning Kuriboh
//Offset - 0xF7FF72B1 - Thousand Knives
//Offset - 0xF7FF6239 - Time Wizard
//Offset - 0xF7FF8395 - Transcendent Wings
//Offset - 0xF7FF70D5 - Valkyrion the Magna Warrior
//Offset - 0xF7FF7F35 - Watapon
//Offset - 0xF7FF8259 - Winged Kuriboh
//Offset - 0xF7FF8391 - Winged Kuriboh LV10
//Offset - 0xF7FF9229 - Winged Kuriboh LV9
//Offset - 0xF7FF9295 - Wrath of Neos

function super_polymerization_overdrive() => byte(0xF7FF6D3D+dword(0xe7b054))/byte(0xF7FF6D3D)+byte(0xF7FF8449+dword(0xe7b054))/byte(0xF7FF8449)+
                                             byte(0xF7FF71B9+dword(0xe7b054))/byte(0xF7FF71B9)+byte(0xF7FF6D65+dword(0xe7b054))/byte(0xF7FF6D65)+
                                             byte(0xF7FF929D+dword(0xe7b054))/byte(0xF7FF929D)+byte(0xF7FF6D85+dword(0xe7b054))/byte(0xF7FF6D85)+
                                             byte(0xF7FF6CFD+dword(0xe7b054))/byte(0xF7FF6CFD)+byte(0xF7FF7941+dword(0xe7b054))/byte(0xF7FF7941)+
                                             byte(0xF7FF7099+dword(0xe7b054))/byte(0xF7FF7099)+byte(0xF7FF91F9+dword(0xe7b054))/byte(0xF7FF91F9)+
                                             byte(0xF7FF6D69+dword(0xe7b054))/byte(0xF7FF6D69)+byte(0xF7FF8D25+dword(0xe7b054))/byte(0xF7FF8D25)+
                                             byte(0xF7FF8841+dword(0xe7b054))/byte(0xF7FF8841)+byte(0xF7FF8D69+dword(0xe7b054))/byte(0xF7FF8D69)+
                                             byte(0xF7FF8D6D+dword(0xe7b054))/byte(0xF7FF8D6D)+byte(0xF7FF8D29+dword(0xe7b054))/byte(0xF7FF8D29)+
                                             byte(0xF7FF8D2D+dword(0xe7b054))/byte(0xF7FF8D2D)+byte(0xF7FF8D21+dword(0xe7b054))/byte(0xF7FF8D21)+
                                             byte(0xF7FF8E0D+dword(0xe7b054))/byte(0xF7FF8E0D)+byte(0xF7FF8D31+dword(0xe7b054))/byte(0xF7FF8D31)+
                                             byte(0xF7FF8881+dword(0xe7b054))/byte(0xF7FF8881)+byte(0xF7FF8869+dword(0xe7b054))/byte(0xF7FF8869)+
                                             byte(0xF7FF8E89+dword(0xe7b054))/byte(0xF7FF8E89)+byte(0xF7FF8D35+dword(0xe7b054))/byte(0xF7FF8D35)+
                                             byte(0xF7FF92ED+dword(0xe7b054))/byte(0xF7FF92ED)+byte(0xF7FF6295+dword(0xe7b054))/byte(0xF7FF6295)+
                                             byte(0xF7FF7EBD+dword(0xe7b054))/byte(0xF7FF7EBD)+byte(0xF7FF6E45+dword(0xe7b054))/byte(0xF7FF6E45)+
                                             byte(0xF7FF6285+dword(0xe7b054))/byte(0xF7FF6285)+byte(0xF7FF6D8D+dword(0xe7b054))/byte(0xF7FF6D8D)+
                                             byte(0xF7FF78F5+dword(0xe7b054))/byte(0xF7FF78F5)+byte(0xF7FF7399+dword(0xe7b054))/byte(0xF7FF7399)+
                                             byte(0xF7FF9299+dword(0xe7b054))/byte(0xF7FF9299)+byte(0xF7FF7901+dword(0xe7b054))/byte(0xF7FF7901)+
                                             byte(0xF7FF8B21+dword(0xe7b054))/byte(0xF7FF8B21)+byte(0xF7FF8849+dword(0xe7b054))/byte(0xF7FF8849)+
                                             byte(0xF7FF8ED5+dword(0xe7b054))/byte(0xF7FF8ED5)+byte(0xF7FF8845+dword(0xe7b054))/byte(0xF7FF8845)+
                                             byte(0xF7FF884D+dword(0xe7b054))/byte(0xF7FF884D)+byte(0xF7FF8B1D+dword(0xe7b054))/byte(0xF7FF8B1D)+
                                             byte(0xF7FF8B25+dword(0xe7b054))/byte(0xF7FF8B25)+byte(0xF7FF8D7D+dword(0xe7b054))/byte(0xF7FF8D7D)+
                                             byte(0xF7FF8D75+dword(0xe7b054))/byte(0xF7FF8D75)+byte(0xF7FF86C9+dword(0xe7b054))/byte(0xF7FF86C9)+
                                             byte(0xF7FF8DB9+dword(0xe7b054))/byte(0xF7FF8DB9)+byte(0xF7FFA541+dword(0xe7b054))/byte(0xF7FFA541)+
                                             byte(0xF7FF9131+dword(0xe7b054))/byte(0xF7FF9131)+byte(0xF7FF7989+dword(0xe7b054))/byte(0xF7FF7989)+
                                             byte(0xF7FF628D+dword(0xe7b054))/byte(0xF7FF628D)+byte(0xF7FF6291+dword(0xe7b054))/byte(0xF7FF6291)+
                                             byte(0xF7FF6DDD+dword(0xe7b054))/byte(0xF7FF6DDD)+byte(0xF7FF6D5D+dword(0xe7b054))/byte(0xF7FF6D5D)+
                                             byte(0xF7FF6321+dword(0xe7b054))/byte(0xF7FF6321)+byte(0xF7FF9145+dword(0xe7b054))/byte(0xF7FF9145)+
                                             byte(0xF7FF7811+dword(0xe7b054))/byte(0xF7FF7811)+byte(0xF7FF780D+dword(0xe7b054))/byte(0xF7FF780D)+
                                             byte(0xF7FF62E1+dword(0xe7b054))/byte(0xF7FF62E1)+byte(0xF7FF7381+dword(0xe7b054))/byte(0xF7FF7381)+
                                             byte(0xF7FF6D01+dword(0xe7b054))/byte(0xF7FF6D01)+byte(0xF7FF7C21+dword(0xe7b054))/byte(0xF7FF7C21)+
                                             byte(0xF7FF6DFD+dword(0xe7b054))/byte(0xF7FF6DFD)+byte(0xF7FF6201+dword(0xe7b054))/byte(0xF7FF6201)+
                                             byte(0xF7FF886D+dword(0xe7b054))/byte(0xF7FF886D)+byte(0xF7FF8DF1+dword(0xe7b054))/byte(0xF7FF8DF1)+
                                             byte(0xF7FF8855+dword(0xe7b054))/byte(0xF7FF8855)+byte(0xF7FF8851+dword(0xe7b054))/byte(0xF7FF8851)+
                                             byte(0xF7FF8861+dword(0xe7b054))/byte(0xF7FF8861)+byte(0xF7FF8865+dword(0xe7b054))/byte(0xF7FF8865)+
                                             byte(0xF7FF885D+dword(0xe7b054))/byte(0xF7FF885D)+byte(0xF7FF8859+dword(0xe7b054))/byte(0xF7FF8859)+
                                             byte(0xF7FF8D71+dword(0xe7b054))/byte(0xF7FF8D71)+byte(0xF7FF912D+dword(0xe7b054))/byte(0xF7FF912D)+
                                             byte(0xF7FF8B31+dword(0xe7b054))/byte(0xF7FF8B31)+byte(0xF7FF9621+dword(0xe7b054))/byte(0xF7FF9621)+
                                             byte(0xF7FF8D41+dword(0xe7b054))/byte(0xF7FF8D41)+byte(0xF7FF7739+dword(0xe7b054))/byte(0xF7FF7739)+
                                             byte(0xF7FF8D45+dword(0xe7b054))/byte(0xF7FF8D45)+byte(0xF7FF7A9D+dword(0xe7b054))/byte(0xF7FF7A9D)+
                                             byte(0xF7FF7929+dword(0xe7b054))/byte(0xF7FF7929)+byte(0xF7FF7925+dword(0xe7b054))/byte(0xF7FF7925)+
                                             byte(0xF7FF939D+dword(0xe7b054))/byte(0xF7FF939D)+byte(0xF7FF6251+dword(0xe7b054))/byte(0xF7FF6251)+
                                             byte(0xF7FF73BD+dword(0xe7b054))/byte(0xF7FF73BD)+byte(0xF7FF869D+dword(0xe7b054))/byte(0xF7FF869D)+
                                             byte(0xF7FF72B1+dword(0xe7b054))/byte(0xF7FF72B1)+byte(0xF7FF6239+dword(0xe7b054))/byte(0xF7FF6239)+
                                             byte(0xF7FF8395+dword(0xe7b054))/byte(0xF7FF8395)+byte(0xF7FF70D5+dword(0xe7b054))/byte(0xF7FF70D5)+
                                             byte(0xF7FF7F35+dword(0xe7b054))/byte(0xF7FF7F35)+byte(0xF7FF8259+dword(0xe7b054))/byte(0xF7FF8259)+
                                             byte(0xF7FF8391+dword(0xe7b054))/byte(0xF7FF8391)+byte(0xF7FF9229+dword(0xe7b054))/byte(0xF7FF9229)+
                                             byte(0xF7FF9295+dword(0xe7b054))/byte(0xF7FF9295)
                                             
achievement ("Super Polymerization Overdrive", "Obtain all cards from [Super Polymerization Overdrive] booster", 10,
trigger = save_protect() && measured(super_polymerization_overdrive() == 93) && prev(super_polymerization_overdrive()) != 93)

//Generation Gap Booster Packs - 83 Cards Total
//Offset - 0xF7FF6061 - Advanced Dark
//Offset - 0xF7FF7301 - Alchemic Kettle - Chaos Distill
//Offset - 0xF7FF72E9 - Amazoness Arena
//Offset - 0xF7FF60D5 - Amphibian Angel - Frog-hael
//Offset - 0xF7FF5FFD - Arcana Force VIII - The Strength
//Offset - 0xF7FF5FF9 - Arcana Force XII - The Hanged Man
//Offset - 0xF7FF72F5 - Archfiend Matador
//Offset - 0xF7FF60C5 - Attribute Bomb
//Offset - 0xF7FF60CD - Attribute Chameleon
//Offset - 0xF7FF60C9 - Attribute Gravity
//Offset - 0xF7FF60C1 - Attribute Mastery
//Offset - 0xF7FF7309 - Ayer's Rock Sunrise
//Offset - 0xF7FF6059 - Battle Fusion
//Offset - 0xF7FF6E35 - Black Magic Revival Casket
//Offset - 0xF7FF6055 - Burst Impact
//Offset - 0xF7FF6031 - Cenozoic Fossil Knight - Skullger
//Offset - 0xF7FF60A5 - Clear Cube
//Offset - 0xF7FF60A9 - Clear Phantom
//Offset - 0xF7FF60AD - Clear Rage Golem
//Offset - 0xF7FF60B1 - Clear Vicious Knight
//Offset - 0xF7FF60BD - Clear Wall
//Offset - 0xF7FF6021 - Crowning of the Emperor
//Offset - 0xF7FF6065 - Crystal Slicer
//Offset - 0xF7FF72D9 - Cupid Kiss
//Offset - 0xF7FF893D - Cyber Angel - Benten
//Offset - 0xF7FF8945 - Cyber Angel - Dakini
//Offset - 0xF7FF8941 - Cyber Angel - Idaten
//Offset - 0xF7FF60D1 - Cyril, Monk of Dark World
//Offset - 0xF7FF6091 - Dark Archetype
//Offset - 0xF7FF72FD - Dark Arena
//Offset - 0xF7FF6095 - Dark Psycho Eye
//Offset - 0xF7FF72F1 - Dark Scorpion - Tragedy of Love
//Offset - 0xF7FF72ED - Dark Scorpion Retreat
//Offset - 0xF7FF607D - Declaration of Rebirth
//Offset - 0xF7FF72DD - Defense Maiden
//Offset - 0xF7FF6069 - Destiny Mind
//Offset - 0xF7FF72C1 - Dizzy Angel
//Offset - 0xF7FF72BD - Dizzy Tiger
//Offset - 0xF7FF602D - Efflorescent Knight
//Offset - 0xF7FF5FE9 - Fallen Paradise
//Offset - 0xF7FF605D - Final Fusion
//Offset - 0xF7FF6099 - Flame Wall
//Offset - 0xF7FF72C9 - Flipping the Table
//Offset - 0xF7FF6089 - Fog Palace
//Offset - 0xF7FF603D - Fossil Fusion
//Offset - 0xF7FF72E1 - Happy Marriage
//Offset - 0xF7FF72C5 - Hot Sauce Bottle
//Offset - 0xF7FF72E5 - Illusion Gate
//Offset - 0xF7FF5FF5 - Infinite Fiend Mirror
//Offset - 0xF7FF6011 - Jurassic Impact
//Offset - 0xF7FF6075 - Kiteroid
//Offset - 0xF7FF6015 - Last Machine Acid Virus
//Offset - 0xF7FF5FF1 - Load of Darkness
//Offset - 0xF7FF6081 - Lord of Dark Summons
//Offset - 0xF7FF8949 - Machine Angel Ritual
//Offset - 0xF7FF72D5 - Maiden in Love
//Offset - 0xF7FF6035 - Mesozoic Fossil Knight - Skullknight
//Offset - 0xF7FF606D - Ojamandala
//Offset - 0xF7FF8EA9 - Paleozoic Fossil Dragon - Skullgeoth
//Offset - 0xF7FF8E81 - Paleozoic Fossil Knight - Skullking
//Offset - 0xF7FF6079 - Plasma Warrior Eitom
//Offset - 0xF7FF60DD - Power Zone
//Offset - 0xF7FF6071 - Pride Shout
//Offset - 0xF7FF72D1 - Ritual of Lithmus
//Offset - 0xF7FF72F9 - Ritual of the Matador
//Offset - 0xF7FF608D - Sacred Protective Barrier
//Offset - 0xF7FF60D9 - Satellite Laser X-06S, Balsam
//Offset - 0xF7FF6029 - Scab Scar Knight
//Offset - 0xF7FF5FED - Slash Draw
//Offset - 0xF7FF600D - Suit of Sword X
//Offset - 0xF7FF72CD - Swordsman Of Doom Lithmus
//Offset - 0xF7FF6005 - The Material Lord
//Offset - 0xF7FF6051 - The Rival's Name
//Offset - 0xF7FF6001 - The Sky Lord
//Offset - 0xF7FF6009 - The Spiritual Lord
//Offset - 0xF7FF60A1 - The Unchosen One
//Offset - 0xF7FF6039 - Time Stream
//Offset - 0xF7FF60E1 - Toon Kingdom
//Offset - 0xF7FF601D - Toy Emperor
//Offset - 0xF7FF6019 - Toy Soldier
//Offset - 0xF7FF609D - Volcanic Wall
//Offset - 0xF7FF6025 - White Veil
//Offset - 0xF7FF6085 - Zero Sprite

function generation_gap() => byte(0xF7FF6061+dword(0xe7b054))/byte(0xF7FF6061)+byte(0xF7FF7301+dword(0xe7b054))/byte(0xF7FF7301)+
                             byte(0xF7FF72E9+dword(0xe7b054))/byte(0xF7FF72E9)+byte(0xF7FF60D5+dword(0xe7b054))/byte(0xF7FF60D5)+
                             byte(0xF7FF5FFD+dword(0xe7b054))/byte(0xF7FF5FFD)+byte(0xF7FF5FF9+dword(0xe7b054))/byte(0xF7FF5FF9)+
                             byte(0xF7FF72F5+dword(0xe7b054))/byte(0xF7FF72F5)+byte(0xF7FF60C5+dword(0xe7b054))/byte(0xF7FF60C5)+
                             byte(0xF7FF60CD+dword(0xe7b054))/byte(0xF7FF60CD)+byte(0xF7FF60C9+dword(0xe7b054))/byte(0xF7FF60C9)+
                             byte(0xF7FF60C1+dword(0xe7b054))/byte(0xF7FF60C1)+byte(0xF7FF7309+dword(0xe7b054))/byte(0xF7FF7309)+
                             byte(0xF7FF6059+dword(0xe7b054))/byte(0xF7FF6059)+byte(0xF7FF6E35+dword(0xe7b054))/byte(0xF7FF6E35)+
                             byte(0xF7FF6055+dword(0xe7b054))/byte(0xF7FF6055)+byte(0xF7FF6031+dword(0xe7b054))/byte(0xF7FF6031)+
                             byte(0xF7FF60A5+dword(0xe7b054))/byte(0xF7FF60A5)+byte(0xF7FF60A9+dword(0xe7b054))/byte(0xF7FF60A9)+
                             byte(0xF7FF60AD+dword(0xe7b054))/byte(0xF7FF60AD)+byte(0xF7FF60B1+dword(0xe7b054))/byte(0xF7FF60B1)+
                             byte(0xF7FF60BD+dword(0xe7b054))/byte(0xF7FF60BD)+byte(0xF7FF6021+dword(0xe7b054))/byte(0xF7FF6021)+
                             byte(0xF7FF6065+dword(0xe7b054))/byte(0xF7FF6065)+byte(0xF7FF72D9+dword(0xe7b054))/byte(0xF7FF72D9)+
                             byte(0xF7FF893D+dword(0xe7b054))/byte(0xF7FF893D)+byte(0xF7FF8945+dword(0xe7b054))/byte(0xF7FF8945)+
                             byte(0xF7FF8941+dword(0xe7b054))/byte(0xF7FF8941)+byte(0xF7FF60D1+dword(0xe7b054))/byte(0xF7FF60D1)+
                             byte(0xF7FF6091+dword(0xe7b054))/byte(0xF7FF6091)+byte(0xF7FF72FD+dword(0xe7b054))/byte(0xF7FF72FD)+
                             byte(0xF7FF6095+dword(0xe7b054))/byte(0xF7FF6095)+byte(0xF7FF72F1+dword(0xe7b054))/byte(0xF7FF72F1)+
                             byte(0xF7FF72ED+dword(0xe7b054))/byte(0xF7FF72ED)+byte(0xF7FF607D+dword(0xe7b054))/byte(0xF7FF607D)+
                             byte(0xF7FF72DD+dword(0xe7b054))/byte(0xF7FF72DD)+byte(0xF7FF6069+dword(0xe7b054))/byte(0xF7FF6069)+
                             byte(0xF7FF72C1+dword(0xe7b054))/byte(0xF7FF72C1)+byte(0xF7FF72BD+dword(0xe7b054))/byte(0xF7FF72BD)+
                             byte(0xF7FF602D+dword(0xe7b054))/byte(0xF7FF602D)+byte(0xF7FF5FE9+dword(0xe7b054))/byte(0xF7FF5FE9)+
                             byte(0xF7FF605D+dword(0xe7b054))/byte(0xF7FF605D)+byte(0xF7FF6099+dword(0xe7b054))/byte(0xF7FF6099)+
                             byte(0xF7FF72C9+dword(0xe7b054))/byte(0xF7FF72C9)+byte(0xF7FF6089+dword(0xe7b054))/byte(0xF7FF6089)+
                             byte(0xF7FF603D+dword(0xe7b054))/byte(0xF7FF603D)+byte(0xF7FF72E1+dword(0xe7b054))/byte(0xF7FF72E1)+
                             byte(0xF7FF72C5+dword(0xe7b054))/byte(0xF7FF72C5)+byte(0xF7FF72E5+dword(0xe7b054))/byte(0xF7FF72E5)+
                             byte(0xF7FF5FF5+dword(0xe7b054))/byte(0xF7FF5FF5)+byte(0xF7FF6011+dword(0xe7b054))/byte(0xF7FF6011)+
                             byte(0xF7FF6075+dword(0xe7b054))/byte(0xF7FF6075)+byte(0xF7FF6015+dword(0xe7b054))/byte(0xF7FF6015)+
                             byte(0xF7FF5FF1+dword(0xe7b054))/byte(0xF7FF5FF1)+byte(0xF7FF6081+dword(0xe7b054))/byte(0xF7FF6081)+
                             byte(0xF7FF8949+dword(0xe7b054))/byte(0xF7FF8949)+byte(0xF7FF72D5+dword(0xe7b054))/byte(0xF7FF72D5)+
                             byte(0xF7FF6035+dword(0xe7b054))/byte(0xF7FF6035)+byte(0xF7FF606D+dword(0xe7b054))/byte(0xF7FF606D)+
                             byte(0xF7FF8EA9+dword(0xe7b054))/byte(0xF7FF8EA9)+byte(0xF7FF8E81+dword(0xe7b054))/byte(0xF7FF8E81)+
                             byte(0xF7FF6079+dword(0xe7b054))/byte(0xF7FF6079)+byte(0xF7FF60DD+dword(0xe7b054))/byte(0xF7FF60DD)+
                             byte(0xF7FF6071+dword(0xe7b054))/byte(0xF7FF6071)+byte(0xF7FF72D1+dword(0xe7b054))/byte(0xF7FF72D1)+
                             byte(0xF7FF72F9+dword(0xe7b054))/byte(0xF7FF72F9)+byte(0xF7FF608D+dword(0xe7b054))/byte(0xF7FF608D)+
                             byte(0xF7FF60D9+dword(0xe7b054))/byte(0xF7FF60D9)+byte(0xF7FF6029+dword(0xe7b054))/byte(0xF7FF6029)+
                             byte(0xF7FF5FED+dword(0xe7b054))/byte(0xF7FF5FED)+byte(0xF7FF600D+dword(0xe7b054))/byte(0xF7FF600D)+
                             byte(0xF7FF72CD+dword(0xe7b054))/byte(0xF7FF72CD)+byte(0xF7FF6005+dword(0xe7b054))/byte(0xF7FF6005)+
                             byte(0xF7FF6051+dword(0xe7b054))/byte(0xF7FF6051)+byte(0xF7FF6001+dword(0xe7b054))/byte(0xF7FF6001)+
                             byte(0xF7FF6009+dword(0xe7b054))/byte(0xF7FF6009)+byte(0xF7FF60A1+dword(0xe7b054))/byte(0xF7FF60A1)+
                             byte(0xF7FF6039+dword(0xe7b054))/byte(0xF7FF6039)+byte(0xF7FF60E1+dword(0xe7b054))/byte(0xF7FF60E1)+
                             byte(0xF7FF601D+dword(0xe7b054))/byte(0xF7FF601D)+byte(0xF7FF6019+dword(0xe7b054))/byte(0xF7FF6019)+
                             byte(0xF7FF609D+dword(0xe7b054))/byte(0xF7FF609D)+byte(0xF7FF6025+dword(0xe7b054))/byte(0xF7FF6025)+
                             byte(0xF7FF6085+dword(0xe7b054))/byte(0xF7FF6085)
                             
achievement ("Generation Gap", "Obtain all cards from [Generation Gap] booster", 10,
trigger = save_protect() && measured(generation_gap() == 83) && prev(generation_gap()) != 83)

//Black Checkers Booster Pack - 709 Cards Total
//Offset - 0xF7FF75CD - A Legendary Ocean
//Offset - 0xF7FF9E49 - A Major Upset
//Offset - 0xF7FF7D05 - Abyss Soldier
//Offset - 0xF7FF8A21 - Accumulated Fortune
//Offset - 0xF7FF8B3D - Advanced Ritual Art
//Offset - 0xF7FF9BC9 - Against the Wind
//Offset - 0xF7FFA1A5 - Aggiba, the Malevolent Sh'Nn S'Yo
//Offset - 0xF7FF95E5 - Alector, Sovereign of Birds
//Offset - 0xF7FF9961 - Alien Ammonite
//Offset - 0xF7FF995D - Alien Overlord
//Offset - 0xF7FF92D9 - Allure of Darkness
//Offset - 0xF7FF9291 - Ally of Justice Catastor
//Offset - 0xF7FF9EED - Ally of Justice Decisive Armor
//Offset - 0xF7FF5EBD - Altar of the Bound Deity
//Offset - 0xF7FFA641 - Amazoness Queen
//Offset - 0xF7FF7455 - Amazoness Swords Woman
//Offset - 0xF7FFA63D - Amazoness Trainee
//Offset - 0xF7FFA695 - Amazoness Village
//Offset - 0xF7FFA6E1 - Amazoness Willpower
//Offset - 0xF7FFA651 - Ambitious Gofer
//Offset - 0xF7FF8C09 - Ancient City - Rainbow Ruins
//Offset - 0xF7FFA371 - Ancient Flamvell Deity
//Offset - 0xF7FF9DC9 - Ancient Forest
//Offset - 0xF7FF8A3D - Ancient Gear Gadjiltron Dragon
//Offset - 0xF7FF8B39 - Ancient Rules
//Offset - 0xF7FF8631 - Anteatereatingant
//Offset - 0xF7FF6EA1 - Anti Raigeki
//Offset - 0xF7FF70ED - Anti-Spell Fragrance
//Offset - 0xF7FF792D - Apprentice Magician
//Offset - 0xF7FF8449 - Arcana Knight Joker
//Offset - 0xF7FF9971 - Arcanite Magician
//Offset - 0xF7FF9D01 - Archlord Kristya
//Offset - 0xF7FF90E9 - Armageddon Knight
//Offset - 0xF7FF8AA9 - Armament of the Lethal Lords
//Offset - 0xF7FF7F71 - Armed Dragon LV7
//Offset - 0xF7FF92DD - Athena
//Offset - 0xF7FF95FD - Aurkus, Lightsworn Druid
//Offset - 0xF7FF82AD - Aussa the Earth Charmer
//Offset - 0xF7FF7D6D - Avatar of the Pot
//Offset - 0xF7FFA819 - Axe of Fools
//Offset - 0xF7FF6041 - B.E.S. Assault Core
//Offset - 0xF7FF9475 - B.E.S. Big Core MK-2
//Offset - 0xF7FF6C91 - Bad Reaction to Simochi
//Offset - 0xF7FF82BD - Batteryman AA
//Offset - 0xF7FFA465 - Batteryman Fuel Cell
//Offset - 0xF7FF9361 - Batteryman Industrial Strength
//Offset - 0xF7FF9365 - Batteryman Micro-Cell
//Offset - 0xF7FFA1C1 - Battle Fader
//Offset - 0xF7FF8FED - Beast King Barbaros
//Offset - 0xF7FF7DF1 - Beckoning Light
//Offset - 0xF7FF88FD - Big Evolution Pill
//Offset - 0xF7FF8B81 - Birthright
//Offset - 0xF7FF9FC5 - Black Brutdrago
//Offset - 0xF7FF9795 - Black Garden
//Offset - 0xF7FF7BB5 - Black Luster Soldier - Envoy of the Beginning
//Offset - 0xF7FF98DD - Black Salvo
//Offset - 0xF7FF9BCD - Black Whirlwind
//Offset - 0xF7FFA835 - Blackback
//Offset - 0xF7FFA775 - Blackwing - Abrolhos the Megaquake
//Offset - 0xF7FF9B2D - Blackwing - Blizzard the Far North
//Offset - 0xF7FF9909 - Blackwing - Bora the Spear
//Offset - 0xF7FFA3E5 - Blackwing - Breeze the Zephyr
//Offset - 0xF7FF9905 - Blackwing - Gale the Whirlwind
//Offset - 0xF7FF9B35 - Blackwing - Kalut the Moon Shadow
//Offset - 0xF7FF9B31 - Blackwing - Shura the Blue Flame
//Offset - 0xF7FF990D - Blackwing - Sirocco the Dawn
//Offset - 0xF7FF9D21 - Blackwing - Vayu the Emblem of Honor
//Offset - 0xF7FF9BA9 - Blackwing Armed Wing
//Offset - 0xF7FF9969 - Blackwing Armor Master
//Offset - 0xF7FF6D35 - Blast Sphere
//Offset - 0xF7FF75F1 - Blast with Chain
//Offset - 0xF7FF8FD9 - Blazewing Butterfly
//Offset - 0xF7FF8B91 - Blizzard Dragon
//Offset - 0xF7FF9599 - Book of Eclipse
//Offset - 0xF7FF7675 - Book of Life
//Offset - 0xF7FF767D - Book of Moon
//Offset - 0xF7FF8CF5 - Botanical Lion
//Offset - 0xF7FF7601 - Bottomless Trap Hole
//Offset - 0xF7FF6DF5 - Brain Control
//Offset - 0xF7FF7941 - Breaker the Magical Warrior
//Offset - 0xF7FF9281 - Brionac, Dragon of the Ice Barrier
//Offset - 0xF7FF908D - Burden of the Mighty
//Offset - 0xF7FF8A61 - Burial from a DIfferent Dimension
//Offset - 0xF7FF7A39 - Butterfly Dagger - Elma
//Offset - 0xF7FF9221 - By Order of the Emperor
//Offset - 0xF7FF9211 - Caius the Shadow Monarch
//Offset - 0xF7FF6EB1 - Call of Darkness
//Offset - 0xF7FF6E9D - Call of the Grave
//Offset - 0xF7FF70B1 - Call of the Haunted
//Offset - 0xF7FF6E31 - Card Destruction
//Offset - 0xF7FF7229 - Card of Safe Return
//Offset - 0xF7FF8A59 - Card Trooper
//Offset - 0xF7FFA48D - Cards for Black Feathers
//Offset - 0xF7FF7031 - Ceasefire
//Offset - 0xF7FF9345 - Celestia, Lightsworn Angel
//Offset - 0xF7FF5FD9 - Centaur Mina
//Offset - 0xF7FF6E15 - Chain Destruction
//Offset - 0xF7FF7C09 - Chain Disappearance
//Offset - 0xF7FFA7B9 - Chain Dog
//Offset - 0xF7FF6F71 - Chain Energy
//Offset - 0xF7FF9191 - Chain Material
//Offset - 0xF7FF89F1 - Chain Strike
//Offset - 0xF7FF6EB5 - Change of Heart
//Offset - 0xF7FF7C19 - Chaos Emperor Dragon - Envoy of the End
//Offset - 0xF7FFA479 - Chaos King Archfiend
//Offset - 0xF7FF7BAD - Chaos Sorcerer
//Offset - 0xF7FF96A1 - Chaos-End Master
//Offset - 0xF7FF9705 - Charge of the Light Brigade
//Offset - 0xF7FFA431 - Cherry Inmato
//Offset - 0xF7FF9039 - Chimaera, The Master of Beasts
//Offset - 0xF7FF9099 - Chimeratech FOrtress Dragon
//Offset - 0xF7FFA6FD - Chivalry
//Offset - 0xF7FF9CF1 - Coat of Justice
//Offset - 0xF7FFA229 - Codarus
//Offset - 0xF7FF9B05 - Code A Ancient Ruins
//Offset - 0xF7FF7239 - Cold Wave
//Offset - 0xF7FF94C5 - Colossal Fighter
//Offset - 0xF7FF7CD1 - Compulsory Evacuation Device
//Offset - 0xF7FF6F51 - Confiscation
//Offset - 0xF7FFA22D - Consecrated Light
//Offset - 0xF7FF7B05 - Contract with the Abyss
//Offset - 0xF7FF5FAD - Convert Ghost
//Offset - 0xF7FF9E2D - Core Reinforcement
//Offset - 0xF7FF9975 - Cosmic Fortress Gol'Gar
//Offset - 0xF7FF72A9 - Creature Swap
//Offset - 0xF7FF6C45 - Crush Card Virus
//Offset - 0xF7FF8C05 - Crystal Beast Sapphire Pegasus
//Offset - 0xF7FF8361 - Cyber Dragon
//Offset - 0xF7FF9F05 - Cyber Eltanin
//Offset - 0xF7FF6F85 - Cyber Jar
//Offset - 0xF7FF90C1 - Cyber Valley
//Offset - 0xF7FF6889 - Cyber-Stein
//Offset - 0xF7FF8AFD - D.D. Crow
//Offset - 0xF7FF7A25 - D.D. Warrior Lady
//Offset - 0xF7FF921D - D.D.R. - Different Dimension Reincarnation
//Offset - 0xF7FF85F1 - Damage Condenser
//Offset - 0xF7FF86CD - Dandylion
//Offset - 0xF7FF8FF9 - Dark Bribe
//Offset - 0xF7FFA1D1 - Dark Bug
//Offset - 0xF7FF9055 - Dark Calling
//Offset - 0xF7FF5E25 - Dark Diviner
//Offset - 0xF7FF7635 - Dark Dust Spirit
//Offset - 0xF7FF9031 - Dark End Dragon
//Offset - 0xF7FF7FC9 - Dark Factory of Mass Production
//Offset - 0xF7FF5ED9 - Dark Flattop
//Offset - 0xF7FF92B5 - Dark Grepher
//Offset - 0xF7FF6739 - Dark Hole
//Offset - 0xF7FF7C49 - Dark Magician of Chaos
//Offset - 0xF7FF7AFD - Dark Master - Zorc
//Offset - 0xF7FF78F5 - Dark Paladin
//Offset - 0xF7FF77A9 - Dark Room of Nightmare
//Offset - 0xF7FF7485 - Dark Ruler Ha Des
//Offset - 0xF7FF7ABD - Dark Scorpion - Meanae the Thorn
//Offset - 0xF7FF95E1 - Dark Simorgh
//Offset - 0xF7FF9965 - Dark Strike Fighter
//Offset - 0xF7FFA871 - Dark Trap Hole
//Offset - 0xF7FF5ED5 - Dark Tuner Dark Goddess Witaka
//Offset - 0xF7FF5ED1 - Dark Tuner Doom Submarine
//Offset - 0xF7FF5E3D - Dark Tuner Nightmare Hand
//Offset - 0xF7FF5E41 - Dark Tuner Spider Cocoon
//Offset - 0xF7FF9D05 - Darklord Asmodeus
//Offset - 0xF7FF9E75 - Darklord Desire
//Offset - 0xF7FF9D09 - Darklord Superbia
//Offset - 0xF7FF92B9 - Darklord Zerato
//Offset - 0xF7FFA0A1 - Darkness Neosphere
//Offset - 0xF7FF98ED - Debris Dragon
//Offset - 0xF7FF7CB5 - Dedication THrough Light and Darkness
//Offset - 0xF7FF9B91 - Deep Sea Diva
//Offset - 0xF7FF5EA1 - Defender's Mind
//Offset - 0xF7FF7215 - De-Fusion
//Offset - 0xF7FF6F55 - Delinquent Duo
//Offset - 0xF7FF9C11 - Delta Crow - Anti Reverse
//Offset - 0xF7FF8665 - Demise, King of Armageddon
//Offset - 0xF7FF7959 - Des Koala
//Offset - 0xF7FF7669 - Des Lacooda
//Offset - 0xF7FF8A85 - Destiny Draw
//Offset - 0xF7FF938D - Destiny End Dragoon
//Offset - 0xF7FF86E5 - Destiny Hero - Diamond Dude
//Offset - 0xF7FF8C49 - Destiny Hero - Disk Commander
//Offset - 0xF7FF8A81 - Destiny Hero - Malicious
//Offset - 0xF7FF8C4D - Destiny Hero - Plasma
//Offset - 0xF7FF7CB1 - Dimension Fusion
//Offset - 0xF7FF8439 - Dimension Wall
//Offset - 0xF7FF9091 - Dimensional Prison
//Offset - 0xF7FF8455 - Divine Sword - Phoenix Blade
//Offset - 0xF7FF810D - DIvine Wrath
//Offset - 0xF7FF9FAD - Djinn Releaser of RItuals
//Offset - 0xF7FF701D - DNA Surgery
//Offset - 0xF7FF8639 - Doom Dozer
//Offset - 0xF7FF8DD5 - Doom Shaman
//Offset - 0xF7FF7E05 - Doomcaliber Knight
//Offset - 0xF7FF96C9 - Doomkaiser Dragon
//Offset - 0xF7FFA725 - Dragon Mastery
//Offset - 0xF7FFA721 - Dragon Ravine
//Offset - 0xF7FF83FD - Dragon's Mirror
//Offset - 0xF7FFA71D - Dragunity Aklys
//Offset - 0xF7FFA715 - Dragunity Arma - Laevateinn
//Offset - 0xF7FFA719 - Dragunity Arma - Mistilteinn
//Offset - 0xF7FFA37D - Dragunity Knight - Barcha
//Offset - 0xF7FF9F01 - Dragunity Knight - Gae Dearg
//Offset - 0xF7FF9E89 - Dragunity Phalanx
//Offset - 0xF7FF91AD - Drastic Drop Off
//Offset - 0xF7FFA3F9 - Dread Dragon
//Offset - 0xF7FFA24D - Drill Warrior
//Offset - 0xF7FF8355 - Drillroid
//Offset - 0xF7FF95ED - Dupe Frog
//Offset - 0xF7FF8715 - E - Emergency Call
//Offset - 0xF7FFA5C9 - Effect Veiler
//Offset - 0xF7FFA5E1 - Egotistical Ape
//Offset - 0xF7FF9601 - Ehren, Lightsworn Monk
//Offset - 0xF7FF9AC9 - Elemental Hero Absolute Zero
//Offset - 0xF7FF9AC1 - Elemental Hero Gaia
//Offset - 0xF7FFA15D - Elemental Hero Great Tornado
//Offset - 0xF7FF86C9 - Elemental Hero Neos
//Offset - 0xF7FFA541 - Elemental Hero Neos Knight
//Offset - 0xF7FF87D5 - Elemental Hero Ocean
//Offset - 0xF7FF91F5 - Elemental Hero Prisma
//Offset - 0xF7FF8891 - Elemental Hero Stratos
//Offset - 0xF7FFA0B1 - Elemental Hero The Shining
//Offset - 0xF7FF8BDD - Elemental Hero Voltic
//Offset - 0xF7FF87CD - Elemental Hero Woodsman
//Offset - 0xF7FF9589 - Emergency Teleport
//Offset - 0xF7FF903D - Emperor of Lightning
//Offset - 0xF7FF9429 - Emperor Sem
//Offset - 0xF7FF7EB5 - Enchanting Fitting Room
//Offset - 0xF7FF7741 - Enemy Controller
//Offset - 0xF7FF82B1 - Eria the Water Charmer
//Offset - 0xF7FFA8C9 - Evigishki Soul Ogre
//Offset - 0xF7FF9225 - Evil Dragon Ananta
//Offset - 0xF7FF8EA1 - Evil Hero Dark Gaia
//Offset - 0xF7FF8E99 - Evil Hero Infernal Gainer
//Offset - 0xF7FF8E95 - Evil Hero Malicious Edge
//Offset - 0xF7FF7571 - Exchange of the Spirit
//Offset - 0xF7FF624D - Exodia the Forbidden One
//Offset - 0xF7FF9C49 - Fabled Krus
//Offset - 0xF7FF9CA9 - Fabled Leviathan
//Offset - 0xF7FF976D - Fabled Raven
//Offset - 0xF7FF9AAD - Fabled Valkyrus
//Offset - 0xF7FFA011 - Faustian Bargain
//Offset - 0xF7FF9F11 - Featherizer
//Offset - 0xF7FF758D - FIber Jar
//Offset - 0xF7FFA2A9 - Fiendish Chain
//Offset - 0xF7FF7905 - Fiend's Sanctuary
//Offset - 0xF7FF7B15 - Final Countdown
//Offset - 0xF7FF9161 - Fires of Doomsday
//Offset - 0xF7FF9D79 - Fishborg Blaster
//Offset - 0xF7FF6E51 - Fissure
//Offset - 0xF7FF7735 - Five-Headed Dragon
//Offset - 0xF7FF9DA1 - Flamvell Firedog
//Offset - 0xF7FF9249 - Flamvell Magician
//Offset - 0xF7FF9655 - Flamvell Poun
//Offset - 0xF7FF9289 - Flamvell Uruquizas
//Offset - 0xF7FF6FBD - Flying Kamakiri #1
//Offset - 0xF7FF73A9 - Foolish Burial
//Offset - 0xF7FF9BF5 - Forbidden Chalice
//Offset - 0xF7FFA2D9 - Forgotten Temple of the Deep
//Offset - 0xF7FF9E01 - Fossil Dig
//Offset - 0xF7FF90A1 - Fossil Dyna Pachycephalo
//Offset - 0xF7FF8AB1 - Frostosaurus
//Offset - 0xF7FF5E21 - Frozen Fitzgerald
//Offset - 0xF7FF7B29 - Frozen Soul
//Offset - 0xF7FF7441 - Fusion Gate
//Offset - 0xF7FF83F5 - Fusion Recovery
//Offset - 0xF7FF8889 - Future Fusion
//Offset - 0xF7FF920D - Gaap the Divine Soldier
//Offset - 0xF7FFA7CD - Gaia Drake, the Universal Force
//Offset - 0xF7FF92A9 - Gaia Plate the Earth Giant
//Offset - 0xF7FF6FD1 - Gaia Power
//Offset - 0xF7FF9335 - Garoth, Lightsworn Warrior
//Offset - 0xF7FFA185 - Gateway of the Six
//Offset - 0xF7FF9489 - Geartown
//Offset - 0xF7FF8BCD - Gellenduo
//Offset - 0xF7FF9F15 - Gemini Soldier
//Offset - 0xF7FFA595 - Gem-Knight Ruby
//Offset - 0xF7FFA3D9 - Genex Ally Axel
//Offset - 0xF7FFA325 - Genex Ally Birdman
//Offset - 0xF7FFA125 - Genex Ally Triarm
//Offset - 0xF7FFA375 - Genex Ally Triforce
//Offset - 0xF7FF9629 - Genex Controller
//Offset - 0xF7FF96A9 - Genex Neutron
//Offset - 0xF7FF962D - Genex Undine
//Offset - 0xF7FF6F8D - Giant Rat
//Offset - 0xF7FF6F79 - Giant Trunade
//Offset - 0xF7FF8E55 - Gift Card
//Offset - 0xF7FF90F9 - Gigaplant
//Offset - 0xF7FF8EFD - Gladiator Beast Bestiari
//Offset - 0xF7FF910D - Gladiator Beast Darius
//Offset - 0xF7FF9525 - Gladiator Beast Equeste
//Offset - 0xF7FF9395 - Gladiator Beast Gyzarus
//Offset - 0xF7FF95C5 - Gladiator Beast War Chariot
//Offset - 0xF7FF9401 - Glorious Illusion
//Offset - 0xF7FFA779 - Glow-Up Bulb
//Offset - 0xF7FF7DA1 - Goblin King
//Offset - 0xF7FF7819 - Goblin Zombie
//Offset - 0xF7FF8625 - Gokipon
//Offset - 0xF7FF803D - Gold Sarcophagus
//Offset - 0xF7FF85A1 - Gorz the Emissary of Darkness
//Offset - 0xF7FF9CFD - Gottoms' Emergency Call
//Offset - 0xF7FF6E11 - Graceful Charity
//Offset - 0xF7FF5F05 - Grand Core
//Offset - 0xF7FF8CFD - Grandmaster of the Six Samurai
//Offset - 0xF7FF9C39 - Grave of the Super Ancient Organism
//Offset - 0xF7FF9065 - Grave Squirmer
//Offset - 0xF7FF7751 - Gravekeeper's Spy
//Offset - 0xF7FF7255 - Gravity Bind
//Offset - 0xF7FF7AC5 - Great Maju Garzett
//Offset - 0xF7FF8AD1 - Great Shogun Shien
//Offset - 0xF7FF8341 - Green Baboon, Defender of the Forest
//Offset - 0xF7FF9069 - Grinder Golem
//Offset - 0xF7FF6F31 - Gryphon Wing
//Offset - 0xF7FFA09D - Guardian Eatos
//Offset - 0xF7FF9CB9 - Gungnir, Dragon of the Ice Barrier
//Offset - 0xF7FF9E59 - Hardened Armed Dragon
//Offset - 0xF7FF6C65 - Harpie's Feather Duster
//Offset - 0xF7FF7BBD - Heart of the Underdog
//Offset - 0xF7FFA829 - Heat Wave
//Offset - 0xF7FF6F2D - Heavy Storm
//Offset - 0xF7FF92E1 - Hecatrice
//Offset - 0xF7FF9465 - Herald of Perfection
//Offset - 0xF7FF82B5 - Hiita the Fire Charmer
//Offset - 0xF7FF75B1 - Hino-Kagu-Tsuchi
//Offset - 0xF7FF92E9 - Honest
//Offset - 0xF7FF5FD1 - Horse of the Floral Knights
//Offset - 0xF7FF7F51 - Horus the Black Flame Dragon LV6
//Offset - 0xF7FF7F55 - Horus the Black Flame Dragon LV8
//Offset - 0xF7FF7F99 - Howling Insect
//Offset - 0xF7FF7EE1 - Human-Wave Tactics
//Offset - 0xF7FF87A9 - Icarus Attack
//Offset - 0xF7FF9E15 - Imperial Custom
//Offset - 0xF7FF703D - Imperial Order
//Offset - 0xF7FF9CE1 - Infernity Archfiend
//Offset - 0xF7FFA411 - Infernity Beetle
//Offset - 0xF7FFA4F1 - Infernity Inferno
//Offset - 0xF7FFA495 - Infernity Launcher
//Offset - 0xF7FFA409 - Infernity Mirage
//Offset - 0xF7FF7F31 - Inferno Tempest
//Offset - 0xF7FF89E5 - Instant Fusion
//Offset - 0xF7FFA49D - Intercept Wave
//Offset - 0xF7FFA2E9 - Inverse Universe
//Offset - 0xF7FF7AC9 - Iron Blacksmith Kotetsu
//Offset - 0xF7FF932D - Jain, Lightsworn Paladin
//Offset - 0xF7FF798D - Jar Robber
//Offset - 0xF7FF6D71 - Jinzo
//Offset - 0xF7FF934D - Judgment Dragon
//Offset - 0xF7FF95D1 - Judgment of Thunder
//Offset - 0xF7FFA529 - Junk Destroyer
//Offset - 0xF7FF9499 - Junk Synchron
//Offset - 0xF7FFA101 - Jurrac Aeolo
//Offset - 0xF7FF9AB1 - Jurrac Giganoto
//Offset - 0xF7FF9E9D - Jurrac Guaiba
//Offset - 0xF7FFA131 - Jurrac Meteor
//Offset - 0xF7FF9A61 - Jurrac Monoloph
//Offset - 0xF7FF6EC9 - Just Desserts
//Offset - 0xF7FF8231 - Kaibaman
//Offset - 0xF7FFA781 - Karakuri Merchant MDL 177 "Inashichi"
//Offset - 0xF7FFA789 - Karakuri Ninja MDL 339 "Sazank"
//Offset - 0xF7FFA7DD - Karakuri Shogun MDL 00 "Burei"
//Offset - 0xF7FFA469 - Key Mouse
//Offset - 0xF7FF9E65 - King of the Beasts
//Offset - 0xF7FF7E89 - King of the Swamp
//Offset - 0xF7FF953D - Kinka-Byo
//Offset - 0xF7FFA05D - Koa'Ki Meiru Bergzak
//Offset - 0xF7FFA165 - Koa'Ki Meiru Maximus
//Offset - 0xF7FF9F89 - Koa'Ki Meiru Rooklord
//Offset - 0xF7FFA20D - Koa'Ki Meiru Urnight
//Offset - 0xF7FF96C1 - Koalo-Koala
//Offset - 0xF7FF950D - Krebons
//Offset - 0xF7FF7619 - Last Turn
//Offset - 0xF7FF6F15 - Last Will
//Offset - 0xF7FF7721 - Lava Golem
//Offset - 0xF7FF8315 - Level Conversion Lab
//Offset - 0xF7FF9F2D - Level Eater
//Offset - 0xF7FF7EB1 - Level Limit - Area B
//Offset - 0xF7FFA909 - LIberty At Last!
//Offset - 0xF7FF8901 - Light and Darkness Dragon
//Offset - 0xF7FF9035 - Light End Dragon
//Offset - 0xF7FF7369 - Lightning Vortex
//Offset - 0xF7FF7241 - Limiter Removal
//Offset - 0xF7FFA645 - Lock Cat
//Offset - 0xF7FF9CB5 - Locomotion R-Genex
//Offset - 0xF7FF92D1 - Lonefire Blossom
//Offset - 0xF7FF9FA5 - Lord British Space Fighter
//Offset - 0xF7FF76FD - Lord Poison
//Offset - 0xF7FF98CD - Lorelei, The Symphonic Arsenal
//Offset - 0xF7FF9339 - Lumina, Lightsworn Summoner
//Offset - 0xF7FF6FE1 - Luminous Spark
//Offset - 0xF7FF9331 - Lyla, Lightsworn Sorceress
//Offset - 0xF7FFA2FD - Machina Armored Unit
//Offset - 0xF7FFA2ED - Machina Fortress
//Offset - 0xF7FFA2F1 - Machina Gearframe
//Offset - 0xF7FFA2F5 - Machina Peacekeeper
//Offset - 0xF7FFA28D - Machine Assembly Line
//Offset - 0xF7FF7729 - Machine Duplication
//Offset - 0xF7FF722D - Magic Cylinder
//Offset - 0xF7FF6EBD - Magic Jammer
//Offset - 0xF7FF7A85 - Magical DImension
//Offset - 0xF7FF7045 - Magical Hats
//Offset - 0xF7FF7961 - Magical Merchant
//Offset - 0xF7FF7949 - Magical Scientist
//Offset - 0xF7FF79C5 - Magical Stone Excavation
//Offset - 0xF7FF68A9 - Magician of Faith
//Offset - 0xF7FF8051 - Magician's CIrcle
//Offset - 0xF7FF7C21 - Magician's Valkyria
//Offset - 0xF7FF7459 - Makyura the Destructor
//Offset - 0xF7FF7C99 - Manju of the Ten Thousand Hands
//Offset - 0xF7FF7C4D - Manticore of Darkness
//Offset - 0xF7FF74C9 - Marauding Captain
//Offset - 0xF7FF7E01 - Marshmallon
//Offset - 0xF7FF6391 - Mask of Darkness
//Offset - 0xF7FF7F9D - Masked Dragon
//Offset - 0xF7FF5E69 - Masked Knight LV7
//Offset - 0xF7FF7FC1 - Master of Oz
//Offset - 0xF7FFA809 - Medallion of the Ice Barrier
//Offset - 0xF7FF6C39 - Megamorph
//Offset - 0xF7FF8281 - Megarock Dragon
//Offset - 0xF7FF6FE9 - Messenger of Peace
//Offset - 0xF7FF79BD - Metal Reflect Slime
//Offset - 0xF7FF77C9 - Metamorphosis
//Offset - 0xF7FF7D0D - Meteo the Matchless
//Offset - 0xF7FF9015 - Mezuki
//Offset - 0xF7FF6E25 - Mind Control
//Offset - 0xF7FF8011 - Mind Crush
//Offset - 0xF7FF9505 - Mind Master
//Offset - 0xF7FF9459 - Miracle Fertilizer
//Offset - 0xF7FF83F9 - Miracle Fusion
//Offset - 0xF7FFA6A5 - Miracle Synchro Fusion
//Offset - 0xF7FF7681 - Mirage of Nightmare
//Offset - 0xF7FF6F1D - Mirror Force
//Offset - 0xF7FF9A8D - Mist Valley Falcon
//Offset - 0xF7FF9239 - Mist Valley Thunderbird
//Offset - 0xF7FF9285 - Mist Wurm
//Offset - 0xF7FF7F8D - Mobius the Frost Monarch
//Offset - 0xF7FF6FD9 - Molten Destruction
//Offset - 0xF7FF7DBD - Monster Gate
//Offset - 0xF7FF6E6D - Monster Reborn
//Offset - 0xF7FF5EDD - Moon Dragon Quilla Dark
//Offset - 0xF7FFA001 - Moray of Greed
//Offset - 0xF7FF6B35 - Morphing Jar
//Offset - 0xF7FF7061 - Morphing Jar #2
//Offset - 0xF7FF971D - Morphtronic Celfon
//Offset - 0xF7FF998D - Morphtronic Map
//Offset - 0xF7FF9731 - Morphtronic Radion
//Offset - 0xF7FF9B45 - Morphtronic Scopen
//Offset - 0xF7FF6FB9 - Mother Grizzly
//Offset - 0xF7FF7991 - My Body as a Shield
//Offset - 0xF7FF72B5 - Mystic Box
//Offset - 0xF7FF6FE5 - Mystic Plasma Zone
//Offset - 0xF7FF6FC9 - Mystic Tomato
//Offset - 0xF7FF6F75 - Mystical Space Typhoon
//Offset - 0xF7FFA635 - Naturia Bamboo Shoot
//Offset - 0xF7FF9CB1 - Naturia Barkion
//Offset - 0xF7FF9885 - Naturia Beast
//Offset - 0xF7FF9C71 - Naturia Cliff
//Offset - 0xF7FFA36D - Naturia Exterio
//Offset - 0xF7FFA135 - Naturia Landoise
//Offset - 0xF7FFA355 - Naturia Mantis
//Offset - 0xF7FFA7AD - Naturia Pumpkin
//Offset - 0xF7FF8D81 - Necro Gardna
//Offset - 0xF7FF7F01 - Necroface
//Offset - 0xF7FF77B1 - Necrovalley
//Offset - 0xF7FF76A1 - Needle Ceiling
//Offset - 0xF7FF6AC1 - Needle Worm
//Offset - 0xF7FF886D - Neo Space
//Offset - 0xF7FF8859 - Neo-Spacian Grand Mole
//Offset - 0xF7FF7E81 - Night Assailant
//Offset - 0xF7FF7479 - Nightmare Wheel
//Offset - 0xF7FF721D - Nightmare's Steelcage
//Offset - 0xF7FF6FA9 - Nimble Momonga
//Offset - 0xF7FF7049 - Nobleman of Crossout
//Offset - 0xF7FF704D - Nobleman of Extermination
//Offset - 0xF7FF8BC5 - Nova Summoner
//Offset - 0xF7FF9005 - Nurse Reficule the Fallen One
//Offset - 0xF7FF91B9 - Offering to the Snake Deity
//Offset - 0xF7FF7361 - Offerings to the Doomed
//Offset - 0xF7FF9CC9 - Ojama Country
//Offset - 0xF7FF8D85 - Ojama Knight
//Offset - 0xF7FF7A71 - Ojama Trio
//Offset - 0xF7FF9BB5 - One for One
//Offset - 0xF7FF888D - Overload Fusion
//Offset - 0xF7FF6F7D - Painful Choice
//Offset - 0xF7FF96E9 - Paladin of the Cursed Dragon
//Offset - 0xF7FFA6F1 - Paradox Fusion
//Offset - 0xF7FF9819 - Parallel World Fusion
//Offset - 0xF7FF6B61 - Penguin Soldier
//Offset - 0xF7FF9001 - Phantom of Chaos
//Offset - 0xF7FF9061 - Phantom Skyblaster
//Offset - 0xF7FF9F09 - Phoenix Gearfried
//Offset - 0xF7FF81F9 - Phoenix Wing Wind Blast
//Offset - 0xF7FF6DA5 - Pinch Hopper
//Offset - 0xF7FF96CD - Plaguespreader Zombie
//Offset - 0xF7FF9A05 - Planet Pollutant Virus
//Offset - 0xF7FF78A1 - Poison of the Old Man
//Offset - 0xF7FF8509 - Pot of Avarice
//Offset - 0xF7FFA6B9 - Pot of Duality
//Offset - 0xF7FF6E75 - Pot of Greed
//Offset - 0xF7FF8381 - Power Bond
//Offset - 0xF7FF5EF9 - Powerful Rebirth
//Offset - 0xF7FF7055 - Premature Burial
//Offset - 0xF7FF9FFD - Preparation of Rites
//Offset - 0xF7FF7BE1 - Primal Seed
//Offset - 0xF7FF92CD - Prime Material Dragon
//Offset - 0xF7FF76F1 - Puppet Master
//Offset - 0xF7FF7659 - Pyramid Turtle
//Offset - 0xF7FF8561 - Queen of Fate - Eternia
//Offset - 0xF7FF944D - Queen of Thorns
//Offset - 0xF7FF9F29 - Quickdraw Synchron
//Offset - 0xF7FF94D1 - Quillbolt Hedgehog
//Offset - 0xF7FF8719 - R - Righteous Justice
//Offset - 0xF7FF673D - Raigeki
//Offset - 0xF7FF77DD - Raigeki Break
//Offset - 0xF7FF9A21 - Rai-Mei
//Offset - 0xF7FF9185 - Rainbow Life
//Offset - 0xF7FF8C8D - Raiza the Storm Monarch
//Offset - 0xF7FF76B9 - Reckless Greed
//Offset - 0xF7FF9559 - Red Dragon Archfiend
//Offset - 0xF7FF7F79 - Red-Eyes B. Chick
//Offset - 0xF7FF92A5 - Red-Eyes Darkness Metal Dragon
//Offset - 0xF7FF98A1 - Red-Eyes Wyvern
//Offset - 0xF7FF963D - Reese the Ice Mistress
//Offset - 0xF7FF74F1 - Reinforcement of the Army
//Offset - 0xF7FF9DF9 - Rekindling
//Offset - 0xF7FF6D21 - Relinquished
//Offset - 0xF7FF81B9 - Rescue Cat
//Offset - 0xF7FF82C9 - Reshef the Dark Being
//Offset - 0xF7FF7F09 - Return from the Different Dimension
//Offset - 0xF7FF96D5 - Revived King Ha Des
//Offset - 0xF7FF70E1 - Ring of Destruction
//Offset - 0xF7FF6FDD - RIsing Air Current
//Offset - 0xF7FF6EF1 - Robbin' Goblin
//Offset - 0xF7FF8531 - Roll Out!
//Offset - 0xF7FFA45D - Ronintoadin
//Offset - 0xF7FF6ECD - Royal Decree
//Offset - 0xF7FF91E5 - Royal Firestorm Guards
//Offset - 0xF7FF75FD - Royal Oppression
//Offset - 0xF7FF8661 - Ruin, Queen of Oblivion
//Offset - 0xF7FF933D - Ryko, Lightsworn Hunter
//Offset - 0xF7FFA90D - Sacred Knight Joan
//Offset - 0xF7FF5FD5 - Sacred Knight's Shield Bearer
//Offset - 0xF7FF5FCD - Sacred Knight's Spearholder
//Offset - 0xF7FF7CB9 - Salvage
//Offset - 0xF7FF62B9 - Sangan
//Offset - 0xF7FF6E29 - Scapegoat
//Offset - 0xF7FFA60D - Scrap Chimera
//Offset - 0xF7FFA61D - Scrap Golem
//Offset - 0xF7FFA7F5 - Scrap Lube
//Offset - 0xF7FFA795 - Scrap Searcher
//Offset - 0xF7FFA7E1 - Scrap Twin Dragon
//Offset - 0xF7FF94B5 - Scrap-Iron Scarecrow
//Offset - 0xF7FFA681 - Scrapstorm
//Offset - 0xF7FFA67D - Scrapyard
//Offset - 0xF7FF9BB1 - Sea Dragon Lord Gishilnodon
//Offset - 0xF7FF78D5 - Secret Barrel
//Offset - 0xF7FF97C5 - Secret Village of the Spellcasters
//Offset - 0xF7FF6F91 - Senju of the Thousand Hands
//Offset - 0xF7FF6C59 - Shadow Spell
//Offset - 0xF7FF6F25 - Share the Pain
//Offset - 0xF7FF7E09 - Shield Crush
//Offset - 0xF7FF6FB1 - Shining Angel
//Offset - 0xF7FF9D6D - Shiny Black "C"
//Offset - 0xF7FF7A3D - Shooting Star Bow - Ceal
//Offset - 0xF7FF804D - Silent Magician LV4
//Offset - 0xF7FF6965 - Sinister Serpent
//Offset - 0xF7FF7D31 - Sixth Sense
//Offset - 0xF7FF7A79 - Skill Drain
//Offset - 0xF7FF7929 - Skilled Dark Magician
//Offset - 0xF7FFA1A9 - Skuna, The Leonine Rakan
//Offset - 0xF7FF5F01 - Sky Core
//Offset - 0xF7FF8C7D - Sky Scourge Norleras
//Offset - 0xF7FF8D51 - Snake Rain
//Offset - 0xF7FF6F49 - Snatch Steal
//Offset - 0xF7FF898D - Snipe Hunter
//Offset - 0xF7FF9CBD - Snowman Eater
//Offset - 0xF7FF7DA5 - Solar Flare Dragon
//Offset - 0xF7FF93B5 - Solar Recharge
//Offset - 0xF7FF6EB9 - Solemn Judgment
//Offset - 0xF7FFA6F5 - Solemn Warning
//Offset - 0xF7FF9ADD - Spell Power Grasp
//Offset - 0xF7FF7B75 - Spirit of the Pot of Greed
//Offset - 0xF7FF7795 - Spirit Reaper
//Offset - 0xF7FFA481 - Splendid Rose
//Offset - 0xF7FF8FF1 - Splendid Venus
//Offset - 0xF7FFA425 - Spore
//Offset - 0xF7FF9981 - Star Blast
//Offset - 0xF7FF9555 - Stardust Dragon
//Offset - 0xF7FF9A45 - Stardust Dragon/Assault Mode
//Offset - 0xF7FFA1A1 - Starlight Road
//Offset - 0xF7FFA8C1 - Steelswarm Caucastag
//Offset - 0xF7FFA8BD - Steelswarm Girastag
//Offset - 0xF7FF9B15 - Strong Wind Dragon
//Offset - 0xF7FFA39D - Stygian Sergeants
//Offset - 0xF7FF87E9 - Submarineroid
//Offset - 0xF7FF9355 - Substitoad
//Offset - 0xF7FF8389 - Summoner Monk
//Offset - 0xF7FF73D5 - Summoner of Illusions
//Offset - 0xF7FF8E1D - Summoner's Art
//Offset - 0xF7FFA6B5 - Summoning Curse
//Offset - 0xF7FF913D - Super Polymerization
//Offset - 0xF7FF8F3D - Superalloy Beast Raptinus
//Offset - 0xF7FF9115 - Superancient Deepsea King Coelacanth
//Offset - 0xF7FFA3B9 - Super-Nimble Mega Hamster
//Offset - 0xF7FF9F19 - Supervise
//Offset - 0xF7FFA7C9 - Supreme Arcanite Magician
//Offset - 0xF7FF9E69 - Swallow's Nest
//Offset - 0xF7FF9FA1 - Swap Frog
//Offset - 0xF7FFA735 - Swift Scarecrow
//Offset - 0xF7FF8E8D - Swing of Memories
//Offset - 0xF7FF6769 - Swords of Revealing Light
//Offset - 0xF7FF8E29 - Symbols of Duty
//Offset - 0xF7FF5EA5 - Synchro Spirits
//Offset - 0xF7FFA531 - Synchron Explorer
//Offset - 0xF7FF5F71 - Tech Genus Cyber Magician SC-01
//Offset - 0xF7FF5F81 - Tech Genus Power Gladiator WAX-1000
//Offset - 0xF7FF5F7D - Tech Genus Rush Rhino BE-04
//Offset - 0xF7FF5F75 - Tech Genus Striker WA-01
//Offset - 0xF7FF5F79 - Tech Genus Werewolf BW-03
//Offset - 0xF7FF5F85 - Tech Genus Wonder Magician SCX-1000
//Offset - 0xF7FF99A1 - Telekinetic Power Well
//Offset - 0xF7FF9A2D - Tempest Magician
//Offset - 0xF7FF739D - Temple of the Kings
//Offset - 0xF7FF77C1 - Terraforming
//Offset - 0xF7FF8AA5 - Testament of the Arcane Lords
//Offset - 0xF7FF92B1 - Tethys, Goddess of Light
//Offset - 0xF7FF806D - The Creator
//Offset - 0xF7FF81A9 - The Dark - Hex-Sealed Fusion
//Offset - 0xF7FF90D9 - The Dark Creator
//Offset - 0xF7FF81A5 - The Earth - Hex-Sealed Fusion
//Offset - 0xF7FFA0DD - The Fabled Cerburrel
//Offset - 0xF7FFA129 - The Fabled Unicore
//Offset - 0xF7FF869D - The Flute of Summoning Kuriboh
//Offset - 0xF7FF6F6D - The Forceful Sentry
//Offset - 0xF7FF9105 - The Immortal Bushi
//Offset - 0xF7FF81A1 - The Light - Hex-Sealed Fusion
//Offset - 0xF7FF8B75 - The Transmigration Prophecy
//Offset - 0xF7FF801D - The Tricky
//Offset - 0xF7FF74F9 - The Warrior Returning Alive
//Offset - 0xF7FF80A1 - Thestalos the Firestorm Monarch
//Offset - 0xF7FF9565 - Thought Ruler Archfiend
//Offset - 0xF7FF6D2D - Thousand-Eyes Restrict
//Offset - 0xF7FF81F5 - Threatening Roar
//Offset - 0xF7FF689D - Thunder Dragon
//Offset - 0xF7FF9085 - Thunder King Rai-Oh
//Offset - 0xF7FF78C5 - Thunder of Ruler
//Offset - 0xF7FF6DE1 - Time Machine
//Offset - 0xF7FF709D - Time Seal
//Offset - 0xF7FF76D5 - Toon Table of Contents
//Offset - 0xF7FF9B4D - Torapart
//Offset - 0xF7FF720D - Torrential Tribute
//Offset - 0xF7FF9AF9 - Totem Dragon
//Offset - 0xF7FF8E75 - Trade-In
//Offset - 0xF7FF9A3D - Tragoedia
//Offset - 0xF7FF76B1 - Trap Dustshoot
//Offset - 0xF7FF6E55 - Trap Hole
//Offset - 0xF7FF9C1D - Trap Stun
//Offset - 0xF7FF863D - Treeborn Frog
//Offset - 0xF7FF7955 - Tribe-Infecting Virus
//Offset - 0xF7FF6EA5 - Tribute to the Doomed
//Offset - 0xF7FF9BAD - Trident Dragion
//Offset - 0xF7FFA381 - Trishula, Dragon of the Ice Barrier
//Offset - 0xF7FF7AF5 - Tsukuyomi
//Offset - 0xF7FFA7E5 - Tuning
//Offset - 0xF7FF98B1 - Tuningware
//Offset - 0xF7FF9911 - Twilight Rose Knight
//Offset - 0xF7FF7A4D - Twin Swords of Flashing Light - Tryce
//Offset - 0xF7FF98C9 - Tyr, the Vanquishing Warlord
//Offset - 0xF7FF83E5 - Tyranno Infinity
//Offset - 0xF7FFA86D - Tyrant's Temper
//Offset - 0xF7FF9769 - Tytannial, Princess of Camellias
//Offset - 0xF7FF6F95 - UFO Turtle
//Offset - 0xF7FF7CFD - Ulevo
//Offset - 0xF7FF9391 - Ultimate Ancient Gear Golem
//Offset - 0xF7FF6E91 - Ultimate Offering
//Offset - 0xF7FF6FD5 - Umiiruka
//Offset - 0xF7FF5E2D - Underground Arachnid Dark
//Offset - 0xF7FFA189 - Underground Arachnid Light
//Offset - 0xF7FF7A91 - Unity
//Offset - 0xF7FF6F3D - Upstart Goblin
//Offset - 0xF7FF92E5 - Valhalla, Hall of the Fallen
//Offset - 0xF7FF8995 - Vanity's Fiend
//Offset - 0xF7FF8D99 - Vennominaga the Deity of Poisonous Snakes
//Offset - 0xF7FF8D95 - Vennominon the King of Poisonous Snakes
//Offset - 0xF7FF98C5 - Vice Dragon
//Offset - 0xF7FF7C1D - Victory Dragon
//Offset - 0xF7FF90C9 - Volcanic Counter
//Offset - 0xF7FF8E61 - Volcanic Rocket
//Offset - 0xF7FFA5AD - Vylon Epsilon
//Offset - 0xF7FFA5A9 - Vylon Sigma
//Offset - 0xF7FF6F19 - Waboku
//Offset - 0xF7FF7DE5 - Wall of Revealing Light
//Offset - 0xF7FF9A01 - Wall of Thorns
//Offset - 0xF7FF9DE9 - Water Hazard
//Offset - 0xF7FFA43D - Wattgiraffe
//Offset - 0xF7FF78BD - Wave-Motion Cannon
//Offset - 0xF7FFA825 - White Elephant's Gift
//Offset - 0xF7FF6E99 - White Hole
//Offset - 0xF7FF9D91 - White Potan
//Offset - 0xF7FF9229 - Winged Kuriboh LV9
//Offset - 0xF7FF5EFD - Wise Core
//Offset - 0xF7FF6AF1 - Witch of the Black Forest
//Offset - 0xF7FFA1D9 - Witch of the Black Rose
//Offset - 0xF7FF9295 - Wrath of Neos
//Offset - 0xF7FF82B9 - Wynn the Wind Charmer
//Offset - 0xF7FF9255 - X-Saber Airbellum
//Offset - 0xF7FFA3B1 - XX-Saber Emmersblade
//Offset - 0xF7FFA071 - XX-Saber Gardestrike
//Offset - 0xF7FF9DB9 - XX-Saber Gottoms
//Offset - 0xF7FF759D - Yata-Garasu
//Offset - 0xF7FF5E31 - Zeman the Ape King Dark
//Offset - 0xF7FF8E09 - Zombie Master
//Offset - 0xF7FF96ED - Zombie World

function black_checkers() => byte(0xF7FF75CD+dword(0xe7b054))/byte(0xF7FF75CD)+byte(0xF7FF9E49+dword(0xe7b054))/byte(0xF7FF9E49)+
                             byte(0xF7FF7D05+dword(0xe7b054))/byte(0xF7FF7D05)+byte(0xF7FF8A21+dword(0xe7b054))/byte(0xF7FF8A21)+
                             byte(0xF7FF8B3D+dword(0xe7b054))/byte(0xF7FF8B3D)+byte(0xF7FF9BC9+dword(0xe7b054))/byte(0xF7FF9BC9)+
                             byte(0xF7FFA1A5+dword(0xe7b054))/byte(0xF7FFA1A5)+byte(0xF7FF95E5+dword(0xe7b054))/byte(0xF7FF95E5)+
                             byte(0xF7FF9961+dword(0xe7b054))/byte(0xF7FF9961)+byte(0xF7FF995D+dword(0xe7b054))/byte(0xF7FF995D)+
                             byte(0xF7FF92D9+dword(0xe7b054))/byte(0xF7FF92D9)+byte(0xF7FF9291+dword(0xe7b054))/byte(0xF7FF9291)+
                             byte(0xF7FF9EED+dword(0xe7b054))/byte(0xF7FF9EED)+byte(0xF7FF5EBD+dword(0xe7b054))/byte(0xF7FF5EBD)+
                             byte(0xF7FFA641+dword(0xe7b054))/byte(0xF7FFA641)+byte(0xF7FF7455+dword(0xe7b054))/byte(0xF7FF7455)+
                             byte(0xF7FFA63D+dword(0xe7b054))/byte(0xF7FFA63D)+byte(0xF7FFA695+dword(0xe7b054))/byte(0xF7FFA695)+
                             byte(0xF7FFA6E1+dword(0xe7b054))/byte(0xF7FFA6E1)+byte(0xF7FFA651+dword(0xe7b054))/byte(0xF7FFA651)+
                             byte(0xF7FF8C09+dword(0xe7b054))/byte(0xF7FF8C09)+byte(0xF7FFA371+dword(0xe7b054))/byte(0xF7FFA371)+
                             byte(0xF7FF9DC9+dword(0xe7b054))/byte(0xF7FF9DC9)+byte(0xF7FF8A3D+dword(0xe7b054))/byte(0xF7FF8A3D)+
                             byte(0xF7FF8B39+dword(0xe7b054))/byte(0xF7FF8B39)+byte(0xF7FF8631+dword(0xe7b054))/byte(0xF7FF8631)+
                             byte(0xF7FF6EA1+dword(0xe7b054))/byte(0xF7FF6EA1)+byte(0xF7FF70ED+dword(0xe7b054))/byte(0xF7FF70ED)+
                             byte(0xF7FF792D+dword(0xe7b054))/byte(0xF7FF792D)+byte(0xF7FF8449+dword(0xe7b054))/byte(0xF7FF8449)+
                             byte(0xF7FF9971+dword(0xe7b054))/byte(0xF7FF9971)+byte(0xF7FF9D01+dword(0xe7b054))/byte(0xF7FF9D01)+
                             byte(0xF7FF90E9+dword(0xe7b054))/byte(0xF7FF90E9)+byte(0xF7FF8AA9+dword(0xe7b054))/byte(0xF7FF8AA9)+
                             byte(0xF7FF7F71+dword(0xe7b054))/byte(0xF7FF7F71)+byte(0xF7FF92DD+dword(0xe7b054))/byte(0xF7FF92DD)+
                             byte(0xF7FF95FD+dword(0xe7b054))/byte(0xF7FF95FD)+byte(0xF7FF82AD+dword(0xe7b054))/byte(0xF7FF82AD)+
                             byte(0xF7FF7D6D+dword(0xe7b054))/byte(0xF7FF7D6D)+byte(0xF7FFA819+dword(0xe7b054))/byte(0xF7FFA819)+
                             byte(0xF7FF6041+dword(0xe7b054))/byte(0xF7FF6041)+byte(0xF7FF9475+dword(0xe7b054))/byte(0xF7FF9475)+
                             byte(0xF7FF6C91+dword(0xe7b054))/byte(0xF7FF6C91)+byte(0xF7FF82BD+dword(0xe7b054))/byte(0xF7FF82BD)+
                             byte(0xF7FFA465+dword(0xe7b054))/byte(0xF7FFA465)+byte(0xF7FF9361+dword(0xe7b054))/byte(0xF7FF9361)+
                             byte(0xF7FF9365+dword(0xe7b054))/byte(0xF7FF9365)+byte(0xF7FFA1C1+dword(0xe7b054))/byte(0xF7FFA1C1)+
                             byte(0xF7FF8FED+dword(0xe7b054))/byte(0xF7FF8FED)+byte(0xF7FF7DF1+dword(0xe7b054))/byte(0xF7FF7DF1)+
                             byte(0xF7FF88FD+dword(0xe7b054))/byte(0xF7FF88FD)+byte(0xF7FF8B81+dword(0xe7b054))/byte(0xF7FF8B81)+
                             byte(0xF7FF9FC5+dword(0xe7b054))/byte(0xF7FF9FC5)+byte(0xF7FF9795+dword(0xe7b054))/byte(0xF7FF9795)+
                             byte(0xF7FF7BB5+dword(0xe7b054))/byte(0xF7FF7BB5)+byte(0xF7FF98DD+dword(0xe7b054))/byte(0xF7FF98DD)+
                             byte(0xF7FF9BCD+dword(0xe7b054))/byte(0xF7FF9BCD)+byte(0xF7FFA835+dword(0xe7b054))/byte(0xF7FFA835)+
                             byte(0xF7FFA775+dword(0xe7b054))/byte(0xF7FFA775)+byte(0xF7FF9B2D+dword(0xe7b054))/byte(0xF7FF9B2D)+
                             byte(0xF7FF9909+dword(0xe7b054))/byte(0xF7FF9909)+byte(0xF7FFA3E5+dword(0xe7b054))/byte(0xF7FFA3E5)+
                             byte(0xF7FF9905+dword(0xe7b054))/byte(0xF7FF9905)+byte(0xF7FF9B35+dword(0xe7b054))/byte(0xF7FF9B35)+
                             byte(0xF7FF9B31+dword(0xe7b054))/byte(0xF7FF9B31)+byte(0xF7FF990D+dword(0xe7b054))/byte(0xF7FF990D)+
                             byte(0xF7FF9D21+dword(0xe7b054))/byte(0xF7FF9D21)+byte(0xF7FF9BA9+dword(0xe7b054))/byte(0xF7FF9BA9)+
                             byte(0xF7FF9969+dword(0xe7b054))/byte(0xF7FF9969)+byte(0xF7FF6D35+dword(0xe7b054))/byte(0xF7FF6D35)+
                             byte(0xF7FF75F1+dword(0xe7b054))/byte(0xF7FF75F1)+byte(0xF7FF8FD9+dword(0xe7b054))/byte(0xF7FF8FD9)+
                             byte(0xF7FF8B91+dword(0xe7b054))/byte(0xF7FF8B91)+byte(0xF7FF9599+dword(0xe7b054))/byte(0xF7FF9599)+
                             byte(0xF7FF7675+dword(0xe7b054))/byte(0xF7FF7675)+byte(0xF7FF767D+dword(0xe7b054))/byte(0xF7FF767D)+
                             byte(0xF7FF8CF5+dword(0xe7b054))/byte(0xF7FF8CF5)+byte(0xF7FF7601+dword(0xe7b054))/byte(0xF7FF7601)+
                             byte(0xF7FF6DF5+dword(0xe7b054))/byte(0xF7FF6DF5)+byte(0xF7FF7941+dword(0xe7b054))/byte(0xF7FF7941)+
                             byte(0xF7FF9281+dword(0xe7b054))/byte(0xF7FF9281)+byte(0xF7FF908D+dword(0xe7b054))/byte(0xF7FF908D)+
                             byte(0xF7FF8A61+dword(0xe7b054))/byte(0xF7FF8A61)+byte(0xF7FF7A39+dword(0xe7b054))/byte(0xF7FF7A39)+
                             byte(0xF7FF9221+dword(0xe7b054))/byte(0xF7FF9221)+byte(0xF7FF9211+dword(0xe7b054))/byte(0xF7FF9211)+
                             byte(0xF7FF6EB1+dword(0xe7b054))/byte(0xF7FF6EB1)+byte(0xF7FF6E9D+dword(0xe7b054))/byte(0xF7FF6E9D)+
                             byte(0xF7FF70B1+dword(0xe7b054))/byte(0xF7FF70B1)+byte(0xF7FF6E31+dword(0xe7b054))/byte(0xF7FF6E31)+
                             byte(0xF7FF7229+dword(0xe7b054))/byte(0xF7FF7229)+byte(0xF7FF8A59+dword(0xe7b054))/byte(0xF7FF8A59)+
                             byte(0xF7FFA48D+dword(0xe7b054))/byte(0xF7FFA48D)+byte(0xF7FF7031+dword(0xe7b054))/byte(0xF7FF7031)+
                             byte(0xF7FF9345+dword(0xe7b054))/byte(0xF7FF9345)+byte(0xF7FF5FD9+dword(0xe7b054))/byte(0xF7FF5FD9)+
                             byte(0xF7FF6E15+dword(0xe7b054))/byte(0xF7FF6E15)+byte(0xF7FF7C09+dword(0xe7b054))/byte(0xF7FF7C09)+
                             byte(0xF7FFA7B9+dword(0xe7b054))/byte(0xF7FFA7B9)+byte(0xF7FF6F71+dword(0xe7b054))/byte(0xF7FF6F71)+
                             byte(0xF7FF9191+dword(0xe7b054))/byte(0xF7FF9191)+byte(0xF7FF89F1+dword(0xe7b054))/byte(0xF7FF89F1)+
                             byte(0xF7FF6EB5+dword(0xe7b054))/byte(0xF7FF6EB5)+byte(0xF7FF7C19+dword(0xe7b054))/byte(0xF7FF7C19)+
                             byte(0xF7FFA479+dword(0xe7b054))/byte(0xF7FFA479)+byte(0xF7FF7BAD+dword(0xe7b054))/byte(0xF7FF7BAD)+
                             byte(0xF7FF96A1+dword(0xe7b054))/byte(0xF7FF96A1)+byte(0xF7FF9705+dword(0xe7b054))/byte(0xF7FF9705)+
                             byte(0xF7FFA431+dword(0xe7b054))/byte(0xF7FFA431)+byte(0xF7FF9039+dword(0xe7b054))/byte(0xF7FF9039)+
                             byte(0xF7FF9099+dword(0xe7b054))/byte(0xF7FF9099)+byte(0xF7FFA6FD+dword(0xe7b054))/byte(0xF7FFA6FD)+
                             byte(0xF7FF9CF1+dword(0xe7b054))/byte(0xF7FF9CF1)+byte(0xF7FFA229+dword(0xe7b054))/byte(0xF7FFA229)+
                             byte(0xF7FF9B05+dword(0xe7b054))/byte(0xF7FF9B05)+byte(0xF7FF7239+dword(0xe7b054))/byte(0xF7FF7239)+
                             byte(0xF7FF94C5+dword(0xe7b054))/byte(0xF7FF94C5)+byte(0xF7FF7CD1+dword(0xe7b054))/byte(0xF7FF7CD1)+
                             byte(0xF7FF6F51+dword(0xe7b054))/byte(0xF7FF6F51)+byte(0xF7FFA22D+dword(0xe7b054))/byte(0xF7FFA22D)+
                             byte(0xF7FF7B05+dword(0xe7b054))/byte(0xF7FF7B05)+byte(0xF7FF5FAD+dword(0xe7b054))/byte(0xF7FF5FAD)+
                             byte(0xF7FF9E2D+dword(0xe7b054))/byte(0xF7FF9E2D)+byte(0xF7FF9975+dword(0xe7b054))/byte(0xF7FF9975)+
                             byte(0xF7FF72A9+dword(0xe7b054))/byte(0xF7FF72A9)+byte(0xF7FF6C45+dword(0xe7b054))/byte(0xF7FF6C45)+
                             byte(0xF7FF8C05+dword(0xe7b054))/byte(0xF7FF8C05)+byte(0xF7FF8361+dword(0xe7b054))/byte(0xF7FF8361)+
                             byte(0xF7FF9F05+dword(0xe7b054))/byte(0xF7FF9F05)+byte(0xF7FF6F85+dword(0xe7b054))/byte(0xF7FF6F85)+
                             byte(0xF7FF90C1+dword(0xe7b054))/byte(0xF7FF90C1)+byte(0xF7FF6889+dword(0xe7b054))/byte(0xF7FF6889)+
                             byte(0xF7FF8AFD+dword(0xe7b054))/byte(0xF7FF8AFD)+byte(0xF7FF7A25+dword(0xe7b054))/byte(0xF7FF7A25)+
                             byte(0xF7FF921D+dword(0xe7b054))/byte(0xF7FF921D)+byte(0xF7FF85F1+dword(0xe7b054))/byte(0xF7FF85F1)+
                             byte(0xF7FF86CD+dword(0xe7b054))/byte(0xF7FF86CD)+byte(0xF7FF8FF9+dword(0xe7b054))/byte(0xF7FF8FF9)+
                             byte(0xF7FFA1D1+dword(0xe7b054))/byte(0xF7FFA1D1)+byte(0xF7FF9055+dword(0xe7b054))/byte(0xF7FF9055)+
                             byte(0xF7FF5E25+dword(0xe7b054))/byte(0xF7FF5E25)+byte(0xF7FF7635+dword(0xe7b054))/byte(0xF7FF7635)+
                             byte(0xF7FF9031+dword(0xe7b054))/byte(0xF7FF9031)+byte(0xF7FF7FC9+dword(0xe7b054))/byte(0xF7FF7FC9)+
                             byte(0xF7FF5ED9+dword(0xe7b054))/byte(0xF7FF5ED9)+byte(0xF7FF92B5+dword(0xe7b054))/byte(0xF7FF92B5)+
                             byte(0xF7FF6739+dword(0xe7b054))/byte(0xF7FF6739)+byte(0xF7FF7C49+dword(0xe7b054))/byte(0xF7FF7C49)+
                             byte(0xF7FF7AFD+dword(0xe7b054))/byte(0xF7FF7AFD)+byte(0xF7FF78F5+dword(0xe7b054))/byte(0xF7FF78F5)+
                             byte(0xF7FF77A9+dword(0xe7b054))/byte(0xF7FF77A9)+byte(0xF7FF7485+dword(0xe7b054))/byte(0xF7FF7485)+
                             byte(0xF7FF7ABD+dword(0xe7b054))/byte(0xF7FF7ABD)+byte(0xF7FF95E1+dword(0xe7b054))/byte(0xF7FF95E1)+
                             byte(0xF7FF9965+dword(0xe7b054))/byte(0xF7FF9965)+byte(0xF7FFA871+dword(0xe7b054))/byte(0xF7FFA871)+
                             byte(0xF7FF5ED5+dword(0xe7b054))/byte(0xF7FF5ED5)+byte(0xF7FF5ED1+dword(0xe7b054))/byte(0xF7FF5ED1)+
                             byte(0xF7FF5E3D+dword(0xe7b054))/byte(0xF7FF5E3D)+byte(0xF7FF5E41+dword(0xe7b054))/byte(0xF7FF5E41)+
                             byte(0xF7FF9D05+dword(0xe7b054))/byte(0xF7FF9D05)+byte(0xF7FF9E75+dword(0xe7b054))/byte(0xF7FF9E75)+
                             byte(0xF7FF9D09+dword(0xe7b054))/byte(0xF7FF9D09)+byte(0xF7FF92B9+dword(0xe7b054))/byte(0xF7FF92B9)+
                             byte(0xF7FFA0A1+dword(0xe7b054))/byte(0xF7FFA0A1)+byte(0xF7FF98ED+dword(0xe7b054))/byte(0xF7FF98ED)+
                             byte(0xF7FF7CB5+dword(0xe7b054))/byte(0xF7FF7CB5)+byte(0xF7FF9B91+dword(0xe7b054))/byte(0xF7FF9B91)+
                             byte(0xF7FF5EA1+dword(0xe7b054))/byte(0xF7FF5EA1)+byte(0xF7FF7215+dword(0xe7b054))/byte(0xF7FF7215)+
                             byte(0xF7FF6F55+dword(0xe7b054))/byte(0xF7FF6F55)+byte(0xF7FF9C11+dword(0xe7b054))/byte(0xF7FF9C11)+
                             byte(0xF7FF8665+dword(0xe7b054))/byte(0xF7FF8665)+byte(0xF7FF7959+dword(0xe7b054))/byte(0xF7FF7959)+
                             byte(0xF7FF7669+dword(0xe7b054))/byte(0xF7FF7669)+byte(0xF7FF8A85+dword(0xe7b054))/byte(0xF7FF8A85)+
                             byte(0xF7FF938D+dword(0xe7b054))/byte(0xF7FF938D)+byte(0xF7FF86E5+dword(0xe7b054))/byte(0xF7FF86E5)+
                             byte(0xF7FF8C49+dword(0xe7b054))/byte(0xF7FF8C49)+byte(0xF7FF8A81+dword(0xe7b054))/byte(0xF7FF8A81)+
                             byte(0xF7FF8C4D+dword(0xe7b054))/byte(0xF7FF8C4D)+byte(0xF7FF7CB1+dword(0xe7b054))/byte(0xF7FF7CB1)+
                             byte(0xF7FF8439+dword(0xe7b054))/byte(0xF7FF8439)+byte(0xF7FF9091+dword(0xe7b054))/byte(0xF7FF9091)+
                             byte(0xF7FF8455+dword(0xe7b054))/byte(0xF7FF8455)+byte(0xF7FF810D+dword(0xe7b054))/byte(0xF7FF810D)+
                             byte(0xF7FF9FAD+dword(0xe7b054))/byte(0xF7FF9FAD)+byte(0xF7FF701D+dword(0xe7b054))/byte(0xF7FF701D)+
                             byte(0xF7FF8639+dword(0xe7b054))/byte(0xF7FF8639)+byte(0xF7FF8DD5+dword(0xe7b054))/byte(0xF7FF8DD5)+
                             byte(0xF7FF7E05+dword(0xe7b054))/byte(0xF7FF7E05)+byte(0xF7FF96C9+dword(0xe7b054))/byte(0xF7FF96C9)+
                             byte(0xF7FFA725+dword(0xe7b054))/byte(0xF7FFA725)+byte(0xF7FFA721+dword(0xe7b054))/byte(0xF7FFA721)+
                             byte(0xF7FF83FD+dword(0xe7b054))/byte(0xF7FF83FD)+byte(0xF7FFA71D+dword(0xe7b054))/byte(0xF7FFA71D)+
                             byte(0xF7FFA715+dword(0xe7b054))/byte(0xF7FFA715)+byte(0xF7FFA719+dword(0xe7b054))/byte(0xF7FFA719)+
                             byte(0xF7FFA37D+dword(0xe7b054))/byte(0xF7FFA37D)+byte(0xF7FF9F01+dword(0xe7b054))/byte(0xF7FF9F01)+
                             byte(0xF7FF9E89+dword(0xe7b054))/byte(0xF7FF9E89)+byte(0xF7FF91AD+dword(0xe7b054))/byte(0xF7FF91AD)+
                             byte(0xF7FFA3F9+dword(0xe7b054))/byte(0xF7FFA3F9)+byte(0xF7FFA24D+dword(0xe7b054))/byte(0xF7FFA24D)+
                             byte(0xF7FF8355+dword(0xe7b054))/byte(0xF7FF8355)+byte(0xF7FF95ED+dword(0xe7b054))/byte(0xF7FF95ED)+
                             byte(0xF7FF8715+dword(0xe7b054))/byte(0xF7FF8715)+byte(0xF7FFA5C9+dword(0xe7b054))/byte(0xF7FFA5C9)+
                             byte(0xF7FFA5E1+dword(0xe7b054))/byte(0xF7FFA5E1)+byte(0xF7FF9601+dword(0xe7b054))/byte(0xF7FF9601)+
                             byte(0xF7FF9AC9+dword(0xe7b054))/byte(0xF7FF9AC9)+byte(0xF7FF9AC1+dword(0xe7b054))/byte(0xF7FF9AC1)+
                             byte(0xF7FFA15D+dword(0xe7b054))/byte(0xF7FFA15D)+byte(0xF7FF86C9+dword(0xe7b054))/byte(0xF7FF86C9)+
                             byte(0xF7FFA541+dword(0xe7b054))/byte(0xF7FFA541)+byte(0xF7FF87D5+dword(0xe7b054))/byte(0xF7FF87D5)+
                             byte(0xF7FF91F5+dword(0xe7b054))/byte(0xF7FF91F5)+byte(0xF7FF8891+dword(0xe7b054))/byte(0xF7FF8891)+
                             byte(0xF7FFA0B1+dword(0xe7b054))/byte(0xF7FFA0B1)+byte(0xF7FF8BDD+dword(0xe7b054))/byte(0xF7FF8BDD)+
                             byte(0xF7FF87CD+dword(0xe7b054))/byte(0xF7FF87CD)+byte(0xF7FF9589+dword(0xe7b054))/byte(0xF7FF9589)+
                             byte(0xF7FF903D+dword(0xe7b054))/byte(0xF7FF903D)+byte(0xF7FF9429+dword(0xe7b054))/byte(0xF7FF9429)+
                             byte(0xF7FF7EB5+dword(0xe7b054))/byte(0xF7FF7EB5)+byte(0xF7FF7741+dword(0xe7b054))/byte(0xF7FF7741)+
                             byte(0xF7FF82B1+dword(0xe7b054))/byte(0xF7FF82B1)+byte(0xF7FFA8C9+dword(0xe7b054))/byte(0xF7FFA8C9)+
                             byte(0xF7FF9225+dword(0xe7b054))/byte(0xF7FF9225)+byte(0xF7FF8EA1+dword(0xe7b054))/byte(0xF7FF8EA1)+
                             byte(0xF7FF8E99+dword(0xe7b054))/byte(0xF7FF8E99)+byte(0xF7FF8E95+dword(0xe7b054))/byte(0xF7FF8E95)+
                             byte(0xF7FF7571+dword(0xe7b054))/byte(0xF7FF7571)+byte(0xF7FF624D+dword(0xe7b054))/byte(0xF7FF624D)+
                             byte(0xF7FF9C49+dword(0xe7b054))/byte(0xF7FF9C49)+byte(0xF7FF9CA9+dword(0xe7b054))/byte(0xF7FF9CA9)+
                             byte(0xF7FF976D+dword(0xe7b054))/byte(0xF7FF976D)+byte(0xF7FF9AAD+dword(0xe7b054))/byte(0xF7FF9AAD)+
                             byte(0xF7FFA011+dword(0xe7b054))/byte(0xF7FFA011)+byte(0xF7FF9F11+dword(0xe7b054))/byte(0xF7FF9F11)+
                             byte(0xF7FF758D+dword(0xe7b054))/byte(0xF7FF758D)+byte(0xF7FFA2A9+dword(0xe7b054))/byte(0xF7FFA2A9)+
                             byte(0xF7FF7905+dword(0xe7b054))/byte(0xF7FF7905)+byte(0xF7FF7B15+dword(0xe7b054))/byte(0xF7FF7B15)+
                             byte(0xF7FF9161+dword(0xe7b054))/byte(0xF7FF9161)+byte(0xF7FF9D79+dword(0xe7b054))/byte(0xF7FF9D79)+
                             byte(0xF7FF6E51+dword(0xe7b054))/byte(0xF7FF6E51)+byte(0xF7FF7735+dword(0xe7b054))/byte(0xF7FF7735)+
                             byte(0xF7FF9DA1+dword(0xe7b054))/byte(0xF7FF9DA1)+byte(0xF7FF9249+dword(0xe7b054))/byte(0xF7FF9249)+
                             byte(0xF7FF9655+dword(0xe7b054))/byte(0xF7FF9655)+byte(0xF7FF9289+dword(0xe7b054))/byte(0xF7FF9289)+
                             byte(0xF7FF6FBD+dword(0xe7b054))/byte(0xF7FF6FBD)+byte(0xF7FF73A9+dword(0xe7b054))/byte(0xF7FF73A9)+
                             byte(0xF7FF9BF5+dword(0xe7b054))/byte(0xF7FF9BF5)+byte(0xF7FFA2D9+dword(0xe7b054))/byte(0xF7FFA2D9)+
                             byte(0xF7FF9E01+dword(0xe7b054))/byte(0xF7FF9E01)+byte(0xF7FF90A1+dword(0xe7b054))/byte(0xF7FF90A1)+
                             byte(0xF7FF8AB1+dword(0xe7b054))/byte(0xF7FF8AB1)+byte(0xF7FF5E21+dword(0xe7b054))/byte(0xF7FF5E21)+
                             byte(0xF7FF7B29+dword(0xe7b054))/byte(0xF7FF7B29)+byte(0xF7FF7441+dword(0xe7b054))/byte(0xF7FF7441)+
                             byte(0xF7FF83F5+dword(0xe7b054))/byte(0xF7FF83F5)+byte(0xF7FF8889+dword(0xe7b054))/byte(0xF7FF8889)+
                             byte(0xF7FF920D+dword(0xe7b054))/byte(0xF7FF920D)+byte(0xF7FFA7CD+dword(0xe7b054))/byte(0xF7FFA7CD)+
                             byte(0xF7FF92A9+dword(0xe7b054))/byte(0xF7FF92A9)+byte(0xF7FF6FD1+dword(0xe7b054))/byte(0xF7FF6FD1)+
                             byte(0xF7FF9335+dword(0xe7b054))/byte(0xF7FF9335)+byte(0xF7FFA185+dword(0xe7b054))/byte(0xF7FFA185)+
                             byte(0xF7FF9489+dword(0xe7b054))/byte(0xF7FF9489)+byte(0xF7FF8BCD+dword(0xe7b054))/byte(0xF7FF8BCD)+
                             byte(0xF7FF9F15+dword(0xe7b054))/byte(0xF7FF9F15)+byte(0xF7FFA595+dword(0xe7b054))/byte(0xF7FFA595)+
                             byte(0xF7FFA3D9+dword(0xe7b054))/byte(0xF7FFA3D9)+byte(0xF7FFA325+dword(0xe7b054))/byte(0xF7FFA325)+
                             byte(0xF7FFA125+dword(0xe7b054))/byte(0xF7FFA125)+byte(0xF7FFA375+dword(0xe7b054))/byte(0xF7FFA375)+
                             byte(0xF7FF9629+dword(0xe7b054))/byte(0xF7FF9629)+byte(0xF7FF96A9+dword(0xe7b054))/byte(0xF7FF96A9)+
                             byte(0xF7FF962D+dword(0xe7b054))/byte(0xF7FF962D)+byte(0xF7FF6F8D+dword(0xe7b054))/byte(0xF7FF6F8D)+
                             byte(0xF7FF6F79+dword(0xe7b054))/byte(0xF7FF6F79)+byte(0xF7FF8E55+dword(0xe7b054))/byte(0xF7FF8E55)+
                             byte(0xF7FF90F9+dword(0xe7b054))/byte(0xF7FF90F9)+byte(0xF7FF8EFD+dword(0xe7b054))/byte(0xF7FF8EFD)+
                             byte(0xF7FF910D+dword(0xe7b054))/byte(0xF7FF910D)+byte(0xF7FF9525+dword(0xe7b054))/byte(0xF7FF9525)+
                             byte(0xF7FF9395+dword(0xe7b054))/byte(0xF7FF9395)+byte(0xF7FF95C5+dword(0xe7b054))/byte(0xF7FF95C5)+
                             byte(0xF7FF9401+dword(0xe7b054))/byte(0xF7FF9401)+byte(0xF7FFA779+dword(0xe7b054))/byte(0xF7FFA779)+
                             byte(0xF7FF7DA1+dword(0xe7b054))/byte(0xF7FF7DA1)+byte(0xF7FF7819+dword(0xe7b054))/byte(0xF7FF7819)+
                             byte(0xF7FF8625+dword(0xe7b054))/byte(0xF7FF8625)+byte(0xF7FF803D+dword(0xe7b054))/byte(0xF7FF803D)+
                             byte(0xF7FF85A1+dword(0xe7b054))/byte(0xF7FF85A1)+byte(0xF7FF9CFD+dword(0xe7b054))/byte(0xF7FF9CFD)+
                             byte(0xF7FF6E11+dword(0xe7b054))/byte(0xF7FF6E11)+byte(0xF7FF5F05+dword(0xe7b054))/byte(0xF7FF5F05)+
                             byte(0xF7FF8CFD+dword(0xe7b054))/byte(0xF7FF8CFD)+byte(0xF7FF9C39+dword(0xe7b054))/byte(0xF7FF9C39)+
                             byte(0xF7FF9065+dword(0xe7b054))/byte(0xF7FF9065)+byte(0xF7FF7751+dword(0xe7b054))/byte(0xF7FF7751)+
                             byte(0xF7FF7255+dword(0xe7b054))/byte(0xF7FF7255)+byte(0xF7FF7AC5+dword(0xe7b054))/byte(0xF7FF7AC5)+
                             byte(0xF7FF8AD1+dword(0xe7b054))/byte(0xF7FF8AD1)+byte(0xF7FF8341+dword(0xe7b054))/byte(0xF7FF8341)+
                             byte(0xF7FF9069+dword(0xe7b054))/byte(0xF7FF9069)+byte(0xF7FF6F31+dword(0xe7b054))/byte(0xF7FF6F31)+
                             byte(0xF7FFA09D+dword(0xe7b054))/byte(0xF7FFA09D)+byte(0xF7FF9CB9+dword(0xe7b054))/byte(0xF7FF9CB9)+
                             byte(0xF7FF9E59+dword(0xe7b054))/byte(0xF7FF9E59)+byte(0xF7FF6C65+dword(0xe7b054))/byte(0xF7FF6C65)+
                             byte(0xF7FF7BBD+dword(0xe7b054))/byte(0xF7FF7BBD)+byte(0xF7FFA829+dword(0xe7b054))/byte(0xF7FFA829)+
                             byte(0xF7FF6F2D+dword(0xe7b054))/byte(0xF7FF6F2D)+byte(0xF7FF92E1+dword(0xe7b054))/byte(0xF7FF92E1)+
                             byte(0xF7FF9465+dword(0xe7b054))/byte(0xF7FF9465)+byte(0xF7FF82B5+dword(0xe7b054))/byte(0xF7FF82B5)+
                             byte(0xF7FF75B1+dword(0xe7b054))/byte(0xF7FF75B1)+byte(0xF7FF92E9+dword(0xe7b054))/byte(0xF7FF92E9)+
                             byte(0xF7FF5FD1+dword(0xe7b054))/byte(0xF7FF5FD1)+byte(0xF7FF7F51+dword(0xe7b054))/byte(0xF7FF7F51)+
                             byte(0xF7FF7F55+dword(0xe7b054))/byte(0xF7FF7F55)+byte(0xF7FF7F99+dword(0xe7b054))/byte(0xF7FF7F99)+
                             byte(0xF7FF7EE1+dword(0xe7b054))/byte(0xF7FF7EE1)+byte(0xF7FF87A9+dword(0xe7b054))/byte(0xF7FF87A9)+
                             byte(0xF7FF9E15+dword(0xe7b054))/byte(0xF7FF9E15)+byte(0xF7FF703D+dword(0xe7b054))/byte(0xF7FF703D)+
                             byte(0xF7FF9CE1+dword(0xe7b054))/byte(0xF7FF9CE1)+byte(0xF7FFA411+dword(0xe7b054))/byte(0xF7FFA411)+
                             byte(0xF7FFA4F1+dword(0xe7b054))/byte(0xF7FFA4F1)+byte(0xF7FFA495+dword(0xe7b054))/byte(0xF7FFA495)+
                             byte(0xF7FFA409+dword(0xe7b054))/byte(0xF7FFA409)+byte(0xF7FF7F31+dword(0xe7b054))/byte(0xF7FF7F31)+
                             byte(0xF7FF89E5+dword(0xe7b054))/byte(0xF7FF89E5)+byte(0xF7FFA49D+dword(0xe7b054))/byte(0xF7FFA49D)+
                             byte(0xF7FFA2E9+dword(0xe7b054))/byte(0xF7FFA2E9)+byte(0xF7FF7AC9+dword(0xe7b054))/byte(0xF7FF7AC9)+
                             byte(0xF7FF932D+dword(0xe7b054))/byte(0xF7FF932D)+byte(0xF7FF798D+dword(0xe7b054))/byte(0xF7FF798D)+
                             byte(0xF7FF6D71+dword(0xe7b054))/byte(0xF7FF6D71)+byte(0xF7FF934D+dword(0xe7b054))/byte(0xF7FF934D)+
                             byte(0xF7FF95D1+dword(0xe7b054))/byte(0xF7FF95D1)+byte(0xF7FFA529+dword(0xe7b054))/byte(0xF7FFA529)+
                             byte(0xF7FF9499+dword(0xe7b054))/byte(0xF7FF9499)+byte(0xF7FFA101+dword(0xe7b054))/byte(0xF7FFA101)+
                             byte(0xF7FF9AB1+dword(0xe7b054))/byte(0xF7FF9AB1)+byte(0xF7FF9E9D+dword(0xe7b054))/byte(0xF7FF9E9D)+
                             byte(0xF7FFA131+dword(0xe7b054))/byte(0xF7FFA131)+byte(0xF7FF9A61+dword(0xe7b054))/byte(0xF7FF9A61)+
                             byte(0xF7FF6EC9+dword(0xe7b054))/byte(0xF7FF6EC9)+byte(0xF7FF8231+dword(0xe7b054))/byte(0xF7FF8231)+
                             byte(0xF7FFA781+dword(0xe7b054))/byte(0xF7FFA781)+byte(0xF7FFA789+dword(0xe7b054))/byte(0xF7FFA789)+
                             byte(0xF7FFA7DD+dword(0xe7b054))/byte(0xF7FFA7DD)+byte(0xF7FFA469+dword(0xe7b054))/byte(0xF7FFA469)+
                             byte(0xF7FF9E65+dword(0xe7b054))/byte(0xF7FF9E65)+byte(0xF7FF7E89+dword(0xe7b054))/byte(0xF7FF7E89)+
                             byte(0xF7FF953D+dword(0xe7b054))/byte(0xF7FF953D)+byte(0xF7FFA05D+dword(0xe7b054))/byte(0xF7FFA05D)+
                             byte(0xF7FFA165+dword(0xe7b054))/byte(0xF7FFA165)+byte(0xF7FF9F89+dword(0xe7b054))/byte(0xF7FF9F89)+
                             byte(0xF7FFA20D+dword(0xe7b054))/byte(0xF7FFA20D)+byte(0xF7FF96C1+dword(0xe7b054))/byte(0xF7FF96C1)+
                             byte(0xF7FF950D+dword(0xe7b054))/byte(0xF7FF950D)+byte(0xF7FF7619+dword(0xe7b054))/byte(0xF7FF7619)+
                             byte(0xF7FF6F15+dword(0xe7b054))/byte(0xF7FF6F15)+byte(0xF7FF7721+dword(0xe7b054))/byte(0xF7FF7721)+
                             byte(0xF7FF8315+dword(0xe7b054))/byte(0xF7FF8315)+byte(0xF7FF9F2D+dword(0xe7b054))/byte(0xF7FF9F2D)+
                             byte(0xF7FF7EB1+dword(0xe7b054))/byte(0xF7FF7EB1)+byte(0xF7FFA909+dword(0xe7b054))/byte(0xF7FFA909)+
                             byte(0xF7FF8901+dword(0xe7b054))/byte(0xF7FF8901)+byte(0xF7FF9035+dword(0xe7b054))/byte(0xF7FF9035)+
                             byte(0xF7FF7369+dword(0xe7b054))/byte(0xF7FF7369)+byte(0xF7FF7241+dword(0xe7b054))/byte(0xF7FF7241)+
                             byte(0xF7FFA645+dword(0xe7b054))/byte(0xF7FFA645)+byte(0xF7FF9CB5+dword(0xe7b054))/byte(0xF7FF9CB5)+
                             byte(0xF7FF92D1+dword(0xe7b054))/byte(0xF7FF92D1)+byte(0xF7FF9FA5+dword(0xe7b054))/byte(0xF7FF9FA5)+
                             byte(0xF7FF76FD+dword(0xe7b054))/byte(0xF7FF76FD)+byte(0xF7FF98CD+dword(0xe7b054))/byte(0xF7FF98CD)+
                             byte(0xF7FF9339+dword(0xe7b054))/byte(0xF7FF9339)+byte(0xF7FF6FE1+dword(0xe7b054))/byte(0xF7FF6FE1)+
                             byte(0xF7FF9331+dword(0xe7b054))/byte(0xF7FF9331)+byte(0xF7FFA2FD+dword(0xe7b054))/byte(0xF7FFA2FD)+
                             byte(0xF7FFA2ED+dword(0xe7b054))/byte(0xF7FFA2ED)+byte(0xF7FFA2F1+dword(0xe7b054))/byte(0xF7FFA2F1)+
                             byte(0xF7FFA2F5+dword(0xe7b054))/byte(0xF7FFA2F5)+byte(0xF7FFA28D+dword(0xe7b054))/byte(0xF7FFA28D)+
                             byte(0xF7FF7729+dword(0xe7b054))/byte(0xF7FF7729)+byte(0xF7FF722D+dword(0xe7b054))/byte(0xF7FF722D)+
                             byte(0xF7FF6EBD+dword(0xe7b054))/byte(0xF7FF6EBD)+byte(0xF7FF7A85+dword(0xe7b054))/byte(0xF7FF7A85)+
                             byte(0xF7FF7045+dword(0xe7b054))/byte(0xF7FF7045)+byte(0xF7FF7961+dword(0xe7b054))/byte(0xF7FF7961)+
                             byte(0xF7FF7949+dword(0xe7b054))/byte(0xF7FF7949)+byte(0xF7FF79C5+dword(0xe7b054))/byte(0xF7FF79C5)+
                             byte(0xF7FF68A9+dword(0xe7b054))/byte(0xF7FF68A9)+byte(0xF7FF8051+dword(0xe7b054))/byte(0xF7FF8051)+
                             byte(0xF7FF7C21+dword(0xe7b054))/byte(0xF7FF7C21)+byte(0xF7FF7459+dword(0xe7b054))/byte(0xF7FF7459)+
                             byte(0xF7FF7C99+dword(0xe7b054))/byte(0xF7FF7C99)+byte(0xF7FF7C4D+dword(0xe7b054))/byte(0xF7FF7C4D)+
                             byte(0xF7FF74C9+dword(0xe7b054))/byte(0xF7FF74C9)+byte(0xF7FF7E01+dword(0xe7b054))/byte(0xF7FF7E01)+
                             byte(0xF7FF6391+dword(0xe7b054))/byte(0xF7FF6391)+byte(0xF7FF7F9D+dword(0xe7b054))/byte(0xF7FF7F9D)+
                             byte(0xF7FF5E69+dword(0xe7b054))/byte(0xF7FF5E69)+byte(0xF7FF7FC1+dword(0xe7b054))/byte(0xF7FF7FC1)+
                             byte(0xF7FFA809+dword(0xe7b054))/byte(0xF7FFA809)+byte(0xF7FF6C39+dword(0xe7b054))/byte(0xF7FF6C39)+
                             byte(0xF7FF8281+dword(0xe7b054))/byte(0xF7FF8281)+byte(0xF7FF6FE9+dword(0xe7b054))/byte(0xF7FF6FE9)+
                             byte(0xF7FF79BD+dword(0xe7b054))/byte(0xF7FF79BD)+byte(0xF7FF77C9+dword(0xe7b054))/byte(0xF7FF77C9)+
                             byte(0xF7FF7D0D+dword(0xe7b054))/byte(0xF7FF7D0D)+byte(0xF7FF9015+dword(0xe7b054))/byte(0xF7FF9015)+
                             byte(0xF7FF6E25+dword(0xe7b054))/byte(0xF7FF6E25)+byte(0xF7FF8011+dword(0xe7b054))/byte(0xF7FF8011)+
                             byte(0xF7FF9505+dword(0xe7b054))/byte(0xF7FF9505)+byte(0xF7FF9459+dword(0xe7b054))/byte(0xF7FF9459)+
                             byte(0xF7FF83F9+dword(0xe7b054))/byte(0xF7FF83F9)+byte(0xF7FFA6A5+dword(0xe7b054))/byte(0xF7FFA6A5)+
                             byte(0xF7FF7681+dword(0xe7b054))/byte(0xF7FF7681)+byte(0xF7FF6F1D+dword(0xe7b054))/byte(0xF7FF6F1D)+
                             byte(0xF7FF9A8D+dword(0xe7b054))/byte(0xF7FF9A8D)+byte(0xF7FF9239+dword(0xe7b054))/byte(0xF7FF9239)+
                             byte(0xF7FF9285+dword(0xe7b054))/byte(0xF7FF9285)+byte(0xF7FF7F8D+dword(0xe7b054))/byte(0xF7FF7F8D)+
                             byte(0xF7FF6FD9+dword(0xe7b054))/byte(0xF7FF6FD9)+byte(0xF7FF7DBD+dword(0xe7b054))/byte(0xF7FF7DBD)+
                             byte(0xF7FF6E6D+dword(0xe7b054))/byte(0xF7FF6E6D)+byte(0xF7FF5EDD+dword(0xe7b054))/byte(0xF7FF5EDD)+
                             byte(0xF7FFA001+dword(0xe7b054))/byte(0xF7FFA001)+byte(0xF7FF6B35+dword(0xe7b054))/byte(0xF7FF6B35)+
                             byte(0xF7FF7061+dword(0xe7b054))/byte(0xF7FF7061)+byte(0xF7FF971D+dword(0xe7b054))/byte(0xF7FF971D)+
                             byte(0xF7FF998D+dword(0xe7b054))/byte(0xF7FF998D)+byte(0xF7FF9731+dword(0xe7b054))/byte(0xF7FF9731)+
                             byte(0xF7FF9B45+dword(0xe7b054))/byte(0xF7FF9B45)+byte(0xF7FF6FB9+dword(0xe7b054))/byte(0xF7FF6FB9)+
                             byte(0xF7FF7991+dword(0xe7b054))/byte(0xF7FF7991)+byte(0xF7FF72B5+dword(0xe7b054))/byte(0xF7FF72B5)+
                             byte(0xF7FF6FE5+dword(0xe7b054))/byte(0xF7FF6FE5)+byte(0xF7FF6FC9+dword(0xe7b054))/byte(0xF7FF6FC9)+
                             byte(0xF7FF6F75+dword(0xe7b054))/byte(0xF7FF6F75)+byte(0xF7FFA635+dword(0xe7b054))/byte(0xF7FFA635)+
                             byte(0xF7FF9CB1+dword(0xe7b054))/byte(0xF7FF9CB1)+byte(0xF7FF9885+dword(0xe7b054))/byte(0xF7FF9885)+
                             byte(0xF7FF9C71+dword(0xe7b054))/byte(0xF7FF9C71)+byte(0xF7FFA36D+dword(0xe7b054))/byte(0xF7FFA36D)+
                             byte(0xF7FFA135+dword(0xe7b054))/byte(0xF7FFA135)+byte(0xF7FFA355+dword(0xe7b054))/byte(0xF7FFA355)+
                             byte(0xF7FFA7AD+dword(0xe7b054))/byte(0xF7FFA7AD)+byte(0xF7FF8D81+dword(0xe7b054))/byte(0xF7FF8D81)+
                             byte(0xF7FF7F01+dword(0xe7b054))/byte(0xF7FF7F01)+byte(0xF7FF77B1+dword(0xe7b054))/byte(0xF7FF77B1)+
                             byte(0xF7FF76A1+dword(0xe7b054))/byte(0xF7FF76A1)+byte(0xF7FF6AC1+dword(0xe7b054))/byte(0xF7FF6AC1)+
                             byte(0xF7FF886D+dword(0xe7b054))/byte(0xF7FF886D)+byte(0xF7FF8859+dword(0xe7b054))/byte(0xF7FF8859)+
                             byte(0xF7FF7E81+dword(0xe7b054))/byte(0xF7FF7E81)+byte(0xF7FF7479+dword(0xe7b054))/byte(0xF7FF7479)+
                             byte(0xF7FF721D+dword(0xe7b054))/byte(0xF7FF721D)+byte(0xF7FF6FA9+dword(0xe7b054))/byte(0xF7FF6FA9)+
                             byte(0xF7FF7049+dword(0xe7b054))/byte(0xF7FF7049)+byte(0xF7FF704D+dword(0xe7b054))/byte(0xF7FF704D)+
                             byte(0xF7FF8BC5+dword(0xe7b054))/byte(0xF7FF8BC5)+byte(0xF7FF9005+dword(0xe7b054))/byte(0xF7FF9005)+
                             byte(0xF7FF91B9+dword(0xe7b054))/byte(0xF7FF91B9)+byte(0xF7FF7361+dword(0xe7b054))/byte(0xF7FF7361)+
                             byte(0xF7FF9CC9+dword(0xe7b054))/byte(0xF7FF9CC9)+byte(0xF7FF8D85+dword(0xe7b054))/byte(0xF7FF8D85)+
                             byte(0xF7FF7A71+dword(0xe7b054))/byte(0xF7FF7A71)+byte(0xF7FF9BB5+dword(0xe7b054))/byte(0xF7FF9BB5)+
                             byte(0xF7FF888D+dword(0xe7b054))/byte(0xF7FF888D)+byte(0xF7FF6F7D+dword(0xe7b054))/byte(0xF7FF6F7D)+
                             byte(0xF7FF96E9+dword(0xe7b054))/byte(0xF7FF96E9)+byte(0xF7FFA6F1+dword(0xe7b054))/byte(0xF7FFA6F1)+
                             byte(0xF7FF9819+dword(0xe7b054))/byte(0xF7FF9819)+byte(0xF7FF6B61+dword(0xe7b054))/byte(0xF7FF6B61)+
                             byte(0xF7FF9001+dword(0xe7b054))/byte(0xF7FF9001)+byte(0xF7FF9061+dword(0xe7b054))/byte(0xF7FF9061)+
                             byte(0xF7FF9F09+dword(0xe7b054))/byte(0xF7FF9F09)+byte(0xF7FF81F9+dword(0xe7b054))/byte(0xF7FF81F9)+
                             byte(0xF7FF6DA5+dword(0xe7b054))/byte(0xF7FF6DA5)+byte(0xF7FF96CD+dword(0xe7b054))/byte(0xF7FF96CD)+
                             byte(0xF7FF9A05+dword(0xe7b054))/byte(0xF7FF9A05)+byte(0xF7FF78A1+dword(0xe7b054))/byte(0xF7FF78A1)+
                             byte(0xF7FF8509+dword(0xe7b054))/byte(0xF7FF8509)+byte(0xF7FFA6B9+dword(0xe7b054))/byte(0xF7FFA6B9)+
                             byte(0xF7FF6E75+dword(0xe7b054))/byte(0xF7FF6E75)+byte(0xF7FF8381+dword(0xe7b054))/byte(0xF7FF8381)+
                             byte(0xF7FF5EF9+dword(0xe7b054))/byte(0xF7FF5EF9)+byte(0xF7FF7055+dword(0xe7b054))/byte(0xF7FF7055)+
                             byte(0xF7FF9FFD+dword(0xe7b054))/byte(0xF7FF9FFD)+byte(0xF7FF7BE1+dword(0xe7b054))/byte(0xF7FF7BE1)+
                             byte(0xF7FF92CD+dword(0xe7b054))/byte(0xF7FF92CD)+byte(0xF7FF76F1+dword(0xe7b054))/byte(0xF7FF76F1)+
                             byte(0xF7FF7659+dword(0xe7b054))/byte(0xF7FF7659)+byte(0xF7FF8561+dword(0xe7b054))/byte(0xF7FF8561)+
                             byte(0xF7FF944D+dword(0xe7b054))/byte(0xF7FF944D)+byte(0xF7FF9F29+dword(0xe7b054))/byte(0xF7FF9F29)+
                             byte(0xF7FF94D1+dword(0xe7b054))/byte(0xF7FF94D1)+byte(0xF7FF8719+dword(0xe7b054))/byte(0xF7FF8719)+
                             byte(0xF7FF673D+dword(0xe7b054))/byte(0xF7FF673D)+byte(0xF7FF77DD+dword(0xe7b054))/byte(0xF7FF77DD)+
                             byte(0xF7FF9A21+dword(0xe7b054))/byte(0xF7FF9A21)+byte(0xF7FF9185+dword(0xe7b054))/byte(0xF7FF9185)+
                             byte(0xF7FF8C8D+dword(0xe7b054))/byte(0xF7FF8C8D)+byte(0xF7FF76B9+dword(0xe7b054))/byte(0xF7FF76B9)+
                             byte(0xF7FF9559+dword(0xe7b054))/byte(0xF7FF9559)+byte(0xF7FF7F79+dword(0xe7b054))/byte(0xF7FF7F79)+
                             byte(0xF7FF92A5+dword(0xe7b054))/byte(0xF7FF92A5)+byte(0xF7FF98A1+dword(0xe7b054))/byte(0xF7FF98A1)+
                             byte(0xF7FF963D+dword(0xe7b054))/byte(0xF7FF963D)+byte(0xF7FF74F1+dword(0xe7b054))/byte(0xF7FF74F1)+
                             byte(0xF7FF9DF9+dword(0xe7b054))/byte(0xF7FF9DF9)+byte(0xF7FF6D21+dword(0xe7b054))/byte(0xF7FF6D21)+
                             byte(0xF7FF81B9+dword(0xe7b054))/byte(0xF7FF81B9)+byte(0xF7FF82C9+dword(0xe7b054))/byte(0xF7FF82C9)+
                             byte(0xF7FF7F09+dword(0xe7b054))/byte(0xF7FF7F09)+byte(0xF7FF96D5+dword(0xe7b054))/byte(0xF7FF96D5)+
                             byte(0xF7FF70E1+dword(0xe7b054))/byte(0xF7FF70E1)+byte(0xF7FF6FDD+dword(0xe7b054))/byte(0xF7FF6FDD)+
                             byte(0xF7FF6EF1+dword(0xe7b054))/byte(0xF7FF6EF1)+byte(0xF7FF8531+dword(0xe7b054))/byte(0xF7FF8531)+
                             byte(0xF7FFA45D+dword(0xe7b054))/byte(0xF7FFA45D)+byte(0xF7FF6ECD+dword(0xe7b054))/byte(0xF7FF6ECD)+
                             byte(0xF7FF91E5+dword(0xe7b054))/byte(0xF7FF91E5)+byte(0xF7FF75FD+dword(0xe7b054))/byte(0xF7FF75FD)+
                             byte(0xF7FF8661+dword(0xe7b054))/byte(0xF7FF8661)+byte(0xF7FF933D+dword(0xe7b054))/byte(0xF7FF933D)+
                             byte(0xF7FFA90D+dword(0xe7b054))/byte(0xF7FFA90D)+byte(0xF7FF5FD5+dword(0xe7b054))/byte(0xF7FF5FD5)+
                             byte(0xF7FF5FCD+dword(0xe7b054))/byte(0xF7FF5FCD)+byte(0xF7FF7CB9+dword(0xe7b054))/byte(0xF7FF7CB9)+
                             byte(0xF7FF62B9+dword(0xe7b054))/byte(0xF7FF62B9)+byte(0xF7FF6E29+dword(0xe7b054))/byte(0xF7FF6E29)+
                             byte(0xF7FFA60D+dword(0xe7b054))/byte(0xF7FFA60D)+byte(0xF7FFA61D+dword(0xe7b054))/byte(0xF7FFA61D)+
                             byte(0xF7FFA7F5+dword(0xe7b054))/byte(0xF7FFA7F5)+byte(0xF7FFA795+dword(0xe7b054))/byte(0xF7FFA795)+
                             byte(0xF7FFA7E1+dword(0xe7b054))/byte(0xF7FFA7E1)+byte(0xF7FF94B5+dword(0xe7b054))/byte(0xF7FF94B5)+
                             byte(0xF7FFA681+dword(0xe7b054))/byte(0xF7FFA681)+byte(0xF7FFA67D+dword(0xe7b054))/byte(0xF7FFA67D)+
                             byte(0xF7FF9BB1+dword(0xe7b054))/byte(0xF7FF9BB1)+byte(0xF7FF78D5+dword(0xe7b054))/byte(0xF7FF78D5)+
                             byte(0xF7FF97C5+dword(0xe7b054))/byte(0xF7FF97C5)+byte(0xF7FF6F91+dword(0xe7b054))/byte(0xF7FF6F91)+
                             byte(0xF7FF6C59+dword(0xe7b054))/byte(0xF7FF6C59)+byte(0xF7FF6F25+dword(0xe7b054))/byte(0xF7FF6F25)+
                             byte(0xF7FF7E09+dword(0xe7b054))/byte(0xF7FF7E09)+byte(0xF7FF6FB1+dword(0xe7b054))/byte(0xF7FF6FB1)+
                             byte(0xF7FF9D6D+dword(0xe7b054))/byte(0xF7FF9D6D)+byte(0xF7FF7A3D+dword(0xe7b054))/byte(0xF7FF7A3D)+
                             byte(0xF7FF804D+dword(0xe7b054))/byte(0xF7FF804D)+byte(0xF7FF6965+dword(0xe7b054))/byte(0xF7FF6965)+
                             byte(0xF7FF7D31+dword(0xe7b054))/byte(0xF7FF7D31)+byte(0xF7FF7A79+dword(0xe7b054))/byte(0xF7FF7A79)+
                             byte(0xF7FF7929+dword(0xe7b054))/byte(0xF7FF7929)+byte(0xF7FFA1A9+dword(0xe7b054))/byte(0xF7FFA1A9)+
                             byte(0xF7FF5F01+dword(0xe7b054))/byte(0xF7FF5F01)+byte(0xF7FF8C7D+dword(0xe7b054))/byte(0xF7FF8C7D)+
                             byte(0xF7FF8D51+dword(0xe7b054))/byte(0xF7FF8D51)+byte(0xF7FF6F49+dword(0xe7b054))/byte(0xF7FF6F49)+
                             byte(0xF7FF898D+dword(0xe7b054))/byte(0xF7FF898D)+byte(0xF7FF9CBD+dword(0xe7b054))/byte(0xF7FF9CBD)+
                             byte(0xF7FF7DA5+dword(0xe7b054))/byte(0xF7FF7DA5)+byte(0xF7FF93B5+dword(0xe7b054))/byte(0xF7FF93B5)+
                             byte(0xF7FF6EB9+dword(0xe7b054))/byte(0xF7FF6EB9)+byte(0xF7FFA6F5+dword(0xe7b054))/byte(0xF7FFA6F5)+
                             byte(0xF7FF9ADD+dword(0xe7b054))/byte(0xF7FF9ADD)+byte(0xF7FF7B75+dword(0xe7b054))/byte(0xF7FF7B75)+
                             byte(0xF7FF7795+dword(0xe7b054))/byte(0xF7FF7795)+byte(0xF7FFA481+dword(0xe7b054))/byte(0xF7FFA481)+
                             byte(0xF7FF8FF1+dword(0xe7b054))/byte(0xF7FF8FF1)+byte(0xF7FFA425+dword(0xe7b054))/byte(0xF7FFA425)+
                             byte(0xF7FF9981+dword(0xe7b054))/byte(0xF7FF9981)+byte(0xF7FF9555+dword(0xe7b054))/byte(0xF7FF9555)+
                             byte(0xF7FF9A45+dword(0xe7b054))/byte(0xF7FF9A45)+byte(0xF7FFA1A1+dword(0xe7b054))/byte(0xF7FFA1A1)+
                             byte(0xF7FFA8C1+dword(0xe7b054))/byte(0xF7FFA8C1)+byte(0xF7FFA8BD+dword(0xe7b054))/byte(0xF7FFA8BD)+
                             byte(0xF7FF9B15+dword(0xe7b054))/byte(0xF7FF9B15)+byte(0xF7FFA39D+dword(0xe7b054))/byte(0xF7FFA39D)+
                             byte(0xF7FF87E9+dword(0xe7b054))/byte(0xF7FF87E9)+byte(0xF7FF9355+dword(0xe7b054))/byte(0xF7FF9355)+
                             byte(0xF7FF8389+dword(0xe7b054))/byte(0xF7FF8389)+byte(0xF7FF73D5+dword(0xe7b054))/byte(0xF7FF73D5)+
                             byte(0xF7FF8E1D+dword(0xe7b054))/byte(0xF7FF8E1D)+byte(0xF7FFA6B5+dword(0xe7b054))/byte(0xF7FFA6B5)+
                             byte(0xF7FF913D+dword(0xe7b054))/byte(0xF7FF913D)+byte(0xF7FF8F3D+dword(0xe7b054))/byte(0xF7FF8F3D)+
                             byte(0xF7FF9115+dword(0xe7b054))/byte(0xF7FF9115)+byte(0xF7FFA3B9+dword(0xe7b054))/byte(0xF7FFA3B9)+
                             byte(0xF7FF9F19+dword(0xe7b054))/byte(0xF7FF9F19)+byte(0xF7FFA7C9+dword(0xe7b054))/byte(0xF7FFA7C9)+
                             byte(0xF7FF9E69+dword(0xe7b054))/byte(0xF7FF9E69)+byte(0xF7FF9FA1+dword(0xe7b054))/byte(0xF7FF9FA1)+
                             byte(0xF7FFA735+dword(0xe7b054))/byte(0xF7FFA735)+byte(0xF7FF8E8D+dword(0xe7b054))/byte(0xF7FF8E8D)+
                             byte(0xF7FF6769+dword(0xe7b054))/byte(0xF7FF6769)+byte(0xF7FF8E29+dword(0xe7b054))/byte(0xF7FF8E29)+
                             byte(0xF7FF5EA5+dword(0xe7b054))/byte(0xF7FF5EA5)+byte(0xF7FFA531+dword(0xe7b054))/byte(0xF7FFA531)+
                             byte(0xF7FF5F71+dword(0xe7b054))/byte(0xF7FF5F71)+byte(0xF7FF5F81+dword(0xe7b054))/byte(0xF7FF5F81)+
                             byte(0xF7FF5F7D+dword(0xe7b054))/byte(0xF7FF5F7D)+byte(0xF7FF5F75+dword(0xe7b054))/byte(0xF7FF5F75)+
                             byte(0xF7FF5F79+dword(0xe7b054))/byte(0xF7FF5F79)+byte(0xF7FF5F85+dword(0xe7b054))/byte(0xF7FF5F85)+
                             byte(0xF7FF99A1+dword(0xe7b054))/byte(0xF7FF99A1)+byte(0xF7FF9A2D+dword(0xe7b054))/byte(0xF7FF9A2D)+
                             byte(0xF7FF739D+dword(0xe7b054))/byte(0xF7FF739D)+byte(0xF7FF77C1+dword(0xe7b054))/byte(0xF7FF77C1)+
                             byte(0xF7FF8AA5+dword(0xe7b054))/byte(0xF7FF8AA5)+byte(0xF7FF92B1+dword(0xe7b054))/byte(0xF7FF92B1)+
                             byte(0xF7FF806D+dword(0xe7b054))/byte(0xF7FF806D)+byte(0xF7FF81A9+dword(0xe7b054))/byte(0xF7FF81A9)+
                             byte(0xF7FF90D9+dword(0xe7b054))/byte(0xF7FF90D9)+byte(0xF7FF81A5+dword(0xe7b054))/byte(0xF7FF81A5)+
                             byte(0xF7FFA0DD+dword(0xe7b054))/byte(0xF7FFA0DD)+byte(0xF7FFA129+dword(0xe7b054))/byte(0xF7FFA129)+
                             byte(0xF7FF869D+dword(0xe7b054))/byte(0xF7FF869D)+byte(0xF7FF6F6D+dword(0xe7b054))/byte(0xF7FF6F6D)+
                             byte(0xF7FF9105+dword(0xe7b054))/byte(0xF7FF9105)+byte(0xF7FF81A1+dword(0xe7b054))/byte(0xF7FF81A1)+
                             byte(0xF7FF8B75+dword(0xe7b054))/byte(0xF7FF8B75)+byte(0xF7FF801D+dword(0xe7b054))/byte(0xF7FF801D)+
                             byte(0xF7FF74F9+dword(0xe7b054))/byte(0xF7FF74F9)+byte(0xF7FF80A1+dword(0xe7b054))/byte(0xF7FF80A1)+
                             byte(0xF7FF9565+dword(0xe7b054))/byte(0xF7FF9565)+byte(0xF7FF6D2D+dword(0xe7b054))/byte(0xF7FF6D2D)+
                             byte(0xF7FF81F5+dword(0xe7b054))/byte(0xF7FF81F5)+byte(0xF7FF689D+dword(0xe7b054))/byte(0xF7FF689D)+
                             byte(0xF7FF9085+dword(0xe7b054))/byte(0xF7FF9085)+byte(0xF7FF78C5+dword(0xe7b054))/byte(0xF7FF78C5)+
                             byte(0xF7FF6DE1+dword(0xe7b054))/byte(0xF7FF6DE1)+byte(0xF7FF709D+dword(0xe7b054))/byte(0xF7FF709D)+
                             byte(0xF7FF76D5+dword(0xe7b054))/byte(0xF7FF76D5)+byte(0xF7FF9B4D+dword(0xe7b054))/byte(0xF7FF9B4D)+
                             byte(0xF7FF720D+dword(0xe7b054))/byte(0xF7FF720D)+byte(0xF7FF9AF9+dword(0xe7b054))/byte(0xF7FF9AF9)+
                             byte(0xF7FF8E75+dword(0xe7b054))/byte(0xF7FF8E75)+byte(0xF7FF9A3D+dword(0xe7b054))/byte(0xF7FF9A3D)+
                             byte(0xF7FF76B1+dword(0xe7b054))/byte(0xF7FF76B1)+byte(0xF7FF6E55+dword(0xe7b054))/byte(0xF7FF6E55)+
                             byte(0xF7FF9C1D+dword(0xe7b054))/byte(0xF7FF9C1D)+byte(0xF7FF863D+dword(0xe7b054))/byte(0xF7FF863D)+
                             byte(0xF7FF7955+dword(0xe7b054))/byte(0xF7FF7955)+byte(0xF7FF6EA5+dword(0xe7b054))/byte(0xF7FF6EA5)+
                             byte(0xF7FF9BAD+dword(0xe7b054))/byte(0xF7FF9BAD)+byte(0xF7FFA381+dword(0xe7b054))/byte(0xF7FFA381)+
                             byte(0xF7FF7AF5+dword(0xe7b054))/byte(0xF7FF7AF5)+byte(0xF7FFA7E5+dword(0xe7b054))/byte(0xF7FFA7E5)+
                             byte(0xF7FF98B1+dword(0xe7b054))/byte(0xF7FF98B1)+byte(0xF7FF9911+dword(0xe7b054))/byte(0xF7FF9911)+
                             byte(0xF7FF7A4D+dword(0xe7b054))/byte(0xF7FF7A4D)+byte(0xF7FF98C9+dword(0xe7b054))/byte(0xF7FF98C9)+
                             byte(0xF7FF83E5+dword(0xe7b054))/byte(0xF7FF83E5)+byte(0xF7FFA86D+dword(0xe7b054))/byte(0xF7FFA86D)+
                             byte(0xF7FF9769+dword(0xe7b054))/byte(0xF7FF9769)+byte(0xF7FF6F95+dword(0xe7b054))/byte(0xF7FF6F95)+
                             byte(0xF7FF7CFD+dword(0xe7b054))/byte(0xF7FF7CFD)+byte(0xF7FF9391+dword(0xe7b054))/byte(0xF7FF9391)+
                             byte(0xF7FF6E91+dword(0xe7b054))/byte(0xF7FF6E91)+byte(0xF7FF6FD5+dword(0xe7b054))/byte(0xF7FF6FD5)+
                             byte(0xF7FF5E2D+dword(0xe7b054))/byte(0xF7FF5E2D)+byte(0xF7FFA189+dword(0xe7b054))/byte(0xF7FFA189)+
                             byte(0xF7FF7A91+dword(0xe7b054))/byte(0xF7FF7A91)+byte(0xF7FF6F3D+dword(0xe7b054))/byte(0xF7FF6F3D)+
                             byte(0xF7FF92E5+dword(0xe7b054))/byte(0xF7FF92E5)+byte(0xF7FF8995+dword(0xe7b054))/byte(0xF7FF8995)+
                             byte(0xF7FF8D99+dword(0xe7b054))/byte(0xF7FF8D99)+byte(0xF7FF8D95+dword(0xe7b054))/byte(0xF7FF8D95)+
                             byte(0xF7FF98C5+dword(0xe7b054))/byte(0xF7FF98C5)+byte(0xF7FF7C1D+dword(0xe7b054))/byte(0xF7FF7C1D)+
                             byte(0xF7FF90C9+dword(0xe7b054))/byte(0xF7FF90C9)+byte(0xF7FF8E61+dword(0xe7b054))/byte(0xF7FF8E61)+
                             byte(0xF7FFA5AD+dword(0xe7b054))/byte(0xF7FFA5AD)+byte(0xF7FFA5A9+dword(0xe7b054))/byte(0xF7FFA5A9)+
                             byte(0xF7FF6F19+dword(0xe7b054))/byte(0xF7FF6F19)+byte(0xF7FF7DE5+dword(0xe7b054))/byte(0xF7FF7DE5)+
                             byte(0xF7FF9A01+dword(0xe7b054))/byte(0xF7FF9A01)+byte(0xF7FF9DE9+dword(0xe7b054))/byte(0xF7FF9DE9)+
                             byte(0xF7FFA43D+dword(0xe7b054))/byte(0xF7FFA43D)+byte(0xF7FF78BD+dword(0xe7b054))/byte(0xF7FF78BD)+
                             byte(0xF7FFA825+dword(0xe7b054))/byte(0xF7FFA825)+byte(0xF7FF6E99+dword(0xe7b054))/byte(0xF7FF6E99)+
                             byte(0xF7FF9D91+dword(0xe7b054))/byte(0xF7FF9D91)+byte(0xF7FF9229+dword(0xe7b054))/byte(0xF7FF9229)+
                             byte(0xF7FF5EFD+dword(0xe7b054))/byte(0xF7FF5EFD)+byte(0xF7FF6AF1+dword(0xe7b054))/byte(0xF7FF6AF1)+
                             byte(0xF7FFA1D9+dword(0xe7b054))/byte(0xF7FFA1D9)+byte(0xF7FF9295+dword(0xe7b054))/byte(0xF7FF9295)+
                             byte(0xF7FF82B9+dword(0xe7b054))/byte(0xF7FF82B9)+byte(0xF7FF9255+dword(0xe7b054))/byte(0xF7FF9255)+
                             byte(0xF7FFA3B1+dword(0xe7b054))/byte(0xF7FFA3B1)+byte(0xF7FFA071+dword(0xe7b054))/byte(0xF7FFA071)+
                             byte(0xF7FF9DB9+dword(0xe7b054))/byte(0xF7FF9DB9)+byte(0xF7FF759D+dword(0xe7b054))/byte(0xF7FF759D)+
                             byte(0xF7FF5E31+dword(0xe7b054))/byte(0xF7FF5E31)+byte(0xF7FF8E09+dword(0xe7b054))/byte(0xF7FF8E09)+
                             byte(0xF7FF96ED+dword(0xe7b054))/byte(0xF7FF96ED)
                             
achievement ("Black Checkers", "Obtain all cards from [Black Checkers]", 50,
trigger = save_protect() && measured(black_checkers() == 709) && prev(black_checkers()) != 709)