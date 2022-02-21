// Grandia II
// #ID = 3488

function loc_id() => byte(0xe2e209)
loc_carbo = 0x00
loc_blfor = 0x01
loc_garmia = 0x02
loc_inor = 0x03
loc_agear = 0x04
loc_cyrum = 0x05
loc_baked = 0x06
loc_liligue = 0x07
loc_lumirfor = 0x00
loc_mirumu = 0x01

function event_script() => dword(0xe2e10c)
priest_hire = 0x6829
elena_escort = 0xcc29
gargoyle_fight = 0x882c
gargoyle_win = 0xec2c
millenia_carbo = 0xd430
millenia_carbo_over = 0x3831
roan_trog_end = 0x8435
roan_joins = 0xe835
mino_start = 0xe835
mino_end = 0x4c36
mareg_baked_end = 0x6c39
mareg_baked_gone = 0xd039
mareg_liligue = 0xf03c
mareg_joins = 0x543d
val_tongue_start = 0x1c3e
val_tongue_end = 0x803e
secret_garden_enter = 0x6842
secret_garden_end = 0xcc42
eyeball_start = 0xce4a
eyeball_end = 0x4b  
valmar_eye_start = 0x1a4f
valmar_eye_end = 0x4c4f
arm_wrestle_start = 0x945c
arm_wrestle_end = 0xc65c
valmar_claw_start = 0x825f
valmar_claw_end = 0xb45f
tio_convo = 0xd462
tio_joins = 0x3863
melfice_start = 0xf06e
melfice_end = 0x546f

achievement ("Royal Escort", "Hired to escort Elena", 1, 
trigger = loc_id() == loc_carbo && event_script() == elena_escort && prev(event_script()) == priest_hire)

achievement ("Howling Statues", "Defeat the Garggoyle's in Garmia Tower", 1, 
trigger = loc_id() == loc_garmia && event_script() == gargoyle_win && prev(event_script()) == gargoyle_fight)

achievement ("Millenia Who?", "Receive a Spanking", 1, 
trigger = loc_id() == loc_carbo && event_script() == millenia_carbo_over && prev(event_script()) == millenia_carbo)

achievement ("Lost Boy", "Roan joins the team", 1, 
trigger = loc_id() == loc_agear && event_script() == roan_joins && prev(event_script()) == roan_trog_end)

achievement ("Roasted Minotaur", "Defeat the Minotaur and retrieve Roan's medal", 1, 
trigger = loc_id() == loc_agear && event_script() == mino_end && prev(event_script()) == mino_start)

achievement ("Smell of Scum", "Defeat Mareg in Baked Plains", 1, 
trigger = loc_id() == loc_baked && event_script() == mareg_baked_gone && prev(event_script()) == mareg_baked_end)

achievement ("Big Man", "Mareg joint the team", 1, 
trigger = loc_id() == loc_liligue && event_script() == mareg_joins && prev(event_script()) == mareg_liligue)

achievement ("Tongue Kiss", "Defeat Valmar's Tongue", 1, 
trigger = loc_id() == loc_liligue && event_script() == val_tongue_end && prev(event_script()) == val_tongue_start)

achievement ("Secret Garden", "Meet the girl in the secret gardens", 1, 
trigger = loc_id() == loc_lumirfor && event_script() == secret_garden_end && prev(event_script()) == secret_garden_enter)

achievement ("Poke Your Eyes Out", "Defeat the Eyeball bats in the Mysterious Fissure", 1, 
trigger = loc_id() == loc_mirumu && event_script() == eyeball_end && prev(event_script()) == eyeball_start)

achievement ("Eye Gouge", "Defeat Valmar's Eye", 1, 
trigger = loc_id() == loc_lumirfor && event_script() == valmar_eye_end && prev(event_script()) == valmar_eye_start)

achievement ("The Assist", "Win an Arm Wrestle", 1, 
trigger = loc_id() == loc_cyrum && event_script() == arm_wrestle_end && prev(event_script()) == arm_wrestle_start)

achievement ("The Clawwww", "Defeat Valmar's Claw", 1, 
trigger = loc_id() == loc_cyrum && event_script() == valmar_claw_end && prev(event_script()) == valmar_claw_start)

achievement ("Unit ID Tio", "Tio joins the team", 1, 
trigger = loc_id() == loc_cyrum && event_script() == tio_joins && prev(event_script()) == tio_convo)

achievement ("Brotherly Love", "Defeat Melfice", 1, 
trigger = loc_id() == loc_blfor && event_script() == melfice_end && prev(event_script()) == melfice_start)






function witt_forest() => sum_of(range(3,6), b => bit(b,0xe2e254))
achievement ("Witt Forest", "Obtain all treasures in Witt Forest", 1,
trigger = measured(witt_forest() == 4) && prev(witt_forest()) == 3)


function black_forest() => sum_of(range(2,4), b => bit(b,0xe2e255))
achievement ("Black Forest", "Obtain all treasures in Black Forest", 1,
trigger = measured(black_forest() == 3) && prev(black_forest()) == 2)


function garmia_tower() => sum_of(range(0,2), b => bit(b,0xe2e256))+sum_of(range(5,7), b => bit(b,0xe2e257))
achievement ("Garmia Tower", "Obtain all treasures in Garmia Tower", 1,
trigger = measured(garmia_tower() == 6) && prev(garmia_tower()) == 5)


function inor_mountains() => sum_of(range(0,4), b => bit(b,0xe2e25a))+sum_of(range(0,7), b => bit(b,0xe2e25b))+bit7(0xe2e25c)
achievement ("Inor Mountains", "Obtain all treasures in Inor Mountains", 1,
trigger = measured(inor_mountains() == 14) && prev(inor_mountains()) == 13)                           


function durham_cave() => sum_of(range(0,2), b => bit(b,0xe2e260))+sum_of(range(0,7), b => bit(b,0xe2e261))+sum_of(range(5,6), b => bit(b,0xe2e262))
achievement ("Durham Cave", "Obtain all treasures in Durham Cave", 1,
trigger = measured(durham_cave() == 13) && prev(durham_cave()) == 12)


function baked_plains() => bit0(0xe2e266)+sum_of(range(0,15), b => bit(b,0xe2e267))+sum_of(range(6,7), b => bit(b,0xe2e269))
achievement ("Baked Plains", "Obtain all treasures in Baked Plains", 1,
trigger = measured(baked_plains() == 19) && prev(baked_plains()) == 18)


function liligue_cave() => sum_of(range(0,6), b => bit(b,0xe2e26d))+sum_of(range(1,7), b => bit(b,0xe2e26e))
achievement ("Liligue Cave", "Obtain all treasures in Liligue Cave", 1, 
trigger = measured(liligue_cave() == 14) && prev(liligue_cave()) == 13)


function lumir_forest() => sum_of(range(0,4), b => bit(b,0xe2e273))+sum_of(range(0,7), b => bit(b,0xe2e274))+sum_of(range(3,7), b => bit(b,0xe2e275))
achievement ("Lumir Forest", "Obtain all treasures in Lumir Forest", 1,
trigger = measured(lumir_forest() == 18) && prev(lumir_forest()) == 17)


function mysterious_fissure() => sum_of(range(0,2), b => bit(b,0xe2e279))+sum_of(range(0,7), b => bit(b,0xe2e27a))+sum_of(range(1,7), b => bit(b,0xe2e27b))
achievement ("Mystrious Fissure & Aira's Space", "Obtain all treasures in Mysterious Fissure & Aira's Space", 1,
trigger = measured(mysterious_fissure() == 18) && prev(mysterious_fissure()) == 17)


function stheim_mountains() => bit0(0xe2e27f)+sum_of(range(0,23), b => bit(b,0xe2e280))+sum_of(range(2,7), b => bit(b,0xe2e283))
achievement ("St.Heim Mountains & Pilgrim Road", "Obtain all treasures in St.Heim Mountains & Pilgrim Road", 1,
trigger = measured(stheim_mountains() == 31) && prev(stheim_mountains()) == 30)


function raul_hill() => sum_of(range(0,6), b => bit(b,0xe2e286))+sum_of(range(0,15), b => bit(b,0xe2e287))+sum_of(range(5,7), b => bit(b,0xe2e289))
achievement ("Raul Hill", "Obtain all treasures in Raul Hill", 1, 
trigger = measured(raul_hill() == 26) && prev(raul_hill()) == 25)


function cyrum_castle() => sum_of(range(0,4), b => bit(b,0xe2e28c))+sum_of(range(6,7), b => bit(b,0xe2e28d))
achievement ("Cyrum Castle", "Obtain all treasures in Cyrum Castle", 1,
trigger = measured(cyrum_castle() == 7) && prev(cyrum_castle()) == 6)


function underground_plant() => sum_of(range(0,2), b => bit(b,0xe2e292))+sum_of(range(0,15), b => bit(b,0xe2e293))+sum_of(range(3,7), b => bit(b,0xe2e295))
achievement ("Underground Plant", "Obtain all treasures in Underground Plant", 1,
trigger = measured(underground_plant() == 24) && prev(underground_plant()) == 23)


function ceceile_reef() => bit0(0xe2e298)+sum_of(range(0,7), b => bit(b,0xe2e299))+sum_of(range(4,7), b => bit(b,0xe2e29a))
achievement ("Ceceile Reef", "Obtain all treasures in Ceceile Reef", 1, 
trigger = measured(ceceile_reef() == 13) && prev(ceceile_reef()) == 12)


function grail_mountain() => sum_of(range(0,6), b => bit(b,0xe2e29f))+sum_of(range(0,7), b => bit(b,0xe2e2a0))+sum_of(range(3,7), b => bit(b,0xe2e2a1))
achievement ("Grail Mountain", "Obtain all treasures in Grail Mountain", 1, 
trigger = measured(grail_mountain() == 20) && prev(grail_mountain()) == 19)


function ghoss_forest() => sum_of(range(0,4), b => bit(b,0xe2e2a5))+sum_of(range(0,15), b => bit(b,0xe2e2a6))+sum_of(range(1,6), b => bit(b,0xe2e2a8))
achievement ("Ghoss Forest", "Obtain all treasures in Ghoss Forest", 1, 
trigger = measured(ghoss_forest() == 27) && prev(ghoss_forest()) == 26)


function great_rift() => sum_of(range(0,2), b => bit(b,0xe2e2ab))+sum_of(range(0,5), b => bit(b,0xe2e2ac))+bit7(0xe2e2ac)+sum_of(range(2,7), b => bit(b,0xe2e2ad))
achievement ("Great Rift", "Obtain all treasures in Great Rift", 1,
trigger = measured(great_rift() == 16) && prev(great_rift()) == 15)


function demon_law() => bit0(0xe2e2b1)+sum_of(range(2,7), b => bit(b,0xe2e2b2))
achievement ("Demon Law", "Obtain all treasures in Demon Law", 1, 
trigger = measured(demon_law() == 7) && prev(demon_law()) == 6)


function valmar_body() => sum_of(range(0,6), b => bit(b,0xe2e2b8))+sum_of(range(0,7), b => bit(b,0xe2e2b9))+sum_of(range(4,7), b => bit(b,0xe2e2ba))
achievement ("Valmar's Body", "Obtain all treasures in Valmar's Body", 1, 
trigger = measured(valmar_body() == 19) && prev(valmar_body()) == 18)


function valmar_moon() => sum_of(range(0, 4), b => bit(b, 0xe2e2be))+sum_of(range(0,7), b => bit(b, 0xe2e2bf))+sum_of(range(1,7), b => bit(b, 0xe2e2c0))
achievement ("Valmar's Moon", "Obtain all treasures in Valmar's Moon", 1,
trigger = measured(valmar_moon() == 20) && prev(valmar_moon()) == 19)
    
                                              
function birthplace_gods() => sum_of(range(0,2), b => bit(b, 0xe2e2c4))+sum_of(range(0,14), b => bit(b,0xe2e2c5))+sum_of(range(4,7), b => bit(b,0xe2e2c7))
achievement ("Birthplace of the Gods & Cyrum Kingdom", "Obtain all treasures in Birthplace of the gods & Cyrum Kingdom", 1, 
trigger = measured(birthplace_gods() == 22) && prev(birthplace_gods()) == 21)

function new_valmar() => bit0(0xe2e2ca)+sum_of(range(0,15), b => bit(b,0xe2e2cb))+sum_of(range(5,7), b => bit(b,0xe2e2cd))
achievement ("New Valmar", "Obtain all treasures in New Valmar", 1,
trigger = measured(new_valmar() == 20) && prev(new_valmar()) == 19)


function raul_hills_revisited() => sum_of(range(0,6), b => bit(b,0xe2e2d1))+sum_of(range(3,7), b => bit(b,0xe2e2d2))
achievement ("Raul Hills Revisited", "Obtain all treasures in Raul Hills (Revisited)", 1,
trigger = measured(raul_hills_revisited() == 12) && prev(raul_hills_revisited()) == 11)



function holyegg() => sum_of(range(0xe33928,0xe3396c,step=4), addr => byte(addr)) == 90 &&
                      prev(sum_of(range(0xe33928,0xe3396c,step=4), addr => byte(addr))) == 89
                      
function chaosegg() => sum_of(range(0xe33970,0xe339b4,step=4), addr => byte(addr)) == 90 &&
                       prev(sum_of(range(0xe33970,0xe339b4,step=4), addr => byte(addr))) == 89
                       
function mistegg() => sum_of(range(0xe339b8,0xe339fc,step=4), addr => byte(addr)) == 90 &&
                      prev(sum_of(range(0xe339b8,0xe339fc,step=4), addr => byte(addr))) == 89
                      
function gravityegg() => sum_of(range(0xe33a00,0xe33a44,step=4), addr => byte(addr)) == 90 &&
                         prev(sum_of(range(0xe33a00,0xe33a44,step=4), addr => byte(addr))) == 89
                         
function soulegg() => sum_of(range(0xe33a48,0xe33a8c,step=4), addr => byte(addr)) == 90 &&
                      prev(sum_of(range(0xe33a48,0xe33a8c,step=4), addr => byte(addr))) == 89
                      
function staregg() => sum_of(range(0xe33a90,0xe33ad4,step=4), addr => byte(addr)) == 90
                      prev(sum_of(range(0xe33a90,0xe33ad4,step=4), addr => byte(addr))) == 89
                      
function tutoregg() => sum_of(range(0xe33ad8,0xe33b1c,step=4), addr => byte(addr)) == 90 &&
                       prev(sum_of(range(0xe33ad8,0xe33b1c,step=4), addr => byte(addr))) == 89
                       
function changeegg() => sum_of(range(0xe33b20,0xe33b64,step=4), addr => byte(addr)) == 90 &&
                        prev(sum_of(range(0xe33b20,0xe33b64,step=4), addr => byte(addr))) == 89                      

achievement ("Eggy", "Master an Egg Boiiiii", 100,
trigger = always_false() || holyegg() || chaosegg() || mistegg() || gravityegg() || soulegg() || staregg() || tutoregg() || changeegg())





















