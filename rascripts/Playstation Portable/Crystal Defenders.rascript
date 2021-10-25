// Crystal Defenders
// #ID = 3466

function ThiefBlock(Job) {
    trigger = always_true()
    for i in range(0, 126) {
        trigger = trigger && byte(Job + i * 144) != 0x5
    }
    return trigger
}

function SoldierBlock(Placed,Job) {
    trigger = always_true()
    for i in range(0, 126) {
        trigger = trigger && byte(Placed + i * 144)+byte(Job + i * 144) != 1
    }
    return trigger
}

function TimeBlock(Job) {
    trigger = always_true()
    for i in range(0, 126) {
        trigger = trigger && byte(Job + i * 144) != 0x4
    }
    return trigger
}

function MonkBlock(World,Job) {
    trigger = always_true()
    for i in range(0, 126) {
        trigger = trigger && byte(Job + i * 144) != 3
    }
    return trigger
}

function Protection() => byte(0xd77f9c) == 0

function World() => byte(0xd58200)
W1 = 0x00
W2 = 0x01
W3 = 0x02

function Map() => byte(0xd58268)
M1 = 0x00
M2 = 0x01
M3 = 0x02
M4 = 0x03

function GameState() => byte(0xd5ee44) == 0x00

//World 1
function BisgaG() => World() == W1 && Map() == M1 
function BisgaGAdv() => World() == W1 && Map() == M2
function OSF() => World() == W1 && Map() == M3
function OSFAdv() => World() == W1 && Map() == M4

//World 2
function KSands() => World() == W2 && Map() == M1
function KSandsAdv() => World() == W2 && Map() == M2
function MelbyP() => World() == W2 && Map() == M3
function MelbyPAdv() => World() == W2 && Map() == M4

//World 3
function RoD() => World() == W3 && Map() == M1
function RoDAdv() => World() == W3 && Map() == M2
function Zellea() => World() == W3 && Map() == M3
function ZelleaAdv() => World() == W3 && Map() == M4

function GameWin() => byte(0xd57e94)
Clear = 0x04
Perfect = 0x05

function GameStatus() => byte(0xd5e4cc)
MainMenu = 0x00
Playing = 0x09
GameOver = 0x0c
WaveEnd = 0x0d
GameWin = 0x0e
 
function Wave() => byte(0xd77fa0) 
function TwentyCrystals() => byte(0xd5e604) == 0x14
function Crystals() => byte(0xd5e604)

function Win() => Wave() == 30 && GameStatus() == 0x0e
function Perfect() => Wave() == 30 && GameStatus() == 0x0e && TwentyCrystals()
function Points() => dword(0xd5e4d4)
function Gil() => dword(0xd5e4d8)
function Masterful() => sum_of(range(0xd582e0,0xd58498,step=40), addr => dword(addr))

 
achievement ("Verdant Plains",
             "Clear Bisga Greenlands", 5,
trigger = Protection() &&
          BisgaG() &&
          Win())
          
achievement ("Verdant Plains [Perfect]",
             "Perfect Clear Bisga Greenlands", 10,
trigger = Protection() &&
          BisgaG() &&
          Perfect())

achievement ("Lush Meadows",
             "Clear Bisga Greenlands Adv", 5,
trigger = Protection() &&
          BisgaGAdv() &&
          Win())
          
achievement ("Lush Meadows [Perfect]",
             "Perfect Clear Bisga Greenlands Adv", 10,
trigger = Protection() &&
          BisgaGAdv() &&
          Perfect())

achievement ("Snow Dusted",
             "Clear Orchise Snowfields", 5,
trigger = Protection() &&
          OSF() &&
          Win())
         
achievement ("Snow Dusted [Perfect]",
             "Perfect Clear Orchise Snowfields", 10,
trigger = Protection() &&
          OSF() &&
          Perfect())
          
achievement ("Rimed Corridor",
             "Clear Orchise Snowfields Adv", 5,
trigger = Protection() &&
          OSFAdv() &&
          Win())
          
achievement ("Rimed Corridor [Perfect]",
             "Perfect Clear Orchise Snowfields Adv", 10,
trigger = Protection() &&
          OSFAdv() &&
          Perfect())
////////////
achievement ("Wasteland",
             "Clear Kthili Sands", 5,
trigger = Protection() &&
          KSands() &&
          Win())
          
achievement ("Wasteland [Perfect]",
             "Perfect Clear Kthili Sands", 10,
trigger = Protection() &&
          KSands() &&
          Perfect())

achievement ("Scorched Plains",
             "Clear Kthili Sands Adv", 5,
trigger = Protection() &&
          KSandsAdv() &&
          Win())
          
achievement ("Scorched Plains [Perfect]",
             "Perfect Clear Kthili Sands Adv", 10,
trigger = Protection() &&
          KSandsAdv() &&
          Perfect())

achievement ("Gatering Place",
             "Clear Melby Point", 5,
trigger = Protection() &&
          MelbyP() &&
          Win())
         
achievement ("Gathering Place [Perfect]",
             "Perfect Clear Melby Point", 10,
trigger = Protection() &&
          MelbyP() &&
          Perfect())
          
achievement ("Faerie Garden",
             "Clear Melby Point Adv", 5,
trigger = Protection() &&
          MelbyPAdv() &&
          Win())
          
achievement ("Faerie Garden [Perfect]",
             "Perfect Clear Melby Point Adv", 10,
trigger = Protection() &&
          MelbyPAdv() &&
          Perfect())
////
achievement ("Ancient Castle",
             "Clear Ruins of Delgantua", 5,
trigger = Protection() &&
          RoD() &&
          Win())
          
achievement ("Ancient Castle [Perfect]",
             "Perfect Ruins of Delgantua", 10,
trigger = Protection() &&
          RoD() &&
          Perfect())
          
achievement ("Galtean Fortress",
             "Clear Ruins of Delgantua Adv", 5,
trigger = Protection() &&
          RoDAdv() &&
          Win())
          
achievement ("Galtean Fortress [Perfect]",
             "Perfect Ruins of Delgantua Adv", 10,
trigger = Protection() &&
          RoDAdv() &&
          Perfect())
          
achievement ("Magickally Potent",
             "Clear Zellea", 5,
trigger = Protection() &&
          Zellea() &&
          Win())
          
achievement ("Magickally Potent [Perfect]",
             "Perfect Zellea", 10,
trigger = Protection() &&
          Zellea() &&
          Perfect())
          
achievement ("Forbidden Land",
             "Clear Zellea Adv", 5,
trigger = Protection() &&
          ZelleaAdv() &&
          Win())
          
achievement ("Forbidden Land [Perfect]",
             "Perfect Zellea Adv", 10,
trigger = Protection() &&
          ZelleaAdv() &&
          Perfect())
          
achievement ("Spare Change?",
             "Clear a map without having used any Thiefs", 10,
trigger = GameState() &&
          Protection() &&
          Win() &&
          ThiefBlock(0xd5f384))

achievement ("Bankrupt",
             "Perfect a map without having used any Thiefs", 25,
trigger = GameState() &&
          Protection() &&
          Perfect() &&
          ThiefBlock(0xd5f384))
 
achievement ("Swordless",
             "Clear a map without having used any Soldiers", 5,
trigger = GameState() &&
          Protection() &&
          Win() &&
          SoldierBlock(0xd5f2f0,0xd5f2f4) &&
          (always_false() ||
          World() == W1 || World() == W2)) 
          
achievement ("Rusted Blade",
             "Perfect a map without having used any Soldiers", 10,
trigger = GameState() &&
          Protection() &&
          Perfect() &&
          SoldierBlock(0xd5f2f0,0xd5f2f4) &&
          (always_false() ||
          World() == W1 || World() == W2))
          
achievement ("Time Block",
             "Clear a map without having used any Time Mages", 10,
trigger = GameState() &&
          Protection() &&
          Win() &&
          TimeBlock(0xd5f384))
 
achievement ("Full Speed Ahead!",
             "Perfect a map without having used any Time Mages", 25,
trigger = GameState() &&
          Protection() &&
          Perfect() &&
          TimeBlock(0xd5f384))
          
achievement ("Fistless",
             "Clear a map without having used any Monks", 5,
trigger = GameState() &&
          Protection() &&
          Win() &&
          MonkBlock(0xd58268,0xd5f2f4))    
          
achievement ("No Hands Ma!",
             "Perfect a map without having used any Monks", 10,
trigger = GameState() &&
          Protection() &&
          Perfect() &&
          MonkBlock(0xd58268,0xd5f2f4))  
          
achievement ("Keeping the Change",
             "Do not lose any crystals for 5 full rounds without spending any G", 5,
trigger = tally(0,Protection() &&
          tally(6,Wave() > prev(Wave()))) &&
          never(Gil() < prev(Gil())) &&
          never(Crystals() != prev(Crystals())) &&
          never(Wave() < prev(Wave())))
          
achievement ("Top Earner", 
             "Clear a map having 8000 or more points", 5,
trigger = Protection() &&
          Win() &&
          Points() >= 8000 &&
          prev(Points()) == 0)
              
achievement("Expert", 
            "Total of all rank 1 high scores 50,000 or more", 5, 
trigger = Protection() &&
          Win() &&
          Masterful() >= 0xc350 &&
          prev(Masterful()) < 0xc350)
    
achievement("Masterful", 
            "Total of all rank 1 high scores 100,000 or more", 5,
trigger = Protection() &&
          Win() &&
          Masterful() >= 0x186a0 &&
          prev(Masterful()) < 0x186a0)    