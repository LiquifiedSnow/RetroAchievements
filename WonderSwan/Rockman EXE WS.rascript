// Rockman EXE WS | Mega Man Battle Network Wonderswan 
// #ID = 14596

function level() => byte(0xbc4)
level1 = 0x00
level2 = 0x01
level3 = 0x02
level4 = 0x03
level5 = 0x04
level6 = 0x05
level7 = 0x06
bossrush = 0x07

//End of Bossrush screen = 0x0b Gospel fight

function screen() => byte(0xbc5)
flameman_stage1 = 0x0a
electman_stage2 = 0x07
colorman_stage2 = 0x0b
pharaohman_stage3 = 0x0d
magicman_stage3 = 0x05
bombman_stage4 = 0x07
snakeman_stage4 = 0x0c
firemanv2_stage5 = 0x07
elecmanv2_stage5 = 0x0d
protoman_stage6 = 0x08
lifevirus_stage6 = 0x0c
gospel_stage7 = 0x05
function health() => byte(0xc3d)
function lives() => byte(0x113b)
function difficulty() => byte(0x114e)
Easy = 0x00
Medium = 0x01
Hard = 0x02
ExHard = 0x03
function state() => byte(0x11a8)
playing = 0x06
menus = 0x0b
function chip1() => byte(0xbff)
sword = 0x28
function chip2() => byte(0xc00)
sword = 0x28
function chip3() => byte(0xc01)
sword = 0x28
function chip4() => byte(0xc02)
sword = 0x28
function chipless() => unless(once(chip1()+chip2()+chip3()+chip4()+styleusing() != 0x00))
function chiplessbossrush() => unless(once(chip1()+chip2()+chip3()+chip4()+styleusing() != 0x00))
function healthreset() => always_false() || never(health() == 0x00)
function styleusing() => byte(0xbfc)
none = 0x00
function stylepause() => unless(once(styleusing() > 0x00))

function heatguts() => bit1(0xbfe)
function electeam() => bit3(0xbfe)

//Battle Chips
function cannon() => byte(0xc0c)
function hicannon() => byte(0xc0d)
function mcannon() => byte(0xc0e)
function minibomb() => byte(0xc0f)
function lilbomb() => byte(0xc10)
function crossbomb() => byte(0xc11)
function bigbomb() => byte(0xc12)
function sword() => byte(0xc13)
function widesword() => byte(0xc14)
function longsword() => byte(0xc15)
function flamesword() => byte(0xc16)
function aquasword() => byte(0xc17)
function elecsword() => byte(0xc18)
function shockwave() => byte(0xc19)
function sonicwave() => byte(0xc1a)
function dynawave() => byte(0xc1b)
function quake1() => byte(0xc1c)
function quake2() => byte(0xc1d)
function quake3() => byte(0xc1e)
function gutspunch() => byte(0xc1f)
function coldpunch() => byte(0xc20)
function dashattack() => byte(0xc21)
function burningbody() => byte(0xc22)
function recovery20() => byte(0xc23)
function recovery60() => byte(0xc24)
function atk20() => byte(0xc25)
function atk40() => byte(0xc26)
function invis() => byte(0xc27)
function areagrab() => byte(0xc28)
function airshoes() => byte(0xc29)
function undershirt() => byte(0xc2a)

function allchips()
{
    trigger = always_false()
    chipBaseAddr = 0xc0c
    for i in range(0, 30)
{
    slot = byte(chipBaseAddr + i * 1)
    trigger = trigger || prev(slot) == 0
}
return trigger
}

function allchipsinventory()
{
    trigger = always_true()
    chipBaseAddr = 0xc0c
    for i in range(0, 30)
{
    slot = byte(chipBaseAddr + i * 1)
    trigger = trigger && (slot) >= 1
}
return trigger
}

function megaprotochallenge() => unless(once(chip1() != sword && chip2() != sword && chip3() != sword && chip4() != sword))
function megaprotochallengebossrush() => chip1() != sword && chip2() != sword && chip3() != sword && chip4() != sword
function megaresetv2fights() => always_false() || never(coordreset() == 0x00)

function bosshealth1() => byte(0x1086e)
function bosshealth2() => byte(0x1086d)
function bossdeathflag() => bosshealth1() == 0x00 && prev(bosshealth2()) >= 0x01 && bosshealth2() == 0x00
function normalbossdeath() => difficulty() == Easy && bossdeathflag()
function damageless() => unless(once(health() < prev(health())))
function flamemanstage1reset() => always_false() || never(screen() == 0x09)
function elecmanstage2reset() => always_false() || never(screen() == 0x06)
function colormanstage2reset() => always_false() || never(screen() == 0x0a)
function magicmanstage3reset() => always_false() || never(screen() == 0x05)
function pharaohmanstage3reset() => always_false() || never(screen() == 0x0c)
function bombmanstage4reset() => always_false() || never(screen() == 0x06)
function snakemanstage4reset() => always_false() || never(screen() == 0x0b)
function protomanstage6reset() => always_false() || never(screen() == 0x07)
function lifevirusstage6reset() => always_false() || never(screen() == 0x0b)
function gospelstage6reset() => always_false() || never(screen() == 0x04)

function livesreset() => always_false() || never(lives() < prev(lives()))
function coordreset() => always_false() || never(byte(0xbe6) == 0x00)
function protomodebossrushpause1() => unless(once(megaprotochallengebossrush() && bosshealth1() < prev(bosshealth1())))
function protomodebossrushpause2() => unless(once(megaprotochallengebossrush() && bosshealth2() < prev(bosshealth2())))

function bossrushbeateasy() => difficulty() >= Easy && level() == bossrush && screen() == 0x0b && bossdeathflag()
function bossrushbeatmed() => difficulty() >= Medium && level() == bossrush && screen() == 0x0b && bossdeathflag()
function bossrushbeathard() => difficulty() >= Hard && level() == bossrush && screen() == 0x0b && bossdeathflag()
function bossrushbeatexhard() => difficulty() == ExHard && level() == bossrush && screen() == 0x0c && bossdeathflag()
                              
achievement ("Flame On!", "Defeat FireMan", 5, id = 155335, badge = "174933",
    trigger = level() == level1 &&
              screen() == flameman_stage1 &&
              normalbossdeath())             
    
achievement ("Flaming Hot Buster [m]", "Defeat FireMan buster only no chips or styles equipped", 10, id = 155336, badge = "174934",
    trigger = level() == level1 &&
              screen() == flameman_stage1 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              flamemanstage1reset())  
              
achievement ("ProtoMan Challenge: FireMan", "Defeat FireMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155337, badge = "174935",
    trigger = level() == level1 &&
              screen() == flameman_stage1 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              flamemanstage1reset())
              
achievement ("Heat Stroke [m]", "Defeat FireMan without taking damage", 10, id = 155338, badge = "174936",
    trigger = level() == level1 &&
              screen() == flameman_stage1 &&
              normalbossdeath() &&
              damageless() && 
              flamemanstage1reset())
              
achievement ("First Aid", "Find the Recovery60 chip in stage 1", 1, id = 155339, badge = "174937",
    trigger = level() == level1 &&
              screen() == 0x07 &&
              recovery60() > prev(recovery60()))
    
achievement ("Static Shock", "Defeat ElecMan", 5, id = 155340, badge = "174938",
    trigger = level() == level2 &&
              screen() == electman_stage2 &&
              normalbossdeath())
              
achievement ("Shock Therapy [m]", "Defeat ElecMan buster only no chips or styles equipped", 10, id = 155341, badge = "174939",
    trigger = level() == level2 &&
              screen() == electman_stage2 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              elecmanstage2reset())  
              
achievement ("ProtoMan Challenge: ElecMan", "Defeat ElecMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155342, badge = "174940",
    trigger = level() == level2 &&
              screen() == electman_stage2 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              elecmanstage2reset())
              
achievement ("Electroshock [m]", "Defeat ElecMan without taking damage", 10, id = 155343, badge = "174941",
    trigger = level() == level2 &&
              screen() == electman_stage2 &&
              normalbossdeath() &&
              damageless() && 
              elecmanstage2reset())    
              
achievement ("Find Freedom on This Canvas -Bob Ross", "Defeat ColorMan", 5, id = 155344, badge = "174942",
    trigger = level() == level2 &&
              screen() == colorman_stage2 &&
              normalbossdeath())
              
achievement ("I Like to Beat the Brush -Bob Ross [m]", "Defeat ColorMan buster only no chips or styles equipped", 10, id = 155345, badge = "174943",
    trigger = level() == level2 &&
              screen() == colorman_stage2 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              colormanstage2reset()) 
              
achievement ("ProtoMan Challenge: ColorMan", "Defeat ColorMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155346, badge = "174944",
    trigger = level() == level2 &&
              screen() == colorman_stage2 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              colormanstage2reset())
              
achievement ("Colourless Energy [m]", "Defeat ColorMan without taking damage", 10, id = 155347, badge = "174945",
    trigger = level() == level2 &&
              screen() == colorman_stage2 &&
              normalbossdeath() &&
              damageless() && 
              colormanstage2reset())
              
achievement ("Speed Force", "Find the AreaGrab chip in stage 2", 1, id = 155348, badge = "174946",
    trigger = level() == level2 &&
              screen() == 0x0c &&
              areagrab() > prev(areagrab()))
              
achievement ("Ice Make, Fist", "Find the ColdPunch chip in stage 2", 1, id = 155349, badge = "174947",
    trigger = level() == level2 &&
              screen() == 0x0d &&
              coldpunch() > prev(coldpunch()))
              
achievement ("Forward, Forward", "Find the DashAttack chip in stage 2", 1, id = 155350, badge = "174948",
    trigger = level() == level2 &&
              screen() == 0x0e &&
              dashattack() > prev(dashattack()))
              
achievement ("Got Your Nose!", "Defeat MagicMan", 5, id = 155352, badge = "174949",
    trigger = level() == level3 &&
              screen() == magicman_stage3 &&
              normalbossdeath())
              
achievement ("Magic Missile [m]", "Defeat MagicMan buster only no chips or styles equipped", 10, id = 155353, badge = "174950",
    trigger = level() == level3 &&
              screen() == magicman_stage3 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              coordreset())  
              
achievement ("ProtoMan Challenge: MagicMan", "Defeat MagicMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155354, badge = "174951",
    trigger = level() == level3 &&
              screen() == magicman_stage3 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              coordreset())              
              
achievement ("Magical Barrier [m]", "Defeat MagicMan without taking damage", 10, id = 155355, badge = "174952",
    trigger = level() == level3 &&
              screen() == magicman_stage3 &&
              normalbossdeath() &&
              damageless() && 
              coordreset())                
              
achievement ("Mummified", "Defeat PharohMan", 5, id = 155356, badge = "174953",
    trigger = level() == level3 && 
              screen() == pharaohman_stage3 &&
              normalbossdeath())

achievement ("Death is Only the Beginning [m]", "Defeat PharaohMan buster only no chips or styles equipped", 10, id = 155357, badge = "174954",
    trigger = level() == level3 &&
              screen() == pharaohman_stage3 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              pharaohmanstage3reset()) 
              
achievement ("ProtoMan Challenge: PharaohMan", "Defeat PharaohMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155358, badge = "174955",
    trigger = level() == level3 &&
              screen() == pharaohman_stage3 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              pharaohmanstage3reset())
              
achievement ("Ancient One [m]", "Defeat PharaohMan without taking damage", 10, id = 155359, badge = "174956",
    trigger = level() == level3 &&
              screen() == pharaohman_stage3 &&
              normalbossdeath() &&
              damageless() && 
              pharaohmanstage3reset())  
              
achievement ("Long and Pointy", "Find the Sword chip in stage 3", 1, id = 155360, badge = "174957",
    trigger = level() == level3 &&
              screen() == 0x00 &&
              sword() > prev(sword()))

achievement ("Sock'em", "Find the GutsPunch chip in stage 3", 1, id = 155361, badge = "174958",
    trigger = level() == level3 &&
              screen() == 0x03 &&
              gutspunch() > prev(gutspunch()))
              
achievement ("Flame Dash", "Find the BurningBody chip in stage 3", 1, id = 155351, badge = "174948",
    trigger = level() == level3 &&
              screen() == 0x0a &&
              burningbody() > prev(burningbody()))              

achievement ("Explosive", "Defeat BombMan", 5, id = 155362, badge = "174959",
    trigger = level() == level4 && 
              screen() == bombman_stage4 &&
              normalbossdeath())

achievement ("Dy-No-Mite [m]", "Defeat BombMan buster only no chips or styles equipped", 10, id = 155363, badge = "174960",
    trigger = level() == level4 &&
              screen() == bombman_stage4 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              bombmanstage4reset()) 
              
achievement ("ProtoMan Challenge: BombMan", "Defeat BombMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155364, badge = "174961",
    trigger = level() == level4 &&
              screen() == bombman_stage4 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              bombmanstage4reset())              
              
achievement ("Bomb Shelter [m]", "Defeat BombMan without taking damage", 10, id = 155365, badge = "174962",
    trigger = level() == level4 &&
              screen() == bombman_stage4 &&
              normalbossdeath() &&
              damageless() && 
              bombmanstage4reset())  
              
achievement ("I'm a Snaaake", "Defeat SnakeMan", 5, id = 155366, badge = "174963",
    trigger = level() == level4 && 
              screen() == snakeman_stage4 &&
              normalbossdeath())

achievement ("Sneki Snek [m]", "Defeat SnakeMan buster only no chips or styles equipped", 10, id = 155367, badge = "174964",
    trigger = level() == level4 &&
              screen() == snakeman_stage4 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              snakemanstage4reset()) 
              
achievement ("ProtoMan Challenge: SnakeMan", "Defeat SnakeMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155368, badge = "174965",
    trigger = level() == level4 &&
              screen() == snakeman_stage4 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              snakemanstage4reset())   
              
achievement ("Parseltongue [m]", "Defeat SnakeMan without taking damage", 10, id = 155369, badge = "174966",
    trigger = level() == level4 &&
              screen() == snakeman_stage4 &&
              normalbossdeath() &&
              damageless() && 
              snakemanstage4reset()) 
              
achievement ("Wide Arc", "Find the WideSword chip in stage 4", 1, id = 155370, badge = "174967",
    trigger = level() == level4 &&
              screen() == 0x01 &&
              widesword() > prev(widesword())) 
              
achievement ("Extended Poker", "Find the LongSword chip in stage 4", 1, id = 155371, badge = "174968",
    trigger = level() == level4 &&
              screen() == 0x0d &&
              longsword() > prev(longsword()))              
 
achievement ("New Kicks", "Find the AirShoes chip in stage 4", 1, id = 155372, badge = "174969",
    trigger = level() == level4 &&
              screen() == 0x08 &&
              airshoes() > prev(airshoes())) 
              
achievement ("Thunderous Blade", "Find the ElecSword chip in stage 4", 1, id = 155373, badge = "174970",
    trigger = level() == level4 &&
              screen() == 0x0e &&
              elecsword() > prev(elecsword()))               
              
achievement ("Extinguished", "Defeat FireManV2 & obtain HeatGuts Style", 5, id = 155374, badge = "174971",
    trigger = level() == level5 && 
              screen() == firemanv2_stage5 &&
              prev(heatguts()) == 0 &&
              heatguts() == 1)

achievement ("Firefighter [m]", "Defeat FireManV2 & obtain HeatGuts Style buster only no chips or styles equipped", 10, id = 155375, badge = "174972",
    trigger = level() == level5 &&
              screen() == firemanv2_stage5 &&
              stylepause() &&
              prev(heatguts()) == 0 &&
              heatguts() == 1 &&
              chipless() &&
              livesreset())  
              
achievement ("ProtoMan Challenge: FireManV2", "Defeat FireManV2 with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155376, badge = "174973",
    trigger = level() == level5 && 
              screen() == firemanv2_stage5 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              coordreset())               
              
achievement ("Salted [m]", "Defeat FireManV2 & Obtain HeatGuts Style without taking damage", 10, id = 155377, badge = "174974",
    trigger = level() == level5 &&
              screen() == firemanv2_stage5 &&
              prev(heatguts()) == 0 &&
              heatguts() == 1 &&
              damageless() && 
              livesreset())
              
achievement ("Shorted", "Defeat ElecManV2 & Obtain ElecTeam Style", 5, id = 155378, badge = "174975",
    trigger = level() == level5 && 
              screen() == elecmanv2_stage5 &&
              prev(electeam()) == 0 &&
              electeam() == 1)

achievement ("Blown Fuse [m]", "Defeat ElecManV2 & Obtain ElecTeam Style buster only no chips or styles equipped", 10, id = 155379, badge = "174976",
    trigger = level() == level5 &&
              screen() == elecmanv2_stage5 &&
              stylepause() &&
              prev(electeam()) == 0 &&
              electeam() == 1 &&
              chipless() &&
              livesreset())  
              
achievement ("ProtoMan Challenge: ElecManV2", "Defeat ElecManV2 with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155380, badge = "174977",
    trigger = level() == level5 &&
              screen() == elecmanv2_stage5 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              coordreset())    
              
achievement ("Cut the Coord [m]", "Defeat ElecManV2 & Obtain ElecTeam Style without taking damage", 10, id = 155381, badge = "174978",
    trigger = level() == level5 &&
              screen() == elecmanv2_stage5 &&
              prev(electeam()) == 0 &&
              electeam() == 1 &&
              damageless() && 
              livesreset())
              
achievement ("Burning Blade", "Find the FlameSword chip in stage 5", 1, id = 155382, badge = "174979",
    trigger = level() == level5 &&
              screen() == 0x0f &&
              flamesword() > prev(flamesword())) 
              
achievement ("Shockwave", "Find the Dynawave chip in stage 5", 1, id = 155383, badge = "174980",
    trigger = level() == level5 &&
              screen() == 0x05 &&
              dynawave() > prev(dynawave()))              
              
achievement ("Water Style", "Find the AquaSword chip in stage 5", 1, id = 155384, badge = "174981",
    trigger = level() == level5 &&
              screen() == 0x0a &&
              aquasword() > prev(aquasword()))               
                     
achievement ("Net Battle", "Defeat ProtoMan", 5, id = 155385, badge = "174982",
    trigger = level() == level6 && 
              screen() == protoman_stage6 &&
              normalbossdeath())

achievement ("Zero Chance [m]", "Defeat ProtoMan buster only no chips or styles equipped", 10, id = 155386, badge = "174983",
    trigger = level() == level6 &&
              screen() == protoman_stage6 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              protomanstage6reset()) 
              
achievement ("ProtoMan Challenge: ProtoMan", "Defeat ProtoMan with only the sword chip equipped and normal style (have it readied when entering the boss room)", 5, id = 155387, badge = "174984",
    trigger = level() == level6 &&
              screen() == protoman_stage6 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              protomanstage6reset())                
              
achievement ("No Regrets [m]", "Defeat ProtoMan without taking damage", 10, id = 155388, badge = "174985",
    trigger = level() == level6 &&
              screen() == protoman_stage6 &&
              normalbossdeath() &&
              damageless() && 
              protomanstage6reset()) 
            
achievement ("Cloak of Invisibility", "Find the Invisible1 chip in stage 6", 1, id = 155389, badge = "174986",
    trigger = level() == level6 &&
              screen() == 0x04 &&
              invis() > prev(invis()))
 
achievement ("Underarmor", "Find the Undershirt chip in stage 6", 5, id = 155390, badge = "174987",
    trigger = level() == level6 &&
              screen() == 0x0d &&
              undershirt() > prev(undershirt()))             
              
achievement ("Great Calamity", "Defeat LifeVirus", 5, id = 155391, badge = "174988",
    trigger = level() == level6 && 
              screen() == lifevirus_stage6 &&
              normalbossdeath())

achievement ("Ultimate Goals [m]", "Defeat LifeVirus buster only no chips or styles equipped", 10, id = 155392, badge = "174989",
    trigger = level() == level6 &&
              screen() == lifevirus_stage6 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              lifevirusstage6reset()) 
              
achievement ("ProtoMan Challenge: LifeVirus", "Defeat LifeVirus with only the sword chip equipped and normal style (have it readied when entering the boss room)", 10, id = 155393, badge = "174990",
    trigger = level() == level6 &&
              screen() == lifevirus_stage6 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              lifevirusstage6reset())
              
achievement ("Chaos & Destruction [m]", "Defeat LifeVirus without taking damage", 25, id = 155394, badge = "174991",
    trigger = level() == level6 &&
              screen() == lifevirus_stage6 &&
              normalbossdeath() &&
              damageless() && 
              lifevirusstage6reset()) 
                            
achievement ("Awoo", "Defeat Gospel", 5, id = 155395, badge = "174992",
    trigger = level() == level7 && 
              screen() == gospel_stage7 &&
              normalbossdeath())

achievement ("Netmafia [m]", "Defeat Gospel buster only no chips or styles equipped", 10, id = 155396, badge = "174993",
    trigger = level() == level7 &&
              screen() == gospel_stage7 &&
              stylepause() &&
              normalbossdeath() &&
              chipless() &&
              gospelstage6reset())  
              
achievement ("ProtoMan Challenge: Gospel", "Defeat Gospel with only the sword chip equipped and normal style (have it readied when entering the boss room)", 10, id = 155397, badge = "174994",
    trigger = level() == level7 &&
              screen() == gospel_stage7 &&
              stylepause() &&
              normalbossdeath() &&
              megaprotochallenge() &&
              gospelstage6reset())
              
achievement ("Best in the World [m]", "Defeat Gospel without taking damage", 25, id = 155398, badge = "174995",
    trigger = level() == level7 &&
              screen() == gospel_stage7 &&
              normalbossdeath() &&
              damageless() && 
              gospelstage6reset()) 
              
achievement ("Weapon Salesman", "Have at least one of every chip in the game in your inventory", 10, id = 155399, badge = "174996",
    trigger = state() != menus &&
              level() < 0x07 &&
              allchipsinventory() &&
              allchips())
              
achievement ("There Can Only Be One", "Defeat Gospel in BossRush on Easy or Higher", 5, id = 155400, badge = "174997",
    trigger = bossrushbeateasy()) 

achievement ("One With the Bullet", "Defeat Gospel in BossRush on Easy or Higher buster only no chips or styles equipped", 5, id = 155401, badge = "174998",
    trigger = bossrushbeateasy() && chiplessbossrush() && healthreset()) 
              
achievement ("One Vs All", "Defeat Gospel in BossRush on Med or Higher", 5, id = 155403, badge = "175000",
    trigger = bossrushbeatmed())

achievement ("My Mega Buster Can Cut the Mustard", "Defeat Gospel in BossRush on Med or Higher buster only no chips or styles equipped", 5, id = 155404, badge = "175001",
    trigger = bossrushbeatmed() && chiplessbossrush() && healthreset())
    
achievement ("Conquerer", "Defeat Gospel in BossRush on Hard or Higher", 10, id = 155406, badge = "175003",
    trigger = bossrushbeathard())
    
achievement ("King of the Hill", "Defeat Gospel in BossRush on Hard or Higher buster only no chips or styles equipped", 10, id = 155407, badge = "175004",
    trigger = bossrushbeathard() && chiplessbossrush() && healthreset())
    
achievement ("The One and Only", "Clear BossRush on ExHard", 25, id = 155408, badge = "175005",
    trigger = bossrushbeatexhard())
    
achievement ("Robot Master", "Clear BossRush on ExHard buster only no chips or styles equipped", 50, id = 155409, badge = "175006",
    trigger = bossrushbeatexhard() && chiplessbossrush() && healthreset())
