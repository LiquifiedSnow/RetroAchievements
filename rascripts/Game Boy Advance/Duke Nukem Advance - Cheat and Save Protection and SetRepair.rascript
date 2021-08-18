// Duke Nukem Advance
// #ID = 3701


function level(num) => level() == num

function LevelOn(LevelID)
{
trigger = always_true()
LevelAddress = 0xeac
for i in range(0, 1)
{
  slot = byte(LevelAddress + i * 0)
  trigger = slot == LevelID
}
return trigger
}

function timer() => dword(0xedd)
function cheats() => byte(0x136)
function cheatprotection() => unless(once(prev(cheats()) == 0x07 && cheats() == 0x08))
function enemieskilled() => word(0xec0)
function enemiesinlevel() => word(0xec4)
function secretsfound() => word(0xec8)
function secretsinlevel() => word(0xecc)
function perfectlevels() => enemieskilled() == enemiesinlevel() &&  secretsfound() == secretsinlevel() && difficulty() >= 0x40 && cheatprotection() && (always_false() || prev(enemieskilled()) != enemiesinlevel() && prev(secretsfound()) == secretsinlevel() || (prev(secretsfound()) != secretsinlevel() && prev(enemieskilled()) == enemiesinlevel()) || 0x00 == 0x01 && never(timer() == 0x00))
function difficulty() => byte(0xea8)
function level() => byte(0xeac)
function endstage() => byte(0xe70)
function health() => word(0x114)
function notdead() => health() != 0x00


achievement(
    title = "Area 51!", description = "Reach boss on Area 51 Episode! (Lets Rock or above)", points = 10,
    id = 22027, badge = "21941", published = "2015-03-29 6:47:03 PM", modified = "2020-07-18 3:44:50 AM",
    trigger = prev(level()) == 0x02 && level() == 0x03 && once(endstage() == 0x0f) && difficulty() >= 0x40 && cheatprotection() && (always_false() || never(timer() == 0x00)))         

achievement(
    title = "Clear Egypt!", description = "Complete Egypt Episode! (Lets Rock or above)", points = 10,
    id = 22035, badge = "21942", published = "2015-03-29 6:47:18 PM", modified = "2020-07-18 3:44:51 AM",
    trigger = prev(level()) == 0x06 && level() == 0x07 && once(endstage() == 0x0f) && difficulty() >= 0x40 && cheatprotection() && (always_false() || never(timer() == 0x00))) 

achievement(
    title = "Clear Sydney!", description = "Complete Sydney Episode! (Lets Rock or above)", points = 10,
    id = 22040, badge = "21945", published = "2015-03-29 7:24:26 PM", modified = "2020-07-18 3:44:52 AM",
    trigger = prev(level()) == 0x0a && level() == 0x0b && once(endstage() == 0x0f) && difficulty() >= 0x40 && cheatprotection() && (always_false() || never(timer() == 0x00))) 

achievement(
    title = "Complete the game!", description = "Complete Alien Ship Episode! (Lets Rock or above)", points = 25,
    id = 22060, badge = "21992", published = "2015-03-30 9:14:26 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = repeated(10, byte(0x000EAC) == 18) && never(byte(0x000EAC) != 18) && byte(0x000E70) == 15 && 
              never(byte(0x000E70) != 15) && byte(0x000EA8) >= 64 && never(byte(0x000EA8) < 64) && cheatprotection() && (always_false() || never(timer() == 0x00))
)

achievement(
    title = "Beat the game!", description = "Get 100% kills and secrets in level 4-8 (Lets Rock difficult)", points = 25,
    id = 22061, badge = "21991", published = "2015-03-30 9:14:28 PM", modified = "2020-07-18 3:44:54 AM",
    trigger = LevelOn(18) && perfectlevels()
)

achievement(
    title = "Super Health!", description = "Get 200% HP!", points = 10,
    id = 22064, badge = "22003", published = "2015-03-31 5:29:48 PM", modified = "2015-03-31 5:29:51 PM",
    trigger = byte(0x000114) == 200 && never(byte(0x000114) != 200)
)

achievement(
    title = "Perfect 1-1", description = "Get 100% kills and secrets in level 1-1 (Lets Rock difficult)", points = 10,
    id = 22028, badge = "21943", published = "2015-03-29 6:47:05 PM", modified = "2020-07-18 3:44:55 AM",
    trigger = LevelOn(0) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 1-2", description = "Get 100% kills and secrets in level 1-2 (Lets Rock difficult)", points = 10,
    id = 22029, badge = "21943", published = "2015-03-29 6:47:06 PM", modified = "2020-07-18 3:44:57 AM",
    trigger = LevelOn(1) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 1-3", description = "Get 100% kills and secrets in level 1-3 (Lets Rock difficult)", points = 10,
    id = 22030, badge = "21943", published = "2015-03-29 6:47:09 PM", modified = "2018-12-21 8:02:10 AM",
    trigger = LevelOn(2) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 2-1", description = "Get 100% kills and secrets in level 2-1 (Lets Rock difficult)", points = 10,
    id = 22031, badge = "21943", published = "2015-03-29 6:47:11 PM", modified = "2018-12-21 8:02:11 AM",
    trigger = LevelOn(3) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 2-2", description = "Get 100% kills and secrets in level 2-2 (Lets Rock difficult)", points = 10,
    id = 22032, badge = "21943", published = "2015-03-29 6:47:13 PM", modified = "2018-12-21 8:02:12 AM",
    trigger = LevelOn(4) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 2-3", description = "Get 100% kills and secrets in level 2-3 (Lets Rock difficult)", points = 10,
    id = 22033, badge = "21943", published = "2015-03-29 6:47:14 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(5) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 2-4", description = "Get 100% kills and secrets in level 2-4 (Lets Rock difficult)", points = 10,
    id = 22034, badge = "21943", published = "2015-03-29 6:47:16 PM", modified = "2020-07-18 3:45:00 AM",
    trigger = LevelOn(6) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 3-1", description = "Get 100% kills and secrets in level 3-1 (Lets Rock difficult)", points = 10,
    id = 22036, badge = "21943", published = "2015-03-29 6:47:20 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(7) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 3-2", description = "Get 100% kills and secrets in level 3-2 (Lets Rock difficult)", points = 10,
    id = 22037, badge = "21943", published = "2015-03-29 6:47:24 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(8) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 3-3", description = "Get 100% kills and secrets in level 3-3 (Lets Rock difficult)", points = 10,
    id = 22038, badge = "21943", published = "2015-03-29 7:24:22 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(9) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 3-4", description = "Get 100% kills and secrets in level 3-4 (Lets Rock difficult)", points = 10,
    id = 22039, badge = "21943", published = "2015-03-29 7:24:24 PM", modified = "2020-07-18 3:45:01 AM",
    trigger = LevelOn(10) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-1", description = "Get 100% kills and secrets in level 4-1 (Lets Rock difficult)", points = 10,
    id = 22054, badge = "21943", published = "2015-03-30 9:14:15 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(11) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-2", description = "Get 100% kills and secrets in level 4-2 (Lets Rock difficult)", points = 10,
    id = 22055, badge = "21943", published = "2015-03-30 9:14:16 PM", modified = "2019-10-21 9:20:01 AM",
    trigger = LevelOn(12) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-3", description = "Get 100% kills and secrets in level 4-3 (Lets Rock difficult)", points = 10,
    id = 22056, badge = "21943", published = "2015-03-30 9:14:18 PM", modified = "2020-07-18 3:45:04 AM",
    trigger = LevelOn(13) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-4", description = "Get 100% kills and secrets in level 4-4 (Lets Rock difficult)", points = 10,
    id = 22057, badge = "21943", published = "2015-03-30 9:14:20 PM", modified = "2020-07-18 3:45:05 AM",
    trigger = LevelOn(14) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-5", description = "Get 100% kills and secrets in level 4-5 (Lets Rock difficult)", points = 10,
    id = 22058, badge = "21943", published = "2015-03-30 9:14:22 PM", modified = "2020-07-18 3:45:06 AM",
    trigger = LevelOn(15) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-6", description = "Get 100% kills and secrets in level 4-6 (Lets Rock difficult)", points = 10,
    id = 22063, badge = "21943", published = "2015-03-31 2:51:09 PM", modified = "2020-07-18 3:45:08 AM",
    trigger = LevelOn(16) && notdead() && perfectlevels()
)

achievement(
    title = "Perfect 4-7", description = "Get 100% kills and secrets in level 4-7 (Lets Rock difficult)", points = 10,
    id = 22059, badge = "21989", published = "2015-03-30 9:14:25 PM", modified = "2020-07-18 3:45:09 AM",
    trigger = LevelOn(17) && notdead() && perfectlevels()
)

achievement(
    title = "Duke Speedrun", description = "Complete 1-1 in par time o less and with 1 or more kills!(Lets Rock difficult)", points = 5,
    id = 22062, badge = "22002", published = "2015-03-31 2:07:28 PM", modified = "2015-03-31 6:06:26 PM",
    trigger = byte(0x000EDD) <= 9 && never(byte(0x000EDD) > 9) && byte(0x000EDC) <= 143 && never(byte(0x000EDC) > 143) && 
              byte(0x000EA8) == 64 && never(byte(0x000EA8) != 64) && byte(0x000EAC) == 0 && byte(0x000E70) == 15 && 
              never(byte(0x000E70) != 15) && byte(0x000EC0) >= 1 && never(byte(0x000EC0) < 1)
)