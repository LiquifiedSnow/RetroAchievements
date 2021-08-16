// Knightmare
// #ID = 10507

function State() => byte(0x2000)
Title = 0x01
Demo = 0x02
Starting = 0x03
LevelCard = 0x04 
Playing = 0x05
GameOver = 0x07
Beat = 0x09

function Stage() => byte(0x2061)
Stage1 = 0x01
Stage2 = 0x02
Stage3 = 0x03
Stage4 = 0x04
Stage5 = 0x05
Stage6 = 0x06
Stage7 = 0x07
Stage8 = 0x08
Stage9 = 0x09

function Lives() => byte(0x2060)

function Score() => tbyte(0x2056)
None = 0x00000

function StageProg() => byte(0x2091)

function StageBoss() => StageProg() == 0xc9 && prev(StageProg()) == 0xc8
function BossCheck() => StageProg() >= 0xc9
function BossHealth() => byte(0x23d1)
function BossDecay() => byte(0x23b2)
function BossDead() => byte(0x23b0)
function Boss1Killed() => trigger_when(BossDead() == 0x04) && prev(BossDead()) == 0x03
function Boss2Killed() => trigger_when(BossDead() == 0x05) && prev(BossDead()) == 0x04
function Boss3Killed() => trigger_when(BossDead() == 0x06) && prev(BossDead()) == 0x05
function Boss4Killed() => trigger_when(BossDead() == 0x07) && prev(BossDead()) == 0x06
function Boss5Killed() => trigger_when(BossDead() == 0x08) && prev(BossDead()) == 0x07
function Boss6Killed() => trigger_when(BossDead() == 0x04) && prev(BossDead()) == 0x03
                                    

function levelstart() => once(StageProg()) == 0x00

function Arrows() => unless(byte(0x2609) > 0x03)

achievement ("Slayer of the Medusa", "Clear Stage 1", 5,
    trigger = State() == LevelCard && Stage() == Stage2 && prev(Stage()) == Stage1)
    
achievement ("Pointless Popolon I", "Arrive at the boss of Stage 1  without gaining any score in the stage", 10,
    trigger = State() == Playing && never(Stage() != Stage1) && never(Score() != prev(Score())) && Score() == 0x00 && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Pacifist Popolon Vs. Medusa", "Defeat the boss of Stage 1 without dealing any damage", 10,
    trigger = State() == Playing && never(Stage() != Stage1) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(14,BossDecay() < prev(BossDecay()))) && Boss1Killed()))

achievement ("Survivor of the Gardens", "Arrive at the boss of Stage 1 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage1) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Slayer of the Reaper", "Clear Stage 2", 5,
    trigger = State() == LevelCard && Stage() == Stage3 && prev(Stage()) == Stage2)
  
achievement ("Pointless Popolon II", "Arrive at the boss of Stage 2 without gaining any score in the stage", 10,
    trigger = State() == Playing && never(Stage() != Stage2) && never(Score() != prev(Score())) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Pacifist Popolon Vs. Reaper", "Defeat the boss of Stage 2 without dealing any damage", 10,
    trigger = State() == Playing && never(Stage() != Stage2) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(13,BossDecay() < prev(BossDecay()))) && Boss2Killed()))  

achievement ("Survivor of the Mudlfats", "Arrive at the boss of Stage 2 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage2) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Slayer of the Gargoyle", "Clear Stage 3", 5,
    trigger = State() == LevelCard && Stage() == Stage4 && prev(Stage()) == Stage3) 
    
achievement ("Pointless Popolon III", "Arrive at the boss of Stage 3 without gaining any score in the stage", 10,
    trigger = State() == Playing && never(Stage() != Stage3) && never(Score() != prev(Score())) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Pacifist Popolon Vs. Gargoyle", "Defeat the boss of Stage 3 without dealing any damage", 10,
    trigger = State() == Playing && never(Stage() != Stage3) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(27,BossDecay() < prev(BossDecay()))) && Boss3Killed()))    

achievement ("Survivor of the Desert", "Arrive at the boss of Stage 3 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage3) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Slayer of the Old Dude", "Clear Stage 4", 5,
    trigger = State() == LevelCard && Stage() == Stage5 && prev(Stage()) == Stage4)
    
achievement ("Pacifist Popolon Vs. Old Dude", "Defeat the boss of Stage 4 without dealing any damage", 10,
    trigger = State() == Playing && never(Stage() != Stage4) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(27,BossDecay() < prev(BossDecay()))) && Boss4Killed()))    
 
achievement ("Survivor of the Temple", "Arrive at the boss of Stage 4 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage4) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss())) 
    
achievement ("Slayer of the Knight", "Clear Stage 5", 5,
    trigger = State() == LevelCard && Stage() == Stage6 && prev(Stage()) == Stage5)
  
achievement ("Pacifist Popolon Vs. Knight", "Defeat the boss of Stage 5 without dealing any damage", 25,
    trigger = State() == Playing && never(Stage() != Stage5) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(27,BossDecay() < prev(BossDecay()))) && Boss5Killed()))

achievement ("Survivor of the Castle", "Arrive at the boss of Stage 5 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage5) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Slayer of Zangief", "Clear Stage 6", 10,
    trigger = State() == LevelCard && Stage() == Stage7 && prev(Stage()) == Stage6)
    
achievement ("Pacifist Popolon Vs. Zangief", "Defeat the boss of Stage 6 without dealing any damage", 25,
    trigger = State() == Playing && never(Stage() != Stage6) && BossHealth() == 0x00 && BossCheck() && trigger_when((tally(27,BossDecay() < prev(BossDecay()))) && Boss6Killed()))

achievement ("Survivor of the Mountains", "Arrive at the boss of Stage 6 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage6) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))
    
achievement ("Slayer of the Clone", "Clear Stage 7", 10,
    trigger = State() == LevelCard && Stage() == Stage8 && prev(Stage()) == Stage7)

achievement ("Survivor of the Docks", "Arrive at the boss of Stage 7 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage7) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))

achievement ("Slayer of the Watcher", "Beat the Game", 10,
    trigger = State() == Beat && Stage() == Stage9 && prev(Stage()) == Stage8)
 
achievement ("Survivor of the Dungeon", "Arrive at the boss of Stage 8 without any deaths", 10,
    trigger = State() == Playing && never(Stage() != Stage8) && never(Lives() < prev(Lives())) && never(State() == 0x07) && once(StageProg() == 0x00) && trigger_when(StageBoss()))   