// Final Fantasy VI Advance
// #ID = 765

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0x041010
for i in range(0, 287)
{
  slot = byte(inventoryBaseAddr + i * 1)
  trigger = trigger || trigger_when(prev(slot) != itemId && slot == itemId)
}
return trigger
}


function Stolen(itemId)
{
trigger = always_false()
StolenBaseAddr = 0xaf35
for i in range(0, 1)
{
  slot = byte(StolenBaseAddr)
  trigger = trigger_when(prev(slot) != itemId && slot == itemId)
}
return trigger
}

function map() => word(0x8082)
narshcave1 = 0x029
narshcave2 = 0x033
stolenoutfit = 0x55
tunnelarmor = 0x46
scenariochoice = 0x09
overworld = 0x2000
MtKolts1 = 0x5f
MtKolts2 = 0x64
MtKolts3 = 0x60
MtKolts4 = 0x66
MtKolts5 = 0x61
MtKolts6 = 0x67
MtKolts7 = 0x62
cabin = 0x74
cabinshadow = 0x73
imperialcamp = 0x77
ghosttrain = 0x91
injuredsoldierquest = 0xa5
crescentcave = 0xa7
nikeahpub = 0xac
sabinreturnsfigaro = 0x3a

function mapbattle() => word(0x9f64)
narshcave1 = 0x029
narshcave2 = 0x033
mtkolts = 0x62
returner = 0x6d
riverrun = 0x71
TunnelArmor = 0x46
scenariochoice = 0x09
heavyarmorfig = 0x4b
cyanvscaptain = 0x78
trainboy = 0x8d
narshekefka = 0x16

function partyused() => byte(0x9cf5)

function stance() => byte(0xa01e)

function bosskill() => byte(0xaf4d)
alive = 0x00
dead1 = 0x01
dead = 0x03
nobattle = 0xff

function bossdead() => bosskill() == 0x03 && 
                       prev(bosskill()) == 0x00
                       
function saveslot() => byte(0x3c50)
function save_protect() => saveslot() == prev(saveslot())

function currenthpslot1() => word(0xae78)
function currenthpslot2() => word(0xae7a)
function currenthpslot3() => word(0xae7c)
function currenthpslot4() => word(0xae7e)

function MtKoltsPoisonRun() => once(prev(map()) == MtKolts1 && map() == MtKolts2) &&
                               once(prev(map()) == MtKolts2 && map() == MtKolts3) &&
                               once(prev(map()) == MtKolts3 && map() == MtKolts4) &&
                               once(prev(map()) == MtKolts5 && map() == MtKolts6) &&
                               once(prev(map()) == MtKolts6 && map() == MtKolts7) &&
                               map() == MtKolts7 && formation() == vargas &&
                               never(mapbattle() == overworld)

function nofainting() => (unless(once(prev(currenthpslot1()) > 0x00 &&
                          prev(currenthpslot1()) != 0xffff &&
                          currenthpslot1() == 0x00))) &&
                          (unless(once(prev(currenthpslot2()) > 0x00 &&
                          prev(currenthpslot2()) != 0xffff &&
                          currenthpslot2() == 0x00))) && 
                          (unless(once(prev(currenthpslot3()) > 0x00 && 
                          prev(currenthpslot3()) != 0xffff &&
                          currenthpslot3() == 0x00))) && 
                          (unless(once(prev(currenthpslot4()) > 0x00 && 
                          prev(currenthpslot4()) != 0xffff &&
                          currenthpslot4() == 0x00)))
                        
function battlehp() => (currenthpslot1() != 0x00 && 
                       currenthpslot2() != 0x00 && 
                       currenthpslot3() != 0x00 && 
                       currenthpslot4() != 0x00)
                                       
function BannonSlot() => byte(0x985e)
FrontRow1 = 0x41
BackRow1 = 0x61
FrontRow2 = 0x49
BackRow2 = 0x69
FrontRow3 = 0x51
BackRow3 = 0x71
FrontRow4 = 0x59
BackRow4 = 0x79

function slot1darkness() => bit0(0xae98)
function slot1blind() => prev(slot1darkness()) == 0x00 && slot1darkness() == 0x01 
function slot2darkness() => bit0(0xae9a) 
function slot2blind() => prev(slot2darkness()) == 0x00 && slot2darkness() == 0x01
function slot3darkness() => bit0(0xae9c) 
function slot3blind() => prev(slot3darkness()) == 0x00 && slot3darkness() == 0x01
function slot4darkness() => bit0(0xae9e)
function slot4blind() => prev(slot4darkness()) == 0x00 && slot4darkness() == 0x01

function darknessreset() => (never(bosskill() != nobattle && 
                             BannonSlot() != FrontRow1 &&
                             slot1blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != BackRow1 &&
                             slot1blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != FrontRow2 &&
                             slot2blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != BackRow2 &&
                             slot2blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != FrontRow3 &&
                             slot3blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != BackRow3 &&
                             slot3blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != FrontRow4 &&
                             slot4blind() ||
                             bosskill() != nobattle &&
                             BannonSlot() != BackRow4 &&
                             slot4blind()))
                             
function slot1petrify() => bit6(0xae98) 
function slot1pet() => prev(slot1petrify()) == 0x00 && slot1petrify() == 0x01
function slot2petrify() => bit6(0xae98)     
function slot2pet() => prev(slot2petrify()) == 0x00 && slot2petrify() == 0x01 
function slot3petrify() => bit6(0xae98)                             
function slot3pet() => prev(slot3petrify()) == 0x00 && slot3petrify() == 0x01 
function slot4petrify() => bit6(0xae98)                          
function slot4pet() => prev(slot4petrify()) == 0x00 && slot4petrify() == 0x01

function petrifyreset() => (never(bosskill() != nobattle && 
                             slot1blind() ||
                             bosskill() != nobattle &&
                             slot1blind() ||
                             bosskill() != nobattle &&
                             slot2blind() ||
                             bosskill() != nobattle &&
                             slot2blind() ||
                             bosskill() != nobattle &&
                             slot3blind() ||
                             bosskill() != nobattle &&
                             slot3blind() ||
                             bosskill() != nobattle &&
                             slot4blind() ||
                             bosskill() != nobattle &&
                             slot4blind()))
                            
function FormationTerra() => byte(0x9850) == 0x00
function FormationLocke() => byte(0x9851) == 0x00
function FormationCyan() => byte(0x9852) == 0x00
function FormationShadow() => byte(0x9853) == 0x00
function FormationEdgar() => byte(0x9854) == 0x00
function FormationSabin() => byte(0x9855) == 0x00
function FormationCeles() => byte(0x9856) == 0x00
function FormationStrago() => byte(0x9857) == 0x00
function FormationRelm() => byte(0x9858) == 0x00
function FormationSetzer() => byte(0x9859) == 0x00
function FormationMog() => byte(0x985a) == 0x00
function FormationGau() => byte(0x985b) == 0x00
function FormationGogo() => byte(0x985c) == 0x00
function FormationUmaro() => byte(0x985d) == 0x00
function FormationBanon() => byte(0x985e) == 0x00

function enemy1currenthp() => word(0xbbfc)


///Event Flags///
function protectterra() => bit3(0x9e80)

function obtaingenji() => high4(0x9e82)
function genjigloves() => obtaingenji() == 0x07

function raftcheckpoint() => once(map() == 0x05 && 
                             prev(map()) == 0x71)
                             
function raftcheckpoint2() => once(map() == 0x71 && 
                              prev(map()) == 0x72)
                              
function ultrosdead() => bit2(0x9e83)
function stolenoutfit() => bit4(0x9ea0)


///Monster Formations///
function formation() => word(0x91e0)
ymir = 0x1b0
guardleader = 0x004
vargas = 0x1b3
ultros = 0x1d9
tunnelarmor = 0x1b4
cyancap = 0x199
choochoo = 0x1b5
kefkanarshe = 0x1f9

///Bestiary Entries///

bestiary = {
"Ymir":word(0x41a00),
"Guard":word(0x41800),
"Wererat":word(0x41826),
"SilverLobo":word(0x41832),
"Megalodoth":word(0x41836),
"Spritzer":word(0x4188c),
"Bandit":word(0x4189a),
"GuardLeader":word(0x0418c8),
"Vargas":word(0x41a06),
"TunnelArmor":word(0x41a08),
"Ultros":word(0x41a58),
"HeavyArmor":word(0x4193e),
"PhantomTrain":word(0x41a0c),
"Kefka":word(0x41a94),
"Dadaluma":word(0x41a0e),
"UltrosTwo":word(0x41a5a),
"Number24":word(0x41a14),
"Number128":word(0x41a16),
"CraneLeft":word(0x41a1a),
"CraneRight":word(0x41a1c),
"FlameEater":word(0x41a2c),
"UltrosThree":word(0x41a5c),
"Intangir":word(0x41946),
"AirForce":word(0x41a26),
"UltimaWeapon":word(0x41a2e),
"Tentacles":word(0x41a36),
"Dullahan":word(0x41a38),
"StormDragon":word(0x41a96),
"Humbaba":word(0x41ada),
"Chadarnook":word(0x41a90),
"HolyDragon":word(0x41848),
"MagicMaster":word(0x41acc),
"IceDragon":word(0x41a92),
"Gilgamesh":word(0x41b40),
"RedDragon":word(0x41aa6),
"Brachiosaur":word(0x4184c),
"BlueDragon":word(0x41aa4),
"EarthDragon":word(0x41a98),
"UltimaBuster":word(0x41afa),
"GoldDragon":word(0x41aa0),
"Inferno":word(0x41a18),
"SkullDragon":word(0x41aa2),
"KefkaEnd":word(0x41a54),
"KaiserDragon":word(0x41b3e),
"OmegaWeapon":word(0x41b2c),
"Wrexsoul":word(0x41a44),
}


achievement ("Shell Shocker", "Defeat Ymir", 5,
trigger = formation() == ymir &&
          bestiary["Ymir"] > prev(bestiary["Ymir"]))

achievement ("Where You Going!?", "Defeat Ymir without letting it hide more than once", 5,
trigger = formation() == ymir &&
          trigger_when(bestiary["Ymir"] > prev(bestiary["Ymir"])) &&
          (unless(tally(2,(prev(stance()) == 0x03) &&
          stance() == 0x01))) &&
          (always_false() || never(bosskill() == nobattle)))
              
achievement ("Security Crew", "Rescue Terra", 5,
trigger = formation() == guardleader &&
          protectterra() == 0x01 &&
          bestiary["GuardLeader"] > prev(bestiary["GuardLeader"]))

achievement ("Stay Put, I Got This!", "Get to & defeat Guard leader without ever swapping or battling with any team except Locke's", 5,
trigger = mapbattle() == 0x33 &&
          trigger_when(bestiary["GuardLeader"] > prev(bestiary["GuardLeader"])) &&
          (unless(once(protectterra() == 0x01 &&
          partyused() != prev(partyused())))) &&
          (always_false() || never(protectterra() == 0x00)))
              
achievement ("Yoink! I", "Steal the Mythril Dagger from Guard Leader in Narshe Cave", 1,
trigger = formation() == guardleader &&
          bosskill() != nobattle &&
          trigger_when(Stolen(01)))
           
achievement ("Flu Shot", "Enter Mt.Kolts and make it to Vargas without anyone being petrified", 5,
trigger = MtKoltsPoisonRun() &&
          petrifyreset())           
              
achievement ("Snubbed", "Defeat Vargas", 5,
trigger = formation() == vargas &&
          bestiary["Vargas"] > prev(bestiary["Vargas"]))
              
achievement ("Successor", "Defeat Vargas without any party members fainting", 5,
trigger = formation() == vargas &&
          trigger_when(bestiary["Vargas"] > prev(bestiary["Vargas"])) &&
          nofainting() && 
          (always_false() || never(bosskill() == nobattle)))
                            
achievement ("Yoink! II", "Steal the Mythril Claws from Vargas on Mt.Kolts", 10,
trigger = formation() == vargas &&
          bosskill() != nobattle &&
          Stolen(0x54))              
              
achievement ("Genji Gloves", "Obtain the Genji Gloves from Banon", 3,
trigger = trigger_when(mapbattle() == returner) &&
          genjigloves() &&
          ItemObtained(0xd1))

achievement ("Gwee-Hee", "Defeat Ultros", 5,
trigger = formation() == ultros &&
          bestiary["Ultros"] > prev(bestiary["Ultros"]))
              
achievement ("Suns out, Guns Out", "Ride the raft both times & defeat Ultros without Terra, Sabin or Edgar being blinded by Darkness (NO RELOADING SAVE)", 5,
trigger = raftcheckpoint() &&
          trigger_when(raftcheckpoint2()) &&
          trigger_when(bestiary["Ultros"] > prev(bestiary["Ultros"]) &&
          darknessreset()))

function LockeScenario() => bit6(0x9e83)              
achievement ("David Vs. Goliath", "Defeat a Heavy Armor solo with Locke [Locke Scenario]", 10,
trigger = mapbattle() == heavyarmorfig &&
          LockeScenario() == 0x00 &&
          trigger_when(bestiary["HeavyArmor"] > prev(bestiary["HeavyArmor"])))
              
achievement ("Break the Walls Down", "Defeat the Tunnel Armor [Locke Scenario]", 5,
trigger = mapbattle() == TunnelArmor &&
          formation() == tunnelarmor &&
          bestiary["TunnelArmor"] > prev(bestiary["TunnelArmor"]))

function runicregen() => prev(byte(0x7204)) == 0xff 

achievement ("Scorched", "Defeat the Tunnel Armor without using Runic and anyone fainting [Locke Scenario]", 10,
trigger = mapbattle() == TunnelArmor &&
          formation() == tunnelarmor &&
          runicregen() &&
          tally(0,prev(enemy1currenthp()) > 0x00 &&
          prev(enemy1currenthp()) != 0xffff) &&
          enemy1currenthp() == 0x00 &&
          nofainting() &&
          (always_false() ||
          never(bosskill() == nobattle)))

function sabinburn() => bit2(0x9e84) > prev(bit2(0x9e84))
             
achievement ("Yeeeeouch!", "Have Sabin burn himself [Sabin Scenario]", 1,
trigger = map() == cabin && trigger_when(sabinburn()))

function ShadowRecruit() => bit2(0x9eac) > prev(bit2(0x9eac))
function ShadowCabin() => map() == cabinshadow && trigger_when(ShadowRecruit())
achievement ("Out of the Shadows", "Have Shadow join Sabin at the cabin", 1, 
trigger = ShadowCabin())

function CaptainBlaster() => mapbattle() == cyanvscaptain && formation() == cyancap && enemy1currenthp() == 0 && prev(enemy1currenthp()) == 0x1c8

achievement ("No Chance!", "Defeat the Captain in Doma Castle in a single blow", 2,
trigger = CaptainBlaster())
 
function ImperialCamp() => map() == imperialcamp && bit7(0x009e86) > prev(bit7(0x009e86)) 
 
achievement ("Mobile Suit Rampage", "Make your way out of the Imperial Camp", 3,
trigger = ImperialCamp())    
    
function GhostParty() => bit4(0x9ea4) > prev(bit4(0x9ea4))
function GhostRecruiter() => trigger_when(GhostParty()) && (map() == ghosttrain || map() == 0x98 || map() == 0x95 || map() == 0x97)
achievement ("Ghosty Recruit", "Allow a Ghost to join your team", 1, trigger = GhostRecruiter())
    
achievement ("End of the Line", "Defeat the Phantom Train [Sabin Scenario]", 5, 
trigger = formation() == choochoo &&
          bestiary["PhantomTrain"] > prev(bestiary["PhantomTrain"])) 
          
achievement ("Peek-a-Boo!", "Defeat the Phantom Train in a single blow [Sabin Scenario]", 3, 
trigger = formation() == choochoo &&
          trigger_when(enemy1currenthp() == 00) && 
          prev(enemy1currenthp()) == 0x76c)          
    
function injuredsoldier() => map() == injuredsoldierquest && bit0(0x9ed1) == 1 && bit1(0x9ed1) == 1 && bit5(0x9ed1) == 1 && prev(bit5(0x9ed1)) == 0
achievement ("Love Letters", "Complete the injured soldier sidequest[Sabin Scenario]", 5, 
trigger = injuredsoldier())   
    
function Gotcha() => map() == crescentcave && bit3(0x9eaf) > prev(bit3(0x9eaf))   
achievement ("WAOU", "Gau pulled a prank[Sabin Scenario]", 1, trigger = Gotcha())    
    
function blushingcyan() => map() == nikeahpub && bit3(0x9e88) > prev(bit3(0x9e88))
achievement ("Licentious Howler!", "Cyan the Shy [Sabin Scenario]", 1, trigger = blushingcyan())
    
function kefkabattlenarshe() => formation() == kefkanarshe && bestiary["Kefka"] > prev(bestiary["Kefka"]) 
achievement ("Clowning Around", "Defeat Kefka in the Battle in Narshe", 5,
trigger = kefkabattlenarshe())   
    
function Sabinreturns() => map() == sabinreturnsfigaro && bit2(0x9e89) > prev(bit2(0x9e89))
    
achievement ("Home Coming", "Sabin returns to Figaro", 3, 
trigger = Sabinreturns())    
    
function deadrachel() => map() == 0xc3 && bit7(0x9e89) > prev(bit7(0x9e89))    
achievement ("Failed Her", "Rachel x Locke scene", 1,
trigger = deadrachel())    
  
achievement ("What a Fine Day", "Defeat Dadaluma", 5,
trigger = formation() == 0x1b6 &&
          mapbattle() != 0xc7  &&
          bestiary["Dadaluma"] > prev(bestiary["Dadaluma"]))  
    
achievement ("Yoink! III", "Steal the Jeweled Ring from Dadaluma", 5,
trigger = (trigger_when(mapbattle() == 0xdd)) &&
          formation() == 0x1b6 &&
          bosskill() != nobattle &&
          Stolen(0xb5))
               
achievement ("I Am Octopus", "Defeat Ultros in the Opera House", 5,
trigger = formation() == 0x1da &&
          bestiary["UltrosTwo"] > prev(bestiary["UltrosTwo"]))      
    
achievement ("Yoink! IV", "Steal the Blood Sword or the Rune Blade from Number 24", 5,
trigger = (trigger_when(mapbattle() == 0x111)) &&
          formation() == 0x1b9 &&
          bosskill() != nobattle &&
          (always_false() || trigger_when(byte(0xaf35) == 0x12) && prev(byte(0xaf35)) != 0x12 || trigger_when(byte(0xaf35) == 0xc) && prev(byte(0xaf35)) != 0xc))
    
achievement ("Hold the Door", "Defeat Number 24", 5,
trigger = formation() == 0x1b9 &&
          mapbattle() != 0xc7  &&
          bestiary["Number24"] > prev(bestiary["Number24"]))       
    
achievement ("Yoink! V", "Steal Kazekiri from Number 128", 5,
trigger = (trigger_when(mapbattle() == 0x110)) &&
          formation() == 0x1ba &&
          mapbattle() != 0xc7  &&
          bosskill() != nobattle &&
          Stolen(0x2e))   
    
achievement ("Minecart Madness", "Defeat Number 128", 5,
trigger = formation() == 0x1ba &&
          mapbattle() != 0xc7 &&
          bestiary["Number128"] > prev(bestiary["Number128"]))     
    
achievement ("Sky High", "Defeat the Cranes", 5,
trigger = formation() == 0x1b8 &&
          bestiary["CraneLeft"] > prev(bestiary["CraneLeft"]) &&
          bestiary["CraneRight"] > prev(bestiary["CraneRight"]))
    
achievement ("Yoink! VI", "Steal Flametongue from Flame Eater", 5,
trigger = formation() == 0x1c1 &&
          Stolen(0x0d))
          
achievement ("Molten Core", "Defeat Flame Eater", 5,
trigger = formation() == 0x1c1 &&
          bestiary["FlameEater"] > prev(bestiary["FlameEater"]))
    
achievement ("Yoink VII", "Steal White Cape from Ultros", 5, 
trigger = formation() == 0x183 &&
          Stolen(0xb4))
    
achievement ("Shiny Golden Statues", "Defeat Ultros", 5,
trigger = formation() == 0x183 &&
          bestiary["UltrosThree"] > prev(bestiary["UltrosThree"]))    
    
function MogJoins() => byte(0x985a)
achievement ("To the Rescue!", "Rescue Mog", 5,
trigger = map() == 0x17 &&
          trigger_when(MogJoins() > prev(MogJoins())))   

function item_steal() => byte(0xaf35)
achievement ("Yoink VIII", "Steal the Magicite Shard from Intangir and win the battle", 5, 
trigger = formation() == 0xd2 &&
          trigger_when(tally(1,prev(item_steal()) != 0xf9 && item_steal() == 0xf9)) &&
          trigger_when(word(0x41946) > prev(word(0x41946))))
    
achievement ("Counter-Play", "Defeat Intangir", 10,
trigger = formation() == 0xd2 &&
          mapbattle() != 0xc7 &&
          bestiary["Intangir"] > prev(bestiary["Intangir"]))    
    
achievement ("Triple Play", "Defeat AirForce", 10,
trigger = formation() == 0x1cb &&
          mapbattle() != 0xc7  &&
          bestiary["AirForce"] > prev(bestiary["AirForce"]))      
    
achievement ("Yoink IX", "Steal Ribbon from Ultima Weapon", 10, 
trigger = formation() == 0x1c2 &&
          Stolen(0xca))    
    
achievement ("Unrivaled", "Defeat Ultima Weapon", 10,
trigger = formation() == 0x1c2 &&
          bestiary["UltimaWeapon"] > prev(bestiary["UltimaWeapon"]))      
    
achievement ("Tangeled Up", "Clear out the Figaro Castle engine room", 5,
trigger = formation() == 0x1c6 &&
          mapbattle() != 0xc7  &&
          bestiary["Tentacles"] > prev(bestiary["Tentacles"]))       
    
achievement ("Pale Rider", "Defeat the Dullahan", 5,
trigger = formation() == 0x1c7 &&
          mapbattle() != 0xc7  &&
          bestiary["Dullahan"] > prev(bestiary["Dullahan"]))       
          
achievement ("Ground Shaking", "Defeat Humbaba the 2nd time", 5,
trigger = formation() == 0x1a7 &&
          mapbattle() != 0xc7  &&
          bestiary["Humbaba"] > prev(bestiary["Humbaba"]))    
 
achievement ("Best I've Had", "Defeat Chadarnook", 5,
trigger = formation() == 0x1c8 &&
          bestiary["Chadarnook"] > prev(bestiary["Chadarnook"]))    

achievement ("Northern Cross", "Defeat Ultima Buster", 10,
trigger = formation() == 0x1e2 &&
          bestiary["UltimaBuster"] > prev(bestiary["UltimaBuster"]))

achievement ("The Claw", "Defeat Inferno", 5,
trigger = formation() == 0x1e4 &&
          mapbattle() != 0xc7  &&
          bestiary["Inferno"] > prev(bestiary["Inferno"]))    
          
achievement ("Life, Dreams, Hope", "Defeat Kefka", 25,
trigger = formation() == 0x202 &&
          bestiary["KefkaEnd"] > prev(bestiary["KefkaEnd"]))    
    
function squad_up() => bitcount(0x9ede)+bitcount(0x9edf)-bit6(0x9edf)-bit7(0x9edf)
                       
achievement("Squad Up", "Gather all characters", 25, 
trigger = save_protect() && 
          measured(squad_up() == 14) && 
          prev(squad_up()) == 13)
     
achievement ("Littlefoot", "Obtain a Celestriad", 10,
trigger = formation() == 0x142 &&
          mapbattle() != 0xc7  &&
          ItemObtained(0xce)) 
    
achievement ("Gimme Sword", "Defeat Gilgamesh in the Arena", 10,
trigger = formation() == 0x27e &&
          mapbattle() != 0xc7  &&
          bestiary["Gilgamesh"] > prev(bestiary["Gilgamesh"]))    
    
achievement ("Ultimate Magician", "Defeat Magic Master", 10,
trigger = formation() == 0x162 &&
          mapbattle() != 0xc7  &&
          bestiary["MagicMaster"] > prev(bestiary["MagicMaster"]))    
    
achievement ("Storming Roar", "Defeat the Storm Dragon", 5,
trigger = formation() == 0x16f &&
          mapbattle() != 0xc7  &&
          bestiary["StormDragon"] > prev(bestiary["StormDragon"]))     
    
achievement ("Glorious Roar", "Defeat the Holy Dragon", 5,
trigger = formation() == 0x1e1 &&
          mapbattle() != 0xc7  &&
          bestiary["HolyDragon"] > prev(bestiary["HolyDragon"])) 
          
achievement ("Icy Roar", "Defeat the Ice Dragon", 5,
trigger = formation() == 0x16e &&
          mapbattle() != 0xc7  &&
          bestiary["IceDragon"] > prev(bestiary["IceDragon"]))   
          
achievement ("Fiery Roar", "Defeat the Red Dragon", 5,
trigger = formation() == 0x174 &&
          mapbattle() != 0xc7  &&
          bestiary["RedDragon"] > prev(bestiary["RedDragon"])) 
          
achievement ("Wet Roar", "Defeat the Blue Dragon", 5,
trigger = formation() == 0x173 &&
          mapbattle() != 0xc7  &&
          bestiary["BlueDragon"] > prev(bestiary["BlueDragon"])) 
          
achievement ("Earthly Roar", "Defeat the Earth Dragon", 5, 
trigger = formation() == 0x170 &&
          mapbattle() != 0xc7  &&
          bestiary["EarthDragon"] > prev(bestiary["EarthDragon"])) 
          
achievement ("Fools Roar", "Defeat the Gold Dragon", 5, 
trigger = formation() == 0x171 &&
          mapbattle() != 0xc7  &&
          bestiary["GoldDragon"] > prev(bestiary["GoldDragon"])) 
          
achievement ("Deadly Roar", "Defeat the Skull Dragon", 5, 
trigger = formation() == 0x172 &&
          mapbattle() != 0xc7  &&
          bestiary["SkullDragon"] > prev(bestiary["SkullDragon"]))
          
achievement ("King of Roars", "Defeat the Kaiser Dragon", 25, 
trigger = formation() == 0x27d &&
          mapbattle() == 0x1ac &&
          bestiary["KaiserDragon"] > prev(bestiary["KaiserDragon"]))

achievement ("Forsaken", "Defeat the Omega Weapon", 10, 
trigger = formation() == 0x274 &&
          bestiary["OmegaWeapon"] > prev(bestiary["OmegaWeapon"]))
          
achievement ("Conquerer of Souls", "Clear the Soul Shrine and obtain the Master's Crown", 25, 
trigger = formation() == 0x27d &&
          mapbattle() == 0xc7 &&
          bestiary["KaiserDragon"] > prev(bestiary["KaiserDragon"]))  
          
achievement ("Odin Evolved", "Upgrade Odin to Raiden", 5,
trigger = map() == 0x198 &&
          bit3(0x41001) < prev(bit3(0x41001)) && 
          bit4(0x41001) > prev(bit4(0x41001)))
    
function Espers() => bitcount(0x41000)+bitcount(0x41001)+bitcount(0x41002)+bit0(0x41003)+bit1(0x41003)+
                     bit2(0x41003)+bit3(0x41003)+bit4(0x41003)+bit5(0x41003)+bit6(0x41003)
achievement ("Magicite Enthusiast", "Collect half of the Espers", 10, 
trigger = save_protect() && 
          measured(Espers() == 15) && 
          prev(Espers()) == 14)   

achievement ("Magicite Collector", "Collect all of the Espers", 25, 
trigger = save_protect() && 
          measured(Espers() == 30) && 
          prev(Espers()) == 29)  

function SabinBlitz() => bit0(0x9d28)+bit1(0x9d28)+bit2(0x9d28)+bit3(0x9d28)+bit4(0x9d28)+bit5(0x9d28)+bit6(0x9d28)+bit7(0x9d28)
achievement ("Kapow!", "Learn all of Sabin's blitz", 5,
trigger = save_protect() && 
          SabinBlitz() == 8 && 
          prev(SabinBlitz()) == 7)
    
function StragoLore() => bitcount(0x9d29)+bitcount(0x9d2a)+bitcount(0x9d2b)
achievement ("Tourist", "Obtain 50% of all Lore", 5, 
trigger = save_protect() && 
          measured(StragoLore() == 12) && 
          prev(StragoLore()) == 11)

achievement ("Tour Guide", "Obtain 100% of all Lore", 5, 
trigger = save_protect() && 
          measured(StragoLore() == 24) && 
          prev(StragoLore()) == 23)

function CyanBush() => bitcount(0x9cf7)
achievement ("Expert Swordsman", "Obtain all Bushido's", 5, 
trigger = save_protect() &&
          measured(CyanBush() == 8) && 
          prev(CyanBush()) == 7 ||
          formation() == 0x1ce &&
          bestiary["Wrexsoul"] > prev(bestiary["Wrexsoul"]))
 
function GauRage() => bitcount(0x9d2c)+bitcount(0x9d2d)+bitcount(0x9d2e)+bitcount(0x9d2f)+bitcount(0x9d30)+bitcount(0x9d31)+bitcount(0x9d32)+
                      bitcount(0x9d33)+bitcount(0x9d34)+bitcount(0x9d35)+bitcount(0x9d36)+bitcount(0x9d37)+bitcount(0x9d38)+bitcount(0x9d39)+
                      bitcount(0x9d3a)+bitcount(0x9d3b)+bitcount(0x9d3c)+bitcount(0x9d3d)+bitcount(0x9d3e)+bitcount(0x9d3f)+bitcount(0x9d40)+
                      bitcount(0x9d41)+bitcount(0x9d42)+bitcount(0x9d43)+bitcount(0x9d44)+bitcount(0x9d45)+bitcount(0x9d46)+bitcount(0x9d47)+
                      bitcount(0x9d48)+bitcount(0x9d49)+bitcount(0x9d4a)+bitcount(0x9d4b) 
                     
achievement ("Wild Thing I", "Obtain 25% of rages", 10,
trigger =     save_protect() && 
              measured(GauRage() == 64) &&
              prev(GauRage()) <= 63 &&
              prev(GauRage()) >= 55)

achievement ("Wild Thing II", "Obtain 50% of rages", 10,
trigger =     save_protect() &&
               measured(GauRage() == 128) && 
               prev(GauRage()) <= 127 &&
               prev(GauRage()) >= 119)

achievement ("Wild Thing III", "Obtain 75% of rages", 10,
trigger =     save_protect() && 
              measured(GauRage() == 192) && 
              prev(GauRage()) <= 191 &&
              prev(GauRage()) >= 183)

achievement ("Wild Thing IV", "Obtain 100% of rages", 10,
trigger =     save_protect() && 
              measured(GauRage() == 253) && 
              prev(GauRage()) <= 252 &&
              prev(GauRage()) >= 244)

function mog_dance() => bitcount(0x9d4c)

achievement ("Dance Partner", "Obtain 50% of all dances", 5,
trigger =     save_protect() && 
              measured(mog_dance() == 0x04) && 
              prev(mog_dance()) == 0x03)

achievement ("Dancing Queen", "Obtain 100% of dances", 5,
trigger =     save_protect() && 
              measured(mog_dance() == 8) && 
              prev(mog_dance()) == 7)

function bestiary_ones() => sum_of(range(0x041800,0x041832,step=2), addr => word(addr)/word(addr))                        //26
function bestiary_two() => sum_of(range(0x041836,0x04187e,step=2), addr => word(addr)/word(addr))                         //37
function bestiary_three() => sum_of(range(0x041882,0x0418be,step=2), addr => word(addr)/word(addr))                       //31
function bestiary_four() => sum_of(range(0x0418c2,0x04196a,step=2), addr => word(addr)/word(addr))                        //85
function bestiary_five() => sum_of(range(0x04196e,0x04199c,step=2), addr => word(addr)/word(addr))                        //24
function bestiary_six() => sum_of(range(0x0419a0,0x041a1c,step=2), addr => word(addr)/word(addr))                         //63
function bestiary_seven() => word(0x41a20)/word(0x41a20)+word(0x041a24)/word(0x041a24)+word(0x041a26)/word(0x041a26)      //03
function bestiary_eight() => sum_of(range(0x041a2c,0x041a32,step=2), addr => word(addr)/word(addr))                       //04
function bestiary_nine() => sum_of(range(0x041a36,0x041a6a,step=2), addr => word(addr)/word(addr))                        //27
function bestiary_ten() => word(0x041a70)/word(0x041a70)+word(0x041a72)/word(0x041a72)                                    //02
function bestiary_eleven() => sum_of(range(0x041a78,0x041a9c,step=2), addr => word(addr)/word(addr))                      //19
function bestiary_twelve() => sum_of(range(0x041aa0,0x041ad2,step=2), addr => word(addr)/word(addr))                      //26
function bestiary_thirteen() => word(0x041ada)/word(0x041ada)+word(0x041ae2)/word(0x041ae2)+word(0x041afa)/word(0x041afa) //03
function bestiary_fourteen() => sum_of(range(0x041b00,0x041b44,step=2), addr => word(addr)/word(addr))                    //35

achievement("Bestiary I", "Complete 25% of the bestiary (Based off total % not in game %)", 5, 
    save_protect() && 
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 96 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() <= 95 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 87)

achievement("Bestiary II", "Complete 50% of the bestiary (Based off total % not in game %)", 5, 
    save_protect() && 
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 192 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() <= 191 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 183)
    
achievement("Bestiary III", "Complete 75% of the bestiary (Based off total % not in game %)", 5, 
    save_protect() && 
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 288 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() <= 287 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 280)
    
achievement("Bestiary IV", "Complete 100% of the bestiary (Based off total % not in game %)", 10,
    save_protect() && 
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() == 384 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() <= 383 &&
    bestiary_ones()+bestiary_two()+bestiary_three()+bestiary_four()+bestiary_five()+bestiary_six()+bestiary_seven()+bestiary_eight()+bestiary_nine()+bestiary_ten()+
    bestiary_eleven()+bestiary_twelve()+bestiary_thirteen()+bestiary_fourteen() >= 375)