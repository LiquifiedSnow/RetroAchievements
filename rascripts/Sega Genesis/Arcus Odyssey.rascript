// Arcus Odyssey
// #ID = 485


function screen_id() => byte(0x8083)
screen_intro = 0x01
screen_menu = 0xff
screen_password = 0x03
screen_char = 0x04
screen_gameover = 0x06

function demo_display() => byte(0x8088)
demo_off = 0x00
demo_on = 0x01

function single_player() => byte(0x8285)
one_player = 0x01
two_player = 0x02

function char_select() => byte(0x8219)
Jedda = 0x00
Erin = 0x01
Diana = 0x02
Bead = 0x03

function side_kick() => byte(0x821b)
NoOne = 0x00
Fureya = 0x01
Kahdera = 0x02
Nadiru = 0x03
Vortek = 0x05
Keyami = 0x06

function map_id() => byte(0x828f)
act_one_shrine = 0x01
act_one_boss = 0x02
act_two_start = 0x03
act_two_boss = 0x04
act_three_start = 0x05
act_three_tombs = 0x0a
act_three_treasures = 0x0f
act_three_boss = 0x17
act_four_start = 0x18
act_four_end = 0x19
act_five_start = 0x1c
act_five_end = 0x1f
act_six_start = 0x21
act_six_boss = 0x23
act_seven_start = 0x2a
act_eight_start = 0x32
act_eight_boss = 0x33

function password_protect() => unless(once(byte(0x008083) == 3))

function protection() => demo_display() == 00 && password_protect() && single_player() == 0x01 && prev(screen_id()) >= 0x07
function treasure_chests() => byte(0x813e)

function magic_upgrade_act1() => bit0(0x8301)
achievement ("Magic Booster", "Get blessed with extra magic power [No Passwords]", 1, 
trigger = protection() &&
          magic_upgrade_act1() == 1 &&
          prev(magic_upgrade_act1()) == 0 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Blessed Treasures", "Collect all 6 treasures in act 1 [No Passwords]", 1, 
trigger = protection() &&
          measured(treasure_chests() == 6, map_id() == act_one_shrine) &&
          prev(treasure_chests()) == 5 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Waterfall Passage", "Clear Act 1 [No Passwords]", 5, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_two_start &&
          prev(map_id()) == act_one_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Confiscated Loot", "Collect all 9 treasures in act 2 [No Passwords]", 2, 
trigger = protection() &&
          measured(treasure_chests() == 9,  map_id() == act_two_start) &&
          prev(treasure_chests()) == 8 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Pretty Girl", "Recruit Nadiru [No Passwords]", 1, 
trigger = protection() &&
          map_id() == act_two_start &&
          prev(side_kick()) == NoOne &&
          side_kick() == Nadiru && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Humble Hunter", "Recruit Kahdera [No Passwords]", 1, 
trigger = protection() &&
          map_id() == act_two_start &&
          prev(side_kick()) == NoOne &&
          side_kick() == Kahdera  && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Rewarded", "Recruit Fureya [No Passwords]", 1, 
trigger = protection() &&
          map_id() == act_two_start &&
          prev(side_kick()) == NoOne &&
          side_kick() == Fureya && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Turtle Power", "Clear Act 2 [No Passwords]", 5, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_three_start &&
          prev(map_id()) == act_two_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Ancient Chests", "Collect all 19 treasures in act 3 [No Passwords]", 5, 
trigger = protection() &&
          (map_id() == act_three_tombs ||
          map_id() == act_three_start ||
          map_id() == act_three_treasures ||
          never(byte(0x8083) == 0)) &&
          measured(treasure_chests() == 19, tally(0,map_id() >= 0x05 && map_id() <= 0x17)) &&
          prev(treasure_chests()) == 18
)

achievement ("Chained Down", "Clear Act 3 [No Passwords]", 5, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_four_start &&
          prev(map_id()) == act_three_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Castle Armory", "Collect all 6 treasures in act 4 [No Passwords]", 3, 
trigger = protection() &&
          measured(treasure_chests() == 6, map_id() == act_four_start) &&
          prev(treasure_chests()) == 5 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Revival", "Clear Act 4 [No Passwords]", 5, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_five_start &&
          prev(map_id()) == act_four_end && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Cloudy Drops", "Collect all 8 treasures in act 5 [No Passwords]", 4, 
trigger = protection() &&
          measured(treasure_chests() == 8, map_id() == act_five_start) &&
          prev(treasure_chests()) == 7 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Eminating", "Recruit Vortek [No Passwords]", 1, 
trigger = protection() &&
          map_id() == act_five_start &&
          prev(side_kick()) == NoOne &&
          side_kick() == Vortek && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Unrelenting", "Recruit Keyami [No Passwords]", 1, 
trigger = protection() &&
          map_id() == act_five_start &&
          prev(side_kick()) == NoOne &&
          side_kick() == Keyami && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Sky High", "Clear Act 5 [No Passwords]", 5, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_six_start &&
          prev(map_id()) == act_five_end && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Climber", "Clear Act 6 [No Passwords]", 10, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_seven_start &&
          prev(map_id()) == act_six_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Lost Treasures", "Collect all 8 treasures in act 7 [No Passwords]", 5, 
trigger = protection() &&
          measured(treasure_chests() == 8, map_id() == act_seven_start) &&
          prev(treasure_chests()) == 7 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Ritualistic", "Clear Act 7 [No Passwords]", 10, 
trigger = protection() &&
          screen_id() == screen_menu &&
          map_id() == act_eight_start &&
          prev(map_id()) == act_seven_start && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Rooftop Finds", "Collect all 6 treasures in act 8 [No Passwords]", 5, 
trigger = protection() &&
          measured(treasure_chests() == 6, map_id() == act_eight_start) &&
          prev(treasure_chests()) == 5 && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Eternal Darkness, Jedda", "Beat the game as Jedda [No Passwords]", 10, 
trigger = protection() &&
          char_select() == Jedda &&
          screen_id() == screen_menu &&
          map_id() == act_eight_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Eternal Darkness, Erin", "Beat the game as Erin [No Passwords]", 10, 
trigger = protection() &&
          char_select() == Erin &&
          screen_id() == screen_menu &&
          map_id() == act_eight_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Eternal Darkness, Diana", "Beat the game as Diana [No Passwords]", 10, 
trigger = protection() &&
          char_select() == Diana &&
          screen_id() == screen_menu &&
          map_id() == act_eight_boss && (always_false() || never(byte(0x8083) == 0))
)

achievement ("Eternal Darkness, Bead", "Beat the game as Bead [No Passwords]", 10, 
trigger = protection() &&
          char_select() == Bead &&
          screen_id() == screen_menu &&
          map_id() == act_eight_boss && (always_false() || never(byte(0x8083) == 0))
)

