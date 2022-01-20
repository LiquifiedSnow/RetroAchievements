// Fatal Labyrinth
// #ID = 99


function wep_equip() => byte(0x9438)
wep_none = 0x00
wep_knife = 0x01
wep_shortsword = 0x02
wep_shinobisword = 0x03
wep_gradius = 0x04
wep_shuriken = 0x05
wep_longsword = 0x06
wep_cutlass = 0x07
wep_steelsword = 0x08
wep_silversword = 0x09
wep_lightningsword = 0x0a
wep_masamune = 0x0b
wep_dragoncutter = 0x0c
wep_excalibur = 0x0d
wep_beamsword = 0x0e
wep_bloodsword = 0x0f
wep_spear = 0x10
wep_lance = 0x11
wep_trident = 0x12
wep_tigerlance = 0x13
wep_skulllance = 0x14
wep_handaxe = 0x15
wep_battleaxe = 0x16
wep_heavyaxe = 0x17
wep_rolmillianaxe = 0x18
wep_goldaxe = 0x19

function  armorblock() => unless(once(byte(0x9417) == 0x99)) && (always_false() || never(cur_floor() == 0x00))

function cur_floor() => byte(0x9412)

function ene_alive() => byte(0x860c)
function cur_floor() => byte(0x9412)
function char_armor() => byte(0x9417)
function char_ani() => byte(0x9406)
ani_bow = 0x08

function knife_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_knife && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Knife", "Get 25 kills with the knife", 5,
trigger = knife_kill() && armorblock())

function short_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_shortsword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Short Sword", "Get 25 kills with the short sword", 5,
trigger = short_kill() && armorblock())

function shinobi_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_shinobisword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Shinobi Sword", "Get 25 kills with the Shinobi Sword", 5,
trigger = shinobi_kill() && armorblock())

function gradius_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_gradius && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Gradius", "Get 25 kills with the Gradius", 5,
trigger = gradius_kill() && armorblock())

function long_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_longsword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Long Sword", "Get 25 kills with the Long Sword", 5,
trigger = long_kill() && armorblock())

function cut_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_cutlass && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Cutlass Sword", "Get 25 kills with the Cutlass", 5,
trigger = cut_kill() && armorblock())

function steel_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_steelsword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Steel Sword", "Get 25 kills with the Steel Sword", 5,
trigger = steel_kill() && armorblock())

function silver_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_silversword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Silver Sword", "Get 25 kills with the Silver Sword", 5,
trigger = silver_kill() && armorblock())

function lightning_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_lightningsword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Lightning Sword", "Get 25 kills with the Lightning Sword", 5,
trigger = lightning_kill() && armorblock())

function masa_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_masamune && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Masamune", "Get 25 kills with the Masamune", 5,
trigger = masa_kill() && armorblock())

function excalibur_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_excalibur && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Excalibur", "Get 25 kills with the Excalibur", 5,
trigger = excalibur_kill() && armorblock())

function blood_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_bloodsword && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Blood Sword", "Get 25 kills with the Blood sword", 5,
trigger = blood_kill() && armorblock())

function spear_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_spear && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Spear", "Get 25 kills with the Spear", 5,
trigger = spear_kill() && armorblock())

function lance_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_lance && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Lance", "Get 25 kills with the Lance", 5,
trigger = lance_kill() && armorblock())

function trident_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_trident && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Trident", "Get 25 kills with the Trident", 5,
trigger = trident_kill() && armorblock())

function tiger_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_tigerlance && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Tiger Lance", "Get 25 kills with the Tiger Lance", 5,
trigger = tiger_kill() && armorblock())

function skull_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_skulllance && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Skull Lance", "Get 25 kills with the Skull Lance", 5,
trigger = skull_kill() && armorblock())

function hand_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_handaxe && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Hand Axe", "Get 25 kills with the Hand Axe", 5,
trigger = hand_kill() && armorblock())

function battle_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_battleaxe && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Battle Axe", "Get 25 kills with the Battle Axe", 5,
trigger = battle_kill() && armorblock())

function heavy_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_heavyaxe && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Heavy Axe", "Get 25 kills with the Heavey Axe", 5,
trigger = heavy_kill() && armorblock())

function rolmi_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_rolmillianaxe && 
         ene_alive() < prev(ene_alive()) && char_ani() != 0x00))
achievement ("Mastered Rolmillian Axe", "Get 25 kills with the Rolmillian Axe", 5,
trigger = rolmi_kill() && armorblock())

function wep_goldequip() => word(9454) == 0x9919
function gold_kill() => measured(tally(25,cur_floor() == prev(cur_floor()) && cur_floor() >= 0x01 && wep_equip() == wep_none && 
                        wep_goldequip() && char_ani() != 0x00 && ene_alive() < prev(ene_alive())))
achievement ("Mastered Golden Axe", "Get 25 kills with the Gold Axe", 5,
trigger = gold_kill() && armorblock())

achievement(
    title = "More Than Half", description = "Reach the floor 20", points = 10,
    id = 27435, badge = "27799", published = "2015-08-12 2:42:37 PM", modified = "2019-09-26 8:18:01 AM",
    trigger = cur_floor() == 20 && prev(cur_floor()) == 19 && armorblock())

achievement(
    title = "It's a Good Start", description = "Reach the floor 10", points = 10,
    id = 27434, badge = "27798", published = "2015-08-12 2:42:35 PM", modified = "2019-10-05 10:07:01 AM",
    trigger = cur_floor() == 10 && prev(cur_floor()) == 9 && armorblock())

achievement(
    title = "Just One More", description = "Reach floor 30", points = 10,
    id = 27436, badge = "27800", published = "2015-08-12 2:42:39 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() == 30 && prev(cur_floor()) == 29 && armorblock())

achievement(
    title = "Wood Cane", description = "Use the Wood cane", points = 5,
    id = 27524, badge = "27998", published = "2015-08-12 2:46:47 PM", modified = "2020-05-28 6:41:32 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 55 && prev(byte(0x009071)) == 00)

achievement(
    title = "Pit Cane", description = "Use the Pit cane", points = 10,
    id = 27523, badge = "27999", published = "2015-08-12 2:46:46 PM", modified = "2020-05-28 6:41:36 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 54 && prev(byte(0x009071)) == 00)

achievement(
    title = "Kamikaze Cane", description = "Use the Kamikaze cane", points = 4,
    id = 27522, badge = "27997", published = "2015-08-12 2:46:45 PM", modified = "2020-05-28 6:41:39 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 53 && prev(byte(0x009071)) == 00)

achievement(
    title = "Anti-Magic Cane", description = "Use the Anti magic cane", points = 3,
    id = 27521, badge = "27996", published = "2015-08-12 2:46:44 PM", modified = "2020-05-28 6:41:41 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 52 && prev(byte(0x009071)) == 00)

achievement(
    title = "Hypnosis Cane", description = "Use the Hypnosis cane", points = 2,
    id = 27520, badge = "27995", published = "2015-08-12 2:46:43 PM", modified = "2015-08-12 2:49:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 51 && prev(byte(0x009071)) == 00)

achievement(
    title = "Slow Cane", description = "Use the slow cane", points = 2,
    id = 27519, badge = "27994", published = "2015-08-12 2:46:42 PM", modified = "2015-08-12 2:49:00 PM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 50 && prev(byte(0x009071)) == 00)

achievement(
    title = "Lightning Cane", description = "Use the Lightning cane", points = 4,
    id = 27518, badge = "27993", published = "2015-08-12 2:46:40 PM", modified = "2020-05-28 6:41:44 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 49 && prev(byte(0x009071)) == 00)

achievement(
    title = "Blizzard Cane", description = "Use the Blizzard cane", points = 4,
    id = 27517, badge = "27992", published = "2015-08-12 2:46:39 PM", modified = "2020-05-28 6:41:45 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 48 && prev(byte(0x009071)) == 00)

achievement(
    title = "Flame Cane", description = "Use the Flame cane", points = 4,
    id = 27516, badge = "27991", published = "2015-08-12 2:46:37 PM", modified = "2020-05-28 6:41:47 AM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x009071) == 47 && prev(byte(0x009071)) == 00)

achievement(
    title = "Food Ring", description = "Equip the Food ring", points = 5,
    id = 27491, badge = "27939", published = "2015-08-12 2:46:08 PM", modified = "2020-05-28 6:40:54 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 5))

achievement(
    title = "Golden Ring", description = "Equip the Golden ring", points = 5,
    id = 27496, badge = "27944", published = "2015-08-12 2:46:14 PM", modified = "2020-05-28 6:41:05 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 10))

achievement(
    title = "Curse Ring", description = "Equip the Curse ring", points = 5,
    id = 27495, badge = "27943", published = "2015-08-12 2:46:12 PM", modified = "2020-05-28 6:41:07 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 9))

achievement(
    title = "Heal Ring", description = "Equip the Heal ring", points = 5,
    id = 27494, badge = "27942", published = "2015-08-12 2:46:11 PM", modified = "2020-05-28 6:41:08 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 8))

achievement(
    title = "Armor Ring", description = "Equip the Armor ring", points = 4,
    id = 27493, badge = "27941", published = "2015-08-12 2:46:10 PM", modified = "2020-05-28 6:41:09 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 7))

achievement(
    title = "Power up Ring", description = "Equip the Power up ring", points = 4,
    id = 27492, badge = "27940", published = "2015-08-12 2:46:09 PM", modified = "2020-05-28 6:41:10 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 6))

achievement(
    title = "Blinder Ring", description = "Equip the Blinder ring", points = 5,
    id = 27490, badge = "27938", published = "2015-08-12 2:46:06 PM", modified = "2020-05-28 6:41:12 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 4))

achievement(
    title = "Lightning Ring", description = "Equip the Lightning ring", points = 4,
    id = 27489, badge = "27937", published = "2015-08-12 2:46:05 PM", modified = "2020-05-28 6:41:13 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 3))

achievement(
    title = "Blizzard Ring", description = "Equip the Blizzard ring", points = 4,
    id = 27488, badge = "27936", published = "2015-08-12 2:46:04 PM", modified = "2020-05-28 6:41:14 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 2))

achievement(
    title = "Flame Ring", description = "Equip the Flame ring", points = 4,
    id = 27487, badge = "27935", published = "2015-08-12 2:46:02 PM", modified = "2020-05-28 6:41:15 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009437) == 1))

achievement(
    title = "Slow Potion", description = "Drink the Slow potion", points = 5,
    id = 27502, badge = "27950", published = "2015-08-12 2:46:21 PM", modified = "2020-05-28 6:40:56 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 63))

achievement(
    title = "Blinder Potion", description = "Drink the Blinder potion", points = 4,
    id = 27501, badge = "27949", published = "2015-08-12 2:46:19 PM", modified = "2020-05-28 6:40:57 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 62))

achievement(
    title = "Strength Potion", description = "Drink the Strength potion", points = 4,
    id = 27500, badge = "27948", published = "2015-08-12 2:46:18 PM", modified = "2020-05-28 6:40:59 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 61))

achievement(
    title = "Confusion Potion", description = "Drink the Confusion potion", points = 4,
    id = 27499, badge = "27947", published = "2015-08-12 2:46:17 PM", modified = "2020-05-28 6:41:00 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 60))

achievement(
    title = "Quicken Potion", description = "Drink the Quicken potion", points = 5,
    id = 27498, badge = "27946", published = "2015-08-12 2:46:16 PM", modified = "2020-05-28 6:41:01 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 59))

achievement(
    title = "Poison Potion", description = "Drink the poison potion", points = 5,
    id = 27497, badge = "27945", published = "2015-08-12 2:46:15 PM", modified = "2020-05-28 6:41:02 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 58))

achievement(
    title = "Heal Potion", description = "Drink the Heal potion", points = 2,
    id = 27503, badge = "27951", published = "2015-08-12 2:46:22 PM", modified = "2015-08-12 2:48:46 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 57))

achievement(
    title = "Hunger Potion", description = "Drink the Hunger potion", points = 5,
    id = 27505, badge = "27953", published = "2015-08-12 2:46:24 PM", modified = "2020-05-28 6:41:58 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 65))

achievement(
    title = "Recover Potion", description = "Drink the Recover potion", points = 5,
    id = 27504, badge = "27952", published = "2015-08-12 2:46:23 PM", modified = "2020-05-28 6:42:02 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 64))

achievement(
    title = "Curse Removal Scroll", description = "Use the Curse removal scroll", points = 5,
    id = 27514, badge = "27962", published = "2015-08-12 2:46:35 PM", modified = "2020-05-28 6:41:29 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 74))

achievement(
    title = "Rust Proof Scroll", description = "Use the Rust proof scroll", points = 4,
    id = 27515, badge = "27963", published = "2015-08-12 2:46:36 PM", modified = "2020-05-28 6:41:48 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 76))

achievement(
    title = "Teleport Scroll", description = "Use the Teleport scroll", points = 5,
    id = 27513, badge = "27961", published = "2015-08-12 2:46:34 PM", modified = "2020-05-28 6:41:51 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 73))

achievement(
    title = "Sleep Scroll", description = "Use the Sleep scroll", points = 5,
    id = 27512, badge = "27960", published = "2015-08-12 2:46:33 PM", modified = "2020-05-28 6:41:52 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 72))

achievement(
    title = "Chaos Scroll", description = "Use the Chaos scroll", points = 2,
    id = 27511, badge = "27959", published = "2015-08-12 2:46:31 PM", modified = "2015-08-12 2:48:53 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 71))

achievement(
    title = "Search Scroll", description = "Use the Search scroll", points = 2,
    id = 27510, badge = "27958", published = "2015-08-12 2:46:30 PM", modified = "2015-08-12 2:48:52 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 70))

achievement(
    title = "Appraisal Scroll", description = "Use the Appraisal scroll", points = 2,
    id = 27509, badge = "27957", published = "2015-08-12 2:46:29 PM", modified = "2015-08-12 2:48:51 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 75))

achievement(
    title = "Newspaper Scroll ", description = "Use the Newspaper scroll", points = 5,
    id = 27508, badge = "27956", published = "2015-08-12 2:46:28 PM", modified = "2020-05-28 6:41:54 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 69))

achievement(
    title = "Weapon Strengthen Scroll", description = "Use the Weapon strengthen scroll", points = 5,
    id = 27507, badge = "27955", published = "2015-08-12 2:46:27 PM", modified = "2020-05-28 6:41:55 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 68))

achievement(
    title = "Armor Strengthen Scroll", description = "Use the Armor strengthen scroll", points = 5,
    id = 27506, badge = "27954", published = "2015-08-12 2:46:26 PM", modified = "2020-05-28 6:41:56 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009071) == 67))

achievement(
    title = "Valet", description = "Get the Valet rank", points = 4,
    id = 27447, badge = "27882", published = "2015-08-12 2:43:12 PM", modified = "2020-05-28 6:42:17 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 1))

achievement(
    title = "Ranger", description = "Get the Ranger rank", points = 4,
    id = 27448, badge = "27883", published = "2015-08-12 2:43:13 PM", modified = "2020-05-28 6:42:16 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 2))

achievement(
    title = "Leader", description = "Get the Leader rank", points = 4,
    id = 27449, badge = "27884", published = "2015-08-12 2:43:14 PM", modified = "2020-05-28 6:42:15 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 3))

achievement(
    title = "Battleman", description = "Get the Battleman rank", points = 4,
    id = 27450, badge = "27885", published = "2015-08-12 2:43:15 PM", modified = "2020-05-28 6:42:13 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 4))

achievement(
    title = "Soldier", description = "Get the Soldier rank", points = 5,
    id = 27451, badge = "27886", published = "2015-08-12 2:43:17 PM", modified = "2020-05-28 6:42:11 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 5))

achievement(
    title = "Warrior", description = "Get the Warrior rank", points = 5,
    id = 27452, badge = "27887", published = "2015-08-12 2:43:18 PM", modified = "2020-05-28 6:42:09 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 6))

achievement(
    title = "Fighter", description = "Get the Fighter rank", points = 5,
    id = 27453, badge = "27888", published = "2015-08-12 2:43:20 PM", modified = "2020-05-28 6:42:08 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 7))

achievement(
    title = "Swordsman", description = "Get the Swordman rank", points = 5,
    id = 27454, badge = "27889", published = "2015-08-12 2:43:21 PM", modified = "2020-05-28 6:42:07 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 8))


achievement(
    title = "Trooper", description = "Get the Trooper rank", points = 5,
    id = 27455, badge = "27890", published = "2015-08-12 2:43:22 PM", modified = "2020-05-28 6:42:05 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 9))

achievement(
    title = "Knight", description = "Get the Knight rank", points = 10,
    id = 27456, badge = "27891", published = "2015-08-12 2:43:24 PM", modified = "2020-05-28 6:42:21 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 10))

achievement(
    title = "Veteran", description = "Get the Veteran rank", points = 10,
    id = 27457, badge = "27892", published = "2015-08-12 2:43:25 PM", modified = "2020-05-28 6:42:58 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 11))

achievement(
    title = "Master", description = "Get the Master rank", points = 10,
    id = 27458, badge = "27893", published = "2015-08-12 2:43:27 PM", modified = "2020-05-28 6:42:57 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 12))

achievement(
    title = "Hero", description = "Get the Hero rank", points = 10,
    id = 27459, badge = "27894", published = "2015-08-12 2:43:29 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 13))

achievement(
    title = "Samurai", description = "Get the Samurai rank", points = 10,
    id = 27460, badge = "27895", published = "2015-08-12 2:43:31 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 14))

achievement(
    title = "Lord", description = "Get the Lord rank", points = 10,
    id = 27461, badge = "27896", published = "2015-08-12 2:43:32 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 15))

achievement(
    title = "Lordmaster", description = "Get the Lordmaster rank", points = 25,
    id = 27462, badge = "27897", published = "2015-08-12 2:43:35 PM", modified = "2020-05-28 6:43:17 AM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009415) == 16))

function Entranceway() => byte(0x9028) == 3 && prev(byte(0x9028)) == 1
achievement(
    title = "Thunder & Lightning Strikes", description = "Enter the castle gate from town", points = 1,
    id = 27433, badge = "29902", published = "2015-08-12 2:42:29 PM", modified = "2020-05-28 6:42:48 AM",
    trigger = word(0x00940E) == 0 && cur_floor() == 0 && Entranceway())

achievement(
    title = "Just One More", description = "Reach floor 30", points = 10,
    id = 27436, badge = "27800", published = "2015-08-12 2:42:39 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && once(byte(0x009413) == 48))

achievement(
    title = "My Mission Is Now Over", description = "Beat the final boss", points = 10,
    id = 27437, badge = "27808", published = "2015-08-12 2:42:42 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && byte(0x0090FD) == 1 && 
              once(byte(0x009413) == 49))

achievement(
    title = "I Think I'm Lost", description = "Explore 50 floors in a single playthrough", points = 25,
    id = 27439, badge = "27833", published = "2015-08-12 2:42:49 PM", modified = "2020-05-28 6:42:27 AM",
    trigger = cur_floor() >= 1 && armorblock() && 
              repeated(51, byte(0x009413) > prev(byte(0x009413))))

function armorblock_two() => unless(once(byte(0x9417) == 0x99)) && (always_false() || never(cur_floor() == 0x00 || (word(0x009410) == 0)))

achievement(
    title = "This Mission Was Too Easy", description = "Beat the game without dying", points = 50,
    id = 27438, badge = "27809", published = "2015-08-12 2:42:44 PM", modified = "2020-05-28 6:42:29 AM",
    trigger = cur_floor() >= 1 && byte(0x0090FD) == 1 && 
              once(byte(0x009413) == 49) && 
              armorblock_two())
achievement(
    title = "Not Even a Grave", description = "Die and see the first grave", points = 1,
    id = 27442, badge = "27844", published = "2015-08-12 2:43:04 PM", modified = "2020-05-28 6:42:24 AM",
    trigger = armorblock() && once(byte(0x00920D) == 255) && once(word(0x009424) <= 153) && 
              never(word(0x00920D) != 255))

achievement(
    title = "That's a Little Grave", description = "Die and see the second grave", points = 5,
    id = 27443, badge = "27847", published = "2015-08-12 2:43:05 PM", modified = "2020-05-28 6:42:22 AM",
    trigger = armorblock() && once(byte(0x00920D) == 255) && never(word(0x009424) >= 512) && 
              once(word(0x009424) >= 256) && never(byte(0x00920D) != 255))

achievement(
    title = "It's Better Than the Previous Ones", description = "Die and see the third grave", points = 10,
    id = 27444, badge = "27846", published = "2015-08-12 2:43:08 PM", modified = "2020-05-28 6:42:03 AM",
    trigger = armorblock() && once(byte(0x00920D) == 255) && never(word(0x009424) >= 768) && 
              once(word(0x009424) >= 512) && never(byte(0x00920D) != 255))

achievement(
    title = "That's What I Call a Grave", description = "Die and see the fourth grave", points = 25,
    id = 27445, badge = "27849", published = "2015-08-12 2:43:09 PM", modified = "2020-05-28 6:42:19 AM",
    trigger = armorblock() && once(byte(0x00920F) == 255) && never(word(0x009424) >= 1280) && 
              once(word(0x009424) >= 768) && never(byte(0x00920F) != 255))

achievement(
    title = "That's a Grave For a Hero", description = "Die and see the last grave", points = 25,
    id = 27446, badge = "27850", published = "2015-08-12 2:43:10 PM", modified = "2020-05-28 6:42:18 AM",
    trigger = armorblock() && once(byte(0x00920F) == 255) && once(word(0x009424) >= 1280) && 
              never(word(0x00920F) != 255))

achievement(
    title = "I Just Wanted To Be Rich", description = "Die 10 times with less than 300 gold in a single playthrough", points = 25,
    id = 27440, badge = "27835", published = "2015-08-12 2:42:52 PM", modified = "2020-05-28 6:42:26 AM",
    trigger = cur_floor() >= 1 && armorblock() && 
              repeated(10, byte(0x00920D) > prev(byte(0x00920D))))
              
function eat_food() => byte(0x941d)

achievement(
    title = "Eat Four Fruits and Vegetables Per Day", description = "99...", points = 10,
    id = 27441, badge = "28002", published = "2015-08-12 2:42:56 PM", modified = "2020-05-28 6:42:25 AM",
    trigger = cur_floor() >= 1 && armorblock() && eat_food() == 0x99 && prev(eat_food()) <= 0x98 && prev(eat_food()) >= 0x80)

achievement(
    title = "I love Using Those Things", description = "Use 100 items (potions_scrolls_canes) in a single playthrough", points = 10,
    id = 27525, badge = "28001", published = "2015-08-12 2:46:49 PM", modified = "2019-10-23 2:58:01 PM",
    trigger = cur_floor() >= 1 && armorblock() && 
              repeated(100, byte(0x009071) > prev(byte(0x009071)))





















)