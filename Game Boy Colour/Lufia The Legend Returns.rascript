// Lufia: The Legend Returns
// #ID = 2502

//Badge Icons
//168060 = Learning the Ropes
//169181 = Quit Talking [m]
//169180 = Smart Decision

//Inventory ID's
//0x5a = Gades Bracelet

function Locations() =>word(0x01568b)
       
function TotalEncounters() => word(0xca3e)
function TotalChestsOpened() => word(0xca42)
function TotalHiddenTreasures() => word(0xca44)

function FloorID() => byte(0x10923)
function InventoryItem() => byte(0x14164)
function EnemyStatus() => byte(0x112b7)
         Enemy1Alive = 0x00
         Enemy1Dead = 0x04
function EnemyHP() => word(0x112c0)

//Quests
function FlowerGirlQuest1() => bit7(0x14012)
function FlowerGirlQuest2() => bit0(0x14013)
function FlowerGirlQuestDone() => bit1(0x14013)
function HouseRebuild() => bit6(0x1400a)

//Events
function PatosTutorial() => bit3(0x1400a)
function WitnessGades() => bit4(0x14001)
function DeiJoins() => bit0(0x14002)
function WitnessGades2() => bit1(0x14002)
function BanditsDefeat() => bit4(0x14002)
function WitnessGades3() => bit0(0x14003)
function DesertedBoss() => bit2(0x14003)
function RescuePrincess() => bit3(0x14003)
function PirateBeat() => bit5(0x14003)
function KrakenBeat() => bit4(0x14004)
function MousseJoins() => bit1(0x14005)
function GeneralDefeat() => bit2(0x14005)
function BattleshipDefeat() => bit4(0x14005)
function UltimaWeaponDefeat() => bit7(0x14005)
function AmonDefeat() => bit4(0x14006)
function BunnyBladeObtained() => bit5(0x1400f)
function AncientDragonDefeat() => bit7(0x14006)
function DaosAncientDragon() => bit0(0x14007)
function BigMouthDefeat() => bit6(0x14007)
function Drugged() => bit7(0x14007)
function LeydockDefeat() => bit1(0x14008)
function DaosSmack() => bit3(0x14008)
function Daos2nd() => bit6(0x14008)
function blastingoffagain() => bit7(0x14008)
function escapedaos() => bit2(0x14009)
function daosdefeat4() => bit3(0x14009)
function submerge() => bit6(0x14009)
function erimdefeat() => bit0(0x1400a)
function zalbekres() => bit5(0x14011)
function firstwishprize1() => bit1(0x14010)
function firstwishprize2() => bit2(0x14010)
function firstwishprize3() => bit3(0x14010)
function dragonjoins() => bit4(0x14010)
function godhelm() => bit7(0x14017)
function masterdefeat() => bit5(0x1400d)
function iriadefeat() => bit1(0x14018)
function beatgame() => bit4(0x1400d)


function firstwish() => (prev(firstwishprize1()) == 0 && firstwishprize1() == 1 || 
                        prev(firstwishprize2()) == 0 && firstwishprize2() == 1 ||
                        prev(firstwishprize3()) == 0 && firstwishprize3() == 1)

function secondwish() => (firstwishprize1() == 1 && prev(firstwishprize2()) == 0 && firstwishprize2() == 1 ||
                         firstwishprize1() == 1 && prev(firstwishprize3()) == 0 && firstwishprize3() == 1 ||
                         firstwishprize2() == 1 && prev(firstwishprize1()) == 0 && firstwishprize1() == 1 ||
                         firstwishprize2() == 1 && prev(firstwishprize3()) == 0 && firstwishprize3() == 1 ||
                         firstwishprize3() == 1 && prev(firstwishprize1()) == 0 && firstwishprize1() == 1 ||    
                         firstwishprize3() == 1 && prev(firstwishprize2()) == 0 && firstwishprize2() == 1)
                         
function thirdwish() => (firstwishprize1() == 1 && firstwishprize2() == 1 && prev(firstwishprize3()) == 0 && firstwishprize3() == 1 ||
                        firstwishprize1() == 1 && firstwishprize3() == 1 && prev(firstwishprize2()) == 0 && firstwishprize2() == 1 ||
                        firstwishprize2() == 1 && firstwishprize3() == 1 && prev(firstwishprize1()) == 0 && firstwishprize1() == 1)

                           
                           
achievement ("Learning the Ropes", 
             "Complete Patos Cave Tutorial", 
              1, id = 154236, badge = "169472",
    trigger = Locations() == 0x03 &&
              prev(PatosTutorial()) == 0 &&
              PatosTutorial() == 1)

achievement ("Quit Talking [m]", 
             "Defeat [Gades] in [Tower of Death] during your first fight with him", 
              25, id = 154237, badge = "169181",
    trigger = Locations() == 0x09 &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x5a && 
              InventoryItem() == 0x5a)
    
achievement ("Smart Decision", 
             "Witnessed the power of the Sinistral of Destruction", 
              3, id = 154238, badge = "169180",
    trigger = Locations() == 0x09 &&
              prev(WitnessGades()) == 0 && 
              WitnessGades() == 1)

achievement ("Kobin's Request", "[Dei] joins the party", 
              5, id = 154241, badge = "173473",
    trigger = Locations() == 0x14 &&
              DeiJoins() > prev(DeiJoins()))

achievement ("Powerful...[m]", 
             "Defeat [Gades] in [Albano] during your second fight with him", 
              25, id = 154239, badge = "169181",
    trigger = Locations() == 0x0d && 
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x74 && 
              InventoryItem() == 0x74)

achievement ("Dummy", 
             "Defeat [Garland Gang] in [Gang Hideout]", 
              5, id = 154243, badge = "173475",
    trigger = Locations() == 0x22 &&
              prev(BanditsDefeat()) == 0 && 
              BanditsDefeat() == 1)
    
achievement ("Rest in Peace", 
             "Defeat [Gades] in [Tower of Death] for the 3rd time", 
              5, id = 154244, badge = "173476",
    trigger = Locations() == 0x08 && 
              prev(WitnessGades3()) == 0 &&
              WitnessGades3() == 1)

achievement ("To Find the One", 
             "[Randolph] joins the party", 
              5, id = 154245, badge = "173477",
    trigger = Locations() == 0x25 &&
              prev(DesertedBoss()) == 00 &&
              DesertedBoss() == 1)
    
achievement ("Princess Get", 
             "Rescue the [Princess] in [Deserted LH]",
              5, id = 154246, badge = "173737",
    trigger = Locations() == 0x26 && 
              prev(RescuePrincess()) == 00 &&
              RescuePrincess() == 1)

achievement ("Smuggler Scum", 
             "Defeat [Pirates] in [Pirate Ship]",
              5, id = 154247, badge = "173479",
    trigger = Locations() == 0x2e &&
              prev(PirateBeat()) == 00 &&
              PirateBeat() == 1)
    
achievement ("Seafood", 
             "Defeat [Big Squido] in [OCean]",
              5, id = 154248, badge = "173480",
    trigger = Locations() == 0x29 && 
              prev(KrakenBeat()) == 0 && 
              KrakenBeat() == 1)

achievement ("Who's a Good Boy?", 
             "[Mousse] joins the party", 
              5,  id = 154249, badge = "173481",
    trigger = Locations() == 0x3a &&
              prev(MousseJoins()) == 0 && 
              MousseJoins() == 1)
              
achievement ("Ultimate Transported", 
             "Defeat [General Gohl] in [Tower of Illusion]",
              5, id = 154251, badge = "173483",
    trigger = Locations() == 0x3b &&
              prev(GeneralDefeat()) == 0 &&
              GeneralDefeat() == 1)
    
achievement ("Sunk Your Battleship", 
             "Find your way into [Alstadt Kingdom]",
              5, id = 154252, badge = "173484",
    trigger = Locations() == 0x42 &&
              prev(BattleshipDefeat()) == 0 &&
              BattleshipDefeat() == 1)
    
achievement ("Not so Ultimate Weapon", 
             "Defeat [Ultimate Weapon] in [Alstadt Kingdom]",
              5, id = 154253, badge = "173485",
    trigger = Locations() == 0x43 && 
              prev(UltimaWeaponDefeat()) == 0 && 
              UltimaWeaponDefeat() == 1)    
    
achievement ("Stop Babbling",
             "Defeat [Amon] in [Tower of Illusion]",
              10, id = 154254, badge = "173486",
    trigger = Locations() == 0x3c &&
              prev(AmonDefeat()) == 0 &&
              AmonDefeat() == 1)
                           
achievement ("Leave it to Us!", 
             "Defeat the [Ancient Dragon] in [Mistra Caves]",
             10, id = 154257, badge = "173488",
    trigger = Locations() == 0x51 &&
              prev(AncientDragonDefeat()) == 0 &&
              AncientDragonDefeat() == 1)              

achievement ("One Shot", 
             "Witness [Daos] in [Elcorano]", 
              5, id = 154258, badge = "173489",
    trigger = Locations() == 0x4e &&
              prev(DaosAncientDragon()) == 0 &&
              DaosAncientDragon() == 1)

achievement ("Grooooarr [m]", 
             "Defeat the [Ancient Dragon] in [Elcorano]", 
              25, id = 154259, badge = "173490",
    trigger = Locations() == 0x4e &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x0f && 
              InventoryItem() == 0x0f)
              
achievement ("Champion", 
             "Defeat [Big Mouth] in [Azoles Cave] to win [Monster Track]", 
              10, id = 154260, badge = "173491",
    trigger = Locations() == 0x56 &&
              prev(BigMouthDefeat()) == 0 &&
              BigMouthDefeat() == 1)
              
achievement ("Freed!", 
             "Defeat [Leydock] in [Leydock's Cave] to rescue your party", 
              10, id = 154261, badge = "173492",
    trigger = Locations() == 0x5a &&
              prev(LeydockDefeat()) == 0 &&
              LeydockDefeat() == 1)
              
achievement ("Not Bad", 
             "Get smacked around by [Daos] in [Tower of Sorrow]", 
              5, id = 154262, badge = "173493",
    trigger = Locations() == 0x5f &&
              prev(DaosSmack()) == 0 &&
              DaosSmack() == 1)
              
achievement ("Laid Out [m]", 
             "Defeat [Daos] in [Tower of Sorrow]", 
              25, id = 154263, badge = "173494",
    trigger = Locations() == 0x5f &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x10 && 
              InventoryItem() == 0x10)
              
achievement ("Til Death Do Us Part", 
             "Witness [Daos] in [Tanba]", 
              5, id = 154264, badge = "173495",
    trigger = Locations() == 0x5b &&
              prev(Daos2nd()) == 0 &&
              Daos2nd() == 1)
              
achievement ("Family Jewel [m]", 
             "Defeat [Daos] in [Tanba]", 
              25, id = 154265, badge = "173496",
    trigger = Locations() == 0x5b &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x9f && 
              InventoryItem() == 0x9f)
              
achievement ("Blasting Off Again!", 
             "Get ejected from [Gologolo Caves]", 
              5, id = 154266, badge = "173497",
    trigger = Locations() == 0x64 &&
              prev(blastingoffagain()) == 0 &&
              blastingoffagain() == 1)
              
achievement ("Floatium", 
             "Escape [Tower of Sorrow] on your [Airship]",
              5, id = 154267, badge = "173498",
    trigger = Locations() == 0x63 &&
              prev(escapedaos()) == 0 &&
              escapedaos() == 1)
             
achievement ("Ring of Power [m]", 
             "Defeat [Daos] before escaping [Tower of Sorrow]", 
              50, id = 154269, badge = "173499",
    trigger = Locations() == 0x61 &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0xa0 && 
              InventoryItem() == 0xa0)
              
achievement ("Vanquished", 
             "Defeat [Daos] for the 4th time in [Tower of Sorrow]",
              10, id = 154270, badge = "173500",
    trigger = Locations() == 0x61 &&
              prev(daosdefeat4()) == 0 &&
              daosdefeat4() == 1)
              
achievement ("Submerged", 
             "Obtain the [Floatium] in [Al Caves]",
              5, id = 154268, badge = "173498",
    trigger = Locations() == 0x70 &&
              prev(submerge()) == 0 &&
              submerge() == 1)
              
achievement ("Swords of Justice", 
             "Obtain [Dual Blades] & defeat [Erim]",
              10, id = 154271, badge = "173501",
    trigger = Locations() == 0x73 &&
              prev(erimdefeat()) == 0 &&
              erimdefeat() == 1)
              
achievement ("Resurrected Destruction", 
             "Witness [Zalbek]'s Destruction",
              25, id = 154272, badge = "173502",
    trigger = Locations() == 0x76 &&
              prev(zalbekres()) == 0 &&
              zalbekres() == 1)
              
achievement ("See You Again", 
             "Beat the Game",
              25, id = 154274, badge = "173503",
    trigger = Locations() == 0x7d && prev(Locations()) == 0x7b)
                            
function timesbattled() => word(0xca3e)
function chestsopened() => word(0xca42)
function itemsfound() => word(0xca44)
function ancientbattled() => word(0xca4a)
function bluechests() => word(0xca4e)        
              
achievement ("Battled Hardened", 
             "250 total encounters",
             5, id = 154275, badge = "173504",
    trigger = prev(timesbattled()) == 0xf9 && 
              measured(timesbattled() == 0xfa))             
              
achievement ("Looter",
             "Opened 50% of all chests",
             5, id = 154276, badge = "173505",
    trigger = prev(chestsopened()) == 0x59 && 
              measured(chestsopened() == 0x5a))             
              
achievement ("Scavenger [m]",
             "Opened 100% of all chests",
             10, id = 154278, badge = "173506",
    trigger = prev(chestsopened()) == 0xb4 && 
              measured(chestsopened() == 0xb5))                 
              
achievement ("Fortune Seeker",
             "Find 50% of hidden items",
             5, id = 154277, badge = "173505",
    trigger = prev(itemsfound()) == 0x62 &&
              measured(itemsfound() == 0x63))              

achievement ("Fortune Hoarder [m]",
             "Find 100% of hidden items",
             10, id = 154279, badge = "173506",
    trigger = prev(itemsfound()) == 0xc6 &&
              measured(itemsfound() == 0xc7))  
              
achievement ("Ancient Slayers",
             "100 tatal encounters [Ancient Caves]",
             10, id = 154280, badge = "173507",
    trigger = prev(ancientbattled()) == 0x63 &&
              measured(ancientbattled() == 0x64))   
              
achievement ("Best in Blue",
             "Get treasure from 50 blue chests [Ancient Caves]",
             25, id = 154281, badge = "173508",
    trigger = prev(bluechests()) == 0x31 &&
              measured(bluechests() == 0x32))              
              
achievement ("I Would Wish [m]", 
             "Obtain your first [Egg Dragon] wish",
              10, id = 154282, badge = "173509",
    trigger = Locations() == 0x1c &&
              firstwish())
 
achievement ("Upon a Star[m]", 
             "Obtain your second [Egg Dragon] wish",
              10, id = 154283, badge = "173510",
    trigger = Locations() == 0x1c &&
              secondwish())
              
achievement ("But That Star, It Doesn't Shine [m]",
             "Obtain your Third [Egg Dragon] wish",
             10, id = 154284, badge = "173511",
    trigger = Locations() == 0x1c &&
              thirdwish())
              
achievement ("Like Maxim Before You [m]",
             "Recruit [Egg Dragon]",
             25, id = 154285, badge = "173512",
    trigger = Locations() == 0x1c &&
              prev(dragonjoins()) == 0 && dragonjoins() == 1)
              
achievement ("Helmet of the Gods [m]",
             "Receive [God Helmet] from [Ancient Caves]",
             10, id = 154286, badge = "173513",
    trigger = Locations() == 0x04 &&
              prev(godhelm()) == 0 && godhelm() == 1)
              
achievement ("Three to Vs. Me [m]",
             "Defeat [Master] in [Ancient Caves]",
             25, id = 154287, badge = "173514",
    trigger = Locations() == 0x4b &&
              prev(masterdefeat()) == 0 && masterdefeat() == 1)              
 
achievement ("Strongest Heroes",
             "Defeat [Iria] in [Ancient Caves]",
             50, id = 154288, badge = "173515",
    trigger = Locations() == 0x4c &&
              prev(iriadefeat()) == 0 && iriadefeat() == 1)  
              
achievement ("A Hero's Sword", 
             "Obtain [Maxim Blade] in [Parethea Shrine]",
             5, id = 154289, badge = "173516",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x3c && 
              InventoryItem() == 0x3c)
              
achievement ("A Holy Card", 
             "Obtain [Dark Card] in [Parethea Shrine]",
             5, id = 154290, badge = "173517",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x3d && 
              InventoryItem() == 0x3d)
              
achievement ("Noble Clothes", 
             "Obtain [Invisible Cloak] in [Parethea Shrine]",
             5, id = 154291, badge = "173518",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x3e && 
              InventoryItem() == 0x3e)
              
achievement ("A Justice Bracelet", 
             "Obtain [Ancient Bracelet] in [Parethea Shrine]",
             5, id = 154292, badge = "173519",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x3f && 
              InventoryItem() == 0x3f)
              
achievement ("A Legendary Sword", 
             "Obtain [Luna Blade] in [Parethea Shrine]",
             5, id = 154293, badge = "173520",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x40 && 
              InventoryItem() == 0x40)
              
achievement ("A Queen's Whip", 
             "Obtain [Queen Whip] in [Parethea Shrine]",
             5, id = 154294, badge = "173521",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x41 && 
              InventoryItem() == 0x41)
              
achievement ("Holy Spirit Ball", 
             "Obtain [Capsule Ring] in [Parethea Shrine]",
             5, id = 154295, badge = "173522",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x42 && 
              InventoryItem() == 0x42)
              
achievement ("A Larger-Than-Life Sword", 
             "Obtain [Deckard Sword] in [Parethea Shrine]",
             5, id = 154296, badge = "173523",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x43 && 
              InventoryItem() == 0x43)
              
achievement ("Future Clotes", 
             "Obtain [Fortune Dress] in [Parethea Shrine]",
             5, id = 154297, badge = "173524",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x44 && 
              InventoryItem() == 0x44)
              
achievement ("Traveler's Flute", 
             "Obtain [Wind Flute] in [Parethea Shrine]",
             5, id = 154298, badge = "173525",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x45 && 
              InventoryItem() == 0x45)
              
achievement ("Ancient Technology", 
             "Obtain [Power Suit] in [Parethea Shrine]",
             5, id = 154299, badge = "173526",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x46 && 
              InventoryItem() == 0x46)
              
achievement ("Elf's Soul", 
             "Obtain [Artea Bow] in [Parethea Shrine]",
             5, id = 154300, badge = "173527",
    trigger = Locations() == 0x47  && 
              prev(InventoryItem()) != 0x47 && 
              InventoryItem() == 0x47)
