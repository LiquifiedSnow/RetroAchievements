// .hack//LINK
// #ID = 3470

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0xed1be8
for i in range(0, 149)
{
  slot = word(inventoryBaseAddr + i * 4)
  trigger = trigger || trigger_when(prev(slot) != itemId && slot == itemId)
}
return trigger
}

function map_id() => byte(0x1c + tbyte(0xdfa570))
function room_id() => byte(0x1e + tbyte(0xdfa570))

function save_protect() => prev(byte(0xed2130)) == 0x63
function scene_end(id_map,id_room) => map_id() == id_map && room_id() == id_room
function last_scene(id_map,id_room) => prev(map_id()) == id_map && prev(room_id()) == id_room

function link_ch_1() => byte(0xed2130) == 0x63 && prev(byte(0xed2130)) == 0x1a
achievement ("You Must Be the Hero!", "Completed [2020' .hack//LINK' Main Scenario Chapter 01]", 1, 
trigger = scene_end(0,2) && 
          link_ch_1()
)

function link_ch_2() => byte(0xed2132) == 0x63 && prev(byte(0xed2132)) == 0x10
achievement ("Sealed Away", "Complete [2020' .hack//LINK' Main Scenario Chapter 02]", 1,
trigger = scene_end(0x75,0xa) &&
          link_ch_2()
)

function link_ch_3() => byte(0xed2146) == 0x63 && prev(byte(0xed2146)) == 0x0f
achievement ("Knuckle Sandwich", "Complete [2020' .hack//LINK' Main Scenario Chapter 03]", 5,
trigger = scene_end(0,1) &&
          link_ch_3()
)
    
function link_ch_4() => byte(0xed2156) == 0x63 && prev(byte(0xed2156)) == 0x12
achievement ("Welcome Intruder", "Complete [2020' .hack//LINK' Main Scenario Chapter 04]", 5,
trigger = scene_end(0,1) &&
          link_ch_4()
)    

function link_ch_5() => byte(0xed216a) == 0x63 && prev(byte(0xed216a)) == 0x21
achievement ("Evolution", "Complete [2020' .hack//LINK' Main Scenario Chapter 05]", 10,
trigger = scene_end(0,2) &&
          link_ch_5()
)    
         
function link_ch_6() => byte(0xed216c) == 0x63 && prev(byte(0xed216c)) == 0x16
achievement ("Cheat-Type", "Complete [2020' .hack//LINK' Main Scenario Chapter 06]", 25,
trigger = scene_end(0,1) &&
          link_ch_6()
)            
         
function link_ch_7() => byte(0xed2188) == 0x63 && prev(byte(0xed2188)) == 0x18
achievement ("Hidden Shadows", "Complete [2020' .hack//LINK' Main Scenario Chapter 07]", 5,
trigger = scene_end(0,1) &&
          link_ch_7()
)          
         
function link_ch_8() => byte(0xed218a) == 0x63 && prev(byte(0xed218a)) == 0x0e
achievement ("Bad Habbits", "Complete [2020' .hack//LINK' Main Scenario Chapter 08]", 5,
trigger = scene_end(2,9) &&
          link_ch_8()
)          
           
function link_ch_9() => byte(0xed218c) == 0x63 && prev(byte(0xed218c)) == 0x10
achievement ("Broken Off", "Complete [2020' .hack//LINK' Main Scenario Chapter 09]", 5,
trigger = scene_end(0,1) &&
          link_ch_9()
)          
         
function link_ch_10() => byte(0xed218e) == 0x63 && prev(byte(0xed218e)) == 0x17
achievement ("Hidden Switch", "Complete [2020' .hack//LINK' Main Scenario Chapter 10]", 5,
trigger = scene_end(0,9) &&
          link_ch_10()
)      
        
function link_ch_11() => byte(0xed2190) == 0x63 && prev(byte(0xed2190)) == 0x0a
achievement ("Discount Ticket", "Complete [2020' .hack//LINK' Main Scenario Chapter 11]", 1,
trigger = scene_end(0,1) &&
          link_ch_11()
)      
       
function link_ch_12() => byte(0xed2192) == 0x63 && prev(byte(0xed2192)) == 0x17
achievement ("No Ticket, No Boarding", "Complete [2020' .hack//LINK' Main Scenario Chapter 12]", 25,
trigger = scene_end(0,2) &&
          link_ch_12()
)     
     
function link_ch_13() => byte(0xed2194) == 0x63 && prev(byte(0xed2194)) == 0x0c
achievement ("Digitized", "Complete [2020' .hack//LINK' Main Scenario Chapter 13]", 1,
trigger = scene_end(0,2) &&
          link_ch_13()
) 

function link_ch_14() => byte(0xed2196) == 0x63 && prev(byte(0xed2196)) == 0x10
achievement ("To Save You", "Complete [2020' .hack//LINK' Main Scenario Chapter 14]", 25,
trigger = scene_end(0,2) &&
          link_ch_14()
) 

function link_ch_15() => byte(0xed2198) == 0x63 && prev(byte(0xed2198)) == 0x1c
achievement ("Memories", "Complete [2020' .hack//LINK' Main Scenario Chapter 15]", 25,
trigger = scene_end(0,2) &&
          link_ch_15()
) 
 
function link_ch_16() => byte(0xed2256) == 0x63 && prev(byte(0xed2256)) == 0x13
achievement ("Saving Butts", "Complete [2017' .hack//LINK' Sub-Scenario Chapter 16]", 5,
trigger = scene_end(0,2) &&
          link_ch_16()
) 
 
function link_ch_17() => byte(0xed2258) == 0x63 && prev(byte(0xed2258)) == 0x0e
achievement ("Dead End", "Complete [2020' .hack//LINK' Sub-Scenario Chapter 17]", 5,
trigger = scene_end(0,2) &&
          link_ch_17()
)  
 
function link_ch_18() => byte(0xed225a) == 0x63 && prev(byte(0xed225a)) == 0x12
achievement ("The Fountain", "Complete [2020' .hack//LINK' Sub-Scenario Chapter 18]", 5,
trigger = scene_end(0,2) &&
          link_ch_18()
)  
  
function link_ch_19() => byte(0xed2276) == 0x63 && prev(byte(0xed2276)) == 0x08
achievement ("Stone Statue", "Complete [2020' .hack//LINK' Sub-Scenario Chapter 19]", 1,
trigger = scene_end(0,2) &&
          link_ch_19()
)   
  
function link_ch_20() => byte(0xed2278) == 0x63 && prev(byte(0xed2278)) == 0x08
achievement ("Twilight", "Complete [2020' .hack//LINK' Sub-Scenario Chapter 20]", 1,
trigger = scene_end(0,2) &&
          link_ch_20()
)     
  
function link_ch_21() => byte(0xed227a) == 0x63 && prev(byte(0xed227a)) == 0x08
achievement ("Rebirth", "Complete [2020' .hack//LINK' Sub-Scenario Chapter 21]", 1,
trigger = scene_end(0,2) &&
          link_ch_21()
)    
  
  
  
  
              
function sign_ch_1() => byte(0xed2134) == 0x63 && prev(byte(0xed2134)) == 0x0f        
achievement ("Where's Tsukasa?", "Complete [2009' .hack//SIGN' Main Scenario Chapter 01]", 5, 
trigger = scene_end(0,9) &&
          sign_ch_1()
)

function sign_ch_2() => byte(0xed2136) == 0x63 && prev(byte(0xed2136)) == 0x0d
achievement ("Wimpy-Looking Boy", "Complete [2009' .hack//SIGN' Main Scenario Chapter 02]", 5,
trigger = scene_end(0,9) &&
          sign_ch_2()
)

function sign_ch_3() => byte(0xed2138) == 0x63 && prev(byte(0xed2138)) == 0x0c
achievement ("No Memories", "Complete [2009' .hack//SIGN' Main Scenario Chapter 03]", 5,
trigger = scene_end(2,9) &&
          sign_ch_3()
)

function sign_ch_4() => byte(0xed213a) == 0x63 && prev(byte(0xed213a)) == 0x0d
achievement ("Player Killer", "Complete [2009' .hack//SIGN' Main Scenario Chapter 04]", 5,
trigger = scene_end(2,8) &&
          sign_ch_4()
)

function sign_ch_5() => byte(0xed213c) == 0x63 && prev(byte(0xed213c)) == 0x0c
achievement ("Punish You", "Complete [2009' .hack//SIGN' Main Scenario Chapter 05]", 5,
trigger = scene_end(2,9) &&
          sign_ch_5()
)

function sign_ch_6() => byte(0xed213e) == 0x63 && prev(byte(0xed213e)) == 0x0f
achievement ("Trapped", "Complete [2009' .hack//SIGN' Main Scenario Chapter 06]", 5,
trigger = scene_end(3,9) &&
          sign_ch_6()
)

function sign_ch_7() => byte(0xed2140) == 0x63 && prev(byte(0xed2140)) == 0x0e
achievement ("Tsukasa's Safe", "Complete [2009' .hack//SIGN' Main Scenario Chapter 07]", 5,
trigger = scene_end(3,9) &&
          sign_ch_7()
)

function sign_ch_8() => byte(0xed2142) == 0x63 && prev(byte(0xed2142)) == 0x0f
achievement ("Mother's Minions","Complete [2009' .hack//SIGN' Main Scenario Chapter 08]", 5, 
trigger = scene_end(1,9) &&
          sign_ch_8()
)

function sign_ch_9() => byte(0xed2144) == 0x63 && prev(byte(0xed2144)) == 0x10
achievement ("Unforgiveable","Complete [2009' .hack//SIGN' Main Scenario Chapter 09]", 5, 
trigger = scene_end(1,9) &&
          sign_ch_9()
)

function sign_ch_10() => byte(0xed2204) == 0x63 && prev(byte(0xed2204)) == 0x14
achievement ("Disbanded","Complete [2009' .hack//SIGN' Sub-Scenario Chapter 10]", 10, 
trigger = scene_end(0,2) &&
          sign_ch_10()
)

function sign_ch_11() => byte(0xed2206) == 0x63 && prev(byte(0xed2206)) == 0x11
achievement ("Vigilante","Complete [2009' .hack//SIGN' Sub-Scenario Chapter 11]", 10, 
trigger = scene_end(0,2) &&
          sign_ch_11()
)

function buster_ch_01() => byte(0xed21fc) == 0x63 && prev(byte(0xed21fc)) == 0x0f
achievement ("Final Blow","Complete [2009' .hack//AI buster' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          buster_ch_01()
)

function buster_ch_02() => byte(0xed21fe) == 0x63 && prev(byte(0xed21fe)) == 0x0b
achievement ("Average Player","Complete [2009' .hack//AI buster' Sub-Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          buster_ch_02()
)

function buster_ch_03() => byte(0xed2200) == 0x63 && prev(byte(0xed2200)) == 0x12
achievement ("A Failure","Complete [2009' .hack//AI buster' Sub-Scenario Chapter 03]", 5, 
trigger = scene_end(0,2) &&
          buster_ch_03()
)

function buster_ch_04() => byte(0xed2202) == 0x63 && prev(byte(0xed2202)) == 0x10
achievement ("Destroyed","Complete [2009' .hack//AI buster' Sub-Scenario Chapter 04]", 5, 
trigger = scene_end(0,2) &&
          buster_ch_04()
)

function zero_ch_1() => byte(0xed220a) == 0x63 && prev(byte(0xed220a)) == 0x0b
achievement ("Illegal Acitvities","Complete [2009' .hack//ZERO' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          zero_ch_1()
)

function zero_ch_2() => byte(0xed220c) == 0x63 && prev(byte(0xed220c)) == 0x0c
achievement ("Run Away!","Complete [2009' .hack//ZERO' Sub-Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          zero_ch_2()
)

function zero_ch_3() => byte(0xed220e) == 0x63 && prev(byte(0xed220e)) == 0x0e
achievement ("Scattered","Complete [2009' .hack//ZERO' Sub-Scenario Chapter 03]", 5, 
trigger = scene_end(0,2) &&
          zero_ch_3()
)

function zero_ch_4() => byte(0xed2210) == 0x63 && prev(byte(0xed2210)) == 0x11
achievement ("Cold as Ice","Complete [2009' .hack//ZERO' Sub-Scenario Chapter 04]", 5, 
trigger = scene_end(0,2) &&
          zero_ch_4()
)

function zero_ch_5() => byte(0xed2212) == 0x63 && prev(byte(0xed2212)) == 0x10
achievement ("Thank...You...","Complete [2009' .hack//ZERO' Sub-Scenario Chapter 05]", 5, 
trigger = scene_end(0,2) &&
          zero_ch_5()
)

function hack_ch_1() => byte(0xed2148) == 0x63 && prev(byte(0xed2148)) == 0x0d
achievement ("Hero Kite","Complete [2010' .hack//' Main Scenario Chapter 01]", 5, 
trigger = scene_end(0,9) &&
          hack_ch_1()
)

function hack_ch_2() => byte(0xed214a) == 0x63 && prev(byte(0xed214a)) == 0x0e
achievement ("Split up","Complete [2010' .hack//' Main Scenario Chapter 02]", 5, 
trigger = scene_end(0,8) &&
          hack_ch_2()
)

function hack_ch_3() => byte(0xed214c) == 0x63 && prev(byte(0xed214c)) == 0x0d
achievement ("Restore","Complete [2010' .hack//' Main Scenario Chapter 03]", 5, 
trigger = scene_end(2,9) &&
          hack_ch_3()
)

function hack_ch_4() => byte(0xed214e) == 0x63 && prev(byte(0xed214e)) == 0x0a
achievement ("Administrator","Complete [2010' .hack//' Main Scenario Chapter 04]", 5, 
trigger = scene_end(3,9) &&
          hack_ch_4()
)

function hack_ch_5() => byte(0xed2150) == 0x63 && prev(byte(0xed2150)) == 0x11
achievement ("Erased","Complete [2010' .hack//' Main Scenario Chapter 05]", 5, 
trigger = scene_end(1,9) &&
          hack_ch_5()
)

function hack_ch_6() => byte(0xed2152) == 0x63 && prev(byte(0xed2152)) == 0x0f
achievement ("Distraction","Complete [2010' .hack//' Main Scenario Chapter 06]", 10, 
trigger = scene_end(1,9) &&
          hack_ch_6()
)

function hack_ch_7() => byte(0xed2154) == 0x63 && prev(byte(0xed2154)) == 0x0d
achievement ("Rock Solid","Complete [2010' .hack//' Main Scenario Chapter 07]", 10, 
trigger = scene_end(3,9) &&
          hack_ch_7()
)

function hack_ch_8() => byte(0xed2222) == 0x63 && prev(byte(0xed2222)) == 0x1a
achievement ("100 Puns","Complete [2010' .hack//' Main Scenario Chapter 08]", 5, 
trigger = scene_end(0,2) &&
          hack_ch_8()
)

function hack_ch_9() => byte(0xed2224) == 0x63 && prev(byte(0xed2224)) == 0x10
achievement ("Harakiri","Complete [2010' .hack//' Main Scenario Chapter 09]", 5, 
trigger = scene_end(0,2) &&
          hack_ch_9()
)

function liminality_ch_1() => byte(0xed221e) == 0x63 && prev(byte(0xed221e)) == 0x12
achievement ("Consciousness","Complete [2010' .hack//Liminality' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          liminality_ch_1()
)

function birth_ch_1() => byte(0xed2226) == 0x63 && prev(byte(0xed2226)) == 0x12
achievement ("Activities","Complete [2010' .hack//ANOTHER BIRTH' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          birth_ch_1()
)

function twilight_ch_1() => byte(0xed2214) == 0x63 && prev(byte(0xed2214)) == 0x0c
achievement ("The Kiss","Complete [2014' .hack//Legend of the Twilight' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          twilight_ch_1()
)

function twilight_ch_2() => byte(0xed2216) == 0x63 && prev(byte(0xed2216)) == 0x14
achievement ("Treasure Hunt","Complete [2014' .hack//Legend of the Twilight' Sub-Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          twilight_ch_2()
)

function twilight_ch_3() => byte(0xed2218) == 0x63 && prev(byte(0xed2218)) == 0x11
achievement ("The Chase","Complete [2014' .hack//Legend of the Twilight' Sub-Scenario Chapter 03]", 5, 
trigger = scene_end(0,2) &&
          twilight_ch_3()
)

function twilight_ch_4() => byte(0xed221a) == 0x63 && prev(byte(0xed221a)) == 0x13
achievement ("Cobalt Knights","Complete [2014' .hack//Legend of the Twilight' Sub-Scenario Chapter 04]", 5, 
trigger = scene_end(0,2) &&
          twilight_ch_4()
)

function twilight_ch_5() => byte(0xed221c) == 0x63 && prev(byte(0xed221c)) == 0x13
achievement ("Management Department","Complete [2014' .hack//Legend of the Twilight' Sub-Scenario Chapter 05]", 5, 
trigger = scene_end(0,2) &&
          twilight_ch_5()
)

function chupchop_ch_1() => byte(0xed222a) == 0x63 && prev(byte(0xed222a)) == 0x15
achievement ("Ghost Cat","Complete [2015' .hack//Chup Chop Case' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          chupchop_ch_1()
)

function chupchop_ch_2() => byte(0xed222c) == 0x63 && prev(byte(0xed222c)) == 0x10
achievement ("Handsome Looks","Complete [2015' .hack//Chup Chop Case' Sub-Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          chupchop_ch_2()
)

function chupchop_ch_3() => byte(0xed222e) == 0x63 && prev(byte(0xed222e)) == 0x10
achievement ("Troublesome Duo","Complete [2015' .hack//Chup Chop Case' Sub-Scenario Chapter 03]", 5, 
trigger = scene_end(0,2) &&
          chupchop_ch_3()
)

function roots_ch_1() =>  byte(0xed2158) == 0x63 && prev(byte(0xed2158)) == 0x0d

achievement ("Twilight Brigade","Complete [2016' .hack//ROOTS' Main Scenario Chapter 01]", 5, 
trigger = scene_end(0,8) &&
          roots_ch_1()
)

function roots_ch_2() =>  byte(0xed215a) == 0x63 && prev(byte(0xed215a)) == 0x0e

achievement ("Opportunities","Complete [2016' .hack//ROOTS' Main Scenario Chapter 02]", 5, 
trigger = scene_end(0,8) &&
          roots_ch_2()
)

function roots_ch_3() =>  byte(0xed215c) == 0x63 && prev(byte(0xed215c)) == 0x0b

achievement ("Triangular Scratches","Complete [2016' .hack//ROOTS' Main Scenario Chapter 03]", 1, 
trigger = scene_end(2,9) &&
          roots_ch_3()
)

function roots_ch_4() =>  byte(0xed215e) == 0x63 && prev(byte(0xed215e)) == 0x0a

achievement ("Stone Monument","Complete [2016' .hack//ROOTS' Main Scenario Chapter 04]", 5, 
trigger = scene_end(2,9) &&
          roots_ch_4()
)

function roots_ch_5() =>  byte(0xed2160) == 0x63 && prev(byte(0xed2160)) == 0x0b

achievement ("The Bird","Complete [2016' .hack//ROOTS' Main Scenario Chapter 05]", 10, 
trigger = scene_end(2,9) &&
          roots_ch_5()
)

function roots_ch_6() =>  byte(0xed2162) == 0x63 && prev(byte(0xed2162)) == 0x12

achievement ("Subordinate","Complete [2016' .hack//ROOTS' Main Scenario Chapter 06]", 5, 
trigger = scene_end(0,9) &&
          roots_ch_6()
)

function roots_ch_7() =>  byte(0xed2164) == 0x63 && prev(byte(0xed2164)) == 0x0f

achievement ("Homeland","Complete [2016' .hack//ROOTS' Main Scenario Chapter 07]", 5, 
trigger = scene_end(0,9) &&
          roots_ch_7()
)

function roots_ch_8() =>  byte(0xed2166) == 0x63 && prev(byte(0xed2166)) == 0x12

achievement ("Determination","Complete [2016' .hack//ROOTS' Main Scenario Chapter 08]", 10, 
trigger = scene_end(0,9) &&
          roots_ch_8()
)

function roots_ch_9() =>  byte(0xed2168) == 0x63 && prev(byte(0xed2168)) == 0x0b
achievement ("Breakup","Complete [2016' .hack//ROOTS' Main Scenario Chapter 09]", 1, 
trigger = scene_end(0,9) &&
          roots_ch_9()
)

function roots_ch_10() =>  byte(0xed2230) == 0x63 && prev(byte(0xed2230)) == 0x11
achievement ("Tanuki","Complete [2016' .hack//ROOTS' Main Scenario Chapter 10]", 5, 
trigger = scene_end(0,2) &&
          roots_ch_10()
)

function roots_ch_11() =>  byte(0xed2232) == 0x63 && prev(byte(0xed2232)) == 0x13
achievement ("Familiar Faces","Complete [2016' .hack//ROOTS' Main Scenario Chapter 11]", 5, 
trigger = scene_end(0,2) &&
          roots_ch_11()
)

function roots_ch_12() =>  byte(0xed2240) == 0x63 && prev(byte(0xed2240)) == 0x13
achievement ("Terror of Death","Complete [2016' .hack//ROOTS' Main Scenario Chapter 12]", 5, 
trigger = scene_end(0,2) &&
          roots_ch_12()
)

function roots_ch_13() =>  byte(0xed2234) == 0x63 && prev(byte(0xed2234)) == 0x10
achievement ("Big Brother","Complete [2016' .hack//ROOTS' Main Scenario Chapter 13]", 5, 
trigger = scene_end(0,2) &&
          roots_ch_13()
)

function roots_ch_14() =>  byte(0xed21f8) == 0x63 && prev(byte(0xed21f8)) == 0x10
achievement ("Flirt","Complete [2016' .hack//ROOTS' Main Scenario Chapter 14]", 25, 
trigger = scene_end(0,2) &&
          roots_ch_14()
)

function roots_ch_15() =>  byte(0xed223e) == 0x63 && prev(byte(0xed223e)) == 0x12
achievement ("Informant","Complete [2016' .hack//ROOTS' Sub-Scenario Chapter 15]", 5, 
trigger = scene_end(0,2) &&
          roots_ch_15()
)

function alcor_ch_01() =>  byte(0xed223a) == 0x63 && prev(byte(0xed223a)) == 0x11
achievement ("Failed Operation","Complete [2016' .hack//Alcor' Main Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          alcor_ch_01()
)

function alcor_ch_02() =>  byte(0xed223c) == 0x63 && prev(byte(0xed223c)) == 0x11
achievement ("Abort","Complete [2016' .hack//Alcor' Main Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          alcor_ch_02()
)


function cell_ch_01() =>  byte(0xed2236) == 0x63 && prev(byte(0xed2236)) == 0x13
achievement ("Dangerous","Complete [2016' .hack//CELL' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          cell_ch_01()
)

function cell_ch_02() =>  byte(0xed2238) == 0x63 && prev(byte(0xed2238)) == 0x13
achievement ("Assistant","Complete [2016' .hack//CELL' Sub-Scenario Chapter 02]", 5, 
trigger = scene_end(0,2) &&
          cell_ch_02()
)

function gu_ch_01() =>  byte(0xed216e) == 0x63 && prev(byte(0xed216e)) == 0x0e
achievement ("Doubleware","Complete [2016' .hack//G.U.' Main Scenario Chapter 01]", 5, 
trigger = scene_end(0,8) &&
          gu_ch_01()
)

function gu_ch_02() =>  byte(0xed2170) == 0x63 && prev(byte(0xed2170)) == 0x12
achievement ("More Power","Complete [2016' .hack//G.U.' Main Scenario Chapter 02]", 1, 
trigger = scene_end(0,8) &&
          gu_ch_02()
)

function gu_ch_03() =>  byte(0xed2172) == 0x63 && prev(byte(0xed2172)) == 0x0f
achievement ("Understanding","Complete [2017' .hack//G.U.' Main Scenario Chapter 03]", 5, 
trigger = scene_end(0,9) &&
          gu_ch_03()
)

function gu_ch_04() =>  byte(0xed2174) == 0x63 && prev(byte(0xed2174)) == 0x10
achievement ("Holo-Vision","Complete [2017' .hack//G.U.' Main Scenario Chapter 04]", 1, 
trigger = scene_end(0,1) &&
          gu_ch_04()
)

function gu_ch_05() =>  byte(0xed2176) == 0x63 && prev(byte(0xed2176)) == 0x0b
achievement ("The Watcher","Complete [2017' .hack//G.U.' Main Scenario Chapter 05]", 5, 
trigger = scene_end(2,9) &&
          gu_ch_05()
)

function gu_ch_06() =>  byte(0xed2178) == 0x63 && prev(byte(0xed2178)) == 0x0b
achievement ("Phenomenon","Complete [2017' .hack//G.U.' Main Scenario Chapter 06]", 5, 
trigger = scene_end(2,9) &&
          gu_ch_06()
)

function gu_ch_07() =>  byte(0xed217a) == 0x63 && prev(byte(0xed217a)) == 0x10
achievement ("Princess","Complete [2017' .hack//G.U.' Main Scenario Chapter 07]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_07()
)

function gu_ch_08() =>  byte(0xed217c) == 0x63 && prev(byte(0xed217c)) == 0x12
achievement ("Pained","Complete [2017' .hack//G.U.' Main Scenario Chapter 08]", 1, 
trigger = scene_end(1,8) &&
          gu_ch_08()
)

function gu_ch_09() =>  byte(0xed217e) == 0x63 && prev(byte(0xed217e)) == 0x16
achievement ("Sucks","Complete [2017' .hack//G.U.' Main Scenario Chapter 09]", 5, 
trigger = scene_end(0,8) &&
          gu_ch_09()
)

function gu_ch_10() =>  byte(0xed2180) == 0x63 && prev(byte(0xed2180)) == 0x0f
achievement ("Acorn Burger","Complete [2017' .hack//G.U.' Main Scenario Chapter 10]", 1, 
trigger = scene_end(0,8) &&
          gu_ch_10()
)

function gu_ch_11() =>  byte(0xed2182) == 0x63 && prev(byte(0xed2182)) == 0x11
achievement ("Convinction","Complete [2017' .hack//G.U.' Main Scenario Chapter 11]", 5, 
trigger = scene_end(1,8) &&
          gu_ch_11()
)

function gu_ch_12() =>  byte(0xed2184) == 0x63 && prev(byte(0xed2184)) == 0x15
achievement ("Relationships","Complete [2017' .hack//G.U.' Main Scenario Chapter 12]", 5, 
trigger = scene_end(0,9) &&
          gu_ch_12()
)

function gu_ch_13() =>  byte(0xed2186) == 0x63 && prev(byte(0xed2186)) == 0x0b
achievement ("Regrettable","Complete [2017' .hack//G.U.' Main Scenario Chapter 13]", 1, 
trigger = scene_end(0,9) &&
          gu_ch_13()
)

function gu_ch_14() =>  byte(0xed2242) == 0x63 && prev(byte(0xed2242)) == 0x16
achievement ("Live Match","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 14]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_14()
)

function gu_ch_15() =>  byte(0xed2244) == 0x63 && prev(byte(0xed2244)) == 0x10
achievement ("Deep Despair","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 15]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_15()
)

function gu_ch_16() =>  byte(0xed224c) == 0x63 && prev(byte(0xed224c)) == 0x10
achievement ("Fifth Divison","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 16]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_16()
)

function gu_ch_17() =>  byte(0xed224a) == 0x63 && prev(byte(0xed224a)) == 0x12
achievement ("On the Pedestal","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 17]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_17()
)

function gu_ch_18() =>  byte(0xed2246) == 0x63 && prev(byte(0xed2246)) == 0x15
achievement ("Third Division","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 18]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_18()
)

function gu_ch_19() =>  byte(0xed2248) == 0x63 && prev(byte(0xed2248)) == 0x18
achievement ("Funny Story","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 19]", 5, 
trigger = scene_end(0,2) &&
          gu_ch_19()
)

function gu_ch_20() =>  byte(0xed21fa) == 0x63 && prev(byte(0xed21fa)) == 0x11
achievement ("Stiff Shoulder","Complete [2017' .hack//G.U.' Sub-Scenario Chapter 20]", 10, 
trigger = scene_end(0,2) &&
          gu_ch_20()
)

function guplus_ch_01() =>  byte(0xed2250) == 0x63 && prev(byte(0xed2250)) == 0x0e
achievement ("Ultimate AI","Complete [2017' .hack//G.U.+' Sub-Scenario Chapter 01]", 10, 
trigger = scene_end(0,2) &&
          guplus_ch_01()
)

function return_ch_01() =>  byte(0xed2252) == 0x63 && prev(byte(0xed2252)) == 0x17
achievement ("Battlefield","Complete [2017' .hack//G.U. Returner' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          return_ch_01()
)

function xxxx_ch_01() =>  byte(0xed2228) == 0x63 && prev(byte(0xed2228)) == 0x15
achievement ("Anti-Existence","Complete [2010' .hack//XXXX' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          xxxx_ch_01()
)

function gut_ch_01() =>  byte(0xed2254) == 0x63 && prev(byte(0xed2254)) == 0x12
achievement ("Data Anomaly","Complete [2017' .hack//G.U. Trilogy' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          gut_ch_01()
)

function eot_ch_01() =>  byte(0xed225c) == 0x63 && prev(byte(0xed225c)) == 0x18
achievement ("Foggy Day","Complete [2007' .hack//Epitaph of Twilight' Sub-Scenario Chapter 01]", 5, 
trigger = scene_end(0,2) &&
          eot_ch_01()
)

function unknown_ch01() =>  byte(0xed227c) == 0x63 && prev(byte(0xed227c)) == 0x01
achievement ("Error","Complete [2024' .hack//Unknown' Sub-Scenario Chapter 01]", 0, 
trigger = scene_end(0,2) &&
          unknown_ch01()
)

function unknown_ch02() =>  byte(0xed227e) == 0x63 && prev(byte(0xed227e)) == 0x01
achievement ("Special Guest","Complete [2024' .hack//Unknown' Sub-Scenario Chapter 02]", 2, 
trigger = scene_end(0,2) &&
          unknown_ch02()
)

function unknown_ch03() =>  byte(0xed2280) == 0x63 && prev(byte(0xed2280)) == 0x02
achievement ("Trailer","Complete [2024' .hack//Unknown' Sub-Scenario Chapter 03]", 2, 
trigger = scene_end(0,2) &&
          unknown_ch03()
)

function xover_ch01() =>  byte(0xed225e) == 0x63 && prev(byte(0xed225e)) == 0x0b
achievement ("Solo Play","Complete [2009' .hack//X'over' Sub-Scenario Chapter 01]", 10, 
trigger = scene_end(0,2) &&
          xover_ch01()
)

function xover_ch02() =>  byte(0xed2260) == 0x63 && prev(byte(0xed2260)) == 0x0d
achievement ("Truely Unfortunate","Complete [2009' .hack//X'over' Sub-Scenario Chapter 02]", 10, 
trigger = scene_end(0,2) &&
          xover_ch02()
)

function xover_ch03() =>  byte(0xed2262) == 0x63 && prev(byte(0xed2262)) == 0x0d
achievement ("Introduction","Complete [2010' .hack//X'over' Sub-Scenario Chapter 03]", 10, 
trigger = scene_end(0,2) &&
          xover_ch03()
)

function xover_ch04() =>  byte(0xed2264) == 0x63 && prev(byte(0xed2264)) == 0x0d
achievement ("Adventure Time","Complete [2009' .hack//X'over' Sub-Scenario Chapter 04]", 10, 
trigger = scene_end(0,2) &&
          xover_ch04()
)

function xover_ch05() =>  byte(0xed2274) == 0x63 && prev(byte(0xed2274)) == 0x0b
achievement ("Silent Stare","Complete [2016' .hack//X'over' Sub-Scenario Chapter 05]", 10, 
trigger = scene_end(0,2) &&
          xover_ch05()
)

function xover_ch06() =>  byte(0xed2268) == 0x63 && prev(byte(0xed2268)) == 0x0c
achievement ("Worthy Opponent","Complete [2017' .hack//X'over' Sub-Scenario Chapter 06]", 10, 
trigger = scene_end(0,2) &&
          xover_ch06()
)

function xover_ch07() =>  byte(0xed226a) == 0x63 && prev(byte(0xed226a)) == 0x0e
achievement ("Mediator","Complete [2010' .hack//X'over' Sub-Scenario Chapter 07]", 10, 
trigger = scene_end(0,2) &&
          xover_ch07()
)

function xover_ch08() =>  byte(0xed226c) == 0x63 && prev(byte(0xed226c)) == 0x0c
achievement ("Sleipnir","Complete [2016' .hack//X'over' Sub-Scenario Chapter 08]", 10, 
trigger = scene_end(0,2) &&
          xover_ch08()
)

function xover_ch09() =>  byte(0xed226e) == 0x63 && prev(byte(0xed226e)) == 0x0c
achievement ("Softest Feathers","Complete [2010' .hack//X'over' Sub-Scenario Chapter 09]", 10, 
trigger = scene_end(0,2) &&
          xover_ch09()
)

function xover_ch10() =>  byte(0xed2270) == 0x63 && prev(byte(0xed2270)) == 0x0b
achievement ("Peace Maintained","Complete [2010' .hack//X'over' Sub-Scenario Chapter 10]", 10, 
trigger = scene_end(0,2) &&
          xover_ch10()
)

function xover_ch11() =>  byte(0xed2272) == 0x63 && prev(byte(0xed2272)) == 0x0b
achievement ("Consultation","Complete [2016' .hack//X'over' Sub-Scenario Chapter 11]", 10, 
trigger = scene_end(0,2) &&
          xover_ch11()
)

function xover_ch12() =>  byte(0xed2266) == 0x63 && prev(byte(0xed2266)) == 0x0d
achievement ("Honeysuckle Seed","Complete [2017' .hack//X'over' Sub-Scenario Chapter 12]", 10, 
trigger = scene_end(0,2) &&
          xover_ch12()
)

function inte_ch01() =>  byte(0xed2208) == 0x63 && prev(byte(0xed2208)) == 0x0f
achievement ("Unison","Complete [2017' .hack//Integration ' Sub-Scenario Chapter 01]", 1, 
trigger = scene_end(0,2) &&
          inte_ch01()
)

function chest_open() => word(0xee3c36)

achievement ("Looter", "Open 150 chests (does not include chests dropped by mobs)", 5,
trigger = save_protect() &&
          measured(chest_open() == 150) &&
          prev(chest_open()) == 149
)

achievement ("Hoarder", "Open 300 chests (does not include chests dropped by mobs)", 10, 
trigger = save_protect() &&
          measured(chest_open() == 300) &&
          prev(chest_open()) == 299)

function cross_rengeki() => word(0xee3c30)

achievement ("Teamwork", "150 Cross Rengeki's hit", 5,
trigger = save_protect() &&
          measured(cross_rengeki() == 150) &&
          prev(cross_rengeki()) == 149)
          
function unison_combo() => word(0xee3c24)

achievement ("Finish 'Em", "Used 500 Unison combo finishers", 5, 
trigger = save_protect() &&
          measured(unison_combo() == 500) &&
          prev(unison_combo()) == 499)
          
achievement ("Brutality", "Used 1000 Unison combo finishers", 10, 
trigger = save_protect() &&
          measured(unison_combo() == 1000) &&
          prev(unison_combo()) == 999)

function slide_dash() => word(0xee3c2e)

achievement ("No Swords", "100 Slide dash's hit", 10,
trigger = save_protect() &&
          measured(slide_dash() == 100) &&
          prev(slide_dash()) == 99)

function a_rank() => word(0xee3c32)

achievement ("Expert Clearer", "Obtain 50 [A] rank clears", 10,
trigger = save_protect() &&
          measured(a_rank() == 50) &&
          prev(a_rank()) == 49)

function s_rank() => word(0xee3c34)

achievement ("Master Clearer", "Obtain 25 [S] rank clears", 25,
trigger = save_protect() &&
          measured(s_rank() == 25) &&
          prev(s_rank()) == 24)

function male_pcs() => word(0xee3c38)

achievement ("Conversing with Dudes", "Talk with 80 Male PC's", 5, 
trigger = save_protect() &&
          measured(male_pcs() == 80) &&
          prev(male_pcs()) == 79)
          
function female_pcs() => word(0xee3c3a)

achievement ("Conversing with Ladies", "Talk with 80 Female PC's", 5, 
trigger = save_protect() &&
          measured(female_pcs() == 80) &&
          prev(female_pcs()) == 79)          

function pcs_saved() => word(0xee3c28)

achievement ("Savior", "Save 5 PCs from PKers", 5,
trigger = save_protect() &&
          measured(pcs_saved() == 5) &&
          prev(pcs_saved()) == 4
)

function pkers_pked() => word(0xee3c26)          
achievement ("PKKer", "Defeat 60 PKers", 5,
trigger = save_protect() &&
          measured(pkers_pked() == 60) &&
          prev(pkers_pked()) == 59)




function enemy_hunter() => bit7(0xee3b8f) == 1 && prev(bit7(0xee3b8f)) == 0 && bit6(0xee3b8f) == 1
function true_enemy_hunter() => bit1(0xee3b90) == 1 && prev(bit1(0xee3b90)) == 0 && bit0(0xee3b90) == 1
function extreme_enemy_hunter() => bit3(0xee3b90) == 1 && prev(bit3(0xee3b90)) == 0 && bit2(0xee3b90) == 1
function new_pkk() => bit5(0xee3b90) == 1 && prev(bit5(0xee3b90)) == 0 && bit4(0xee3b90) == 1
function enemy_pk() => bit7(0xee3b90) == 1 && prev(bit7(0xee3b90)) == 0 && bit6(0xee3b90) == 1



