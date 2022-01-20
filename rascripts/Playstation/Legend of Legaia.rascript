// Legend of Legaia
// #ID = 11299

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0x085958
for i in range(0, 255)
{
  slot = byte(inventoryBaseAddr + i * 2)
  trigger = trigger || prev(slot) != itemId && slot == itemId
}
return trigger
}

function ItemObtainedMore(itemName)
{
trigger = always_false()
itemBaseAddr = 0x85958
quantBaseAddr = 0x85959
for i in range(0, 255)
{
  item = byte(itemBaseAddr + i * 2)
  quant = byte(quantBaseAddr + i * 2)
  trigger = trigger || item == itemName && quant > prev(quant) || prev(item) == 0x00 && item == itemName
}
return trigger
}

function MapID() => word(0x84540)
Rim_Elm = 0x03
Rim_Elm_Mist = 0x0c
Rim_Elm_After_Mist = 0x15
rim_elm_dayoff = 0x15b
Hunters_Spring = 0x1e
Snowdrift_Cave = 0x26
West_Voz_Forest = 0x2d
Biron_Monastery = 0x34
Drake_Castle_Mist = 0x3c
Drake_Castle = 0x44
Water_Gate = 0x4d
Drake_Kingdom = 0x55
Zetos_Dungeon = 0x5e
East_Voz_Forest = 0x67
Drake_Kingdom2 = 0x6f
Noas_Dream = 0x80
Ancient_Wind_Cave = 0x89
Ratayu = 0x91
MtRikuroa = 0x9b
Jeremi = 0xa5
Shadow_Gate = 0xae
Vidna = 0xb6
Octam_Underground = 0xc7
Dohati_Castle = 0xd9
Group_Dream = 0xcf
Shadow_Underground = 0xeb
Sebucus_Island = 0xf4
Sky_Gardens_Tower = 0xfe
Sky_Gardens = 0x107
Fire_Path = 0x110
Wedding = 0x12c
Ratayu_Palace = 0x119
usha = 0x18f
MtLetona = 0x122
Fire_Path2 = 0x135
Octam_Underground2 = 0x148
Octam = 0x151
Sol = 0x215
soldisco = 0x231
Sol_Tower = 0x1e3
solroof = 0x1fd
soltop = 0x20c
Sol_Tower2 = 0x21e
Intro = 0x2ec
Intro = 0x2f1
Intro = 0x2fb
Muscle_Dome = 0x4c6
Fishing = 0x4ab
nivora = 0x27d
floatingcastle = 0x173
sorencamp = 0x162
conkrampast = 0x26f
conkram = 0x16a
roguetower = 0x2b8
fortress = 0x2c1
serukai = 0x2cc
mtdhini = 0x17e
biocastle = 0x2b0

function musclediff() => byte(0x1d1a90)
function tokens() => dword(0x845a4)
function gold() => dword(0x8459c)

function VahnArts() => byte(0x8488d)
function NoaArts() => byte(0x84ca1)
function GalaArts() => byte(0x850b5)

function vahnhp() => word(0x8480e)
function noahp() => word(0x84c22)
function exp() => dword(0x7bd1c)

function VahnRaSeruLevel() => byte(0x848a1)
function VahnMagicTotal() => byte(0x84844)
function NoaMagicTotal() => byte(0x84c58)
function vahntoxic() => bit1(0x84836)
function vahnvenom() => bit0(0x84836)
function noatoxic() => bit1(0x84c4a)
function noavenom() => bit0(0x84c4a)
function galatoxic() => bit1(0x8505e)
function galavenom() => bit0(0x8505e)
function poisonreset() => never(vahntoxic()+vahnvenom()+noatoxic()+noavenom()+galatoxic()+galavenom() != 0x00)

function xcoord() => word(0x7bdc8)
function ycoord() => word(0x7bdcc)
function partysize() => byte(0x84594)
function battlewon() => bit2(0x8575e)
function bossfight() => bit1(0x85759)
function inbattle() => byte(0x70574)

function enemy1hp() => word(0xed3b0)
function enemy1hpmax() => word(0xed3b2)
function enemy2hp() => word(0xed684)

function whosturn() => byte(0xeb66c)
players = 0x00
enemies = 0x07

function whosattacking() => byte(0xeb667)
vahnattack = 0x00
noaattack = 0x01
galaattack = 0x02

function partyslot1() => byte(0x84598)
Vahn = 0x00
Noa = 0x01
Gala = 0x02

function partyslot2() => byte(0x84599)
Vahn = 0x00
Noa = 0x01
Gala = 0x02

function partyslot3() => byte(0x8459a)
Vahn = 0x00
Noa = 0x01
Gala = 0x02

function typeofart() => byte(0xeb8df)
newart = 0x01
hyperart = 0x02
miracleart = 0x03
superart = 0x04
loading = 0x80

function monsteridentifier1() => dword(0xeb8e8)
Viguro = 0x6f727567
Songi = 0x69676e
Xain = 0x6e69
Zeto = 0x6f74
Saryu = 0x6153206e
Dohati = 0x69746168

function monsteridentifier2() => dword(0xeb908)
Viguro = 0x6f727567
Berserk = 0x72657372
function monsteridentifier3() => dword(0xeb928)

function choosingactions() => byte(0xeb65b) // 0x00 or 0xff while picking commands
function actionsdone() => byte(0xeb65a) // 0xff = waiting for battle turn to playout
function vahnfirstaction() => byte(0xecbc7)
nighto = 0x85
function terrafirstaction() => byte(0xece9b)
nighto = 0x85
function galafirstaction() => byte(0xed16f)
nighto = 0x85

function nightoblockvahn() => unless(once(actionsdone() == 0xff && vahnfirstaction() == nighto))           
function nightoblockterra() => unless(once(actionsdone() == 0xff && terrafirstaction() == nighto))             
function nightoblockgala() => unless(once(actionsdone() == 0xff && galafirstaction() == nighto)) 
function nonighto() => nightoblockvahn() && nightoblockterra() && nightoblockgala()



//Events

function bakafighterchar() => byte(0x1dbf70) // Vahn = 0x00 Noa = 0x01 Gala = 0x02
function bakafighterhealth() => byte(0x1dbfc4)
function bakafighterround() => byte(0x1dc110) // 0x0e = WIN
function bakafighterscore() => dword(0x1dbee4)
function dancingscore() => dword(0x1c6460)

function freebies() => bit5(0x8579b)
function batcredit() => bit1(0x8577a)
function noatrainingend() => bit2(0x85783)
function noatrainingstart() => bit3(0x85783)
function noatrainingarts() => noatrainingend() == 0x00 && noatrainingstart() == 0x01
function MeiPendantTrigger() => bit1(0x8579b)
function freedrimelm() => bit6(0x85780)
function freeddrakecastle() => bit7(0x857b9)
function golemdead() => bit1(0x857c4)
function carubanstart() => bit6(0x857a9)
function carubanend() => bit5(0x85780)
function westvozegg() => bit7(0x0857ae)
function eastvozgenesis() => byte(0x85802)
function beesbeat() => once(bit6(0x85810) > prev(bit6(0x85810))) && bit3(0x85810) > prev(bit3(0x85810))
function songistart() => bit2(0x8578a)
function zetostart() => bit7(0x8578b)
function berserkerbeat() => bit6(0x85791)
function fishingset() => bit2(0x85818) == 0x01 && bit1(0x85818) > prev(bit1(0x85818))
function yumaring() => bit4(0x85791)
function starpendant() => bit6(0x85790)
function xaindefeat() => bit2(0x85792)
function bathtime() => bit4(0x85798)
function songicure() => bit1(0x857c2)
function treerevived() => byte(0x0848a1)
function vansaryudead() => bit1(0x0857bf)
function dohatidead() => bit2(0x857c0)
function reunion() => bit2(0x85790)
function gazafight() => bit3(0x857e4)
function hotspring() => bit4(0x857d7)
function ushaquiz() => bit0(0x857c6)
function legendary() => bit6(0x8582f)

achievement ("Martial Artist [m]", "Learn all possible Art's with Vahn during the invasion of Rim Elm", 3,
    trigger = MapID() == Rim_Elm_Mist &&
              VahnArts() == 0x0b && 
              trigger_when(prev(VahnArts()) == 0x0a))
              
achievement ("Freebies [m] ", "Obtain the Freebies in Rim Elm", 1,
    trigger = MapID() == Rim_Elm_Mist &&
              freebies() > prev(freebies()))
                            
achievement ("Revival", "Revived the Genesis Tree and freed Rim Elm of the Mist", 5,
    trigger = MapID() == Rim_Elm_Mist &&
              freedrimelm() > prev(freedrimelm()))            
              
achievement ("Pendant [m]", "Obtain Mei's Pendant", 2,
    trigger = ItemObtained(0xac))
  
achievement ("Mighty [m]", "Learn all possible Art's with Noa duringher training session with Terra", 3, 
    trigger = MapID() == Snowdrift_Cave &&
              noatrainingarts() &&
              NoaArts() == 0x0a &&
              prev(NoaArts()) == 0x09)
              
achievement ("Rock Solid", "Defeat the Golem in Mt.Rikuroa", 1,
    trigger = MapID() == MtRikuroa &&
              golemdead() == 1 && prev(golemdead()) == 0)
              
achievement ("Proud Animal", "Revived the Genesis Tree and freed Drake Castle of the Mist", 5,
    trigger = MapID() == Drake_Kingdom &&
              freeddrakecastle() > prev(freeddrakecastle()))
 
achievement ("Don't Fear, Meta is Here [m]", "Defeat Caruban in Mt.Rikuroa without healing or any party member fainting", 10,
    trigger = MapID() == MtRikuroa &&
              prev(carubanstart()) == 0x01 &&
              battlewon() == 0x01 &&
              unless(once(vahnhp() > prev(vahnhp()) || noahp() > prev(noahp()) || vahnhp() == 0x00 || noahp() == 0x00)) &&
              (always_false() || never(carubanstart() == 0x00)))
              
achievement ("Bat Credit Card", "Obtain the Platinum Card", 1, 
    trigger = MapID() == Drake_Castle &&
              prev(batcredit()) == 0x00 && 
              batcredit() == 0x01)
              
achievement ("Dumb Heroes [m]", "Obtain the Fighting Robe", 3,
    trigger = MapID() == Drake_Castle &&
              ItemObtained(0x4c))
              
achievement ("Only Dreaming", "View Noa's dream", 1,
    trigger = MapID() == Noas_Dream &&
              xcoord() == 0x40 &&
              ycoord() == 0x40)
              
achievement ("Three's Company", "Gala joins the fight", 3,
    trigger = MapID() == Biron_Monastery &&
              partysize() == 0x03 && prev(partysize()) == 0x02)
              
achievement ("Extraction", "Obtained the Ra-Seru Egg in West Voz Forest", 5, 
    trigger = MapID() == West_Voz_Forest &&
              westvozegg() > prev(westvozegg()))
              
achievement ("I Choose You! [m]", "Absorb a Viguro during your fight with them in East Voz Forest", 10,
    trigger = MapID() == East_Voz_Forest &&
              (once(inbattle() == 0x01 && monsteridentifier1() == Viguro && monsteridentifier2() == Viguro)) &&
              inbattle() == 0x01 &&
              (VahnMagicTotal() > prev(VahnMagicTotal()) || NoaMagicTotal() > prev(NoaMagicTotal()) && never(inbattle() == 0x00)))
              
achievement ("For the Monastery","Revive the Genesis Tree in East Voz Forest", 5,
    trigger = MapID() == East_Voz_Forest &&
              eastvozgenesis() > prev(eastvozgenesis()))
 
 achievement ("Queen Bee", "Defeat the Queen and her Killer Bees", 5,
    trigger = MapID() == Rim_Elm_After_Mist &&
              beesbeat())
              
achievement ("Not the Bees! [m]", "Defeat the Queen and her Killer Bees without being poisoned", 10,
    trigger = MapID() == Rim_Elm_After_Mist &&
              beesbeat() && poisonreset())
              
achievement ("Red Vs. Blue [m]", "Defeat Songi without using any Arts", 5,
    trigger = MapID() == Zetos_Dungeon &&
              (once(inbattle() == 0x01 &&
              monsteridentifier1() == Songi)) &&
              battlewon() > prev(battlewon()) &&
              (never(typeofart() >= 0x01 && typeofart() <= 0x04)) &&
              never(songistart() == 0x00))
              
achievement ("Salvation", "Defeat Zeto in Zeto's Dungeon", 5,
    trigger = MapID() == Zetos_Dungeon &&
              zetostart() == 0x01 &&
              inbattle() == 0x01 &&
              monsteridentifier1() == Zeto &&
              battlewon() > prev(battlewon()))
              
achievement ("Perfect Harmony [m]", "Defeat Zeto in Zeto's Dungeon without using Hyper Arts", 10,
    trigger = MapID() == Zetos_Dungeon &&
              once(zetostart() > prev(zetostart())) &&
              monsteridentifier1() == Zeto &&
              battlewon() > prev(battlewon()) &&
              (never(inbattle() == 0x01 && typeofart() == 0x02)))

achievement ("Clinger", "Defeat Beserk", 10,
    trigger = MapID() == Sky_Gardens && 
              berserkerbeat() > prev(berserkerbeat()) && 
              monsteridentifier1() == Berserk)
              
achievement ("Rotting Flesh [m]", "Defeat Beserk without using Nighto", 10,
    trigger = MapID() == Sky_Gardens && 
              berserkerbeat() > prev(berserkerbeat()) &&
              nonighto() && 
              (always_false() || (never(monsteridentifier1() != Berserk))))
              
achievement ("Teach a Man to Fish", "Obtain the Fishing Set", 1,
    trigger = MapID() == Vidna &&
              fishingset())
 
achievement ("Chasing Stars", "Obtain the Star Pendant", 5,
    trigger = MapID() == Jeremi &&
              starpendant() > prev(starpendant())) 
 
achievement ("Moose on the Loose", "Defeat Xain", 10,
    trigger = once(monsteridentifier1() == Xain) &&
              xaindefeat() > prev(xaindefeat()) &&
              (always_false() || (never(MapID() != Fire_Path2))))
              
achievement ("Splish, Splash", "Obtain the Slowness Chain from the Mayor of Octam", 3,
    trigger = MapID() == Octam_Underground2 &&
              bathtime() > prev(bathtime()))

achievement ("Gentle Touch", "Defeat Songi & revive the Genesis tree on Mt.Letona", 10,
    trigger = MapID() == MtLetona &&
              songicure() == 0x01 &&
              treerevived() > prev(treerevived()))              
              
achievement ("Wedding Crashers", "Defeat Van Saryu", 10,
    trigger = once(monsteridentifier1() == Saryu) &&
              battlewon() == 0x01 &&
              vansaryudead() == 0x01 &&
              (always_false() || (never(MapID() != Wedding))))        
              
achievement ("Faithful Servant", "Defeat Dohati", 10,
    trigger = once(monsteridentifier1() == Dohati) &&
              battlewon() == 0x01 &&
              dohatidead() > prev(dohatidead()) &&
              (always_false() || (never(MapID() != Dohati_Castle))))              
              
achievement ("Reunited", "Reunite Zalan & Son", 1,
     trigger = MapID() == Jeremi &&
               reunion() > prev(reunion()))
              
achievement ("Mortal Kombat!", "Clear all 13 rounds of Baka Fighter", 10,
     trigger = MapID() == Sol_Tower2 &&
               bakafighterchar() >= 0x00 &&
               bakafighterchar() <= 0x02 &&
               prev(bakafighterround()) == 0x0d &&
               bakafighterround() == 0x0e)            

achievement ("Fighter Master", "Beat Baka Fighter with  1,000,000 points or more", 25,
     trigger = MapID() == Sol_Tower2 &&
               bakafighterchar() >= 0x00 &&
               bakafighterchar() <= 0x02 &&
               prev(bakafighterround()) == 0x0d &&
               bakafighterround() == 0x0e &&
               bakafighterscore() >= 0xF4240)            
           
achievement ("Beginner Brawler", "Clear Muscle Dome on Beginner difficulty", 5,
    trigger = MapID() == Muscle_Dome &&
              tokens()-prev(tokens()) == 0x332)  
            
achievement ("Expert Brawler", "Clear Muscle Dome on Expert difficulty", 10,
    trigger = MapID() == Muscle_Dome &&
              tokens()-prev(tokens()) == 0x5FC)          
              
achievement ("Super Deluxe 5000", "Purchase the Deluxe Rod", 5,
    trigger = MapID() == Sol_Tower2 &&
              ItemObtained(0xa1))
                                                           
achievement ("Disco Fever", "Obtain 600 points or more in Disco Dancing", 10,
    trigger = MapID() == soldisco &&
              prev(dancingscore()) < 0x258 &&
              dancingscore() >= 0x258)            
             
achievement ("Misjudge Me Not", "Defeat Gaza", 5,
    trigger = MapID() == solroof &&
              gazafight() == 1 &&
              bossfight() == 1 &&
              battlewon() > prev(battlewon()))             
             
achievement ("Super Geezer", "Clear Sol of the mist", 10,
    trigger = MapID() == soltop &&
              bossfight() == 1 &&
              battlewon() > prev(battlewon()) &&
              exp() == 0x2904)

achievement ("We Can Both Fit", "Noa just wants to bathe with a dude", 1,
    trigger = MapID() == usha &&
              trigger_when(hotspring() > prev(hotspring())))

achievement ("Quiz Master [m]", "Correctly Answer all Usha's wifes quiz", 1,
    trigger = MapID() == usha &&
              trigger_when(ushaquiz() > prev(ushaquiz())))

achievement ("Triple Threat I", "Defeat Che", 5,
    trigger = MapID() == nivora &&
              partyslot1()+partyslot2()+partyslot3() == 0x02 &&
              enemy1hpmax() == 0x2ee0 &&
              prev(enemy1hp()) > 0x00 &&
              enemy1hp() == 0x00)

achievement ("Triple Threat II", "Defeat Lu", 5,
    trigger = MapID() == nivora &&
              partyslot1()+partyslot2()+partyslot3() == 0x01 &&
              enemy1hpmax() == 0x251c &&
              prev(enemy1hp()) > 0x00 &&
              enemy1hp() == 0x00)

achievement ("Triple Threat III", "Defeat Gi", 5,
    trigger = MapID() == nivora &&
              partyslot1()+partyslot2()+partyslot3() == 0x00 &&
              enemy1hpmax() == 0x2710 &&
              prev(enemy1hp()) > 0x00 &&
              enemy1hp() == 0x00)

achievement ("Defusing the Situation", "Defeat Koru", 10,
    trigger = MapID() == nivora &&
              partyslot1()+partyslot2()+partyslot3() == 0x03 &&
              enemy1hpmax() == 0x4e20 &&
              prev(enemy1hp()) > 0x00 &&
              enemy1hp() == 0x00)
              
achievement ("The Perfect Cast","Obtain the Legendary Rod", 5,
    trigger = MapID() == usha &&
              legendary() > prev(legendary()))

function fishcaught() => byte(0x8445c)
Spikefish = 0x00 // Vidna
Lippian = 0x01 // Buma
Charger = 0x02 // Vidna & Buma
Jack = 0x03 // Vidna & Buma
Flypie = 0x04 //Vidna & Buma
HighCharger = 0x05 // Vidna & Buma
Octoban = 0x06 // Vidna
Devourer = 0x07 // Buma
Barbara = 0x08 // Vidna

function fishingpoints() => dword(0x8444c)
function fishweight() => dword(0x84458)
              
achievement ("Clearing Out the Lakes", "In a single fishing trip, catch 20 fish", 5,
    trigger = never(MapID() != Fishing) &&
              tally(20,fishingpoints() > prev(fishingpoints())))
              
achievement ("Big Mama", "Catch a fish worth 500pts or more setting a new hi score", 25,
    trigger = MapID() == Fishing &&
              fishweight() >= 0x1f4 &&
              prev(fishweight()) < 0x1f4)
              
achievement ("Godly", "Obtain the War God Icon from Vidna Fishing", 25,
    trigger = (MapID() == Fishing) &&
              (ItemObtainedMore(0xcd)))              
 
achievement ("Special Customer", "Obtain Palma", 25,
    trigger = MapID() == Jeremi &&
              ItemObtained(0x72)) 
             
achievement ("Water Jewel", "Obtain Mule", 25,
    trigger = (MapID() == Jeremi) &&
              ItemObtained(0x73))  
              
achievement ("Warrior of Light", "Obtain Horn", 5,
    trigger = MapID() == Jeremi &&
              ItemObtained(0x74))              
              
achievement ("Permission to Save the World!", "Congrats, you have permission to save the world. LUCKY YOU!", 1,
    trigger = MapID() == floatingcastle &&
              prev(MapID()) == sorencamp)
                            
achievement ("Trickery", "Defeat Zora", 10,
    trigger = MapID() == floatingcastle &&
              enemy1hpmax() == 0x5796 &&
              prev(enemy1hp()) > 0x00 && 
              enemy1hp() == 0x00 &&
              bossfight() == 1)
              
function escapetimer() => dword(0x845a0)
function mapmodifier() => byte(0x7bdd4)
castleescape = 0x38
castlerun = 0xf0

achievement ("Escape Artist [m]", "Escape the Floating Castle with 4:00:00 or more remaining", 5,
    trigger = MapID() == floatingcastle &&
              prev(escapetimer()) >= 0x3838 &&
              prev(mapmodifier()) == castlerun &&
              mapmodifier() == castleescape)           

achievement ("Hop Back This Time", "Travel to the past", 1,
    trigger = MapID() == conkrampast &&
              prev(MapID()) == conkram)
              
achievement ("Crystal Cutter", "Defeat Rogue", 10,
    trigger = MapID() == roguetower &&
              enemy1hpmax() == 0x6e28 &&
              bossfight() == 0x01 &&
              enemy1hp() == 0x00 && 
              prev(enemy1hp()) != 0x00)
              
achievement ("Mother's Love [m]", "Obtain Minea's Ring", 5,
    trigger = MapID() == conkrampast &&
              ItemObtained(0x6c))
              
achievement ("Teleporting Bad Guy", "Defeat Jette", 10,
    trigger = MapID() == fortress &&
              bossfight() == 1 &&
              enemy1hpmax() == 0x8707 &&
              enemy1hp() == 0x00 &&
              prev(enemy1hp()) != 0x00)
              
achievement ("Foolish Little Girl", "Defeat Cort", 10,
    trigger = MapID() == fortress &&
              bossfight() == 0x01 &&
              enemy1hpmax() == 0xc350 &&
              enemy1hp() == 0x00 &&
              prev(enemy1hp()) != 0x00)
              
achievement ("Student Surpasses the Master", "Defeat your Master and obtain the Mettle Gem", 10,
    trigger = MapID() == rim_elm_dayoff &&
              ItemObtainedMore(0xEB))

achievement ("Darkness", "Obtain Jedo", 5,
    trigger = MapID() == Jeremi &&
              ItemObtained(0x75))   
              
achievement ("Chicken!", "Become the King of Chickens", 1,
    trigger = MapID() == Sol_Tower2 &&
              ItemObtained(0xf7))
             
achievement ("Master Brawler [m]", "Clear Muscle Dome on Master difficulty and obtain the War God Icon", 25,
    trigger = MapID() == Sol_Tower2 &&
             ItemObtainedMore(0xcd))  
             
achievement ("Drainage", "Defeat Songi", 10,
    trigger = MapID() == serukai &&
              bossfight() == 0x01 &&
              enemy1hpmax() == 0xbb80 &&
              enemy1hp() == 0x00 &&
              prev(enemy1hp()) != 0x00)
              
achievement ("Finale", "Defeat the Final Boss", 10,
    trigger = MapID() == biocastle &&
              bossfight() == 0x01 &&
              enemy1hpmax() == 0xFFFF &&
              enemy1hp() == 0x00 &&
              prev(enemy1hp()) != 0x00)
              
achievement ("Pure Evil", "Defeat Lapis", 10,
    trigger = MapID() == mtdhini &&
              ItemObtained(0xed))
  
function JedoBlock() => byte(0x848a3) != 0x75 && byte(0x848a4) != 0x75 && byte(0x848a5) != 0x75 && byte(0x850cb) != 0x75 && byte(0x850cc) != 0x75 && byte(0x850cd) != 0x75 && byte(0x84cb7) != 0x75 && byte(0x84cb8) != 0x75 && byte(0x84cb9) != 0x75
              
achievement ("Absolute Evil [m]", "Defeat Lapis without the Dark Talisman equipped", 50,
    trigger = MapID() == mtdhini &&
              JedoBlock() &&
              ItemObtained(0xed))
              
function vahnlevel() => byte(0x84838)
function noalevel() => byte(0x84c4c)  
function galalevel() => byte(0x85060)  

function combinedlevel() => vahnlevel()+noalevel()+galalevel()

achievement ("Team Effort", "Have a combined party level of 100", 5,
    trigger = measured(combinedlevel() == 0x64) &&
              prev(combinedlevel()) <= 0x63 &&
              prev(combinedlevel()) >= 0x60)

function magiclevels() => byte(0x84869)+byte(0x8486a)+byte(0x8486b)+byte(0x8486c)+byte(0x8486d)+byte(0x8486e)+byte(0x8486f)+byte(0x084870)+byte(0x084871)+byte(0x084872)+byte(0x084873)+byte(0x084874)+
                          byte(0x84875)+byte(0x84876)+byte(0x84877)+byte(0x84878)+byte(0x84879)+byte(0x8487A)+byte(0x8487B)+byte(0x8487C)+byte(0x8487D)+byte(0x8487E)+byte(0x8487F)+
                          byte(0x84C7D)+byte(0x84C7E)+byte(0x84C7F)+byte(0x84C80)+byte(0x84C81)+byte(0x84C82)+byte(0x84C83)+byte(0x84C84)+byte(0x84C85)+byte(0x84C86)+byte(0x84C87)+byte(0x84C88)+byte(0x84C89)+byte(0x84C8A)+byte(0x84C8B)+byte(0x84C8C)+
                          byte(0x85091)+byte(0x85092)+byte(0x85093)+byte(0x85094)+byte(0x85095)+byte(0x85096)+byte(0x85097)+byte(0x85098)+byte(0x85099)+byte(0x8509A)+byte(0x8509B)+byte(0x8509C)+byte(0x8509D)+byte(0x8509E)+byte(0x8509F)+byte(0x850A0)
              
achievement ("Magician's In Training", "Have a combined party magic level of 30", 5,
    trigger = measured(magiclevels() == 0x1e) &&
              prev(magiclevels()) == 0x1d)
              
achievement ("Master Magician", "Have a combined party magic level of 100", 10,
    trigger = measured(magiclevels() == 0x64) &&
              prev(magiclevels()) == 0x63)
              
function magictotalsV() => byte(0x84844)
function magictotalsN() => byte(0x84c58)
function magictotalsG() => byte(0x8506c)

achievement ("Seru Handler, Vahn", "Obtain 11 Seru's with Vahn", 5,
    trigger = magictotalsV() == 0x0b && 
              prev(magictotalsV()) == 0x0a)
    
achievement ("Master of All, Vahn", "Obtain 22 Seru's with Vahn", 10,
    trigger = magictotalsV() == 0x16 && 
              prev(magictotalsV()) == 0x15)
              
achievement ("Seru Handler, Noa", "Obtain 11 Seru's with Noa", 5,
    trigger = magictotalsN() == 0x0b && 
              prev(magictotalsN()) == 0x0a)
    
achievement ("Master of All, Noa", "Obtain 22 Seru's with Noa", 10,
    trigger = magictotalsN() == 0x16 && 
              prev(magictotalsN()) == 0x15)            
   
achievement ("Seru Handler, Gala", "Obtain 11 Seru's with Gala", 5,
    trigger = magictotalsG() == 0x0b && 
              prev(magictotalsG()) == 0x0a)
    
achievement ("Master of All, Gala", "Obtain 22 Seru's with Gala", 10,
    trigger = magictotalsG() == 0x16 && 
              prev(magictotalsG()) == 0x15)
              
function treasures() => bitcount(0x85760)+bitcount(0x85761)+bitcount(0x85763)+bitcount(0x85764)+bitcount(0x85765)+bitcount(0x85766)+bitcount(0x85768)+
                        bitcount(0x85769)+bitcount(0x8576A)+bitcount(0x8576B)+bitcount(0x8576C)+bitcount(0x8576D)+bitcount(0x8576E)+bitcount(0x8576F)+
                        bitcount(0x85771)+bitcount(0x85772)+bitcount(0x85773)+bitcount(0x85774)+bitcount(0x85775)+bitcount(0x85776)+bitcount(0x85777)+
                        bitcount(0x85778)+bitcount(0x85779)+bitcount(0x8577B)+bitcount(0x8577D)+bitcount(0x85762)+bit1(0x85767)+bit2(0x85767)+bit3(0x85767)+
                        bit4(0x85767)+bit5(0x85767)+bit6(0x85767)+bit7(0x85767)+bit0(0x85770)+bit1(0x85770)+bit2(0x85770)+bit4(0x85770)+bit5(0x85770)+
                        bit6(0x85770)+bit7(0x85770)+bit0(0x8577A)+bit1(0x8577A)+bit2(0x8577A)+bit3(0x8577A)+bit4(0x8577A)+bit5(0x8577A)+bit1(0x8577C)+
                        bit2(0x8577C)+bit3(0x8577C)+bit4(0x8577C)+bit5(0x8577C)+bit6(0x8577C)+bit7(0x8577C)+bit7(0x8579d)+bit1(0x857a5)+bit2(0x857a5)+
                        bit3(0x857a5)+bit4(0x857a5)+bit5(0x857ad)+bit6(0x857ad)+bit0(0x857c6)+bit1(0x857c9)+bit2(0x857ce)+bit3(0x857d4)+bit0(0x857da)+
                        bit1(0x857da)+bit2(0x857da)+bit3(0x857da)+bit4(0x857da)+bit5(0x857db)+bit6(0x857db)+bit7(0x857db)+bit7(0x857dd)+bit7(0x857de)+
                        bit4(0x85802)+bit6(0x85802)+bit2(0x8580e)+bit3(0x8580e)+bit3(0x85810)+bit1(0x85818)+bit7(0x8581c)+bit4(0x85821)+bit7(0x85821)+
                        bit2(0x85822)+bit6(0x85822)+bit6(0x8582f)+bit4(0x85831)+bit5(0x85831)             
              
achievement ("Treasure Hunter [m]", "Obtain 50% of treasures [130]", 5,
    trigger = measured(treasures() == 0x82) &&
              prev(treasures()) == 0x81)
              
achievement ("Treasure Pirate [m]", "Obtain 100% of treasures [260]", 5,
    trigger = measured(treasures() == 0x104) &&
              prev(treasures()) == 0x103) 

function killers() => word(0x84fcc)+word(0x84bb8)+word(0x847a4)
              
achievement ("Exterminators", "Have a combined kill count of over 500 enemies", 5,
    trigger = measured(killers() == 0x1F4) &&
              prev(killers()) == 0x1f3)
              
function Vhighesthit() => byte(0x847f4) 
function Nhighesthit() => byte(0x84c08) 
function Ghighesthit() => byte(0x8501c)
            
achievement ("GODLIKE", "Set a new highest combo hit record of 60 or more", 10,
    trigger = whosturn() == players &&
              (Vhighesthit() >= 0x3C && prev(Vhighesthit()) <= 0x3B ||
              Nhighesthit() >= 0x3C && prev(Nhighesthit()) <= 0x3B ||
              Ghighesthit() >= 0x3C && prev(Ghighesthit()) <= 0x3B))
              
achievement ("Master Warrior", "Learn all 15 Arts with Vahn", 5,
    trigger = VahnArts() == 0x0f &&
              prev(VahnArts()) == 0x0e)
              
achievement ("Master Fighter", "Learn all 15 Arts with Noa", 5,
    trigger = NoaArts() == 0x0f &&
              prev(NoaArts()) == 0x0e)
              
achievement ("Master Monk", "Learn all 15 Arts with Gala", 5,
    trigger = GalaArts() == 0x0f &&
              prev(GalaArts()) == 0x0e)