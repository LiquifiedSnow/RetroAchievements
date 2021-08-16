// James Bond 007
// #ID = 6473
function playingcheck() => byte(0xdff8)
is_inventory = 0x00
is_playing = 0x01
is_paused = 0x02
function aSlot() => byte(0xc55c)
is_block = 0x00
is_fist = 0x01
is_gun = 0x02
is_knife = 0x03
is_tranq = 0x04
is_machinegun = 0x05
is_grenade = 0x06
is_rocketlauncher = 0x07
is_guidedmissle = 0x08
is_shield = 0x09
is_lamp = 0x10
is_prison_keys = 0x11
is_keys = 0x12
is_laser = 0x13
is_chicken = 0x14
is_cat = 0x15
is_mouse = 0x16
is_passport = 0x17
is_pearl = 0x18
is_diamond = 0x19
is_mirror = 0x0a
is_meds = 0x0b
is_hammer = 0x0c
is_secretpass = 0x0d
is_stun = 0x0e
is_cabaret = 0x0f
is_diamond = 0x1a
is_oddjob_keys = 0x1b
is_satellite = 0x1c
is_president_keys = 0x1d
is_canteen = 0x1e
is_rope = 0x1f
is_hook = 0x20
is_exploding_pen = 0x21
is_field_comms = 0x22
is_bandage = 0x23
is_gun_ammo = 0x24
is_uzi_ammo = 0x25
is_Bazooka_ammo = 0x26
is_heavyv = 0x27
is_grappling = 0x28
is_papers = 0x29
is_jewelegg = 0x2a
is_secretpass = 0x2b
is_safe_key = 0x2c
is_marble = 0x2d
is_silencer = 0x2e
is_lightv = 0x2f
is_goldr = 0x31
function bSlot() => byte(0xc55d)
is_block = 0x00
is_fist = 0x01
is_gun = 0x02
is_knife = 0x03
is_tranq = 0x04
is_machinegun = 0x05
is_grenade = 0x06
is_rocketlauncher = 0x07
is_guidedmissle = 0x08
is_shield = 0x09
is_lamp = 0x10
is_prison_keys = 0x11
is_keys = 0x12
is_laser = 0x13
is_chicken = 0x14
is_cat = 0x15
is_mouse = 0x16
is_passport = 0x17
is_pearl = 0x18
is_diamond = 0x19
is_mirror = 0x0a
is_meds = 0x0b
is_hammer = 0x0c
is_secretpass = 0x0d
is_stun = 0x0e
is_cabaret = 0x0f
is_diamond = 0x1a
is_oddjob_keys = 0x1b
is_satellite = 0x1c
is_president_keys = 0x1d
is_canteen = 0x1e
is_rope = 0x1f
is_hook = 0x20
is_exploding_pen = 0x21
is_field_comms = 0x22
is_bandage = 0x23
is_gun_ammo = 0x24
is_uzi_ammo = 0x25
is_Bazooka_ammo = 0x26
is_heavyv = 0x27
is_grappling = 0x28
is_papers = 0x29
is_jewelegg = 0x2a
is_secretpass = 0x2b
is_safe_key = 0x2c
is_marble = 0x2d
is_silencer = 0x2e
is_lightv = 0x2f
is_goldr = 0x31
function bridgerepair() => byte(0xd382)
function chinabeat() => byte(0xd376)
function kurdbeat() => byte(0xd37a)
function marabeat() => byte(0xd37c)
function foldingcouch() => byte(0xd2d0)
function jeweledegg() => byte(0xd318)
function secretpass() => byte(0xd319)
function passport() => byte(0xd305)
function nightgoggles() => byte(0xd307)
function marbleroom() => byte(0xd3a1)
function bosshealth() => byte(0xca64)
function sadambeat() => byte(0xd3c5)
function golgovbeat() => byte(0xd3d3)
function screenid() => byte(0xc840)
kurd_boss = 0x2a
kurd_boss_prior = 0x34
mara_blackjack = 0x18
mara_reddog = 0x20
mara_bacca = 0xfe
oddjob_room = 0xd2
sumo_entrance = 0x09
sumo_room1 = 0x0d
sumo_room2 = 0x13
sumo_room3 = 0x19
sumo_room4 = 0x1f
sumo_room5 = 0x25
sumo_room6 = 0x2b
shield_get = 0xa4
oddjob_fight = 0xdd
khatar_fight = 0x3e
khatar_fight_entrance = 0x19
sadam_fight = 0x36
sadam_fight_entrance = 0x19
jaws_fight = 0x8b
jaws_fight_entrance = 0x1f
golgov_fight = 0x87
finalscreen = 0x5d
function levelid() => byte(0xd376)
stage_china = 0x00
stage_london = 0x01
stage_kurdistan = 0x02
stage_marakesh = 0x03
stage_sahara = 0x05
stage_tibet = 0x04
stage_secretbase = 0x06
stage_kurd2 = 0x08
stage_russia = 0x07
function casinowin() => byte(0xc52d)
win = 0x1b
function playerhealth() => byte(0xd374)
function blackjackhand() => byte(0xd08b)
function blackjackdealt() => byte(0xcfef)
function casinomoney() => byte(0xcff7)
function bazooka() => byte(0xd2f5)
function shieldget() => byte(0xd2f7)
function khatarbeat() => byte(0xd3c6)
function sumo1() => byte(0xd38b)
function sumo2() => byte(0xd38c)
function sumo3() => byte(0xd38d)
function sumo4() => byte(0xd38e)
function sumo5() => byte(0xd38f)
function sumo6() => byte(0xd390)
function enemy1() => byte(0xca63)
function enemy1dead() => bit7(0xca63)
function enemy2() => byte(0xca83)
function enemy3() => byte(0xcaa3)
function enemy4() => byte(0xcac3)
function enemy5() => byte(0xcae3)
function enemy6() => byte(0xcb03)
function enemy7() => byte(0xcb23)
function enemy8() => byte(0xcb43)
function sumoroom1cleared() => (repeated(1, screenid() == sumo_room1 && sumo1() > prev(sumo1())))
function sumoroom2cleared() => (repeated(1, screenid() == sumo_room2 && sumo2() > prev(sumo2())))
function sumoroom3cleared() => (repeated(1, screenid() == sumo_room3 && sumo3() > prev(sumo3())))
function sumoroom4cleared() => (repeated(1, screenid() == sumo_room4 && sumo4() > prev(sumo4())))
function sumoroom5cleared() => (repeated(1, screenid() == sumo_room5 && sumo5() > prev(sumo5())))
function sumoroom6cleared() => (repeated(1, screenid() == sumo_room6 && sumo6() > prev(sumo6())))
function gamebeat() => byte(0xd2ec)
function bosskilled() => byte(0xd2ed)
function secrettrigger() => byte(0xd31b)


achievement ("Temple Run", "Complete [China]", 5, id = 153413, badge = "172175",
    trigger = prev(levelid()) == stage_china && levelid() == stage_london)
    
achievement ("Hideaway [m]", "Crush the man on the couch [London]", 1, id = 153414, badge = "172176",
    trigger = levelid() == stage_london && (prev(foldingcouch()) == 0x00 && trigger_when(foldingcouch() == 0x43)))
    
achievement ("DON'T TOUCH THAT! [m]", "Touch what [Q] doesn't want you to touch [London]", 5, id = 153415, badge = "172177",
    trigger = levelid() == stage_london && prev(marbleroom()) == 0 && trigger_when(marbleroom() == 1))
    
achievement ("Eggs, Scrambled [m]", "Find the hidden item [Kurdistan]", 3, id = 153416, badge = "172178",
    trigger = levelid() == stage_kurdistan && prev(jeweledegg()) == 0 && trigger_when(jeweledegg() == 1))

achievement ("Darkvision [m]", "Defeat [Igbal] in [Kurdistan] damageless without having the lamp or gun equipped", 10, id = 153417, badge = "172179",
    trigger = levelid() == stage_kurdistan &&
              repeated(6,screenid() == kurd_boss && trigger_when(bosshealth() < prev(bosshealth()))) &&
              repeated(1,screenid() == kurd_boss && bosshealth() == 0x06) &&
              unless(once(screenid() == kurd_boss && (aSlot() == is_gun || bSlot() == is_gun || aSlot() == is_lamp || bSlot() == is_lamp))) &&
              unless(once(screenid() == kurd_boss && playerhealth() < prev(playerhealth()))) &&  (always_false() ||
              never(repeated(0, levelid() == stage_kurdistan && screenid() == kurd_boss_prior)) && never(playerhealth() == 0x00)))
              
achievement ("Light it Up", "Defeat [Igbal] in [Kurdistan]", 5, id = 153418, badge = "172180",
    trigger = levelid() == stage_kurdistan && repeated(6,screenid() == kurd_boss && bosshealth() < prev(bosshealth())) && never(screenid() != kurd_boss))
              
achievement ("Prisoner", "Complete [Kurdistan]",5, id = 153419, badge = "172181",
    trigger = prev(levelid()) == stage_kurdistan && levelid() == stage_marakesh)
    
achievement ("Believe in the Heart of the Cards [m]", "Get [21] in a hand of [Blackjack] in [Marakesh Casino]", 5, id = 153421, badge = "172182",
    trigger = levelid() == stage_marakesh && screenid() == mara_blackjack && prev(blackjackhand()) != 0x15 && trigger_when(blackjackhand() == 0x15))

achievement ("Entry Fee [m]", "Bet [$2500] on a single hand of [Blackjack]", 1, id = 153422, badge = "172183",
    trigger = levelid() == stage_marakesh && screenid() == mara_blackjack && casinomoney() == 0xfa && prev(blackjackdealt()) == 0x00 && trigger_when(blackjackdealt() == 0x02))
    
achievement ("Shady Deals [m]", "Obtain the [Secret Pass] in [Marakesh]", 3, id = 153423, badge = "172184",
    trigger = levelid() == stage_marakesh && prev(jeweledegg()) == 0x01 && jeweledegg() == 0x00 && trigger_when(secretpass() == 0x01))
    
achievement ("Black Market [m]", "Obtain the [Night Goggles] in [Marakesh]", 3, id = 153424, badge = "172185",
    trigger = levelid() == stage_marakesh && passport() == 0x00 && prev(nightgoggles()) == 0x00 && trigger_when(nightgoggles() == 0x01))
    
achievement ("Left to Die", "Complete [Marakesh]", 5, id = 153425, badge = "172186",
    trigger = playingcheck() == is_inventory && prev(levelid()) == stage_marakesh && levelid() == stage_sahara)
    
achievement ("Comb the Desert", "Escape the [Sahara]", 1, id = 153426, badge = "172187",
    trigger = playingcheck() == is_inventory && prev(levelid()) == stage_sahara && levelid() == stage_tibet && screenid() == 0x58)
    
achievement ("Sumo What [m]", "Clear [Sumo Rooms 1-6] damageless after room 1 [Tibet]", 5, id = 153427, badge = "172188",
    trigger = playingcheck() == is_playing && levelid() == stage_tibet && sumoroom1cleared() && sumoroom2cleared() && 
              sumoroom3cleared() && sumoroom4cleared() && sumoroom5cleared() && trigger_when(sumoroom6cleared()) &&
              never(screenid() == sumo_entrance) && never(playerhealth() < prev(playerhealth())))

achievement ("It'll Be Cold in Tibet", "Complete [Tibet]", 5, id = 153428, badge = "172189",
    trigger = playingcheck() == is_inventory && prev(levelid()) == stage_tibet && levelid() == stage_secretbase)     
    
achievement ("Is That a BAZOOKA!?  [m]", "Obtain [Rocket Launcher] in [Secret Base]", 3, id = 153429, badge = "172190",
    trigger = levelid() == stage_secretbase && trigger_when(bazooka() > prev(bazooka())))
               
achievement ("Captain America", "Obtain [Shield] in [Secret Base]", 5, id = 153430, badge = "172191",
    trigger = levelid() == stage_secretbase && screenid() == shield_get && prev(shieldget()) == 0x00 && trigger_when(shieldget() == 0x0a))

achievement ("Jobless", "Defeat [Odd Job] in [Secret Base]", 5, id = 153431, badge = "172192",
    trigger = levelid() == stage_secretbase &&
              repeated(16,(screenid() == oddjob_fight && bosshealth() < prev(bosshealth()))) &&     
              never(playerhealth() == 0x00) && never(screenid() == 0xd9))  
    
achievement ("No Job [m]", "Defeat [Odd Job] damageless [Secret Base]", 25, id = 153432, badge = "172193",
    trigger = levelid() == stage_secretbase &&
              repeated(16,(screenid() == oddjob_fight && trigger_when(bosshealth() < prev(bosshealth())))) &&
              unless(once(screenid() == oddjob_fight && playerhealth() < prev(playerhealth()))) &&
              (always_false() || never(playerhealth() == 0x00) && never(screenid() == 0xd9)))
              
achievement ("Not So Secret", "Complete [Secret Base]", 5, id = 153433, badge = "172194",
    trigger = prev(levelid()) == stage_secretbase && levelid() == stage_kurd2)
                 
achievement ("Interruption", "Defeat [Khatar] in [Kurdistan 2]", 5, id = 153434, badge = "172195",
    trigger = levelid() == stage_kurd2 && screenid() == khatar_fight && prev(khatarbeat()) == 0x00 && khatarbeat() == 0x01)                          
              
achievement ("Undivided Attention [m]", "Defeat [Khatar] damageless in [Kurdistan 2]", 5, id = 153435, badge = "172196",
    trigger = levelid() == stage_kurd2 && screenid() == khatar_fight && prev(khatarbeat()) == 0x00 && trigger_when(khatarbeat() == 0x01) &&
              unless(once(screenid() == khatar_fight && playerhealth() < prev(playerhealth()))) &&
              (always_false() || never(playerhealth() == 0x00) && never(screenid() == khatar_fight_entrance)))         
              
achievement ("Bond, I'm Afraid", "Defeat [Sadam] in [Kurdistan 2]", 1, id = 153436, badge = "172197",
    trigger = levelid() == stage_kurd2 && screenid() == sadam_fight && prev(sadambeat()) == 0x00 && sadambeat() == 0x01)          
              
achievement ("Warzone", "Complete [Kurdistan 2]", 5, id = 153420, badge = "172181",
    trigger = prev(levelid()) == stage_kurd2 && levelid() == stage_russia && screenid() == 0x43)
    
achievement ("Jaws of Life", "Defeat [Jaws] in [Russia]", 5, id = 153437, badge = "172198",
    trigger = levelid() == stage_russia && screenid() == jaws_fight && prev(bosskilled()) == 0x0f && bosskilled() == 0x10)

achievement ("Poacher [m]", "Defeat [Jaws] damageless in [Russia]", 10, id = 153438, badge = "172199",
    trigger = levelid() == stage_russia && screenid() == jaws_fight && prev(enemy1dead()) == 0 && trigger_when(enemy1dead() == 1) &&
              unless(once(screenid() == jaws_fight && playerhealth() < prev(playerhealth()))) &&
              (always_false() || never(playerhealth() == 0x00) && never(screenid() == jaws_fight_entrance)))  
              
achievement ("I've Been Expecting You", "Defeat [Golgov] in [Russia]", 5, id = 153439, badge = "172200",
    trigger = levelid() == stage_russia && screenid() == golgov_fight && prev(golgovbeat()) == 0x00 && golgovbeat() == 0x01)
    
achievement ("General Golgov [m]", "Defeat [Goldgov] damageless in [Russia]", 10, id = 153440, badge = "172201",
    trigger = levelid() == stage_russia && screenid() == golgov_fight && prev(golgovbeat()) == 0x00 && golgovbeat() == 0x01 &&
              unless(once(screenid() == golgov_fight && playerhealth() < prev(playerhealth()))) &&
              (always_false() || never(playerhealth() == 0x00) && never(screenid() != golgov_fight)))
              
achievement ("Vacation", "Complete the Game", 10, id = 153441, badge = "172202",
    trigger = levelid() == stage_russia && screenid() == finalscreen && prev(gamebeat()) == 0x00 && gamebeat() == 0x01)
    
achievement ("Slow Ride [m]", "Complete the Game with [Secret Ending]", 10, badge = "172203", id = 153442,
    trigger = levelid() == stage_russia && screenid() == finalscreen && prev(gamebeat()) == 0x00 && trigger_when(gamebeat() == 0x01) && secrettrigger() == 0x01)
    
