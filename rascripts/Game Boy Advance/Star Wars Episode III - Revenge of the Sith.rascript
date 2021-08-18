// Star Wars Episode III - Revenge of the Sith
// #ID = 6663

function ScreenID() => byte(0x76ea)
function SceneID() => byte(0x7789)
function BossHealth() => word(0x7790)
//Darth Tyranus - Jedi - 0x198
//General Grievous - Jedi - 0x264
//Mace Windu - Jedi - 0x264
//Bodyguard - Jedi - 0x1fe
//Anakin - Jedi - 0x594
//Obi-Wan - Jedi - 0x594
function AnakinHealth() => byte(0x77ae)
function ObiWanHealth() => byte(0x77af)
function AnakinForce() => byte(0x77b0)
function ObiWanForce() => byte(0x77b1)
function AnakinLives() => byte(0x77b2)
function ObiWanLives() => byte(0x77b3)
function LevelStyle() => byte(0x77ba)
function LevelBonus() => byte(0x77bb)
function LevelSpeed() => byte(0x77b9)
function Deflector() => byte(0x76e5)
function FuryUser() => byte(0x76e6)
function Difficulty() => byte(0x77a8)
function victoryflag() => byte(0x77ac)

//Level Goals

//Scene 1 Anakin 0x01
function aScene1Speed() => byte(0x76f0)
function aScene1Bonus1() => low4(0x76ee)
function aScene1Bonus2() => bit4(0x76ee)
function aScene1Bonus3() => bit5(0x76ee)
function aScene1Bonus4() => high4(0x76ed)
function aScene1Style1() => high4(0x76ec)

//Scene 1 ObiWan 0x01
function oScene1Speed() => byte(0x771d)
function oScene1Bonus1() => low4(0x771b)
function oScene1Bonus2() => bit4(0x771b)
function oScene1Bonus3() => bit5(0x771b)
function oScene1Bonus4() => high4(0x771a)
function oScene1Style1() => high4(0x7719)

//Scene 2 Anakin 0x02
function aScene2Speed() => byte(0x76f5)
function aScene2Bonus1() => low4(0x76f5)
function aScene2Bonus2() => bit4(0x76f5)
function aScene2Bonus3() => bit5(0x76f5)
function aScene2Bonus4() => high4(0x76f2)
function aScene2Style1() => high4(0x76f1)

//Scene 2 ObiWan 0x02
function oScene2Speed() => byte(0x7722)
function oScene2Bonus1() => low4(0x7720)
function oScene2Bonus2() => bit4(0x7720)
function oScene2Bonus3() => bit5(0x7720)
function oScene2Bonus4() => high4(0x771f)
function oScene2Style1() => high4(0x771e)

//Scene 4 Anakin 0x04
function aScene4Speed() => byte(0x76fa)
function aScene4Bonus1() => low4(0x76f8)
function aScene4Bonus2() => bit4(0x76f8)
function aScene4Bonus3() => bit5(0x76f8)
function aScene4Bonus4() => high4(0x76f7)
function aScene4Style1() => high4(0x76f6)

//Scene 4 ObiWan 0x04
function oScene4Speed() => byte(0x7727)
function oScene4Bonus1() => low4(0x7725)
function oScene4Bonus2() => bit4(0x7725)
function oScene4Bonus3() => bit5(0x7725)
function oScene4Bonus4() => high4(0x7724)
function oScene4Style1() => high4(0x7723)

//Scene 5 Anakin 0x05
function aScene5Speed() => byte(0x76ff)
function aScene5Bonus1() => low4(0x76fd)
function aScene5Bonus2() => bit4(0x76fd)
function aScene5Bonus3() => bit5(0x76fd)
function aScene5Bonus4() => high4(0x76fc)
function aScene5Style1() => high4(0x76fb)

//Scene 5 ObiWan 0x0e
function oScene5Speed() => byte(0x772c)
function oScene5Bonus1() => low4(0x772a)
function oScene5Bonus2() => bit4(0x772a)
function oScene5Bonus3() => bit5(0x772a)
function oScene5Bonus4() => high4(0x7729)
function oScene5Style1() => high4(0x7728)

//Scene 6 Anakin 0x06
function aScene6Speed() => byte(0x7704)
function aScene6Bonus1() => low4(0x7702)
function aScene6Bonus2() => bit4(0x7702)
function aScene6Bonus3() => bit5(0x7702)
function aScene6Bonus4() => high4(0x7701)
function aScene6Style1() => high4(0x7700)

//Scene 6 ObiWan 0x0f
function oScene6Speed() => byte(0x7731)
function oScene6Bonus1() => low4(0x772f)
function oScene6Bonus2() => bit4(0x772f)
function oScene6Bonus3() => bit5(0x772f)
function oScene6Bonus4() => high4(0x772e)
function oScene6Style1() => high4(0x772d)

//Scene 8 Anakin 0x08
function aScene8Speed() => byte(0x7709)
function aScene8Bonus1() => low4(0x7707)
function aScene8Bonus2() => bit4(0x7707)
function aScene8Bonus3() => bit5(0x7707)
function aScene8Bonus4() => high4(0x7706)
function aScene8Style1() => high4(0x7705)

//Scene 8 ObiWan 0x11
function oScene8Speed() => byte(0x7736)
function oScene8Bonus1() => low4(0x7734)
function oScene8Bonus2() => bit4(0x7734)
function oScene8Bonus3() => bit5(0x7734)
function oScene8Bonus4() => high4(0x7733)
function oScene8Style1() => high4(0x7732)

//Scene 9 Anakin 0x09
function aScene9Speed() => byte(0x770e)
function aScene9Bonus1() => low4(0x770c)
function aScene9Bonus2() => bit4(0x770c)
function aScene9Bonus3() => bit5(0x770c)
function aScene9Bonus4() => high4(0x770b)
function aScene9Style1() => high4(0x770a)

//Scene 9 ObiWan 0x12
function oScene9Speed() => byte(0x773b)
function oScene9Bonus1() => low4(0x7739)
function oScene9Bonus2() => bit4(0x7739)
function oScene9Bonus3() => bit5(0x7739)
function oScene9Bonus4() => high4(0x7738)
function oScene9Style1() => high4(0x7737)

//Scene 11 Anakin 0x0b
function aScene11Speed() => byte(0x7713)
function aScene11Bonus1() => low4(0x7711)
function aScene11Bonus2() => bit4(0x7711)
function aScene11Bonus3() => bit5(0x7711)
function aScene11Bonus4() => high4(0x7710)
function aScene11Style1() => high4(0x770f)

//Scene 11 ObiWan 0x14
function oScene11Speed() => byte(0x7740)
function oScene11Bonus1() => low4(0x773e)
function oScene11Bonus2() => bit4(0x773e)
function oScene11Bonus3() => bit5(0x773e)
function oScene11Bonus4() => high4(0x773d)
function oScene11Style1() => high4(0x773c)

//Scene 12 Anakin 0x0c
function aScene12Speed() => byte(0x7718)
function aScene12Bonus1() => low4(0x7716)
function aScene12Bonus2() => bit4(0x7716)
function aScene12Bonus3() => bit5(0x7716)
function aScene12Bonus4() => high4(0x7715)
function aScene12Style1() => high4(0x7714)

//Scene 12 ObiWan 0x15
function oScene12Speed() => byte(0x7745)
function oScene12Bonus1() => low4(0x7743)
function oScene12Bonus2() => bit4(0x7743)
function oScene12Bonus3() => bit5(0x7743)
function oScene12Bonus4() => high4(0x7742)
function oScene12Style1() => high4(0x7741)

achievement ("Hello There", "Clear [Scene 1] [Anakin or Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x01 && 
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
    
achievement ("Hanger Crew", "Obtain [25/25] in [Scene 1] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x01 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(aScene1Speed()+aScene1Bonus1()+aScene1Bonus2()+aScene1Bonus3()+aScene1Bonus4()+aScene1Style1()) != 0x2f &&
              aScene1Speed()+aScene1Bonus1()+aScene1Bonus2()+aScene1Bonus3()+aScene1Bonus4()+aScene1Style1() == 0x2f)
              
achievement ("Hanger Ace", "Obtain [25/25] in [Scene 1] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x01 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(oScene1Speed()+oScene1Bonus1()+oScene1Bonus2()+oScene1Bonus3()+oScene1Bonus4()+oScene1Style1()) != 0x2f &&
              oScene1Speed()+oScene1Bonus1()+oScene1Bonus2()+oScene1Bonus3()+oScene1Bonus4()+oScene1Style1() == 0x2f)
 
achievement("Geonosian Genocide", "Defeat [Geonosian Starfighter] in [Scene 1] without taking damage [Anakin or Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x01 && 
              prev(ScreenID()) == 0x05 && 
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              unless(SceneID() == 0x01 &&
              ScreenID() == 0x05 &&
              (once(AnakinHealth() < prev(AnakinHealth())))) &&
              unless(SceneID() == 0x01 &&
              ScreenID() == 0x05 &&
              (once(ObiWanHealth() != prev(ObiWanHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,AnakinLives() == 0x03 && 
              prev(AnakinLives()) == 0x01)) &&
              never(repeated(0,ObiWanLives() == 0x03 && 
              prev(ObiWanLives()) == 0x01)) &&
              never(repeated(0,SceneID() == 0x01 &&
              ScreenID() == 0x04))))
              
achievement ("We've Got Company", "Clear [Scene 1] [Anakin or Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x01 && 
              ScreenID() == 0x06 &&
              Difficulty() == 0x02 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)           
              
achievement ("I Can Sense Him", "Clear [Scene 2] [Anakin or Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x02 && 
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
  
achievement ("Corridors Creeper", "Obtain [25/25] in [Scene 2] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x02 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(oScene2Speed()+oScene2Bonus1()+oScene2Bonus2()+oScene2Bonus3()+oScene2Bonus4()+oScene2Style1()) != 0x2f &&
              oScene2Speed()+oScene2Bonus1()+oScene2Bonus2()+oScene2Bonus3()+oScene2Bonus4()+oScene2Style1() == 0x2f)              

achievement ("Corridors Stalker", "Obtain [25/25] in [Scene 2] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x02 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(aScene2Speed()+aScene2Bonus1()+aScene2Bonus2()+aScene2Bonus3()+aScene2Bonus4()+aScene2Style1()) != 0x2f &&
              aScene2Speed()+aScene2Bonus1()+aScene2Bonus2()+aScene2Bonus3()+aScene2Bonus4()+aScene2Style1() == 0x2f)
              
achievement ("I Can Sense a Trap", "Clear [Scene 2] [Anakin or Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x02 && 
              ScreenID() == 0x04 &&
              Difficulty() == 0x02 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
                                          
achievement ("The Jedi Way", "Defeat [Darth Tyranus] in [Scene 3] [Anakin or Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x03 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)
 
achievement ("No Match for Me", "Defeat [Darth Tyranus] in [Scene 3] without taking damage [Anakin or Obi-Wan] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x03 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01 &&
              unless(SceneID() == 0x03 &&
              (once(AnakinHealth() != prev(AnakinHealth())))) &&
              unless(SceneID() == 0x03 &&
              (once(ObiWanHealth() != prev(ObiWanHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,AnakinLives() == 0x03 && 
              prev(AnakinLives()) == 0x01)) &&
              never(repeated(0,ObiWanLives() == 0x03 && 
              prev(ObiWanLives()) == 0x01)))) 
             
achievement ("Count Dooku!", "Defeat [Darth Tyranus] in [Scene 3] [Anakin or Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x03 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x02 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)
                            
achievement ("What's That Noise?", "Clear [Scene 4] [Anakin or Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x04 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Crewman", "Obtain [25/25] in [Scene 4] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x04 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(oScene4Speed()+oScene4Bonus1()+oScene4Bonus2()+oScene4Bonus3()+oScene4Bonus4()+oScene4Style1()) != 0x2f &&
              oScene4Speed()+oScene4Bonus1()+oScene4Bonus2()+oScene4Bonus3()+oScene4Bonus4()+oScene4Style1() == 0x2f)

achievement ("Bridge", "Obtain [25/25] in [Scene 4] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x04 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(aScene4Speed()+aScene4Bonus1()+aScene4Bonus2()+aScene4Bonus3()+aScene4Bonus4()+aScene4Style1()) != 0x2f &&
              aScene4Speed()+aScene4Bonus1()+aScene4Bonus2()+aScene4Bonus3()+aScene4Bonus4()+aScene4Style1() == 0x2f)
              
achievement ("It's a Trap!", "Clear [Scene 4] [Anakin or Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x04 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)            
                                          
achievement ("Utapau Citizen", "Clear [Scene 5] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0e && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
 
achievement ("Utapau Cleaner", "Obtain [25/25] in [Scene 5] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0e &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(oScene5Speed()+oScene5Bonus1()+oScene5Bonus2()+oScene5Bonus3()+oScene5Bonus4()+oScene5Style1()) != 0x2f &&
              oScene5Speed()+oScene5Bonus1()+oScene5Bonus2()+oScene5Bonus3()+oScene5Bonus4()+oScene5Style1() == 0x2f) 
              
achievement ("Assignment", "Clear [Scene 5] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0e && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
                            
achievement ("Not a Master", "Clear [Scene 5] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x05 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x07 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Coruscant City Worker", "Obtain [25/25] in [Scene 5] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x05 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(aScene5Speed()+aScene5Bonus1()+aScene5Bonus2()+aScene5Bonus3()+aScene5Bonus4()+aScene5Style1()) != 0x2f &&
              aScene5Speed()+aScene5Bonus1()+aScene5Bonus2()+aScene5Bonus3()+aScene5Bonus4()+aScene5Style1() == 0x2f)

achievement ("Personal Representative", "Clear [Scene 5] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x05 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x07 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
                           
achievement ("Well Protected", "Clear [Scene 6] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0f && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Negotiations", "Obtain [25/25] in [Scene 6] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0f &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(oScene6Speed()+oScene6Bonus1()+oScene6Bonus2()+oScene6Bonus3()+oScene6Bonus4()+oScene6Style1()) != 0x2f &&
              oScene6Speed()+oScene6Bonus1()+oScene6Bonus2()+oScene6Bonus3()+oScene6Bonus4()+oScene6Style1() == 0x2f)

achievement ("Grasp on the City", "Clear [Scene 6] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0f && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)   
              
achievement ("Terrible Truth", "Clear [Scene 6] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x06 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
 
achievement ("Great Confusion", "Obtain [25/25] in [Scene 6] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x06 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(aScene6Speed()+aScene6Bonus1()+aScene6Bonus2()+aScene6Bonus3()+aScene6Bonus4()+aScene6Style1()) != 0x2f &&
              aScene6Speed()+aScene6Bonus1()+aScene6Bonus2()+aScene6Bonus3()+aScene6Bonus4()+aScene6Style1() == 0x2f)  
              
achievement ("The Chancellor", "Clear [Scene 6] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x06 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)              
                                         
achievement ("You Were Doomed", "Defeat [General Grievous] in [Scene 7] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x10 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)

achievement ("General Kenobi", "Defeat [General Grievous] in [Scene 7] without taking damage [Obi-Wan] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x10 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01 &&
              unless(SceneID() == 0x03 &&
              (once(ObiWanHealth() != prev(ObiWanHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,ObiWanLives() == 0x03 && 
              prev(ObiWanLives()) == 0x01))))
              
achievement ("The Last Time", "Defeat [General Grievous] in [Scene 7] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x10 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x02 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)            
              
achievement ("Fear Leads to Anger", "Defeat [Mace Windu] in [Scene 7] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x07 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)

achievement ("Traitors!", "Defeat [Mace Windu] in [Scene 7] without taking damage [Anakin] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x07 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01 &&
              unless(SceneID() == 0x07 &&
              (once(AnakinHealth() != prev(AnakinHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,AnakinLives() == 0x03 && 
              prev(AnakinLives()) == 0x01))))

achievement ("Nooo!", "Defeat [Mace Windu] in [Scene 7] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x07 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x02 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01)
              
achievement ("Execute", "Clear [Scene 8] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x11 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Commander", "Obtain [25/25] in [Scene 8] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x11 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(oScene8Speed()+oScene8Bonus1()+oScene8Bonus2()+oScene8Bonus3()+oScene8Bonus4()+oScene8Style1()) != 0x2f &&
              oScene8Speed()+oScene8Bonus1()+oScene8Bonus2()+oScene8Bonus3()+oScene8Bonus4()+oScene8Style1() == 0x2f)
              
achievement ("Starport", "Clear [Scene 8] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x11 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x06 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)   
              
achievement ("Infiltration", "Clear [Scene 8] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x08 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x03 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Crumbling the Temple", "Obtain [25/25] in [Scene 8] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x08 &&
              ScreenID() == 0x03 &&
              Difficulty() == 0x01 &&
              prev(aScene8Speed()+aScene8Bonus1()+aScene8Bonus2()+aScene8Bonus3()+aScene8Bonus4()+aScene8Style1()) != 0x2f &&
              aScene8Speed()+aScene8Bonus1()+aScene8Bonus2()+aScene8Bonus3()+aScene8Bonus4()+aScene8Style1() == 0x2f)
 
achievement ("Hyperspace", "Clear [Scene 8] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x08 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x03 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)               
              
achievement ("Cavern Escape", "Clear [Scene 9] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x12 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("Dig Dug", "Obtain [25/25] in [Scene 9] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x12 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(oScene9Speed()+oScene9Bonus1()+oScene9Bonus2()+oScene9Bonus3()+oScene9Bonus4()+oScene9Style1()) != 0x2f &&
              oScene9Speed()+oScene9Bonus1()+oScene9Bonus2()+oScene9Bonus3()+oScene9Bonus4()+oScene9Style1() == 0x2f)

achievement ("Hard Time", "Clear [Scene 9] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x12 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("Order", "Clear [Scene 9] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x09 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x02 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Try and Hide", "Obtain [25/25] in [Scene 9] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x09 &&
              ScreenID() == 0x02 &&
              Difficulty() == 0x01 &&
              prev(aScene9Speed()+aScene9Bonus1()+aScene9Bonus2()+aScene9Bonus3()+aScene9Bonus4()+aScene9Style1()) != 0x2f &&
              aScene9Speed()+aScene9Bonus1()+aScene9Bonus2()+aScene9Bonus3()+aScene9Bonus4()+aScene9Style1() == 0x2f)

achievement ("Escape Ships", "Clear [Scene 9] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x09 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x02 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("Destroy All Jedi", "Defeat [Bodyguard] in [Scene 10] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x13 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              repeated(2,prev(BossHealth()) >= 0x01 &&
              prev(BossHealth()) <= 0x50 &&
              BossHealth() == 0x00) &&
              never(SceneID() == 0x00) &&
              never(ObiWanLives() == 0x03 && prev(ObiWanLives()) == 0x01))

achievement ("Uploading Memories...", "Defeat [Bodyguard] in [Scene 10] without taking damage [Obi-Wan] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x13 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              repeated(2,prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01 &&
              BossHealth() == 0x00) &&
              unless(SceneID() == 0x13 &&
              (once(ObiWanHealth() != prev(ObiWanHealth())))) &&
              (always_false() || (never(SceneID() == 0x00) &&
              never(ObiWanLives() == 0x03 && prev(ObiWanLives()) == 0x01))))

achievement ("Devoured", "Defeat [Bodyguard] in [Scene 10] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x13 && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x02 &&
              repeated(2,prev(BossHealth()) >= 0x01 &&
              prev(BossHealth()) <= 0x50 &&
              BossHealth() == 0x00) &&
              never(SceneID() == 0x00) &&
              never(ObiWanLives() == 0x03 && prev(ObiWanLives()) == 0x01))
              
achievement ("Fates Sealed", "Defeat [Cin Drallig] in [Scene 10] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0a && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              repeated(2,prev(BossHealth()) >= 0x01 &&
              prev(BossHealth()) <= 0x50 &&
              BossHealth() == 0x00) &&
              never(SceneID() == 0x00) &&
              never(AnakinLives() == 0x03 && prev(AnakinLives()) == 0x01))
  
achievement ("Embraced the Darkside", "Defeat [Cin Drallig] in [Scene 10] without taking damage [Anakin] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x0a && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x01 &&
              repeated(2,prev(BossHealth()) <= 0x50 &&
              prev(BossHealth()) >= 0x01 &&
              BossHealth() == 0x00) &&
              unless(SceneID() == 0x0a &&
              (once(AnakinHealth() != prev(AnakinHealth())))) &&
              (always_false() || (never(SceneID() == 0x00) &&
              never(AnakinLives() == 0x03 && prev(AnakinLives()) == 0x01))))  
              
achievement ("You Cannot Win", "Defeat [Cin Drallig] in [Scene 10] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0a && 
              ScreenID() == 0x00 &&
              Difficulty() == 0x02 &&
              repeated(2,prev(BossHealth()) >= 0x01 &&
              prev(BossHealth()) <= 0x50 &&
              BossHealth() == 0x00) &&
              never(SceneID() == 0x00) &&
              never(AnakinLives() == 0x03 && prev(AnakinLives()) == 0x01))              

achievement ("Too Late", "Clear [Scene 11] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x14 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("The Last Few", "Obtain [25/25] in [Scene 11] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x14 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(oScene11Speed()+oScene11Bonus1()+oScene11Bonus2()+oScene11Bonus3()+oScene11Bonus4()+oScene11Style1()) != 0x2f &&
              oScene11Speed()+oScene11Bonus1()+oScene11Bonus2()+oScene11Bonus3()+oScene11Bonus4()+oScene11Style1() == 0x2f)

achievement ("The Republic is Falling", "Clear [Scene 11] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x14 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("Separatists", "Clear [Scene 11] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0b && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

achievement ("Crush Them", "Obtain [25/25] in [Scene 11] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0b &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(aScene11Speed()+aScene11Bonus1()+aScene11Bonus2()+aScene11Bonus3()+aScene11Bonus4()+aScene11Style1()) != 0x2f &&
              aScene11Speed()+aScene11Bonus1()+aScene11Bonus2()+aScene11Bonus3()+aScene11Bonus4()+aScene11Style1() == 0x2f)

achievement ("Communications Cut", "Clear [Scene 11] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0b && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x04 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("I Will Not", "Clear [Scene 12] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x15 && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
              
achievement ("Strong Enough, You Are Not", "Obtain [25/25] in [Scene 12] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x15 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(oScene12Speed()+oScene12Bonus1()+oScene12Bonus2()+oScene12Bonus3()+oScene12Bonus4()+oScene12Style1()) != 0x2f &&
              oScene12Speed()+oScene12Bonus1()+oScene12Bonus2()+oScene12Bonus3()+oScene12Bonus4()+oScene12Style1() == 0x2f)

achievement ("Find Skywalker", "Clear [Scene 12] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x15 && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x05 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)

              
achievement ("Excellent", "Clear [Scene 12] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0c && 
              Difficulty() == 0x01 &&
              ScreenID() == 0x03 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
 
achievement ("Destroy All", "Obtain [25/25] in [Scene 12] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0c &&
              ScreenID() == 0x03 &&
              Difficulty() == 0x01 &&
              prev(aScene12Speed()+aScene12Bonus1()+aScene12Bonus2()+aScene12Bonus3()+aScene12Bonus4()+aScene12Style1()) != 0x2f &&
              aScene12Speed()+aScene12Bonus1()+aScene12Bonus2()+aScene12Bonus3()+aScene12Bonus4()+aScene12Style1() == 0x2f) 
              
achievement ("Wipe Them All Out", "Clear [Scene 12] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0c && 
              Difficulty() == 0x02 &&
              ScreenID() == 0x03 &&
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x07)
                            
achievement ("I Have the High Ground", "Clear [Scene 13] [Obi-Wan] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x16 &&
              Difficulty() == 0x01 &&
              ScreenID() == 0x04 &&
              prev(ScreenID()) == 0x03)
                           
achievement ("You Were My Brother, Anakin!", "Defeat [Anakin] in [Scene 13] without taking damage [Obi-Wan] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x16 && 
              ScreenID() == 0x02 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) > 0x00 &&
              unless(SceneID() == 0x16 &&
              (once(ObiWanHealth() < prev(ObiWanHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,ObiWanLives() == 0x03 && 
              prev(ObiWanLives()) == 0x01))))
  
achievement ("You Were the Chosen One", "Clear [Scene 13] [Obi-Wan] [Master Difficulty]", 10,
    trigger = SceneID() == 0x16 &&
              Difficulty() == 0x02 &&
              ScreenID() == 0x04 &&
              prev(ScreenID()) == 0x03)

achievement ("Lord Vader", "Clear [Scene 13] [Anakin] [Jedi Difficulty]", 5,
    trigger = SceneID() == 0x0d && 
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x02 &&
              Difficulty() == 0x01 &&
              ScreenID() == 0x03)
              
achievement ("Liar!", "Defeat [Obi-Wan] in [Scene 13] without taking damage [Anakin] [Jedi Difficulty]", 10,
    trigger = SceneID() == 0x0d && 
              ScreenID() == 0x02 &&
              Difficulty() == 0x01 &&
              BossHealth() == 0x00 &&
              prev(BossHealth()) > 0x00 &&
              unless(SceneID() == 0x0d &&
              (once(AnakinHealth() < prev(AnakinHealth())))) &&
              (always_false() || (never(SceneID() == 0x00)) &&
              never(repeated(0,AnakinLives() == 0x03 && 
              prev(AnakinLives()) == 0x01))))
              
achievement ("Absolute", "Clear [Scene 13] [Anakin] [Master Difficulty]", 10,
    trigger = SceneID() == 0x0d && 
              prev(victoryflag()) == 0x00 &&
              victoryflag() == 0x02 &&
              Difficulty() == 0x02 &&
              ScreenID() == 0x03)