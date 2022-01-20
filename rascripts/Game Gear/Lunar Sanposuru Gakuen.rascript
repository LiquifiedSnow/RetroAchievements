// Lunar: Sanposuru Gakuen
// #ID = 12629

event_flag = {
"chapter2_boys":bit0(0x24a),
"chapter2_triple":bit2(0x24a),
"chapter2_plant":bit6(0x24a),
"chapter3_singer":bit1(0x249),
"chapter4_bstone":bit5(0x248),
"chapter4_escape":bit4(0x249),
"chapter6_squeeze":bit0(0x24a),
"chapter7_weak":bit2(0x249),
"chapter8_attitude":bit4(0x248),
"chapter9_lizard":bit4(0x248),
"chapter9_zigan":bit4(0x24b),
"chapter9_beast":bit2(0x24b),
"chapter9_imp":bit2(0x249),
"chapter10_barua":bit5(0x248),
"chapter11_barua":bit0(0x249),
"chapter12_dead":bit7(0x249),
"chapter12_end":bit0(0x249),
"game_over":bit4(0x24b)
}

function map_id() => byte(0x210)
town_centre = 0x11
vile_tribe_castle = 0x60
the_quad = 0x1d
coast_cavern1 = 0x1e
coast_cavern2 = 0x23
office2 = 0x0b
terena_house = 0xe
dadis_lab1 = 0x01
dadis_dun1 = 0x26
dadis_dun2 = 0x78
town2 = 0x50
school_dorm = 0x07
winding_dungeon = 0x43
quote_mansion = 0x09
shell_town = 0x1c
gaze_tower = 0x5f
vile_castle = 0x4a
lulu_forest = 0x2b
elder_house = 0x61
men_dun = 0x3c
dorm_hall = 0x04
glen_dun = 0x18
vtribe_cast = 0x49
star_tower = 0x31
the_office = 0x0c
v_tribe = 0x33
end_game = 0x44



function chapter_id() => byte(0x21e)
chapter_one = 0x00 // The Invitation
chapter_two = 0x01 // An Entrance Exam?
chapter_three = 0x02 // Find a Teacher!
chapter_four = 0x03 // Blitz Tactics
chapter_five = 0x04 // Butterflies Dancing In the School Dorm
chapter_six = 0x05 // Shell, the Island of Arts
chapter_seven = 0x06 // Blitz Wedding
chapter_eight = 0x07 // Mysterious Freshman
chapter_nine = 0x08 // It's a Tough Life For a Scholarship Student
chapter_ten = 0x09 // Demon Castle D
chapter_eleven = 0x0a // Fear of the Blue Dragon
chapter_twelve = 0x0b // Farewell To Our Magic School

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0x220
for i in range(0, 31)
{
  slot = byte(inventoryBaseAddr + i * 1)
  trigger = trigger || (prev(slot) != itemId && slot == itemId)
}
return trigger
}

function event_cleared(chapter,map,event)
{
    return chapter_id() == chapter &&
        map_id() == map &&
        event_flag[event] > prev(event_flag[event])
}

achievement ("Wrinkly Old Man", "[Chapter 1] The invitation completed", 0,
trigger = map_id() == vile_tribe_castle && chapter_id() == chapter_two && prev(chapter_id()) == chapter_one)

achievement ("Boys Drool", "[Chapter 2] Teach the boys a lesson", 5,
trigger = event_cleared(chapter_two,the_quad,"chapter2_boys"))

achievement ("Triple Threat", "[Chapter 2] Defeat Rick, Kule & Ant in Coastal Cavern", 5,
trigger = event_cleared(chapter_two,coast_cavern1,"chapter2_triple"))

achievement ("Man Eater", "[Chapter 2] Defeat the Treant in Coastal Forest", 5,
trigger = event_cleared(chapter_two,office2,"chapter2_plant"))

function ch2_chest() => sum_of(range(0,3), b => bit(b,0x24d))
achievement ("Forest Dweller", "[Chapter 2] Loot all treasures", 1,
trigger = measured(ch2_chest() == 4,chapter_id() == chapter_two) && prev(ch2_chest()) == 3)

achievement ("Congratulations!", "[Chapter 2] An Entrance Exam? completed", 1,
trigger = map_id() == office2 && chapter_id() == chapter_three && prev(chapter_id()) == chapter_two)

achievement ("Singing Voice", "[Chapter 3] Music teacher gives you her honest opinion", 1,
trigger = event_cleared(chapter_three,terena_house,"chapter3_singer"))

achievement ("Space Head", "[Chapter 3] Find a Teacher! completed", 5,
trigger = map_id() == dadis_lab1 && chapter_id() == chapter_four && prev(chapter_id()) == chapter_three)

achievement ("Bold as Brass", "[Chapter 4] Obtain Brass Stone", 5,
trigger = event_cleared(chapter_four,dadis_dun1,"chapter4_bstone"))

function ch4_chest() => sum_of(range(2,5), b => bit(b,0x24c))
achievement ("Cave Dweller", "[Chapter 4] Loot all treasures", 1,
trigger = measured(ch4_chest() == 4,chapter_id() == chapter_four) && prev(ch4_chest()) == 3)

achievement ("Close Call", "[Chapter 4] Blitz Tactics complete", 5,
trigger = map_id() == town2 && chapter_id() == chapter_five && prev(chapter_id()) == chapter_four)

function ch5_chest() => sum_of(range(0,7), b => bit(b,0x24c))
achievement ("Lost City of Gooooold", "[Chapter 5] Loot all treasures", 1,
trigger = measured(ch5_chest() == 8,chapter_id() == chapter_five) && prev(ch5_chest()) == 7)

achievement ("Wings of a Butterfly", "[Chapter 5] Butterflies Dancing In the School Dorm complete", 5,
trigger = map_id() == school_dorm && chapter_id() == chapter_six && prev(chapter_id()) == chapter_five)

achievement ("Cousin it", "[Chapter 6] Defeat Hair and obtain final hair item", 5,
trigger = chapter_id() == chapter_six && map_id() == winding_dungeon && ItemObtained(0x26))

achievement ("Eye See You", "[Chapter 6] Defeat Sight and obtain the final eye item)", 5,
trigger = chapter_id() == chapter_six && map_id() == winding_dungeon && ItemObtained(0x21))

achievement ("Strong Armed", "[Chapter 6] Defeat Arm and obtain the final arm item)", 5,
trigger = chapter_id() == chapter_six && map_id() == winding_dungeon && ItemObtained(0x27))

achievement ("Main Squeeze", "[Chapter 6] Defeat Squeeze and return to Shell", 5,
trigger = event_cleared(chapter_six,winding_dungeon,"chapter6_squeeze"))

achievement ("Just the Beginning", "[Chapter 6] Shell, the Island of Arts complete", 5,
trigger = map_id() == shell_town && chapter_id() == chapter_seven && prev(chapter_id()) == chapter_six)

achievement ("Weaklings", "[Chapter 7] Open the door in the Coastal Cavern", 2,
trigger = event_cleared(chapter_seven,coast_cavern1,"chapter7_weak"))

function ch7_chest() => sum_of(range(0,7), b => bit(b,0x24c))+sum_of(range(0,1), b => bit(b,0x24d))+sum_of(range(4,7), b => bit(b,0x24d))
achievement ("Lost Halls", "[Chapter 7] Loot all treasures", 5,
trigger = measured(ch7_chest() == 14,chapter_id() == chapter_seven) && prev(ch7_chest()) == 13)

achievement ("Double Stacked", "[Chapter 7] Blitz Wedding complete", 5 ,
trigger = map_id() == coast_cavern2 && chapter_id() == chapter_eight && prev(chapter_id()) == chapter_seven)

achievement ("Attitude Problem", "[Chapter 8] Defeat Winn and approach the castle", 5,
trigger = event_cleared(chapter_eight,gaze_tower,"chapter8_attitude"))

function ch8_chest() => sum_of(range(1,3), b => bit(b,0x24c))
achievement ("Mysterious Halls", "[Chapter 8] Loot all treasures", 1,
trigger = measured(ch8_chest() == 3,chapter_id() == chapter_eight) && prev(ch8_chest()) == 2)

achievement ("Still Alive", "[Chapter 8] Mysterious Freshman complete", 5 ,
trigger = map_id() == vile_castle && chapter_id() == chapter_nine && prev(chapter_id()) == chapter_eight)

achievement ("Fried Lizard", "[Chapter 9] Defeat Lizardman and watch the scene", 5,
trigger = event_cleared(chapter_nine,coast_cavern1,"chapter9_lizard"))

achievement ("Fu-Sion-Ha", "[Chapter 9] Defeat Zigan and watch the scene", 5,
trigger = event_cleared(chapter_nine,elder_house,"chapter9_zigan"))

achievement ("Beastly Boy", "[Chapter 9] Defeat Gear and watch the scene", 5,
trigger = event_cleared(chapter_nine,dorm_hall,"chapter9_beast"))

achievement ("Impish", "[Chapter 9] Defeat Imp and watch the scene", 5,
trigger = event_cleared(chapter_nine,dorm_hall,"chapter9_imp"))

function ch9_chest() => sum_of(range(0,3), b => bit(b,0x24c))+sum_of(range(4,7), b => bit(b,0x24d))
achievement ("Cavernous Keeps", "[Chapter 9] Loot all treasures", 2,
trigger = measured(ch9_chest() == 8,chapter_id() == chapter_nine) && prev(ch9_chest()) == 7)

achievement ("Double Down", "[Chapter 9] It's a Tough Life For a Scholarship Student complete", 5 ,
trigger = map_id() == glen_dun && chapter_id() == chapter_ten && prev(chapter_id()) == chapter_nine)

function ch10_chest() => bit0(0x24c)+bit2(0x24c)
achievement ("Demon Armory", "[Chapter 10] Loot all treasures", 1,
trigger = measured(ch10_chest() == 2,chapter_id() == chapter_ten) && prev(ch10_chest()) == 1)

achievement ("Absurd", "[Chapter 10] Demon Castle D complete", 5,
trigger = map_id() == vtribe_cast && chapter_id() == chapter_eleven && prev(chapter_id()) == chapter_ten)

achievement ("Rematch", "[Chapter 11] Defeat Barua and watch the scene", 5,
trigger = event_cleared(chapter_eleven,star_tower,"chapter11_barua"))

function ch11_chest() => sum_of(range(0,7), b => bit(b,0x24c))
achievement ("Beacon of Gold", "[Chapter 11] Loot all treasures", 2,
trigger = measured(ch11_chest() == 8,chapter_id() == chapter_eleven) && prev(ch11_chest()) == 7)

achievement ("Dragon of Blue", "[Chapter 11] Fear of the Blue Dragon", 10,
trigger = map_id() == the_office && chapter_id() == chapter_twelve && prev(chapter_id()) == chapter_eleven)

function ch12_chest() => sum_of(range(0,7), b => bit(b,0x24c))+sum_of(range(0,1), b => bit(b,0x24d))
achievement ("Demon Hoard", "[Chapter 12] Loot all treasures", 5,
trigger = measured(ch12_chest() == 10, chapter_id() == chapter_twelve) && prev(ch12_chest()) == 9)

achievement ("Star Pupil", "[Chapter 12] Defeat Barua Star and watch the scene", 25,
trigger = event_cleared(chapter_twelve,vtribe_cast,"chapter12_end"))

achievement ("Graduation", "[Chapter 12] Graduation Day!", 1,
trigger = event_cleared(chapter_twelve,end_game,"game_over"))