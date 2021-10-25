// Crisis Core: Final Fantasy VII
// #ID = 10387


function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0xa42238
for i in range(0, 255)
{
  slot = word(inventoryBaseAddr + i * 4)
  trigger = trigger || (prev(slot) != itemId && slot == itemId)
}
return trigger
}

function EnemyForces(value) => word(0xa22b3c) == value && prev(word(0xa22b3c)) == value - 1
function Gil() => dword(0xa43ee8)
function NewGamePlus() => word(0xa43f1c)+word(0xa43f64) == 0
function NewGamePlus2() => word(0xa43f30)+word(0xa43f78) == 0

function Map() => dword(0xa22a94)
ChapterComplete = 0x1388
TrainingBehemoth = 0x170d
CursedRing = 0x1394
FortressInterior = 0x1398
VajradharaTaiWu = 0x1399
MtTamblin = 0x1397
MissleMaster = 0x13bb
EliteSquad = 0x139c
Ifrit = 0x139b
ShowOff = 0x13ba
Bahamut = 0x13be
loveless = 0x13f0
WingedAngeal = 0x13f2
Slums = 0x141f
Sector0 = 0x142b
Jail = 0x1427
HojoLab = 0x1423
HojDesert = 0x1429
BahamutFury = 0x1424
AerithxZack = 0x145e
SephirothxZack = 0x1488
CloudxSeph = 0x1490
Nibelheim = 0x14b4
NibInn = 0x14b6
MtNibel = 0x14bb
ShinraManor = 0x14c2
ReactorEntrance = 0x14bc
BurningNibelheim = 0x14b7
CloudvsSeph = 0x14b8
Ch10Manor = 0x14b5
Ch10Nib = 0x14b4
WondersFinale = 0x14b5
NibelPlains = 0x14e7
AbandonedMako = 0x1518
Hills = 0x1519
AngealCopy = 0x151e
GenesisGate = 0x1551
GensisEntered = 0x1552
FinalStand = 0x173f

function Story() => word(0xa22e28)
TrainingMission = 0x12c
ChapterOneDone = 0x3e8
Vajradhara = 0x579
MountTamblin = 0x57a
ChapterTwoDone = 0x7d1
MechFight = 0x7df
MechWin = 0x7e4
ChapterThreeDone = 0xbb8
Wings = 0xbc5
Wingless = 0xbc9
ChapterFourDone = 0xfa0
Wallet = 0x10ba
WalletGiven = 0x10cc
RunTheCredits1 = 0x118a
RunTheCredits2 = 0x1195
ChapterFiveDone = 0x1388
GenesisBattle = 0x13cf
GenesisBattleEnd = 0x13d9
ChapterSixDone = 0x1770
ChapterSevenDone = 0x1964
ChapterEightDone = 0x1b58
GDeleterAlive = 0x1b9e
GDeleterDead = 0x1ba8
ChapterNineDone = 0x1f40
CloudSaved = 0x1f63
NibelPlainsDone = 0x1f96
NibelPlainsBeforeDone = 0x1f94
GongagaEntrance = 0x233c
GongagaArrive = 0x2346
HollanderStory = 0x235a
HollanderGone = 0x235c
ChapterTenDone = 0x2710
GenesisGateOpen = 0x2739
TheFinalStand = 0x2cf6

function Diff() => byte(0xa43f03)
Norm = 0x00
Hard = 0x01

function Hard() => Diff() == 0x01 

function Battle() => byte(0xa29b24)

function Kills()=> dword(0xa43ee4)
function ZackHealth() => dword(0xa44108)

function ChapterOne() => Map() == ChapterComplete && prev(Map()) == TrainingBehemoth && Story() == ChapterOneDone

achievement ("[Normal] SOLDIER 2nd Class, Zack!",
             "[Chapter 1] Clear Chapter 1",1,
    trigger = NewGamePlus() &&
              ChapterOne())
              

achievement ("[Hard] SOLDIER 2nd Class, Zack!",
             "[Chapter 1] Clear Chapter 1",1,
    trigger = NewGamePlus() &&
              Diff() == Hard &&
              ChapterOne())

function CursedRing() => Story() == 0x453 && prev(Story()) == 0x452

achievement ("Zack the Greedy",
             "[Chapter 2] Obtain the Cursed Ring", 1,
    trigger = NewGamePlus() &&
              Map() == CursedRing &&
              CursedRing())

achievement ("Fortress Interior: Cleared!",
             "[Chapter 2] Defeat all 16 forces in the Fortress Interior", 2,
    trigger = NewGamePlus() &&
              Map() == FortressInterior &&
              EnemyForces(16))
              
function EliteSquad() => byte(0xa22b51) == 1

achievement ("[Normal] Guardian Deity, Leviathan",
             "[Chapter 2] Defeat the Crescent, Wutai army's elite unit", 2,
    trigger = NewGamePlus() &&
              Map() == EliteSquad &&
              EliteSquad() &&
              prev(Battle()) != 0 &&
              Battle() == 0 &&
              ZackHealth() != 0)
              
achievement ("[Hard] Guardian Deity, Leviathan",
             "[Chapter 2] Defeat the Crescent, Wutai army's elite unit", 5,
    trigger = NewGamePlus() &&
              Hard() &&
              Map() == EliteSquad &&
              EliteSquad() &&
              prev(Battle()) != 0 &&
              Battle() == 0 &&
              ZackHealth() != 0)

function FortTamblin() => Map() == MtTamblin && Story() == MountTamblin && prev(Story()) == Vajradhara
              
achievement ("[Normal] One More You Owe Me",
             "[Chapter 2] Clear Fort Tamblin", 5,
    trigger = NewGamePlus() &&
              FortTamblin())              
              
achievement ("[Hard] One More You Owe Me",
             "[Chapter 2] Clear Fort Tamblin", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              FortTamblin()) 
              
function ChapterTwo() => Map() == ChapterComplete && prev(Map()) == Ifrit && Story() == ChapterTwoDone

achievement ("[Normal] Where's Angeal?",
             "[Chapter 2] Complete Chapter 2", 5,
    trigger = NewGamePlus() &&
              ChapterTwo())
    
achievement ("[Hard] Where's Angeal?",
             "[Chapter 2] Complete Chapter 2", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              ChapterTwo())    

function Impression() =>  Map() == ShowOff && Story() == MechWin && prev(Story()) == MechFight

achievement ("[Normal] Fight to Impress",
             "[Chapter 3] Don't disappoint the president", 5,
    trigger = NewGamePlus() &&
              Impression())

achievement ("[Hard] Fight to Impress",
             "[Chapter 3] Don't disappoint the president", 10,
    trigger =  NewGamePlus() &&
               Hard() &&
               Impression())
             
function MissleMaster() => byte(0xa22f20) == 0x0a && prev(byte(0xa22f20)) == 0x09 && byte(0xa22f1c) == 0x0a           
              
achievement ("Missle Master",
             "[Chapter 3] Score a perfect 10 on the missle cutting minigame", 5,
    trigger = Map() == MissleMaster &&
              MissleMaster())              
              
function AngealHouse() => dword(0xa22e28) == 0x818 && prev(dword(0xa22e28)) == 0x819
function AngealTimer() => word(0xa22f2c)

achievement ("To Grandmother's House We Go",
             "[Chapter 3] Reach Angeal's house before the timer runs out!", 2,
    trigger = Map() == MissleMaster &&
              AngealHouse() &&
              AngealTimer() != 0x00)              
              
function GlowingSpotsTreasures() => bit7(0xa22166)+bit0(0xa22167)+bit1(0xa22167)+bit2(0xa22167)+bit3(0xa22167)             
function GlowingSpots() => Map() == 0x13bb && GlowingSpotsTreasures() == 5 && prev(GlowingSpotsTreasures()) == 4              
              
achievement ("Just a Few Quick Stops",
             "[Chapter 3] Collect all 5 lifestreams & make it back to Angeal's house in time.", 3,
    trigger = GlowingSpots())              
              
function ChapterThree() => Map() == ChapterComplete && prev(Map()) == Bahamut && Story() == ChapterThreeDone              
              
achievement ("[Normal] Dreams and Honor",
             "[Chapter 3] Complete Chapter 3", 5,
    trigger = NewGamePlus() &&
              ChapterThree())              
              
achievement ("[Hard] Dreams and Honor",
             "[Chapter 3] Complete Chapter 3", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              ChapterThree()) 
              
function HojoExp() => bit2(0xa22ba0) == 1 && bit0(0xa22ba0) == 1 && prev(bit0(0xa22ba0)) == 0 && byte(0xa22ba0) != 0xff          
              
achievement ("[Normal] Hojo's Might",
             "Defeat all of Hojo's experiments", 5,
    trigger = NewGamePlus() &&
              Map() == 0x13f7 &&
              HojoExp())              
              
achievement ("[Hard] Hojo's Might",
             "Defeat all of Hojo's experiments", 5,
    trigger = NewGamePlus() && 
              Map() == 0x13f7 &&
              Hard() &&
              HojoExp())   
              
function Lovers() => bit1(0xa2216b) > prev(bit1(0xa2216b))             
              
achievement ("Token of Appreciation",
             "[Chapter 4] Keep the lovers secret", 5,
    trigger = NewGamePlus() &&
              Map() == 0x13f8 &&
              Lovers())              
              
function WingMonsters() => Map() == loveless && Story() == Wingless && prev(Story()) == Wings              
              
achievement ("[Normal] You Know, An Angel",
             "[Chapter 4] Clear out the Station Invasion", 5,
    trigger = NewGamePlus() &&
              WingMonsters())              
              
achievement ("[Hard] You Know, An Angel",
             "[Chapter 4] Clear out the Station Invasion", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              WingMonsters())               
              
function ChapterFour() => Map() == ChapterComplete && prev(Map()) == WingedAngeal && Story() == ChapterFourDone              
              
achievement ("[Normal] World Domination",
             "[Chapter 4] Complete Chapter 4", 5,
    trigger = NewGamePlus() &&
              ChapterFour())              
              
achievement ("[Hard] World Domination",
             "[Chapter 4] Complete Chapter 4", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              ChapterFour())               
              
function WalletDealt() => Map() == Slums && Story() == WalletGiven && prev(Story()) == Wallet            
              
achievement ("[Normal] Wallet Full of Money",
             "[Chapter 5] Return the kids loaded wallet", 5,
    trigger = NewGamePlus() &&
              WalletDealt())              
              
achievement ("[Hard] Wallet Full of Money",
             "[Chapter 5] Return the kids loaded wallet", 10,
    trigger = NewGamePlus() &&
              Hard()&&
              WalletDealt())                 
              
function SlumMateria() => byte(0xa230c4) == 0x14        
function MateriaTimer() => dword(0xa23044) <= 0x2b2 && dword(0xa23044) >= 0x244 && SlumMateria()
             
achievement ("Special Delivery!",
             "[Chapter 5] Pickup and hand in all 20 materia in 23 seconds or less", 2,
    trigger = NewGamePlus() &&
              Map() == Slums &&
              MateriaTimer())
              
function SlumPerfumeTotal() => byte(0xa2311c)              
function SlumPerfumeDrips() => byte(0xa23128)              
function PerfumeGame() => byte(0xa23120) == 1 && prev(byte(0xa23120)) == 0           
              
achievement ("Drip, Drip",
             "[Chapter 5] Successfully master the art of perfume making", 2,
    trigger = NewGamePlus() &&
              Map() == Slums &&
              SlumPerfumeTotal() == SlumPerfumeDrips() &&
              PerfumeGame())              
              
function KidWin() => byte(0xa23080) == 1
function KidOver() => byte(0xa23050) == 0 && prev(byte(0xa23050)) == 1             
              
achievement ("Got Your Number",
             "[Chapter 5] Correct guess how many kids walk by", 1,
    trigger = NewGamePlus() &&
              Map() == Slums &&
              KidWin() &&
              KidOver())              
              
function RunTheCredits() => Map() == Sector0 && Story() == RunTheCredits2 && prev(Story()) == RunTheCredits1              
              
achievement ("[Normal] Run the Credits", 
             "[Chapter 5] Clear the path to the Shinra Building", 5,
    trigger = NewGamePlus() &&
              RunTheCredits())
    
achievement ("[Hard] Run the Credits", 
             "[Chapter 5] Clear the path to the Shinra Building", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              RunTheCredits())              
              
function HojoJail() => Map() == Jail && word(0xa28b94) != 0 
function JailTreasure() => bitcount(0xa22174)+bitcount(0xa22175)+bit0(0xa22176)+bit1(0xa22176) == 0x12 &&
                           prev(bitcount(0xa22174)+bitcount(0xa22175)+bit0(0xa22176)+bit1(0xa22176)) == 0x11          
              
achievement ("[Normal] Behind Bars", 
             "[Chapter 5] Obtain all 18 treasures behind bars before time runs out", 5,
    trigger = NewGamePlus() &&
              HojoJail() &&
              JailTreasure())              
              
achievement ("[Hard] Behind Bars", 
             "[Chapter 5] Obtain all 18 treasures behind bars before time runs out", 5,
    trigger = NewGamePlus() &&
              Hard() &&
              HojoJail() &&
              JailTreasure())                 
              
function IlikeSephiroth() => dword(0xa43e44)-prev(dword(0xa43e44)) == 0x3e8

achievement ("Big Gains", 
             "[Chapter 5] Answer Hojo's questions correctly to gain 1000SP", 1,
    trigger = NewGamePlus() &&
              Map() == HojoLab &&
              IlikeSephiroth())            
  
function MakoDelivery() => dword(0xa43e44)-prev(dword(0xa43e44)) == 0x64 
              
achievement ("Self-Destruct", 
             "[Chapter 5] Obtain 100% of mako delivery", 1,
    trigger = NewGamePlus() &&
              Map() == HojoLab &&
              MakoDelivery())                
              
function HojoDesert() =>  prev(byte(0xa48a5a)+byte(0xa48eea)+ byte(0xa4937a)) == 3
        
achievement ("[Normal] Eremites Attack",
             "[Chapter 5] Survive Hojo's Desert", 5,
    trigger = NewGamePlus() &&
              Map() == HojoLab &&
              prev(Map()) == HojDesert &&
              HojoDesert())              
              
achievement ("[Hard] Eremites Attack",
             "[Chapter 5] Survive Hojo's Desert", 10,
    trigger = NewGamePlus() &&
              Hard() &&
              Map() == HojoLab &&
              prev(Map()) == HojDesert &&
              HojoDesert())              
              
function ChapterFive() => Map() == ChapterComplete && prev(Map()) == BahamutFury && Story() == ChapterFiveDone                
              
achievement ("[Normal] Where Is Everybody?",
             "[Chapter 5] Complete Chapter 5", 5,
    trigger = NewGamePlus() &&
              ChapterFive()) 
    
achievement ("[Hard] Where Is Everybody?",
             "[Chapter 5] Complete Chapter 5", 5,
    trigger = NewGamePlus() &&
              Hard() &&
              ChapterFive())          
              
function WutaiSpy() => byte(0xa22392)+byte(0xa2228a)+byte(0xa22395)+byte(0xa2231d)+byte(0xa2230e)+byte(0xa22383) == 6 &&
                       prev(byte(0xa22392)+byte(0xa2228a)+byte(0xa22395)+byte(0xa2231d)+byte(0xa2230e)+byte(0xa22383)) == 5         
              
achievement ("Wutai Spy", 
             "[Chapter 6] Sniff out all 6 Wutai spies", 5,
    trigger = WutaiSpy())              
              
function ColdTreasures() => bit5(0xa2217c)+bit6(0xa2217c)+bit7(0xa2217c)+bit0(0xa2217d)+bit1(0xa2217d)

achievement ("Facility Infiltration", 
             "[Chapter 6] Obtain all 5 treasures while sneaking into the Mako Excavation Facility", 5,
    trigger = Map() == 0x1457 &&
              ColdTreasures() == 5 && prev(ColdTreasures()) == 4)          
                            
function GenesisBeat() => Map() == 0x1457 && Story() == GenesisBattleEnd && prev(Story()) == GenesisBattle              
              
achievement ("[Normal] Fate of a Monster", 
             "[Chapter 6] Defeat the one who waits at the end of the Excavation Facility", 5,
    trigger = NewGamePlus2() &&
              GenesisBeat())             
             
achievement ("[Hard] Fate of a Monster", 
             "[Chapter 6] Defeat the one who waits at the end of the Excavation Facility", 5,
    trigger = NewGamePlus2() &&
              Hard() &&
              GenesisBeat())                
             
function Voicemail() => Map() == 0x145a && bit1(0xa2217e) > prev(bit1(0xa2217e))            
             
achievement ("You Have 23 New Voice Messages",
             "[Chapter 6] Obtain the hidden item in the Bathhouse Entrance", 1,
    trigger = Voicemail())             
             
function Valve() => Map() == 0x145c && bit4(0xa2217e) > prev(bit4(0xa2217e)) 

achievement ("Pressure Valve",
             "[Chapter 6] Obtain the hidden item in the 2nd floor of the bathhouse", 1,
    trigger = Valve())             
             
function ChapterSix() => Map() == ChapterComplete && prev(Map()) == AerithxZack && Story() == ChapterSixDone              
             
achievement ("[Normal] This is For You", 
             "[Chapter 6] Complete Chapter 6", 5,
    trigger = NewGamePlus2() &&
              ChapterSix())
    
achievement ("[Hard] This is For You", 
             "[Chapter 6] Complete Chapter 6", 5,
    trigger = NewGamePlus2() &&
              Hard() &&
              ChapterSix())
             
function Steamrolled() => Map() == 0x1489 && Story() == 0x1808 && prev(Story()) == 0x1807             
             
achievement ("[Normal] Steamrolled",
             "[Chapter 7] Rendezvous with Tseng in the central tunnel", 5,
    trigger = NewGamePlus2() &&
              Steamrolled())             
             
achievement ("[Hard] Steamrolled",
             "[Chapter 7] Rendezvous with Tseng in the central tunnel", 10,
    trigger = NewGamePlus2() &&
              Hard() &&
              Steamrolled())                
             
function Defensive() => Map() == 0x1484 && byte(0xa289b4) == 0x1e && prev(byte(0xa289b4)) >= 0x19 && prev(byte(0xa289b4)) <= 0x1d          
             
achievement ("[Normal] You Shall Not Pass!",
             "[Chapter 7] Pefectly defend the Junon perimeter by slaying all 30 enemies", 5,
    trigger = NewGamePlus2() &&
              Defensive())             
             
achievement ("[Hard] You Shall Not Pass!",
             "[Chapter 7] Pefectly defend the Junon perimeter by slaying all 30 enemies", 10,
    trigger = NewGamePlus2() &&
              Hard() &&
              Defensive()) 
    
function ChapterSeven() => Map() == ChapterComplete && prev(Map()) == SephirothxZack && Story() == ChapterSevenDone
   
achievement ("[Normal] The Wind Sails",
             "[Chapter 7] Compelte Chapter 7", 5,
    trigger = NewGamePlus2() &&
              ChapterSeven())  
    
achievement ("[Hard] The Wind Sails",
             "[Chapter 7] Compelte Chapter 7", 10,
    trigger = NewGamePlus2() &&
              Hard() &&
              ChapterSeven())      
   
function FlowerCart() => Map() == 0x1498 && Story() == 0x1a2c && prev(Story()) == 0x19fa   
   
achievement ("Cart Builder",
             "[Chapter 8] Build the Cart you promised", 5,
    trigger = FlowerCart())   
   
function CartUpgrade() => Map() == 0x1498 && Story() == 0x1ac2 && prev(Story()) == 0x1a90   
   
achievement ("Cart Mods",
             "[Chapter 8] Upgrade the flower cart", 5,
    trigger = CartUpgrade())   
   
function UltimateCart() => Map() == 0x1498 && Story() == 0x1ac3 && prev(Story()) == 0x1a90   
   
achievement ("Super Cart 5000",
             "[Chapter 8] Upgrade the flower cart again", 5,
    trigger = UltimateCart())     
   
function ChapterEight() => Map() == ChapterComplete && prev(Map()) == CloudxSeph && Story() == ChapterEightDone   
   
achievement ("[Normal] To Nibelheim",
             "[Chapter 8] Complete Chapter 8", 2,
    trigger = NewGamePlus2() &&
              ChapterEight())   
   
achievement ("[Hard] To Nibelheim",
             "[Chapter 8] Complete Chapter 8", 3,
    trigger = NewGamePlus2() &&
              Hard() &&
              ChapterEight())  
              
function Wonders() => bit1(0xa22193)+bit2(0xa22193)+bit3(0xa22193)+bit0(0xa22195)+bit5(0xa22193)+bit6(0xa22193)    

achievement ("From the Ashes",
             "[Chapter 9] Obtain the Phoenix DMW", 1,
    trigger = Map() == Nibelheim &&
              Wonders() == 1 &&
              prev(Wonders()) == 0)       
    
achievement ("Disappearing Act",
             "[Chapter 9] Solve the case of the disappearing girl", 1,
    trigger = Map() == NibInn &&
              Wonders() == 2 &&
              prev(Wonders()) == 1)    
    
achievement ("[Normal] Golden Flakes",
             "[Chapter 9] Obtain the Golden Shard and return it to the child", 5,
    trigger = Map() == Nibelheim &&
              Wonders() == 3 &&
              prev(Wonders()) == 2)   
    
achievement ("[Hard] Golden Flakes",
             "[Chapter 9] Obtain the Golden and return it to the child", 10,
    trigger = Hard() &&
              Map() == Nibelheim &&
              Wonders() == 3 &&
              prev(Wonders()) == 2)      
    
achievement ("Laughing Safe", 
             "[Chapter 9] Investigate the safe Shinra Manor", 5,
    trigger = Map() == ShinraManor &&
              Wonders() == 4 &&
              prev(Wonders()) == 3)    
    
function GDeleters() => Map() == ReactorEntrance && Story() == GDeleterDead && prev(Story()) == GDeleterAlive     
    
achievement ("[Normal] The Jenova Project",
             "[Chapter 9] Defend Tifa outside the reactor", 5,
    trigger = GDeleters())
    
achievement ("[Hard] The Jenova Project",
             "[Chapter 9] Defend Tifa outside the reactor", 5,
    trigger = Hard() &&
              GDeleters())    
    
function BurningClock() => word(0xa28b94)
function BurningBuilding() => bit6(0xa22193) > prev(bit6(0xa22193)) 
    
achievement ("Precious Mother",
             "[Chapter 9] Rescue the boys mother from the burning building", 5,
    trigger = Map() == BurningNibelheim &&
              BurningBuilding())    
    
achievement ("Smokey Rescue",
             "[Chapter 9] Rescue the boys mother from the burning building with 40 or more seconds remaining", 10,
    trigger = Map() == BurningNibelheim &&
              BurningBuilding() &&
              BurningClock() >= 0x28) 
 
function ChapterNine() => Map() == ChapterComplete && prev(Map()) == CloudvsSeph && Story() == ChapterNineDone 
 
achievement ("[Normal] The Chosen One",
             "[Chapter 9] Complete Chapter 9", 5,
    trigger = ChapterNine()) 
 
achievement ("[Hard] The Chosen One",
             "[Chapter 9] Complete Chapter 9", 10,
    trigger = Hard() &&
              ChapterNine())  
 
function SavedCloud() => Map() == Ch10Manor && prev(Map()) == Ch10Nib && Story() == CloudSaved

achievement ("[Normal] Down & Out",
             "[Chapter 10] Rescue Cloud", 5,
    trigger = SavedCloud()) 
 
achievement ("[Hard] Down & Out",
             "[Chapter 10] Rescue Cloud", 10,
    trigger = Hard() &&
              SavedCloud())
 
achievement ("Wonders of Nibelheim",
             "[Chapter 10] Complete the 7 Wonders of Nibelheim", 5,
    trigger = Map() == WondersFinale &&
              Wonders() == 0x06 &&
              prev(Wonders()) == 0x05)
 
function EnemiesFled() => word(0xa22d30) == 0 
function SniperGame() => Story() == NibelPlainsDone && prev(Story()) == NibelPlainsBeforeDone

achievement ("[Normal] Marksman",
             "[Chapter 10] Make it through the Nibel Plains", 5,
    trigger = Map() == NibelPlains &&
              SniperGame())
 
achievement ("[Hard] Marksman",
             "[Chapter 10] Make it through the Nibel Plains", 10,
    trigger = Hard() &&
              Map() == NibelPlains &&
              SniperGame()) 
 
achievement ("[Normal] Sniper Elite",
             "[Chapter 10] Make it through the Nibel Plains without any enemies fleeing", 5,
    trigger = Map() == NibelPlains &&
              EnemiesFled() &&
              SniperGame()) 
 
achievement ("[Hard] Sniper Elite",
             "[Chapter 10] Make it through the Nibel Plains without any enemies fleeing", 10,
    trigger = Hard() &&
              Map() == NibelPlains &&
              EnemiesFled() &&
              SniperGame())  
 
function HomeTown() => Map() == AbandonedMako && Story() == GongagaArrive && prev(Story()) == GongagaEntrance 
 
achievement ("[Normal] Hometown Hero",
             "[Chapter 10] Make it to the abandoned mako reactor", 5,
    trigger = HomeTown()) 
 
achievement ("[Hard] Hometown Hero",
             "[Chapter 10] Make it to the abandoned mako reactor", 10,
    trigger = Hard() &&
              HomeTown())  
 
function GriffinChests() => bit3(0xa2219f)+bit4(0xa2219f) 
 
achievement ("[Normal] Sharp Defenses",
             "[Chapter 10] Obtain both guarded chests in the abandoned mako reactor", 2,
    trigger = Map() == AbandonedMako &&
              GriffinChests() == 2 &&
              prev(GriffinChests()) == 1) 
 
achievement ("[Hard] Sharp Defenses",
             "[Chapter 10] Obtain both guarded chests in the abandoned mako reactor", 3,
    trigger = Hard() &&
              Map() == AbandonedMako &&
              GriffinChests() == 2 &&
              prev(GriffinChests()) == 1)  
 
function Mutation() => Map() == Hills && Story() == HollanderGone && prev(Story()) == HollanderStory
 
achievement ("[Normal] Mutation",
             "[Chapter 10] Learn about the S-Cells", 5,
    trigger = Mutation()) 
 
achievement ("[Hard] Mutation",
             "[Chapter 10] Learn about the S-Cells", 10,
    trigger = Hard() &&
              Mutation())  
 
function ChapterTen() => Map() == ChapterComplete && prev(Map()) == AngealCopy && Story() == ChapterTenDone  
 
achievement ("[Normal] To Become a Hero",
             "[Chapter 10] Complete Chapter 10", 5,
    trigger = ChapterTen()) 
 
achievement ("[Hard] To Become a Hero",
             "[Chapter 10] Complete Chapter 10", 10,
    trigger = Hard() &&
              ChapterTen()) 
 
function BehemothKing() => Map() == 0x1555 && Story() == 0x2727 && prev(Story()) == 0x2726
 
achievement ("[Normal] King of Beasts", 
             "[Chapter 11] Defeat the King of Beasts in the Howling Fang", 5,
    trigger = BehemothKing()) 
 
achievement ("[Hard] King of Beasts", 
             "[Chapter 11] Defeat the King of Beasts in the Howling Fang", 10,
    trigger = Hard() &&
              BehemothKing())  
 
function GateToGenesis() => Map() == GensisEntered && prior(Map()) == GenesisGate && Story() == GenesisGateOpen
 
achievement ("[Normal] Gates of Light",
             "[Chapter 11] Pass through the Gates of Light", 5,
    trigger = GateToGenesis()) 
 
achievement ("[Hard] Gates of Light",
             "[Chapter 11] Pass through the Gates of Light", 10,
    trigger = Hard() &&
              GateToGenesis())  
 
function Finale() => Map() == 0x1557 && prior(Map()) == 0x154d && Story() == 0x2af9  
 
achievement ("[Normal] LOVELESS",
             "[Chapter 11] I offer thee this silent sacrifice", 10,
    trigger = Finale()) 
 
achievement ("[Hard] LOVELESS",
             "[Chapter 11] I offer thee this silent sacrifice", 25,
    trigger = Hard() &&
              Finale())  
 
function SoldierFirstClass() => Map() == FinalStand && Story() == TheFinalStand

achievement ("SOLDIER 1st Class, Zack",
             "The price of freedom is steep", 1,
    trigger = SoldierFirstClass() &&
              ZackHealth() == 0 &&
              prev(ZackHealth()) != 0 &&
              Battle() != 0) 
              
function DMWMap() => dword(0xa22a94)
IfritSummon = 0x1642
TonberrySummon = 0x166a
BahamutSummon = 0x1649
OdinSummon = 0x161e
ChocoboSummon = 0x15c1
CaitSummon = 0x15c2
MoogleSummon = 0x15c4
Ziedrich = 0x169d
GenjiGloves = 0x157e
Minerva = 0x1643
GenjiShield = 0x1674
CactuarSummon = 0x1668
BahaFury = 0x16aa

function MinervaDMW() => prev(DMWMap()) == Minerva && byte(0xa224b7) > prev(byte(0xa224b7))

achievement ("[Normal] Judgement",
             "Defeat Minerva and obtain your first Divine Slayer", 25,
    trigger = MinervaDMW())
    
achievement ("[Hard] Judgement",
             "Defeat Minerva and obtain your first Divine Slayer", 25,
    trigger = Hard() &&
              MinervaDMW())    

achievement("Mail Call!", "Read 58 mails", 5, 
    sum_of(range(0xA225E7,0xa227b7,step=4), addr => byte(addr)) == 0x3a &&
    sum_of(range(0xA225E7,0xa227b7,step=4), addr => prev(byte(addr))) == 0x39)


function Mailtime() => sum_of(range(0xA225E7,0xa227b7,step=4), addr => byte(addr))

achievement("Mailing List", "Read 117 mails", 5, 
    Mailtime() == 0x75 &&
    prev(Mailtime()) == 0x74)

function InventoryExpansion() => tally(0,prev(Map()) == 0x15e0 || prev(Map()) == 0x1617) &&
                                  byte(0xa2238e)+byte(0xa22433) == 2 && prev(byte(0xa2238e)+byte(0xa22433)) == 1
 
achievement ("Fully Loaded",
             "Obtain both additional equipment slots", 3,
    trigger = InventoryExpansion()) 
              
function Jackpot() => dword(0xa43f4c)+dword(0xa43f50)+dword(0xa43f54)+dword(0xa43f58)+dword(0xa43f5c)+dword(0xa43f60)+
                      dword(0xa43f64)+dword(0xa43f68)+dword(0xa43f6c)+dword(0xa43f70)+dword(0xa43f74)+dword(0xa43f78)+
                      dword(0xa43f7c)+dword(0xa43f80)+dword(0xa43f84)+dword(0xa43f88)+dword(0xa43f8c)+dword(0xa43f90)

function SIKE() => dword(0xa43f04)+dword(0xa43f08)+dword(0xa43f0c)+dword(0xa43f10)+dword(0xa43f14)+dword(0xa43f18)+
                   dword(0xa43f1c)+dword(0xa43f20)+dword(0xa43f24)+dword(0xa43f28)+dword(0xa43f2c)+dword(0xa43f30)+
                   dword(0xa43f34)+dword(0xa43f38)+dword(0xa43f3c)+dword(0xa43f40)+dword(0xa43f44)+dword(0xa43f48)

achievement ("Jackpot!",
            "500 Limit Break triggered", 5,
    trigger = Jackpot() == 500 &&
              prev(Jackpot()) == 499)

achievement ("SIKE!",
            "500 Limit Verges triggered", 5,
    trigger = SIKE() == 500 &&
              prev(SIKE()) == 499)           
                           
function IfritDMW() => prev(DMWMap()) == IfritSummon && byte(0xa224b4) > prev(byte(0xa224b4))
 
achievement ("Hellfire",
             "Obtain Ifrit DMW", 1,
    trigger = IfritDMW())
    
function TonberryDMW() => prev(DMWMap()) == TonberrySummon && byte(0xa2252c) > prev(byte(0xa2252c))
 
achievement ("Kitchen Knife",
             "Obtain Tonberry DMW", 5,
    trigger = TonberryDMW()) 
 
function BahamutDWM() => prev(DMWMap()) == BahamutSummon && byte(0xa224c9) > prev(byte(0xa224c9))
 
achievement ("Megaflare",
             "Obtain Bahamut DMW", 5,
    trigger = BahamutDWM()) 

function BahaFuryDMW() => prev(DMWMap()) == BahaFury && byte(0xa22352) > prev(byte(0xa22352))

achievement ("Exa Flare",
             "Obtain Bahamut Fury DMW", 5,
    trigger = BahaFuryDMW())
 
function OdinDMW() => prev(DMWMap()) == OdinSummon && byte(0xa22448) > prev(byte(0xa22448))
 
achievement ("Zantetsuken",
             "Obtain Odin DMW", 3,
    trigger = OdinDMW())  
 
function ChocoboDMW() => prev(DMWMap()) == ChocoboSummon && byte(0xa22331) > prev(byte(0xa22331))
 
achievement ("Stomp",
             "Obtain Chocobo DMW", 1,
    trigger = DMWMap() == ChocoboSummon &&
              ItemObtained(0x3020))  
 
achievement ("Courage",
             "Obtain Cait Sith DMW", 1,
    trigger = DMWMap() == CaitSummon &&
              ItemObtained(0x3023))   
 
achievement ("Power",
             "Obtain Moogle DMW", 1,
    trigger = DMWMap() == MoogleSummon &&
              ItemObtained(0x3024))  

function CactuarDMW() => prev(DMWMap()) == CactuarSummon && byte(0xa22526) > prev(byte(0xa22526))

achievement ("Prickly",
             "Obtain Cactuar DMW", 1,
    trigger = CactuarDMW())
    
function MagicPotMaps() => dword(0xa22a94)
TwoTwoSix = 0x15bc
TwoFiveFour = 0x15b2
TwoFiveFive = 0x1670
TwoFiveSix = 0x1671
SevenSixSix = 0x1674
TenTwoThree = 0x166a  

    
function MagicPotDMW() => tally(0,MagicPotMaps() == TwoTwoSix || MagicPotMaps() == TwoFiveFour ||  MagicPotMaps() == TwoFiveFive ||
                          MagicPotMaps() == TwoFiveSix || MagicPotMaps() == SevenSixSix || MagicPotMaps() == TenTwoThree)
                          
function hasArmor(startaddr) {
    trigger = always_true()
    for i in range(0, 255){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x3025 
    }
    return trigger
}

achievement ("Simon Says",
             "Obtain Magic Pot DMW", 4,
    trigger = MagicPotDMW() &&
              hasArmor(0xa42238) &&
              ItemObtained(0x3025))

function hasZiedrich(startaddr) {
    trigger = always_true()
    for i in range(0, 255){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x5065 
    }
    return trigger
}
 
achievement ("Elemental",
             "Obtain the Ziedrich", 5,
    trigger = DMWMap() == Ziedrich &&
              hasZiedrich(0xa42238) &&
              ItemObtained(0x5065)) 
 
achievement ("Infinite Knowledge",
             "Obtain the Genji Helm", 10,
    trigger = Gil() < prev(Gil()) &&
              ItemObtained(0x5066)) 

function hasGloves(startaddr) {
    trigger = always_true()
    for i in range(0, 255){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x5069 
    }
    return trigger
} 
              
achievement ("To Go Even Further Beyond",
             "Obtain the Genji Gloves", 1,
    trigger = DMWMap() == GenjiGloves &&
              hasGloves(0xa42238) &&
              ItemObtained(0x5069))

function hasShield(startaddr) {
    trigger = always_true()
    for i in range(0, 255){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x3068 
    }
    return trigger
} 
              
achievement ("Ultimate Barrier",
             "Obtain the Genji Shield", 5,
    trigger = DMWMap() == GenjiShield && 
              hasShield(0xa42238) &&
              ItemObtained(0x3068))

function HasArmor(startaddr) {
    trigger = always_true()
    for i in range(0, 255){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x3068 
    }
    return trigger
} 

function GenjiArmor() => bit0(0xa43f94)+
                         bit1(0xa43f94)+
                         bit2(0xa43f94)+
                         bit3(0xa43f94)+
                         bit4(0xa43f94)+
                         bit5(0xa43f94)+
                         dword(0xa43f4c)/dword(0xa43f4c)+
                         bit0(0xa43f95)+
                         bit1(0xa43f95)+
                         bit2(0xa43f95)+
                         bit3(0xa43f95)+
                         bit4(0xa43f95)+
                         bit5(0xa43f95)+
                         dword(0xa43f50)/dword(0xa43f50)+
                         bit0(0xa43f96)+
                         bit1(0xa43f96)+
                         bit2(0xa43f96)+
                         bit3(0xa43f96)+
                         bit4(0xa43f96)+
                         bit5(0xa43f96)+
                         dword(0xa43f54)/dword(0xa43f54)+                          
                         bit0(0xa43f97)+
                         bit1(0xa43f97)+
                         bit2(0xa43f97)+
                         bit3(0xa43f97)+
                         bit4(0xa43f97)+
                         bit5(0xa43f97)+
                         dword(0xa43f58)/dword(0xa43f58)+
                         bit0(0xa43f98)+
                         bit1(0xa43f98)+
                         bit2(0xa43f98)+
                         bit3(0xa43f98)+
                         bit4(0xa43f98)+
                         bit5(0xa43f98)+
                         dword(0xa43f5c)/dword(0xa43f5c)+                         
                         bit0(0xa43f99)+
                         bit1(0xa43f99)+
                         bit2(0xa43f99)+
                         bit3(0xa43f99)+
                         bit4(0xa43f99)+
                         bit5(0xa43f99)+
                         dword(0xa43f60)/dword(0xa43f60) +                             
                         bit0(0xa43f9a)+
                         bit1(0xa43f9a)+
                         dword(0xa43f64)/dword(0xa43f64)
                                         
achievement ("Genji Armor",
             "Obtain 100% in all DMW's", 5,
    trigger = GenjiArmor() == 45 &&
              prev(GenjiArmor()) == 44 &&
              HasArmor(0xa42238))
                        
function HeikeObtained() => sum_of(range(0xa22262,0xa225e3,step=3), addr => byte(addr))                       

                         
achievement ("Soul of a God", 
             "Obtain Heike Soul", 10,
    trigger = HeikeObtained() == 300 &&
              prev(HeikeObtained()) == 299)              

function TrainingMissions() => byte(0xa224ba)+byte(0xa22592)+byte(0xa22274)+byte(0xa22277)+byte(0xa22280)+byte(0xa22283)

achievement ("[Normal] Training Missions",
             "[Mission] Complete all Shinra Electric Power Company > Training Missions missions", 5,
    trigger = TrainingMissions() == 0x06 &&
              prev(TrainingMissions()) == 0x05)

achievement ("[Hard] Training Missions",
             "[Mission] Complete all Shinra Electric Power Company > Training Missions missions", 10,
    trigger = Hard() &&
              TrainingMissions() == 0x06 &&
              prev(TrainingMissions()) == 0x05)
              
function PeacekeepingTroops() => byte(0xa222fb)+byte(0xa222f2)+byte(0xa222f5)+byte(0xa222f8)+byte(0xa222fe)+byte(0xa222a7)

achievement ("[Normal] Peacekeeping Troops",
             "[Mission] Complete all Shinra Electric Power Company > Peacekeeping Troops missions", 5,
    trigger = PeacekeepingTroops() == 0x06 &&
              prev(PeacekeepingTroops()) == 0x05)

achievement ("[Hard] Peacekeeping Troops",
             "[Mission] Complete all Shinra Electric Power Company > Peacekeeping Troops missions", 10,
    trigger = Hard() &&
              PeacekeepingTroops() == 0x06 &&
              prev(PeacekeepingTroops()) == 0x05)
              
function WeaponsDevelopment() => byte(0xa22538)+byte(0xa2244b)+byte(0xa222a1)+byte(0xa22295)+byte(0xa22289)+byte(0xa22286)

achievement ("[Normal] Weapons Development",
             "[Mission] Complete all Shinra Electric Power Company > Weapons Development missions", 5,
    trigger = WeaponsDevelopment() == 0x06 &&
              prev(WeaponsDevelopment()) == 0x05)              

achievement ("[Hard] Weapons Development",
             "[Mission] Complete all Shinra Electric Power Company > Weapons Development missions", 10,
    trigger = Hard() &&
              WeaponsDevelopment() == 0x06 &&
              prev(WeaponsDevelopment()) == 0x05)              
    
    
function PlanforNewEquipment() => byte(0xa22298)+byte(0xa222b6)+byte(0xa222bc)+byte(0xa2230d)+byte(0xa223a0)+byte(0xa223d6)

achievement ("[Normal] Plan for New Equipment",
             "[Mission] Complete all Shinra Electric Power Company > Plan for New Equipment missions", 5,
    trigger = PlanforNewEquipment() == 0x06 &&
              prev(PlanforNewEquipment()) == 0x05)   

achievement ("[Hard] Plan for New Equipment",
             "[Mission] Complete all Shinra Electric Power Company > Plan for New Equipment missions", 10,
    trigger = Hard() &&
              PlanforNewEquipment() == 0x06 &&
              prev(PlanforNewEquipment()) == 0x05)
              
function SpecialOperationsArmsLaboratory() => byte(0xa22319)+byte(0xa2238b)+byte(0xa223ac)+byte(0xa223bb)+byte(0xa223e8)+byte(0xa223f1)

achievement ("[Normal] Special Operations Arms Laboratory",
             "[Mission] Complete all Shinra Electric Power Company > Special Operations Arms Laboratory missions", 5,
    trigger = SpecialOperationsArmsLaboratory() == 0x06 &&
              prev(SpecialOperationsArmsLaboratory()) == 0x05)   

achievement ("[Hard] Special Operations Arms Laboratory",
             "[Mission] Complete all Shinra Electric Power Company > Special Operations Arms Laboratory missions", 10,
    trigger = Hard() &&
              SpecialOperationsArmsLaboratory() == 0x06 &&
              prev(SpecialOperationsArmsLaboratory()) == 0x05)

function ShinraElectricPowerCompany() => SpecialOperationsArmsLaboratory()+PlanforNewEquipment()+WeaponsDevelopment()+PeacekeepingTroops()+TrainingMissions()
  
achievement ("[Normal] Shinra Electric Power Company",
             "[Mission] Complete all Shinra Electric Power Company missions", 5,
    trigger =   ShinraElectricPowerCompany() == 0x1e &&
                prev(ShinraElectricPowerCompany()) == 0x1d)

achievement ("[Hard] Shinra Electric Power Company",
             "[Mission] Complete all Shinra Electric Power Company missions", 10,
    trigger =   Hard() &&
                ShinraElectricPowerCompany() == 0x1e &&
                prev(ShinraElectricPowerCompany()) == 0x1d)
                
function MonstersInMidgar() => byte(0xa2230a)+byte(0xa22373)+byte(0xa22376)+byte(0xa22379)+byte(0xa2237c)+byte(0xa22382)

achievement ("[Normal] Monsters in Midgar",
             "[Mission] Complete all Monster Research Project > Monsters in Midgar missions", 5,
    trigger = MonstersInMidgar() == 0x06 &&
              prev(MonstersInMidgar()) == 0x05) 

achievement ("[Hard] Monsters in Midgar",
             "[Mission] Complete all Monster Research Project > Monsters in Midgar missions", 10,
    trigger = Hard() &&
              MonstersInMidgar() == 0x06 &&
              prev(MonstersInMidgar()) == 0x05) 

function MonsterReports() => byte(0xa22322)+byte(0xa22535)+byte(0xa22550)+byte(0xa2258c)+byte(0xa225aa)+byte(0xa225cb)
 
achievement ("[Normal] Monster Reports",
             "[Mission] Complete all Monster Research Project > Monster Reports missions", 5,
    trigger = MonsterReports() == 0x06 &&
              prev(MonsterReports()) == 0x05)  

achievement ("[Hard] Monster Reports",
             "[Mission] Complete all Monster Research Project > Monster Reports missions", 10,
    trigger = Hard() &&
              MonsterReports() == 0x06 &&
              prev(MonsterReports()) == 0x05)  
                           
function MonsterIncidents() => byte(0xa222b9)+byte(0xa222c5)+byte(0xa222d4)+byte(0xa2237f)+byte(0xa22403)+byte(0xa224d2)            
              
achievement ("[Normal] Monster Incidents",
             "[Mission] Complete all Monster Research Project > Monster Incidents missions", 5,
    trigger = MonsterIncidents() == 0x06 &&
              prev(MonsterIncidents()) == 0x05)               

achievement ("[Hard] Monster Incidents",
             "[Mission] Complete all Monster Research Project > Monster Incidents missions", 10,
    trigger = Hard() &&
              MonsterIncidents() == 0x06 &&
              prev(MonsterIncidents()) == 0x05)  
              
function UnexploredTerritories() => byte(0xa22496)+byte(0xa224c3)+byte(0xa224c6)+byte(0xa2252f)+byte(0xa2253b)+byte(0xa22301)

achievement ("[Normal] Unexplored Territories",
             "[Mission] Complete all Monster Research Project > Unexplored Territories missions", 5,
    trigger = UnexploredTerritories() == 0x06 &&
              prev(UnexploredTerritories()) == 0x05)    

achievement ("[Hard] Unexplored Territories",
             "[Mission] Complete all Monster Research Project > Unexplored Territories missions", 10,
    trigger = Hard() &&
              UnexploredTerritories() == 0x06 &&
              prev(UnexploredTerritories()) == 0x05)  

function InSearchOfTheUnknown() => byte(0xa222d7)+byte(0xa22304)+byte(0xa22337)+byte(0xa22499)+byte(0xa2253e)+byte(0xa22541)
              
achievement ("[Normal] In Search of the Unknown",
             "[Mission] Complete all Monster Research Project > In Search of the Unknown missions", 5,
    trigger = InSearchOfTheUnknown() == 0x06 &&
              prev(InSearchOfTheUnknown()) == 0x05)               

achievement ("[Hard] In Search of the Unknown",
             "[Mission] Complete all Monster Research Project > In Search of the Unknown missions", 10,
    trigger = Hard() &&
              InSearchOfTheUnknown() == 0x06 &&
              prev(InSearchOfTheUnknown()) == 0x05) 
              
function MonsterResearchProject() => InSearchOfTheUnknown()+UnexploredTerritories()+MonsterIncidents()+MonsterReports()+MonstersInMidgar()             
              
achievement ("[Normal] Monster Research Project",
             "[Mission] Complete all Monster Research Project missions", 5,
    trigger =   MonsterResearchProject() == 0x1e &&
                prev(MonsterResearchProject()) == 0x1d)              

achievement ("[Hard] Monster Research Project",
             "[Mission] Complete all Monster Research Project missions", 10,
    trigger =   Hard() &&
                MonsterResearchProject() == 0x1e &&
                prev(MonsterResearchProject()) == 0x1d) 
              
function GenesisForcesOnTheMarch() => byte(0xa22265)+byte(0xa2226e)+byte(0xa222a2)+byte(0xa224f6)+byte(0xa22514)+byte(0xa22532)
 
achievement ("[Normal] Genesis's Forces on the March",
             "[Mission] Complete all Genesis's Forces > Genesis's Forces on the March missions", 5,
    trigger = GenesisForcesOnTheMarch() == 0x06 &&
              prev(GenesisForcesOnTheMarch()) == 0x05)  

achievement ("[Hard] Genesis's Forces on the March",
             "[Mission] Complete all Genesis's Forces > Genesis's Forces on the March missions", 10,
    trigger = Hard() &&
              GenesisForcesOnTheMarch() == 0x06 &&
              prev(GenesisForcesOnTheMarch()) == 0x05) 
              
function MajorOffensives() => byte(0xa2227a)+byte(0xa2227d)+byte(0xa22553)+byte(0xa22574)+byte(0xa2258f)+byte(0xa225c8)              
 
achievement ("[Normal] Major Offensives",
             "[Mission] Complete all Genesis's Forces > Major Offensives missions", 5,
    trigger = MajorOffensives() == 0x06 &&
              prev(MajorOffensives()) == 0x05)  

achievement ("[Hard] Major Offensives",
             "[Mission] Complete all Genesis's Forces > Major Offensives missions", 10,
    trigger = Hard() &&
              MajorOffensives() == 0x06 &&
              prev(MajorOffensives()) == 0x05) 
              
function ClashWithGenesisForces() => byte(0xa222ec)+byte(0xa222ef)+byte(0xa223f7)+byte(0xa223fa)+byte(0xa22460)+byte(0xa224c0)          

achievement ("[Normal] Clash With Genesis's Forces",
             "[Mission] Complete all Genesis's Forces > Clash With Genesis's Forces missions", 5,
    trigger = ClashWithGenesisForces() == 0x06 &&
              prev(ClashWithGenesisForces()) == 0x05)  

achievement ("[Hard] Clash With Genesis's Forces",
             "[Mission] Complete all Genesis's Forces > Clash With Genesis's Forces missions", 10,
    trigger = Hard() &&
              ClashWithGenesisForces() == 0x06 &&
              prev(ClashWithGenesisForces()) == 0x05)
              
function GenesisEvolution() => byte(0xa222bf)+byte(0xa222c2)+byte(0xa222c8)+byte(0xa222cb)+byte(0xa222ce)+byte(0xa223ee)               
  
achievement ("[Normal] Genesis Evolution",
             "[Mission] Complete all Genesis's Forces > Genesis Evolution missions", 5,
    trigger = GenesisEvolution() == 0x06 &&
              prev(GenesisEvolution()) == 0x05)    

achievement ("[Hard] Genesis Evolution",
             "[Mission] Complete all Genesis's Forces > Genesis Evolution missions", 10,
    trigger = Hard() &&
              GenesisEvolution() == 0x06 &&
              prev(GenesisEvolution()) == 0x05) 
              
function TheStronestCopies() => byte(0xa222d1)+byte(0xa222da)+byte(0xa222dd)+byte(0xa22358)+byte(0xa22481)+byte(0xa224bd)               
  
achievement ("[Normal] The Strongest Copies",
             "[Mission] Complete all Genesis's Forces > The Strongest Copies missions", 5,
    trigger = TheStronestCopies() == 0x06 &&
              prev(TheStronestCopies()) == 0x05)    

achievement ("[Hard] The Strongest Copies",
             "[Mission] Complete all Genesis's Forces > The Strongest Copies missions", 10,
    trigger = Hard() &&
              TheStronestCopies() == 0x06 &&
              prev(TheStronestCopies()) == 0x05)
              
function GenesisForces() => GenesisForcesOnTheMarch()+MajorOffensives()+ClashWithGenesisForces()+GenesisEvolution()+TheStronestCopies()               
              
achievement ("[Normal] Genesis's Forces",
             "[Mission] Complete all Genesis's Forces missions", 5,
    trigger = GenesisForces() == 0x1e &&
              prev(GenesisForces()) == 0x1d)              
 
achievement ("[Hard] Genesis's Forces",
             "[Mission] Complete all Genesis's Forces missions", 10,
    trigger = Hard() &&
              GenesisForces() == 0x1e &&
              prev(GenesisForces()) == 0x1d) 
              
function PursueTheRemnants() => byte(0xa2229e)+byte(0xa22307)+byte(0xa223fd)+byte(0xa2245d)+byte(0xa224a8)+byte(0xa224d8)                
 
achievement ("[Normal] Pursue The Remnants",
             "[Mission] Complete all To End the War with Wutai > Pursue The Remnants missions", 5,
    trigger = PursueTheRemnants() == 0x06 &&
              prev(PursueTheRemnants()) == 0x05)  

achievement ("[Hard] Pursue The Remnants",
             "[Mission] Complete all To End the War with Wutai > Pursue The Remnants missions", 10,
    trigger = Hard() &&
              PursueTheRemnants() == 0x06 &&
              prev(PursueTheRemnants()) == 0x05)
              
function BehindTheScenes() => byte(0xa22313)+byte(0xa2239a)+byte(0xa223a3)+byte(0xa2242d)+byte(0xa22463)+byte(0xa2249c)                   
    
achievement ("[Normal] Behind The Scene",
             "[Mission] Complete all To End the War with Wutai > Behind The Scene missions", 5,
    trigger = BehindTheScenes() == 0x06 &&
              prev(BehindTheScenes()) == 0x05)      

achievement ("[Hard] Behind The Scene",
             "[Mission] Complete all To End the War with Wutai > Behind The Scene missions", 10,
    trigger = Hard() &&
              BehindTheScenes() == 0x06 &&
              prev(BehindTheScenes()) == 0x05)
              
function TheCrescentUnit() => byte(0xa22394)+byte(0xa2228c)+byte(0xa22397)+byte(0xa2231f)+byte(0xa22310)+byte(0xa22385)               
  
achievement ("[Normal] The Crescent Unit",
             "[Mission] Complete all To End the War with Wutais > The Crescent Unit missions", 5,
    trigger = TheCrescentUnit() == 0x06 &&
              prev(TheCrescentUnit()) == 0x05)    

achievement ("[Hard] The Crescent Unit",
             "[Mission] Complete all To End the War with Wutais > The Crescent Unit missions", 10,
    trigger = Hard() &&
              TheCrescentUnit() == 0x06 &&
              prev(TheCrescentUnit()) == 0x05) 
              
function TheRemnantsStrikeAgain() => byte(0xa22292)+byte(0xa22325)+byte(0xa22409)+byte(0xa2240c)+byte(0xa2240f)+byte(0xa224ae)               
  
achievement ("[Normal] The Remnants Strike Again",
             "[Mission] Complete all To End the War with Wutai > The Remnants Strike Again missions", 5,
    trigger = TheRemnantsStrikeAgain() == 0x06 &&
              prev(TheRemnantsStrikeAgain()) == 0x05)    

achievement ("[Hard] The Remnants Strike Again",
             "[Mission] Complete all To End the War with Wutai > The Remnants Strike Again missions", 10,
    trigger = Hard() &&
              TheRemnantsStrikeAgain() == 0x06 &&
              prev(TheRemnantsStrikeAgain()) == 0x05)
              
function AnnihilateTheCrescentUnit() => byte(0xa22388)+byte(0xa22412)+byte(0xa22421)+byte(0xa22424)+byte(0xa22427)+byte(0xa224b1)               
              
achievement ("[Normal] Annihilate the Crescent Unit",
             "[Mission] Complete all To End the War with Wutai > Annihilate the Crescent Unit missions", 5,
    trigger = AnnihilateTheCrescentUnit() == 0x06 &&
              prev(AnnihilateTheCrescentUnit()) == 0x05)                

achievement ("[Hard] Annihilate the Crescent Unit",
             "[Mission] Complete all To End the War with Wutai > Annihilate the Crescent Unit missions", 10,
    trigger = Hard() &&
              AnnihilateTheCrescentUnit() == 0x06 &&
              prev(AnnihilateTheCrescentUnit()) == 0x05) 
              
function ToEndTheWarWithWutai() => AnnihilateTheCrescentUnit()+TheRemnantsStrikeAgain()+TheCrescentUnit()+BehindTheScenes()+PursueTheRemnants()           
        
achievement ("[Normal] To End the War with Wutai",
             "[Mission] Complete all To End the War with Wutai missions", 5,
    trigger = ToEndTheWarWithWutai() == 0x1e &&
              prev(ToEndTheWarWithWutai()) == 0x1d)        

achievement ("[Hard] To End the War with Wutai",
             "[Mission] Complete all To End the War with Wutai missions", 10,
    trigger = Hard() &&
              ToEndTheWarWithWutai() == 0x1e &&
              prev(ToEndTheWarWithWutai()) == 0x1d)
        
function SampleMonsters1() => byte(0xa222e6)+byte(0xa224cf)+byte(0xa224d5)+byte(0xa224de)+byte(0xa224ea)+byte(0xa22571)          
 
achievement ("[Normal] Sample Monsters I",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters I missions", 5,
    trigger = SampleMonsters1() == 0x06 &&
              prev(SampleMonsters1()) == 0x05)  

achievement ("[Hard] Sample Monsters I",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters I missions", 10,
    trigger = Hard() &&
              SampleMonsters1() == 0x06 &&
              prev(SampleMonsters1()) == 0x05) 
        
function SampleMonsters2() => byte(0xa224e1)+byte(0xa224e4)+byte(0xa224e7)+byte(0xa224ed)+byte(0xa224f0)+byte(0xa224f3)        
        
achievement ("[Normal] Sample Monsters II",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters II missions", 5,
    trigger = SampleMonsters2() == 0x06 &&
              prev(SampleMonsters2()) == 0x05)         

achievement ("[Hard] Sample Monsters II",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters II missions", 10,
    trigger = Hard() &&
              SampleMonsters2() == 0x06 &&
              prev(SampleMonsters2()) == 0x05) 
        
function SampleMonsters3() => byte(0xa224fc)+byte(0xa224ff)+byte(0xa22502)+byte(0xa22505)+byte(0xa22508)+byte(0xa2250b)        
        
achievement ("[Normal] Sample Monsters III",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters III missions", 5,
    trigger = SampleMonsters3() == 0x06 &&
              prev(SampleMonsters3()) == 0x05)   

achievement ("[Hard] Sample Monsters III",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters III missions", 10,
    trigger = Hard() &&
              SampleMonsters3() == 0x06 &&
              prev(SampleMonsters3()) == 0x05) 
       
function SampleMonsters4() => byte(0xa2250e)+byte(0xa22511)+byte(0xa2251a)+byte(0xa2251d)+byte(0xa22520)+byte(0xa22523)        
        
achievement ("[Normal] Sample Monsters IV",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters IV missions", 5,
    trigger = SampleMonsters4() == 0x06 &&
              prev(SampleMonsters4()) == 0x05)         

achievement ("[Hard] Sample Monsters IV",
             "[Mission] Complete all Hojo's Laboratory > Sample Monsters IV missions", 10,
    trigger = Hard() &&
              SampleMonsters4() == 0x06 &&
              prev(SampleMonsters4()) == 0x05)
        
function HojosLaboratory() => SampleMonsters1()+SampleMonsters2()+SampleMonsters3()+SampleMonsters4()        
        
achievement ("[Normal] Hojo's Laboratory",
             "[Mission] Complete all Hojo's Laboratory missions", 5,
    trigger = HojosLaboratory() == 0x18 &&
              prev(HojosLaboratory()) == 0x17)        

achievement ("[Hard] Hojo's Laboratory",
             "[Mission] Complete all Hojo's Laboratory missions", 10,
    trigger = Hard() &&
              HojosLaboratory() == 0x18 &&
              prev(HojosLaboratory()) == 0x17)
        
function LookingForItems() => byte(0xa224db)+byte(0xa2232b)+byte(0xa2229b)+byte(0xa22400)+byte(0xa222e9)+byte(0xa223d9)         
        
achievement ("[Normal] Looking for Items",
             "[Mission] Complete all Seeking Precious Items > Looking for Items missions", 5,
    trigger = LookingForItems() == 0x06 &&
              prev(LookingForItems()) == 0x05) 

achievement ("[Hard] Looking for Items",
             "[Mission] Complete all Seeking Precious Items > Looking for Items missions", 10,
    trigger = Hard() &&
              LookingForItems() == 0x06 &&
              prev(LookingForItems()) == 0x05)
        
function MidgarCityDevelopmentDepartment() => byte(0xa222b3)+byte(0xa223d3)+byte(0xa223b5)+byte(0xa223d0)+byte(0xa2231c)+byte(0xa223a6)         
        
achievement ("[Normal] Midgar City Development Department",
             "[Mission] Complete all Seeking Precious Items > Midgar City Development Department missions", 5,
    trigger = MidgarCityDevelopmentDepartment() == 0x06 &&
              prev(MidgarCityDevelopmentDepartment()) == 0x05)         

achievement ("[Hard] Midgar City Development Department",
             "[Mission] Complete all Seeking Precious Items > Midgar City Development Department missions", 10,
    trigger = Hard() &&
              MidgarCityDevelopmentDepartment() == 0x06 &&
              prev(MidgarCityDevelopmentDepartment()) == 0x05) 
        
function ZackTheTreasureHunter() => byte(0xa223b8)+byte(0xa22556)+byte(0xa22439)+byte(0xa2247e)+byte(0xa2242a)+byte(0xa22457) 
        
achievement ("[Normal] Zack, The Treasure Hunter",
             "[Mission] Complete all Seeking Precious Items > Zack, The Treasure Hunter missions", 5,
    trigger = ZackTheTreasureHunter() == 0x06 &&
              prev(ZackTheTreasureHunter()) == 0x05)         

achievement ("[Hard] Zack, The Treasure Hunter",
             "[Mission] Complete all Seeking Precious Items > Zack, The Treasure Hunter missions", 10,
    trigger = Hard() &&
              ZackTheTreasureHunter() == 0x06 &&
              prev(ZackTheTreasureHunter()) == 0x05)
        
function ZackTheCleanUpGuy() => byte(0xa22391)+byte(0xa223e2)+byte(0xa2246f)+byte(0xa2239d)+byte(0xa223be)+byte(0xa2245a)         
        
achievement ("[Normal] Zack, The Clean-up Guy",
             "[Mission] Complete all Seeking Precious Items > Zack, The Clean-up Guy missions", 5,
    trigger = ZackTheCleanUpGuy() == 0x06 &&
              prev(ZackTheCleanUpGuy()) == 0x05)         

achievement ("[Hard] Zack, The Clean-up Guy",
             "[Mission] Complete all Seeking Precious Items > Zack, The Clean-up Guy missions", 10,
    trigger = Hard() &&
              ZackTheCleanUpGuy() == 0x06 &&
              prev(ZackTheCleanUpGuy()) == 0x05) 
        
function ZackTheCorporationCrusher() => byte(0xa22472)+byte(0xa2243c)+byte(0xa223cd)+byte(0xa22445)+byte(0xa2247b)+byte(0xa22430)          
        
achievement ("[Normal] Zack, the Corporation Crusher",
             "[Mission] Complete all Seeking Precious Items > Zack, the Corporation Crusher missions", 5,
    trigger = ZackTheCorporationCrusher() == 0x06 &&
              prev(ZackTheCorporationCrusher()) == 0x05)         
 
achievement ("[Hard] Zack, the Corporation Crusher",
             "[Mission] Complete all Seeking Precious Items > Zack, the Corporation Crusher missions", 10,
    trigger = Hard() &&
              ZackTheCorporationCrusher() == 0x06 &&
              prev(ZackTheCorporationCrusher()) == 0x05) 
        
function CounterMafiaProject() => byte(0xa222aa)+byte(0xa222ad)+byte(0xa2244e)+byte(0xa22451)+byte(0xa2254d)+byte(0xa224ab)           
        
achievement ("[Normal] Counter-Mafia Project",
             "[Mission] Complete all Seeking Precious Items > Counter-Mafia Project missions", 5,
    trigger = CounterMafiaProject() == 0x06 &&
              prev(CounterMafiaProject()) == 0x05) 

achievement ("[Hard] Counter-Mafia Project",
             "[Mission] Complete all Seeking Precious Items > Counter-Mafia Project missions", 10,
    trigger = Hard() &&
              CounterMafiaProject() == 0x06 &&
              prev(CounterMafiaProject()) == 0x05) 
        
function SeekingPreciousItems() => LookingForItems()+MidgarCityDevelopmentDepartment()+ZackTheTreasureHunter()+ZackTheCleanUpGuy()+ZackTheCorporationCrusher()+CounterMafiaProject()       
        
achievement ("[Normal] Seeking Precious Items",
             "[Mission] Complete all Seeking Precious Items missions", 5,
    trigger = SeekingPreciousItems() == 0x24 &&
              prev(SeekingPreciousItems()) == 0x23)         

achievement ("[Hard] Seeking Precious Items",
             "[Mission] Complete all Seeking Precious Items missions", 10,
    trigger = Hard() &&
              SeekingPreciousItems() == 0x24 &&
              prev(SeekingPreciousItems()) == 0x23) 
        
function RecallMissions() => byte(0xa22316)+byte(0xa223af)+byte(0xa223dc)+byte(0xa223e5)+byte(0xa223eb)+byte(0xa22595)               
              
achievement ("[Normal] Recall Missions",
             "[Mission] Complete all Seeking Priceless Items > Recall Missions missions", 5,
    trigger = RecallMissions() == 0x06 &&
              prev(RecallMissions()) == 0x05)               
 
achievement ("[Hard] Recall Missions",
             "[Mission] Complete all Seeking Priceless Items > Recall Missions missions", 10,
    trigger = Hard() &&
              RecallMissions() == 0x06 &&
              prev(RecallMissions()) == 0x05)  
              
function PreciousThings() => byte(0xa2238e)+byte(0xa223c4)+byte(0xa223f4)+byte(0xa22433)+byte(0xa22436)+byte(0xa22517)              
              
achievement ("[Normal] Precious Things",
             "[Mission] Complete all Seeking Priceless Items > Precious Things missions", 5,
    trigger = PreciousThings() == 0x06 &&
              prev(PreciousThings()) == 0x05)               

achievement ("[Hard] Precious Things",
             "[Mission] Complete all Seeking Priceless Items > Precious Things missions", 10,
    trigger = Hard() &&
              PreciousThings() == 0x06 &&
              prev(PreciousThings()) == 0x05)
              
function ESPDevelopmentProject() => byte(0xa2228f)+byte(0xa222b0)+byte(0xa22415)+byte(0xa22418)+byte(0xa22487)+byte(0xa2249f)              
              
achievement ("[Normal] ESP Development Project",
             "[Mission] Complete all Seeking Priceless Items > ESP Development Project missions", 5,
    trigger = ESPDevelopmentProject() == 0x06 &&
              prev(ESPDevelopmentProject()) == 0x05)               

achievement ("[Hard] ESP Development Project",
             "[Mission] Complete all Seeking Priceless Items > ESP Development Project missions", 10,
    trigger = Hard() &&
              ESPDevelopmentProject() == 0x06 &&
              prev(ESPDevelopmentProject()) == 0x05)
              
function ContactsFromP() => byte(0xa223b2)+byte(0xa223c7)+byte(0xa22406)+byte(0xa2241b)+byte(0xa2241e)+byte(0xa22478)              
              
achievement ("[Normal] Contacts from P",
             "[Mission] Complete all Seeking Priceless Items > Contacts from P missions", 5,
    trigger = ContactsFromP() == 0x06 &&
              prev(ContactsFromP()) == 0x05)              
 
achievement ("[Hard] Contacts from P",
             "[Mission] Complete all Seeking Priceless Items > Contacts from P missions", 10,
    trigger = Hard() &&
              ContactsFromP() == 0x06 &&
              prev(ContactsFromP()) == 0x05)   
              
function OrphansEscaping() => byte(0xa2226b)+byte(0xa223a9)+byte(0xa223ca)+byte(0xa223df)+byte(0xa2248d)+byte(0xa224a2)              
              
achievement ("[Normal] Orphans Escaping",
             "[Mission] Complete all Seeking Priceless Items > Orphans Escaping missions", 5,
    trigger = OrphansEscaping() == 0x06 &&
              prev(OrphansEscaping()) == 0x05)                 

achievement ("[Hard] Orphans Escaping",
             "[Mission] Complete all Seeking Priceless Items > Orphans Escaping missions", 10,
    trigger = Hard() &&
              OrphansEscaping() == 0x06 &&
              prev(OrphansEscaping()) == 0x05) 
              
function TheAccessoryCraftsman() => byte(0xa22466)+byte(0xa22493)+byte(0xa224f9)+byte(0xa22544)+byte(0xa22547)+byte(0xa2254a)               
              
achievement ("[Normal] The Accessory Craftsman",
             "[Mission] Complete all Seeking Priceless Items > The Accessory Craftsman missions", 5,
    trigger = TheAccessoryCraftsman() == 0x06 &&
              prev(TheAccessoryCraftsman()) == 0x05)                

achievement ("[Hard] The Accessory Craftsman",
             "[Mission] Complete all Seeking Priceless Items > The Accessory Craftsman missions", 10,
    trigger = Hard() &&
              TheAccessoryCraftsman() == 0x06 &&
              prev(TheAccessoryCraftsman()) == 0x05)
              
function SeekingPricelessItems() => TheAccessoryCraftsman()+OrphansEscaping()+ContactsFromP()+ESPDevelopmentProject()+PreciousThings()+RecallMissions()

achievement ("[Normal] Seeking Priceless Items",
             "[Mission] Complete all Seeking Priceless Items missions", 5,
    trigger = SeekingPricelessItems() == 0x24 &&
              prev(SeekingPricelessItems()) == 0x23)              

achievement ("[Hard] Seeking Priceless Items",
             "[Mission] Complete all Seeking Priceless Items missions", 10,
    trigger = Hard() &&
              SeekingPricelessItems() == 0x24 &&
              prev(SeekingPricelessItems()) == 0x23)
              
function StartingOut() => byte(0xa223c1)+byte(0xa2243f)+byte(0xa22442)+byte(0xa22448)+byte(0xa224b4)+byte(0xa224c9)              
              
achievement ("[Normal] Starting Out",
             "[Mission] Complete all Zack, the Materia Hunter > Starting Out missions", 5,
    trigger = StartingOut() == 0x06 &&
              prev(StartingOut()) == 0x05)              

achievement ("[Hard] Starting Out",
             "[Mission] Complete all Zack, the Materia Hunter > Starting Out missions", 10,
    trigger = Hard() &&
              StartingOut() == 0x06 &&
              prev(StartingOut()) == 0x05) 
              
function MakoStones() => byte(0xa222e0)+byte(0xa22328)+byte(0xa22367)+byte(0xa2236a)+byte(0xa2236d)+byte(0xa22370)              
              
achievement ("[Normal] Mako Stones",
             "[Mission] Complete all Zack, the Materia Hunter > Mako Stones missions", 5,
    trigger = MakoStones() == 0x06 &&
              prev(MakoStones()) == 0x05)               

achievement ("[Hard] Mako Stones",
             "[Mission] Complete all Zack, the Materia Hunter > Mako Stones missions", 10,
    trigger = Hard() &&
              MakoStones() == 0x06 &&
              prev(MakoStones()) == 0x05)  
              
function ToHellAndBack() => byte(0xa222e3)+byte(0xa22454)+byte(0xa2246c)+byte(0xa22484)+byte(0xa22490)+byte(0xa224cc)              
              
achievement ("[Normal] To Hell and Back",
             "[Mission] Complete all Zack, the Materia Hunter > To Hell and Back missions", 5,
    trigger = ToHellAndBack() == 0x06 &&
              prev(ToHellAndBack()) == 0x05)              

achievement ("[Hard] To Hell and Back",
             "[Mission] Complete all Zack, the Materia Hunter > To Hell and Back missions", 10,
    trigger = Hard() &&
              ToHellAndBack() == 0x06 &&
              prev(ToHellAndBack()) == 0x05)  
              
function FromAHotTreasureHunter() => byte(0xa2232e)+byte(0xa22331)+byte(0xa22334)+byte(0xa2233a)+byte(0xa22340)+byte(0xa22469)              
              
achievement ("[Normal] From a Hot Treasure Hunter",
             "[Mission] Complete all Zack, the Materia Hunter > From a Hot Treasure Hunter missions", 5,
    trigger = FromAHotTreasureHunter() == 0x06 &&
              prev(FromAHotTreasureHunter()) == 0x05)               

achievement ("[Hard] From a Hot Treasure Hunter",
             "[Mission] Complete all Zack, the Materia Hunter > From a Hot Treasure Hunter missions", 10,
    trigger = Hard() &&
              FromAHotTreasureHunter() == 0x06 &&
              prev(FromAHotTreasureHunter()) == 0x05) 
              
function AnonymousHints() => byte(0xa22343)+byte(0xa22349)+byte(0xa2234c)+byte(0xa2234f)+byte(0xa22352)+byte(0xa22475)              
              
achievement ("[Normal] Anonymous Hints",
             "[Mission] Complete all Zack, the Materia Hunter > Anonymous Hints missions", 5,
    trigger = AnonymousHints() == 0x06 &&
              prev(AnonymousHints()) == 0x05)                 

achievement ("[Hard] Anonymous Hints",
             "[Mission] Complete all Zack, the Materia Hunter > Anonymous Hints missions", 10,
    trigger = Hard() &&
              AnonymousHints() == 0x06 &&
              prev(AnonymousHints()) == 0x05)
              
function YuffiesNotices() => byte(0xa22355)+byte(0xa2235b)+byte(0xa2235e)+byte(0xa22361)+byte(0xa22364)+byte(0xa2248a)              
              
achievement ("[Normal] Yuffie's Notices",
             "[Mission] Complete all Zack, the Materia Hunter > Yuffie's Notices missions", 5,
    trigger = YuffiesNotices() == 0x06 &&
              prev(YuffiesNotices()) == 0x05)                 

achievement ("[Hard] Yuffie's Notices",
             "[Mission] Complete all Zack, the Materia Hunter > Yuffie's Notices missions", 10,
    trigger = Hard() &&
              YuffiesNotices() == 0x06 &&
              prev(YuffiesNotices()) == 0x05) 
              
function ZackTheMateriaHunter() => YuffiesNotices()+AnonymousHints()+FromAHotTreasureHunter()+ToHellAndBack()+MakoStones()+StartingOut()             
              
achievement ("[Normal] Zack, the Materia Hunter",
             "[Mission] Complete all Zack, the Materia Hunter missions", 5,
    trigger =   ZackTheMateriaHunter() == 0x24 &&
                prev(ZackTheMateriaHunter()) == 0x23)                

achievement ("[Hard] Zack, the Materia Hunter",
             "[Mission] Complete all Zack, the Materia Hunter missions", 10,
    trigger = Hard() &&
              ZackTheMateriaHunter() == 0x24 &&
              prev(ZackTheMateriaHunter()) == 0x23) 
              
function InvitationToTheUnderground() => byte(0xa22559)+byte(0xa2255c)+byte(0xa2255f)+byte(0xa22562)+byte(0xa22565)+byte(0xa22568)              
              
achievement ("[Normal] Invitation to the Underground",
             "[Mission] Complete all Great Cavern of Wonders > Invitation to the Underground missions", 5,
    trigger = InvitationToTheUnderground() == 0x06 &&
              prev(InvitationToTheUnderground()) == 0x05)                 

achievement ("[Hard] Invitation to the Underground",
             "[Mission] Complete all Great Cavern of Wonders > Invitation to the Underground missions", 10,
    trigger = Hard() &&
              InvitationToTheUnderground() == 0x06 &&
              prev(InvitationToTheUnderground()) == 0x05) 
              
function Stirrings() => byte(0xa2256b)+byte(0xa2256e)+byte(0xa22577)+byte(0xa2257a)+byte(0xa2257d)+byte(0xa22580)              
              
achievement ("[Normal] Stirrings",
             "[Mission] Complete all Great Cavern of Wonders > Stirrings missions", 5,
    trigger = Stirrings() == 0x06 &&
              prev(Stirrings()) == 0x05)               

achievement ("[Hard] Stirrings",
             "[Mission] Complete all Great Cavern of Wonders > Stirrings missions", 10,
    trigger = Hard() &&
              Stirrings() == 0x06 &&
              prev(Stirrings()) == 0x05)
              
function InSearchOfWhat() => byte(0xa22583)+byte(0xa22586)+byte(0xa22589)+byte(0xa22598)+byte(0xa2259b)+byte(0xa2259e)              
              
achievement ("[Normal] In Search of What?",
             "[Mission] Complete all Great Cavern of Wonders > In Search of What? missions", 5,
    trigger = InSearchOfWhat() == 0x06 &&
              prev(InSearchOfWhat()) == 0x05)               

achievement ("[Hard] In Search of What?",
             "[Mission] Complete all Great Cavern of Wonders > In Search of What? missions", 10,
    trigger = Hard() &&
              InSearchOfWhat() == 0x06 &&
              prev(InSearchOfWhat()) == 0x05) 
                            
function RealmOfDemons() => byte(0xa225a1)+byte(0xa225a4)+byte(0xa225a7)+byte(0xa225ad)+byte(0xa225b0)+byte(0xa225b3)              
              
achievement ("[Normal] Realm of Demons",
             "[Mission] Complete all Great Cavern of Wonders > Realm of Demons missions", 5,
    trigger = RealmOfDemons() == 0x06 &&
              prev(RealmOfDemons()) == 0x05)              
 
achievement ("[Hard] Realm of Demons",
             "[Mission] Complete all Great Cavern of Wonders > Realm of Demons missions", 10,
    trigger = Hard() &&
              RealmOfDemons() == 0x06 &&
              prev(RealmOfDemons()) == 0x05) 
              
function UnknownEnergy() => byte(0xa225b6)+byte(0xa225b9)+byte(0xa225bc)+byte(0xa225bf)+byte(0xa225c2)+byte(0xa225c5)              
              
achievement ("[Normal] Unknown Energy",
             "[Mission] Complete all Great Cavern of Wonders > Unknown Energy missions", 5,
    trigger = UnknownEnergy() == 0x06 &&
              prev(UnknownEnergy()) == 0x05)               

achievement ("[Hard] Unknown Energy",
             "[Mission] Complete all Great Cavern of Wonders > Unknown Energy missions", 10,
    trigger = Hard() &&
              UnknownEnergy() == 0x06 &&
              prev(UnknownEnergy()) == 0x05)
              
function DoorsToTheUnknown() => byte(0xa22262)+byte(0xa22268)+byte(0xa22271)+byte(0xa224b7)+byte(0xa225ce)+byte(0xa225d1)              
              
achievement ("[Normal] Doors to the Unknown",
             "[Mission] Complete all Great Cavern of Wonders > Doors to the Unknown missions", 5,
    trigger = DoorsToTheUnknown() == 0x06 &&
              prev(DoorsToTheUnknown()) == 0x05)                    

achievement ("[Hard] Doors to the Unknown",
             "[Mission] Complete all Great Cavern of Wonders > Doors to the Unknown missions", 10,
    trigger = Hard() &&
              DoorsToTheUnknown() == 0x06 &&
              prev(DoorsToTheUnknown()) == 0x05)
              
function GreatCavernofWonders() => DoorsToTheUnknown()+UnknownEnergy()+RealmOfDemons()+InSearchOfWhat()+Stirrings()+InvitationToTheUnderground()              
              
achievement ("[Normal] Great Cavern of Wonders",
             "[Mission] Complete all Great Cavern of Wonders missions", 5,
    trigger = GreatCavernofWonders() == 0x24 &&
              prev(GreatCavernofWonders()) == 0x23)                 

achievement ("[Hard] Great Cavern of Wonders",
             "[Mission] Complete all Great Cavern of Wonders missions", 10,
    trigger = Hard() &&
              GreatCavernofWonders() == 0x24 &&
              prev(GreatCavernofWonders()) == 0x23)
              
function CactoidSecrets() => byte(0xa2233d)+byte(0xa22346)+byte(0xa22526)             
              
achievement ("[Normal] Cactoid Secrets",
             "[Mission] Complete Mysteries of the World > Cactoid Secrets missions", 5,
    trigger = CactoidSecrets() == 0x03 &&
              prev(CactoidSecrets()) == 0x02)               

achievement ("[Hard] Cactoid Secrets",
             "[Mission] Complete Mysteries of the World > Cactoid Secrets missions", 10,
    trigger = Hard() &&
              CactoidSecrets() == 0x03 &&
              prev(CactoidSecrets()) == 0x02) 
              
function TonberryQuests() => byte(0xa224a5)+byte(0xa22529)+byte(0xa2252c)             
              
achievement ("[Normal] Tonberry Quests",
             "[Mission] Complete Mysteries of the World > Tonberry Quests missions", 5,
    trigger = TonberryQuests() == 0x03 &&
              prev(TonberryQuests()) == 0x02) 
              
achievement ("[Hard] Tonberry Quests",
             "[Mission] Complete Mysteries of the World > Tonberry Quests missions", 10,
    trigger = Hard() &&
              TonberryQuests() == 0x03 &&
              prev(TonberryQuests()) == 0x02)
              
function FunInTheSun() => byte(0xa225da)+byte(0xa225d7)+byte(0xa225d4)             
              
achievement ("[Normal] Fun in the Sun!",
             "[Mission] Complete Mysteries of the World > Fun in the Sun! missions", 5,
    trigger = FunInTheSun() == 0x03 &&
              prev(FunInTheSun()) == 0x02)               

achievement ("[Hard] Fun in the Sun!",
             "[Mission] Complete Mysteries of the World > Fun in the Sun! missions", 10,
    trigger = Hard() &&
              FunInTheSun() == 0x03 &&
              prev(FunInTheSun()) == 0x02)
              
function MoreFunInTheSun() => byte(0xa225dd)+byte(0xa225e0)+byte(0xa225e3)             
              
achievement ("[Normal] More Fun in the Sun!",
             "[Mission] Complete Mysteries of the World > More Fun in the Sun! missions", 5,
    trigger = MoreFunInTheSun() == 0x03 &&
              prev(MoreFunInTheSun()) == 0x02)                 

achievement ("[Hard] More Fun in the Sun!",
             "[Mission] Complete Mysteries of the World > More Fun in the Sun! missions", 10,
    trigger = Hard() &&
              MoreFunInTheSun() == 0x03 &&
              prev(MoreFunInTheSun()) == 0x02)
              
function MysteriesOfTheWorld() => CactoidSecrets()+TonberryQuests()+FunInTheSun()+MoreFunInTheSun()              
              
achievement ("[Normal] Mysteries of the World",
             "[Mission] Complete all Mysteries of the World missions", 5,
    trigger = MysteriesOfTheWorld() == 0x0c &&
              prev(MysteriesOfTheWorld()) == 0x0b)               
              
achievement ("[Hard] Mysteries of the World",
             "[Mission] Complete all Mysteries of the World missions", 10,
    trigger = Hard() &&
              MysteriesOfTheWorld() == 0x0c &&
              prev(MysteriesOfTheWorld()) == 0x0b)    
   
      

