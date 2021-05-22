// Lufia: The Legend Returns
// #ID = 2502

//Badge Icons
//168060 = Learning the Ropes
//169181 = Quit Talking [m]
//169180 = Smart Decision

//Inventory ID's
//0x5a = Gades Bracelet

function Locations() =>word(0xcf7c)
         map_overworld = 0x100
         map_patos = 0x00
         map_patos_caveentrance = 0x02
         map_towerofdeath_entrance = 0x05
         map_majari = 0x12
         map_albano = 0x0c
         map_broffo_entrance = 0x15
         map_siantao = 0x17
         map_leong_temple = 0x1d
         map_ganghideout_etrance = 0x21
         map_laphon_cave = 0xa
         map_caan = 0x23
         map_tomis_cave = 0x27
         map_tomis = 0x29
         map_copley_forest = 0x36
         map_alstadt_kingdom = 0x3d
         map_cobe = 0x44
         map_gulduck = 0x48
         map_ancient_cave_entrance = 0x4a
         map_elcorano = 0x4e
         map_mistra_cave = 0x50
         map_redwood = 0x52
         map_azoles_cave = 0x55
         map_leydock_mansion = 0x57
         map_tanba = 0x5b
         map_mologoro = 0x62
         map_gologolo_caves = 0x65
         map_tanba_shrine = 0x68
         map_rosplette_forest = 0x6a
         map_midy = 0x6c
         map_tanba_caves = 0x5d
         map_rosplett_shrine = 0x6e
         map_tower_of_twilight = 0x75
         map_doom_island = 0x7c
         map_pirate_squid = 0x8000
         map_slani_caveentrance = 0x8000
         map_ganghideout = 0x8000
         map_patos_caveinside = 0x8000
         map_tomis_cave_inside = 0x8001
         map_al_caves = 0x8001
         map_mistra_dungeon = 0x8002
         map_leydocks_caves = 0x8002
         map_gologolo_caves = 0x8002
         map_azoles_caves = 0x8002
         map_fugo_dungeon = 0x8003
         map_alstadt_kingdom = 0x8003
         map_ancient_maze = 0x8003
         map_pirate_ship = 0x8004
         map_copley_forest = 0x8005
         map_rosplett_forest = 0x8005
         map_tanba_shrine_tower = 0x8006
         map_rosplett_shrine = 0x8006
         map_parethea_shrine = 0x8006
         map_towerofdeath_inside = 0x8007
         map_ancient_cave = 0x8007
         map_deserted_lighthouse = 0x8008
         map_tower_of_illusion = 0x8009   
         map_tower_of_sorrow = 0x800a
         map_tower_of_twilight = 0x800b
       
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
              1, badge = "169472", 
    trigger = Locations() == map_patos_caveinside &&
              prev(PatosTutorial()) == 0 &&
              PatosTutorial() == 1)

achievement ("Quit Talking [m]", 
             "Defeat [Gades] in [Tower of Death] during your first fight with him", 
              25, badge = "169181",
    trigger = Locations() == map_towerofdeath_inside &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x5a && 
              InventoryItem() == 0x5a)
    
achievement ("Smart Decision", 
             "Witnessed the power of the Sinistral of Destruction", 
              3, badge = "169180",
    trigger = Locations() == map_towerofdeath_inside &&
              prev(WitnessGades()) == 0 && 
              WitnessGades() == 1)

achievement ("Kobin's Request", "[Dei] joins the party", 
              5,
    trigger = Locations() == map_fugo_dungeon &&
              DeiJoins() > prev(DeiJoins()))

achievement ("Powerful...[m]", 
             "Defeat [Gades] in [Albano] during your second fight with him", 
              25, badge = "169181",
    trigger = Locations() == map_fugo_dungeon && 
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x74 && 
              InventoryItem() == 0x74)
    
achievement ("Broken Legs", 
             "Save [Lurisa's] Father", 
              5,
    trigger = Locations() == map_majari &&
              FlowerGirlQuest1() == 1 && 
              FlowerGirlQuest2() == 1 && 
              prev(FlowerGirlQuestDone()) == 0 && 
              FlowerGirlQuestDone() == 1)  

achievement ("Dummy", 
             "Defeat [Garland Gang] in [Gang Hideout]", 
              5,
    trigger = Locations() == map_ganghideout &&
              prev(BanditsDefeat()) == 0 && 
              BanditsDefeat() == 1)
    
achievement ("Rest in Peace", 
             "Defeat [Gades] in [Tower of Death] for the 3rd time", 
              5,
    trigger = Locations() == map_towerofdeath_inside && 
              prev(WitnessGades3()) == 0 &&
              WitnessGades3() == 1)

achievement ("To Find the One", 
             "[Randolph] joins the party", 
              5,
    trigger = Locations() == map_deserted_lighthouse &&
              prev(DesertedBoss()) == 00 &&
              DesertedBoss() == 1)
    
achievement ("Princess Get", 
             "Rescue the [Princess] in [Deserted LH]",
              5,
    trigger = Locations() == map_deserted_lighthouse && 
              prev(RescuePrincess()) == 00 &&
              RescuePrincess() == 1)

achievement ("Smuggler Scum", 
             "Defeat [Pirates] in [Pirate Ship]",
              5,
    trigger = Locations() == map_pirate_ship &&
              prev(PirateBeat()) == 00 &&
              PirateBeat() == 1)
    
achievement ("Seafood", 
             "Defeat [Big Squido] in [OCean]",
              5,
    trigger = Locations() == map_pirate_squid && 
              prev(KrakenBeat()) == 0 && 
              KrakenBeat() == 1)

achievement ("Who's a Good Boy?", 
             "[Mousse] joins the party", 5, 
    trigger = Locations() == map_copley_forest &&
              prev(MousseJoins()) == 0 && 
              MousseJoins() == 1)
    
achievement ("Can He Build It?",
             "Rebuild [Lamika's] house in [Patos]",
              5,
    trigger = Locations() == map_patos &&
              prev(HouseRebuild()) == 0 && 
              HouseRebuild() == 1)

achievement ("Ultimate Transported", 
             "Defeat [General Gohl] in [Tower of Illusion]",
              5,
    trigger = Locations() == map_tower_of_illusion &&
              prev(GeneralDefeat()) == 0 &&
              GeneralDefeat() == 1)
    
achievement ("Sunk Your Battleship", 
             "Find your way into [Alstadt Kingdom]",
              5,
    trigger = Locations() == map_cobe &&
              prev(BattleshipDefeat()) == 0 &&
              BattleshipDefeat() == 1)
    
achievement ("Not so Ultimate Weapon", 
             "Defeat [Ultimate Weapon] in [Alstadt Kingdom]",
              5,
    trigger = Locations() == map_alstadt_kingdom && 
              prev(UltimaWeaponDefeat()) == 0 && 
              UltimaWeaponDefeat() == 1)    
    
achievement ("Stop Babbling",
             "Defeat [Amon] in [Tower of Illusion]",
              10,
    trigger = Locations() == map_tower_of_illusion &&
              prev(AmonDefeat()) == 0 &&
              AmonDefeat() == 1)
              
achievement ("Since You've Come", 
             "Obtain the [Bunny Blade]", 
              5, 
    trigger = Locations() == map_azoles_cave && 
              prev(BunnyBladeObtained()) == 0 &&
              BunnyBladeObtained() == 1)
              
achievement ("Leave it to Us!", 
             "Defeat the [Ancient Dragon] in [Mistra Caves]",
             10,
    trigger = Locations() == map_mistra_dungeon &&
              prev(AncientDragonDefeat()) == 0 &&
              AncientDragonDefeat() == 1)              

achievement ("One Shot", 
             "Witness [Daos] in [Elcorano]", 
              5,
    trigger = Locations() == map_elcorano &&
              prev(DaosAncientDragon()) == 0 &&
              DaosAncientDragon() == 1)

achievement ("Grooooarr [m]", 
             "Defeat the [Ancient Dragon] in [Elcorano]", 
              25,
    trigger = Locations() == map_elcorano &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x0f && 
              InventoryItem() == 0x0f)
              
achievement ("Champion", 
             "Defeat [Big Mouth] in [Azoles Cave] to win [Monster Track]", 
              10,
    trigger = Locations() == map_azoles_caves &&
              prev(BigMouthDefeat()) == 0 &&
              BigMouthDefeat() == 1)
              
achievement ("Freed!", 
             "Defeat [Leydock] in [Leydock's Cave] to rescue your party", 
              10,
    trigger = Locations() == map_leydocks_caves &&
              prev(LeydockDefeat()) == 0 &&
              LeydockDefeat() == 1)
              
achievement ("Not Bad", 
             "Get smacked around by [Daos] in [Tower of Sorrow]", 
              5,
    trigger = Locations() == map_tower_of_sorrow &&
              prev(DaosSmack()) == 0 &&
              DaosSmack() == 1)
              
achievement ("Laid Out [m]", 
             "Defeat [Daos] in [Tower of Sorrow]", 
              25,
    trigger = Locations() == map_tower_of_sorrow &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x10 && 
              InventoryItem() == 0x10)
              
achievement ("Til Death Do Us Part", 
             "Witness [Daos] in [Tanba]", 
              5,
    trigger = Locations() == map_tanba &&
              prev(Daos2nd()) == 0 &&
              Daos2nd() == 1)
              
achievement ("Family Jewel [m]", 
             "Defeat [Daos] in [Tanba]", 
              25,
    trigger = Locations() == map_tanba &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0x9f && 
              InventoryItem() == 0x9f)
              
achievement ("Blasting Off Again!", 
             "Get ejected from [Gologolo Caves]", 
              5,
    trigger = Locations() == map_gologolo_caves &&
              prev(blastingoffagain()) == 0 &&
              blastingoffagain() == 1)
              
achievement ("Floatium", 
             "Escape [Tower of Sorrow] on your [Airship]",
              5,
    trigger = Locations() == map_tower_of_sorrow &&
              prev(escapedaos()) == 0 &&
              escapedaos() == 1)
             
achievement ("Ring of Power [m]", 
             "Defeat [Daos] before escaping [Tower of Sorrow]", 
              50,
    trigger = Locations() == map_tower_of_sorrow &&
              EnemyStatus() == Enemy1Dead && 
              prev(InventoryItem()) != 0xa0 && 
              InventoryItem() == 0xa0)
              
achievement ("Vanquished", 
             "Defeat [Daos] for the 4th time in [Tower of Sorrow]",
              10,
    trigger = Locations() == map_tower_of_sorrow &&
              prev(daosdefeat4()) == 0 &&
              daosdefeat4() == 1)
              
achievement ("Submerged", 
             "Obtain the [Floatium] in [Al Caves]",
              5,
    trigger = Locations() == map_al_caves &&
              prev(submerge()) == 0 &&
              submerge() == 1)
              
achievement ("Swords of Justice", 
             "Obtain [Dual Blades] & defeat [Erim]",
              10,
    trigger = Locations() == map_overworld &&
              prev(erimdefeat()) == 0 &&
              erimdefeat() == 1)
              
achievement ("Resurrected Destruction", 
             "Witness [Zalbek]'s Destruction",
              25,
    trigger = Locations() == map_tower_of_twilight &&
              prev(zalbekres()) == 0 &&
              zalbekres() == 1)
              
achievement ("See You Again", 
             "Beat the Game",
              25,
    trigger = (Locations() == map_overworld || Locations() == map_doom_island) &&
              tally(1,EnemyHP() == 0x61a8) &&
              prev(EnemyHP()) != 0x00 &&
              EnemyHP() == 0x00 &&
              EnemyStatus() == Enemy1Dead)
                            
function timesbattled() => word(0xca3e)
function chestsopened() => word(0xca42)
function itemsfound() => word(0xca44)
function ancientbattled() => word(0xca4a)
function bluechests() => word(0xca4e)        
              
achievement ("Battled Hardened", 
             "250 total encounters",
             5,
    trigger = prev(timesbattled()) == 0xf9 && 
              measured(timesbattled() == 0xfa))             
              
achievement ("Looter",
             "Opened 50% of all chests",
             5,
    trigger = prev(chestsopened()) == 0x59 && 
              measured(chestsopened() == 0x5a))             
              
achievement ("Scavenger [m]",
             "Opened 100% of all chests",
             10,
    trigger = prev(chestsopened()) == 0xb4 && 
              measured(chestsopened() == 0xb5))                 
              
achievement ("Fortune Seeker",
             "Find 50% of hidden items",
             5,
    trigger = prev(itemsfound()) == 0x62 &&
              measured(itemsfound() == 0x63))              

achievement ("Fortune Hoarder [m]",
             "Find 100% of hidden items",
             10,
    trigger = prev(itemsfound()) == 0xc6 &&
              measured(itemsfound() == 0xc7))  
              
achievement ("Ancient Slayers",
             "100 tatal encounters [Ancient Caves]",
             10,
    trigger = prev(ancientbattled()) == 0x63 &&
              measured(ancientbattled() == 0x64))   
              
achievement ("Best in Blue",
             "Get treasure from 50 blue chests [Ancient Caves]",
             25,
    trigger = prev(bluechests()) == 0x32 &&
              measured(bluechests() == 0x31))              
              
achievement ("I Would Wish [m]", 
             "Obtain your first [Egg Dragon] wish",
              10,
    trigger = Locations() == map_ancient_maze &&
              firstwish())
 
achievement ("Upon a Star[m]", 
             "Obtain your second [Egg Dragon] wish",
              10,
    trigger = Locations() == map_ancient_maze &&
              secondwish())
              
achievement ("But That Star, It Doesn't Shine [m]",
             "Obtain your Third [Egg Dragon] wish",
             10,
    trigger = Locations() == map_ancient_maze &&
              thirdwish())
              
achievement ("Like Maxim Before You [m]",
             "Recruit [Egg Dragon]",
             25,
    trigger = Locations() == map_ancient_maze &&
              prev(dragonjoins()) == 0 && dragonjoins() == 1)
              
achievement ("Helmet of the Gods [m]",
             "Receive [God Helmet] from [Ancient Caves]",
             10,
    trigger = Locations() >= 0x8000 &&
              prev(godhelm()) == 0 && godhelm() == 1)
              
achievement ("Three to Vs. Me [m]",
             "Defeat [Master] in [Ancient Caves]",
             25,
    trigger = Locations() >= 0x8000 &&
              prev(masterdefeat()) == 0 && masterdefeat() == 1)              
 
achievement ("Strongest Heroes",
             "Defeat [Iria] in [Ancient Caves]",
             50,
    trigger = Locations() >= 0x8000 &&
              prev(iriadefeat()) == 0 && iriadefeat() == 1)  
              
achievement ("A Hero's Sword", 
             "Obtain [Maxim Blade] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x3c && 
              InventoryItem() == 0x3c)
              
achievement ("A Holy Card", 
             "Obtain [Dark Card] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x3d && 
              InventoryItem() == 0x3d)
              
achievement ("Noble Clothes", 
             "Obtain [Invisible Cloak] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x3e && 
              InventoryItem() == 0x3e)
              
achievement ("A Justice Bracelet", 
             "Obtain [Ancient Bracelet] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x3f && 
              InventoryItem() == 0x3f)
              
achievement ("A Legendary Sword", 
             "Obtain [Luna Blade] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x40 && 
              InventoryItem() == 0x40)
              
achievement ("A Queen's Whip", 
             "Obtain [Queen Whip] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x41 && 
              InventoryItem() == 0x41)
              
achievement ("Holy Spirit Ball", 
             "Obtain [Capsule Ring] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x42 && 
              InventoryItem() == 0x42)
              
achievement ("A Larger-Than-Life Sword", 
             "Obtain [Deckard Sword] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x43 && 
              InventoryItem() == 0x43)
              
achievement ("Future Clotes", 
             "Obtain [Fortune Dress] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x44 && 
              InventoryItem() == 0x44)
              
achievement ("Traveler's Flute", 
             "Obtain [Wind Flute] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x45 && 
              InventoryItem() == 0x45)
              
achievement ("Ancient Technology", 
             "Obtain [Power Suit] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x46 && 
              InventoryItem() == 0x46)
              
achievement ("Elf's Soul", 
             "Obtain [Artea Bow] in [Parethea Shrine]",
             5,
    trigger = Locations() == map_parethea_shrine  && 
              prev(InventoryItem()) != 0x47 && 
              InventoryItem() == 0x47)
