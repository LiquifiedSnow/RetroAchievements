// TMNT
// #ID = 2155


function diff_select() => byte(0x778b)
diff_easy = 0x00
diff_norm = 0x01
diff_hard = 0x02

function stage_prog() => byte(0x77d1)
stage_one_boss = 0x03
stage_two_boss = 0x05
stage_three_boss = 0x03
stage_four_boss = 0x03
stage_five_boss = 0x03
stage_six_boss = 0x02
stage_seven_boss = 0x02
april_game = 0x02
splinter_game = 0x06

function stage_select() => byte(0x77d2)
stage_one = 0x00
stage_two = 0x01
stage_three = 0x02
stage_four = 0x03
stage_five = 0x04
stage_six = 0x05
stage_seven = 0x06

function act_clear() => byte(0x7bfe) == 1 && prev(byte(0x7bfe)) == 0
function act_done() => byte(0x7bfe) == 1
function tur_lives() => byte(0x77ec)
function tur_health() => byte(0x77ea) != 0

function save_protect() => diff_select() >= diff_norm && tur_health()

function act_one_done() => stage_select() == stage_one && stage_prog() == stage_one_boss && act_clear()
achievement ("Act 1: Hun", "[>= Normal] Act 1 Cleared", 5, 
trigger = save_protect() && act_one_done())

function act_two_done() => stage_select() == stage_two && stage_prog() == stage_two_boss &&  act_clear()
achievement ("Act 2: Karai", "[>= Normal] Act 2 Cleared", 5, 
trigger = save_protect() && act_two_done())

function act_three_done() => stage_select() == stage_three && stage_prog() == stage_three_boss &&  act_clear()
achievement ("Act 3: Jersey Devil", "[>= Normal] Act 3 Cleared", 5, 
trigger = save_protect() && act_three_done())

function act_four_done() => stage_select() == stage_four && stage_prog() == stage_four_boss &&  act_clear()
achievement ("Act 4: Monster Containment Unit", "[>= Normal] Act 4 Cleared", 5, 
trigger = save_protect() && act_four_done())

function act_five_done() => stage_select() == stage_five && stage_prog() == stage_five_boss &&  act_clear()
achievement ("Act 5: Max Winters", "[>= Normal] Act 5 Cleared", 5, 
trigger = save_protect() && act_five_done())

function act_six_done() => stage_select() == stage_six && stage_prog() == stage_six_boss &&  act_clear()
function fish_thrown() => byte(0x4bac) == 0x18
achievement ("Act 6: Cretaco", "[>= Normal] Act 6 Cleared", 5, 
trigger = diff_select() >= diff_norm && stage_select() == stage_six && act_done() && prev(byte(0x7bfe)) != 1)

function act_seven_done() => stage_select() == stage_seven && stage_prog() == stage_seven_boss &&  act_clear()
achievement ("Act 7: General Aguila", "[>= Normal] Act 7 Cleared", 5, 
trigger = save_protect() && act_seven_done())

function spinter_challenge() => prev(stage_prog()) == 0x06 && bit5(0x7788) > prev(bit5(0x7788))
achievement ("Juggle Forever", "[>= Normal] Complete level 2 of Splinter's Challenge", 10, 
trigger = save_protect() && spinter_challenge())

function casey_mask_bronze() => bit0(0x7778) > prev(bit0(0x7778))
function casey_mask_silver() => bit0(0x777a) > prev(bit0(0x777a))
function casey_mask_gold() => bit0(0x777c) > prev(bit0(0x777c))
achievement ("Casey's Mask Bronze", "[>= Normal] Killed 75 Thugs and clear an Act", 3, 
trigger = save_protect() &&  casey_mask_bronze())

achievement ("Casey's Mask Silver", "[>= Normal] Killed 250 Thugs and clear an Act", 5, 
trigger = save_protect() && casey_mask_silver())

achievement ("Casey's Mask Gold", "[>= Normal] Killed 500 Thugs and clear an Act", 10, 
trigger = save_protect() && casey_mask_gold())

function kurai_shuriken_bronze() => bit1(0x7778) > prev(bit1(0x7778))
function kurai_shuriken_silver() => bit1(0x777a) > prev(bit1(0x7778a))
function kurai_shuriken_gold() => bit1(0x777c) > prev(bit1(0x777c))
achievement ("Kunai's Shuriken Bronze", "[>= Normal] Killed 75 Ninjas and clear an Act", 3, 
trigger = save_protect() && kurai_shuriken_bronze())

achievement ("Kunai's Shuriken Silver", "[>= Normal] Killed 250 Ninjas and clear an Act", 5, 
trigger = act_done() && kurai_shuriken_gold())

achievement ("Kunai's Shuriken Gold", "[>= Normal] Killed 500 Ninjas and clear an Act", 10, 
trigger = act_done() && casey_mask_gold())

function hun_bazooka_bronze() => bit2(0x7778) > prev(bit2(0x7778))
function hun_bazooka_silver() => bit2(0x777a) > prev(bit2(0x777a))
function hun_bazooka_gold() => bit2(0x777c) > prev(bit2(0x777c))
achievement ("Hun's Bazooka Bronze", "[>= Normal] Destroy 50 objects and clear an act", 3, 
trigger = save_protect() && hun_bazooka_bronze())

achievement ("Hun's Bazooka Silver", "[>= Normal] Destroy 100 objects and clear an act", 5, 
trigger = save_protect() && hun_bazooka_silver())

achievement ("Hun's Bazooka Gold", "[>= Normal] Destroy 250 objects and clear an act", 10, 
trigger = save_protect() && hun_bazooka_gold())

function shredder_helmet_bronze() => bit3(0x7778) > prev(bit3(0x7778))
function shredder_helmet_silver() => bit3(0x777a) > prev(bit3(0x777a))
function shredder_helmet_gold() => bit3(0x777c) > prev(bit3(0x777c))
achievement ("Shredder's Helmet Bronze", "[>= Normal] Obtain 10 hit combo and clear an act", 3, 
trigger = save_protect() && shredder_helmet_bronze())

achievement ("Shredder's Helmet Silver", "[>= Normal] Obtain 25 hit combo and clear an act", 5, 
trigger = save_protect() && shredder_helmet_silver())

achievement ("Shredder's Helmet Gold", "[>= Normal] Obtain 50 hit combo and clear an act", 10, 
trigger = save_protect() && shredder_helmet_gold())

function mutagen_capsule_bronze() => bit4(0x7778) > prev(bit4(0x7778))
function mutagen_capsule_silver() => bit4(0x777a) > prev(bit4(0x777a))
function mutagen_capsule_gold() => bit4(0x777c) > prev(bit4(0x777c))
achievement ("Mutagen Capsule Bronze", "[>= Normal] Clear Act 1, 2 or 3 without losing a life", 3, 
trigger = save_protect() && mutagen_capsule_bronze())

achievement ("Mutagen Capsule Silver", "[>= Normal] Clear Act 4, 5 or 6 without losing a life", 5, 
trigger = save_protect() && mutagen_capsule_silver())

achievement ("Mutagen Capsule Gold", "[>= Normal] Clear Act 7 without losing a life", 10, 
trigger = save_protect() && mutagen_capsule_gold())

function yoshi_statue_bronze() => bit5(0x7778) > prev(bit5(0x7778))
function yoshi_statue_silver() => bit5(0x777a) > prev(bit5(0x777a))
function yoshi_statue_gold() => bit5(0x777c) > prev(bit5(0x777c))
achievement ("Hamatao Yoshi Statue Bronze", "[>= Normal] Total combined high scores >= 125,000 when clearing an act", 3, 
trigger = save_protect() && yoshi_statue_bronze())

achievement ("Hamatao Yoshi Statue Silver", "[>= Normal] Total combined high scores >= 250,000 when clearing an act", 5, 
trigger = save_protect() && yoshi_statue_silver())

achievement ("Hamatao Yoshi Statue Gold", "[>= Normal] Total combined high scores >= 375,000 when clearing an act", 10, 
trigger = save_protect() && yoshi_statue_gold())

function time_scepter_bronze() => bit6(0x7778)  > prev(bit6(0x7778))
function time_scepter_silver() => bit6(0x777a) > prev(bit6(0x777a))
function time_scepter_gold() => bit6(0x777c) > prev(bit6(0x777c))
achievement ("Time Scepter Bronze", "[>= Normal] Finish all acts in less than 3 hours", 3, 
trigger = save_protect() && time_scepter_bronze())

achievement ("Time Scepter Silver", "[>= Normal] Finish all acts in less than 2 hours", 5, 
trigger = save_protect() && time_scepter_silver())

achievement ("Time Scepter Gold", "[>= Normal] Finish all acts in less than 1 hours", 10, 
trigger = save_protect() && time_scepter_gold())

function comic_book_bronze() => bit7(0x7778) > prev(bit7(0x7778))
function comic_book_silver() => bit7(0x777a) > prev(bit7(0x777a))
function comic_book_gold() => bit7(0x777c) > prev(bit7(0x777c))
achievement ("TMNT Comic Book Issue 1 Bronze", "[>= Normal] Obtain $1000 and clear an act", 3, 
trigger = save_protect() && comic_book_bronze())

achievement ("TMNT Comic Book Issue 1 Silver", "[>= Normal] Obtain $2500 and clear an act", 5, 
trigger = save_protect() && comic_book_silver())

achievement ("TMNT Comic Book Issue 1 Gold", "[>= Normal] Obtain $5000 and clear an act", 10, 
trigger = save_protect() && comic_book_gold())

function mouser_trophy_bronze() => bit0(0x7779) > prev(bit0(0x7779))
function mouser_trophy_silver() => bit0(0x777b) > prev(bit0(0x777b))
function mouser_trophy_gold() => bit0(0x777d) > prev(bit0(0x777d))
achievement ("Mouser Bronze", "[>= Normal] Pickup one of every health pickup and clear an act", 3, 
trigger = save_protect() && mouser_trophy_bronze())

achievement ("Mouser Silver", "[>= Normal] Pickup two of every health pickup and clear an act", 5, 
trigger = save_protect() && mouser_trophy_silver())

achievement ("Mouser Gold", "[>= Normal] Pickup five of every health pickup and clear an act", 10, 
trigger = save_protect() && mouser_trophy_gold())

function casey_golfbag_gold() => bit1(0x777d) > prev(bit1(0x777d))
achievement ("Casey's Golf Bag", "[>= Normal] Compelte all of Casey's mini games and clear an act", 10, 
trigger = save_protect() && casey_golfbag_gold())

function april_suit_gold() => bit2(0x777d) > prev(bit2(0x777d))
achievement ("April's Ninja Suit", "[>= Normal] Complete all of April's mini games and clear an act", 10, 
trigger = save_protect() && april_suit_gold())

function sword_tengu_bronze() => bit3(0x7779) > prev(bit3(0x7779))
function sword_tengu_silver() => bit3(0x777b) > prev(bit3(0x777b))
function sword_tengu_gold() => bit3(0x777d) > prev(bit3(0x777d))
achievement ("Sword of Tengu Bronze", "Clear the game on >= Easy", 3, 
trigger = act_done() && sword_tengu_bronze())

achievement ("Sword of Tengu Silver", "Clear the game on >= Normal", 5, 
trigger = act_done() && sword_tengu_silver())

achievement ("Sword of Tengu Gold", "Clear the game on Hard", 10, 
trigger = act_done() && sword_tengu_gold())
