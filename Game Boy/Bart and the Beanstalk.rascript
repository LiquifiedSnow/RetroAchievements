// Simpsons, The: Bart and the Beanstalk
// #ID = 2560

function current_stage() => byte(0xc034)
stage_beanstalk = 0
stage_clouds = 1
stage_castle = 2
stage_stew = 3
stage_dungeon = 4
stage_chase = 5
stage_skydive = 6
function level_select() => byte(0x00c030)
select_unused = 0
select_used = 1
function coins() => byte(0x00c036)
function coinsget() => prev(coins()) == 1 && coins() == 0
function goal() => byte(0x00c035)
function goalcoins() => prev(goal()) == 1 && goal() == 0
function health() => byte(0x00c12b)
function damageless() =>  unless(prev(health()) != 0x60 && once(health() < prev(health())))
function bosshealth() => byte(0x00c7aa)
function firstbosschallenge() => unless(repeated(14,bosshealth() < prev(bosshealth())))
function firstreset() => never(bosshealth() == 20 && prev(bosshealth()) == 0)
function secondbosschallenge() => unless(repeated(27,bosshealth() < prev(bosshealth())))
function secondreset() => never(bosshealth() == 30 && prev(bosshealth()) == 0)
function firstbossdeath() => once(bosshealth() == 20) && bosshealth() == 0 && prev(bosshealth()) >= 1 && prev(bosshealth()) <= 5
function secondbossdeath() => once(bosshealth() == 30) && bosshealth() == 0 && prev(bosshealth()) >= 1 && prev(bosshealth()) <= 5
function deathreset() => never(health() == 0)
function levelreset() => never(current_stage() > prev(current_stage()))
   

achievement(
    title = "Climbing the Beanstalk", description = "Beat Stage 1", points = 2,
    id = 13230, badge = "165943", published = "2014-09-15 9:01:53 PM", modified = "2020-01-31 10:00:17 AM",
    trigger = prev(current_stage()) == 0 && (current_stage()) == 1 && unless(level_select() == 1))

achievement(
    title = "Up in the Clouds", description = "Beat Stage 2", points = 3,
    id = 13231, badge = "00136", published = "2014-09-15 9:01:54 PM", modified = "2020-01-31 10:00:16 AM",
    trigger = prev(current_stage()) == 1 && (current_stage()) == 2 && unless(level_select() == 1))

achievement(
    title = "Castle Crashers", description = "Beat Stage 3", points = 5,
    id = 13232, badge = "00136", published = "2014-09-15 9:01:56 PM", modified = "2020-01-31 9:59:45 AM",
    trigger = prev(current_stage()) == 2 && (current_stage()) == 3 && unless(level_select() == 1))

achievement(
    title = "Becoming Dinner", description = "Beat Stage 4", points = 5,
    id = 13233, badge = "00136", published = "2014-09-15 9:01:57 PM", modified = "2020-01-31 9:59:46 AM",
    trigger = prev(current_stage()) == 3 && (current_stage()) == 4 && unless(level_select() == 1))

achievement(
    title = "Dungeon Crawler", description = "Beat Stage 5", points = 5,
    id = 13234, badge = "00136", published = "2014-09-15 9:01:58 PM", modified = "2020-01-31 10:00:14 AM",
    trigger = prev(current_stage()) == 4 && (current_stage()) == 5 && unless(level_select() == 1))

achievement(
    title = "Great Chase", description = "Beat Stage 6", points = 10,
    id = 13235, badge = "00136", published = "2014-09-15 9:01:59 PM", modified = "2020-07-05 7:21:37 AM",
    trigger = prev(current_stage()) == 5 && (current_stage()) == 6 && unless(level_select() == 1))

achievement(
    title = "Skydive to Safety", description = "Beat the Game", points = 25,
    id = 13236, badge = "165942", published = "2014-09-15 9:02:00 PM", modified = "2021-04-05 2:53:06 PM",
    trigger = byte(0x00C034) == 6 && prev(byte(0x00C07B)) == 1 && byte(0x00C07B) == 0 && unless(byte(0x00C030) == 1))

achievement("Beanstalk Collector", "Collect all 47 coins in Stage 1", 5,
    trigger = current_stage() == stage_beanstalk && coinsget()
)

achievement("Cloud Collector", "Collect all 37 coins in Stage 2", 5,
    trigger = current_stage() == stage_clouds && coinsget()
)

achievement("Castle Collector", "Collect all 42 coins in Stage 3", 5,
    trigger = current_stage() == stage_castle && coinsget()
)

achievement("Stew Collector", "Collect all 15 coins in Stage 4 without taking damage", 10,
    trigger = current_stage() == stage_stew && goalcoins() && damageless() && (always_false() || deathreset() && levelreset())
)
    
achievement("Dungeon Collector", "Collect all 37 coins in Stage 5", 5,
    trigger = current_stage() == stage_dungeon && coinsget()
)

achievement("Chase Collector", "Collect all 52 coins in Stage 6", 5,
    trigger = current_stage() == stage_chase && coinsget()
)

achievement("Skydive Collector", "Collect all 67 coins in Stage 7 without taking damage", 10,
    trigger = current_stage() == stage_skydive && coinsget() && damageless() && (always_false() || deathreset() && levelreset())
)

achievement ("Whoops, My Finger Slipped", "Beat the boss of Stage 1 without taking damage and hitting him only 13 times or less", 5,
    trigger = current_stage() == stage_beanstalk && firstbossdeath() && firstbosschallenge() && damageless() && (always_false() || deathreset() && firstreset()))

achievement ("Release the Hounds!", "Beat the boss of Stage 2 without taking damage and hitting him only 26 times or less", 10, 
    trigger = current_stage() == stage_clouds && secondbossdeath() && secondbosschallenge() && damageless() && (always_false() || deathreset() && secondreset()))