// ~Hack~ Final Fantasy ++
// #ID = 7924
function save_protect() => prev(byte(0x6110)) != 0x00
function y_coords() => byte(0x0069)
function x_coords() => byte(0x0068)
function enemy_health() => byte(0x6bd5)
function enemy_id() => byte(0x6be4)
e_garland = 0x69
e_deathgaze = 0x56
e_kingbehem = 0x6b
e_hellmander = 0x7a
e_tidaliathan = 0x7c
e_deathgaze = 0x56
e_chaos = 0x7f
e_magicurn = 0x05

function enemy_hp1() => byte(0x6bd5) 
function enemy_hp2() => byte(0x6bd6)

function enemy_dead() => enemy_hp1() == 0x00 && 
                         enemy_hp2() == 0x00 && 
                         byte(0x006bd9) > prev(byte(0x006bd9))

function get_lute() => byte(0x6021) > prev(byte(0x6021))
achievement ("Lute of Legend", "Obtain the Lute", 5,
trigger = save_protect() && get_lute())

function get_ship() => bit0(0x6241) > prev(bit0(0x6241))
achievement ("Sail Away", "Obtain the Ship", 5, 
trigger = save_protect() && get_ship())

function get_crown() => bit2(0x6220) > prev(bit2(0x6220))
achievement ("Magical Crown", "Obtain the Crown", 5,
trigger = save_protect() && get_crown())

function get_masrshkey() => byte(0x6029) > prev(byte(0x6029))
achievement ("Marsh Key", "Obtain the Marsh key", 5, 
trigger = save_protect() && get_masrshkey())

function remove_titan() => bit0(0x6265) < prev(bit0(0x6265))
achievement ("Shatterd Stone", "Remove Titan from your path", 5,
trigger = save_protect() && remove_titan())

function behemoth_crystal() => byte(0x6035) > prev(byte(0x6035))
achievement ("Behemoth Blockade", "Defeat the Behemoth and claim your crystal!", 10,
trigger = save_protect() && behemoth_crystal())

function get_canoe() => byte(0x6012) > prev(byte(0x6012))
achievement ("Rock the Boat", "Obtain the Canoe", 5,
trigger = save_protect() && get_canoe())

function salamander_crystal() => byte(0x6032) > prev(byte(0x6032))
achievement ("Bug Eyed Guardian", "Defeat the Salamander and claim your crystal!", 10,
trigger = save_protect() && salamander_crystal())

function get_rattail() => bit2(0x6283) > prev(bit2(0x6283))
achievement ("Tail of Rat", "Obtain the Rat Tail", 5,
trigger = save_protect() && get_rattail())

function true_warriors() => byte(0x602d) < prev(byte(0x602d))
achievement ("True Warriors", "Prove your worth to Bahamut", 25,
trigger = save_protect() && true_warriors())

function leviathan_crystal() => byte(0x6033) > prev(byte(0x6033))
achievement ("Water God", "Defeat Leviathan and claim your crystal!", 10,
trigger = save_protect() && leviathan_crystal())

function get_warpcube() => byte(0x602e) > prev(byte(0x602e))
achievement ("Beam Me Up", "Obtain the Warp Cube", 5,
trigger = save_protect() && get_warpcube())

function deathgaze_crystal() => byte(0x6034) > prev(byte(0x6034))
achievement ("Gaze of Death", "Defeat Death Gaze and claim your crystal!", 10,
trigger = save_protect() && deathgaze_crystal())

function get_goldpin() => bit2(0x624c) > prev(bit2(0x624c))
achievement ("This Is The Way", "Find the hidden GoldPin", 10,
trigger = save_protect() && get_goldpin())

function open_sesame() => bit0(0x6217) < prev(bit0(0x6217))
achievement ("Open Sesame", "Defeat the Lich and open the pathway", 25,
trigger = save_protect() && open_sesame())

function get_ragnarok() => bit2(0x62fd) > prev(bit2(0x62fd))
achievement ("Lights Out", "Obtain Ragnarok", 25,
trigger = save_protect() && get_ragnarok())

function chests1() => sum_of(range(0x6201,0x621e,step=1), addr => bit2(addr))
function chests2() => sum_of(range(0x6220,0x6224,step=1), addr => bit2(addr))
function chests3() => sum_of(range(0x6226,0x6237,step=1), addr => bit2(addr))+bit2(0x6239)
function chests4() => sum_of(range(0x623b,0x624a,step=1), addr => bit2(addr))
function chests5() => bit2(0x624c)+bit2(0x624d)+bit2(0x6257)+bit2(0x6258)+bit2(0x625a)
function chests6() => sum_of(range(0x625c,0x6263,step=1), addr => bit2(addr))
function chests7() => sum_of(range(0x6266,0x626a,step=1), addr => bit2(addr))
function chests8() => sum_of(range(0x6274,0x6284,step=1), addr => bit2(addr))
function chests9() => sum_of(range(0x6286,0x628d,step=1), addr => bit2(addr))
function chests10() => sum_of(range(0x6296,0x629b,step=1), addr => bit2(addr))+bit2(0x629d)
function chests11() => sum_of(range(0x62a6,0x62b4,step=1), addr => bit2(addr))
function chests12() => sum_of(range(0x62b8,0x62ba,step=1), addr => bit2(addr))
function chests13() => sum_of(range(0x62ca,0x62cd,step=1), addr => bit2(addr))
function chests14() => sum_of(range(0x62cf,0x62d5,step=1), addr => bit2(addr))
function chests15() => sum_of(range(0x62e0,0x62f7,step=1), addr => bit2(addr))
function chests16() => sum_of(range(0x62f9,0x62fd,step=1), addr => bit2(addr))

function fully_looted() => chests1()+chests2()+chests3()+chests4()+chests5()+chests6()+
                           chests7()+chests8()+chests9()+chests10()+chests11()+chests12()+
                           chests13()+chests14()+chests15()+chests16()
                           
achievement ("Hoarder I", "Loot 44 chests", 5,
trigger = measured(fully_looted() == 44) && prev(fully_looted()) == 43)

achievement ("Hoarder II", "Loot 88 chests", 5,
trigger = measured(fully_looted() == 88) && prev(fully_looted()) == 87)

achievement ("Hoarder III", "Loot 132 chests", 5,
trigger = measured(fully_looted() == 132) && prev(fully_looted()) == 131)

achievement ("Hoarder IV", "Loot 178 chests", 5,
trigger = measured(fully_looted() == 178) && prev(fully_looted()) == 177)

function get_excalibur() => bit1(0x6209) > prev(bit1(0x6209))
achievement ("Lali-ho", "Obtain Excalibur", 10,
trigger = save_protect() && get_excalibur())

function kill_kingbehemoth() => enemy_id() == e_kingbehem && enemy_dead()
achievement ("King of Beasts", "Defeat the King Behemoth in Temple of Fiends", 10,
trigger = x_coords() == 0x0b && y_coords() == 0x28 && kill_kingbehemoth())

function kill_hellmander() => enemy_id() == e_hellmander && enemy_dead()
achievement ("Hellish Lizard", "Defeat the Hellmander in Temple of Fiends", 10,
trigger = x_coords() == 0x13 && y_coords() == 0x24 && kill_hellmander())

function kill_tidaliathan() => enemy_id() == e_tidaliathan && enemy_dead()
achievement ("Water Boy", "Defeat the Tidaliathan in Temple of Fiends", 10,
trigger = x_coords() == 0xb && y_coords() == 0x1e && kill_tidaliathan())

function kill_deathgaze() => enemy_id() == e_deathgaze && enemy_dead()
achievement ("Death Stare", "Defeat the Death Gaze in Temple of Fiends", 10,
trigger = x_coords() == 0xf && y_coords() == 0x18 && kill_deathgaze())

function kill_chaos() => enemy_id() == e_chaos && enemy_dead()
achievement ("Double Plus", "Defeat Chaos in Temple of Fiends", 25,
trigger = kill_chaos())




