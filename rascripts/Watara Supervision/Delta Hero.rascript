// Delta Hero
// #ID = 17595

//Items
//0x04=Exit
//0x14=Flower
//0x2f=Money Bag
//0x30=Bread
//0x31=Glasses
//0x32=Coffee Mug
//0x33=Bottle
//0x3a=Destroyable Trees
//0x40=Scroll
//0x5f=Destroyable PineApple
//0x5d=Destroyable PineApple

//item slots
function slot1() => byte(0x82)  //Area01=Dollars || Area02=Dollars  || Area03=Dollars  || Area04=Dollars  || Area05=Dollars
function slot2() => byte(0x83)  //Area01=Dollars || Area02=Dollars  || Area03=Dollars  || Area04=Dollars  || Area05=Dollars
function slot3() => byte(0x84)  //Area01=Dollars || Area02=Dollars  || Area03=Dollars  || Area04=Dollars  || Area05=Dollars
function slot4() => byte(0x85)  //Area01=Dollars || Area02=Dollars  || Area03=Dollars  || Area04=Dollars  || Area05=Dollars
function slot5() => byte(0x86)  //Area01=Dollars || Area02=Dollars  || Area03=Dollars  || Area04=Bread    || Area05=Dollars
function slot6() => byte(0x87)  //Area01=Bread   || Area02=Bread    || Area03=Glasses  || Area04=Bread    || Area05=Scrolls
function slot7() => byte(0x88)  //Area01=Bread   || Area02=Bread    || Area03=Bread    || Area04=Bread    || Area05=Scrolls
function slot8() => byte(0x89)  //Area01=Bread   || Area02=Bread    || Area03=Bread    || Area04=Bread    || Area05=Flower
function slot9() => byte(0x8A)  //Area01=Glasses || Area02=Bread    || Area03=Bread    || Area04=Bread    || Area05=Bread
function slot10() => byte(0x8B) //Area01=Bread   || Area02=Glasses  || Area03=Bread    || Area04=Coffee   || Area05=Bread
function slot11() => byte(0x8C) //Area01=Dollars || Area02=Coffee   || Area03=Bread    || Area04=Coffee   || Area05=Coffee
function slot12() => byte(0x8D) //Area01=Coffee  || Area02=Coffee   || Area03=Bread    || Area04=Coffee   || Area05=Coffee
function slot13() => byte(0x8E) //Area01=Coffee  || Area02=Bottle   || Area03=Coffee   || Area04=Bottle   || Area05=Bottle
function slot14() => byte(0x8F) //Area01=Bottle  || Area02=Bottle   || Area03=Coffee   || Area04=Scroll   || Area05=Glasses
function slot15() => byte(0x90) //Area01=Tree    || Area02=Nothing  || Area03=Bread    || Area04=Coffee   || Area05=Scroll
function slot16() => byte(0x91) //Area01=Dollars || Area02=Bread    || Area03=Coffee   || Area04=Dollars  || Area05=Dollars
function slot17() => byte(0x92) //Area01=Dollars || Area02=Dollars  || Area03=Nothing  || Area04=Dollars  || Area05=Bottle
function slot18() => byte(0x93) //Area01=Bottle  || Area02=Exit     || Area03=Bottle   || Area04=Nothing  || Area05=Dollars
function slot19() => byte(0x94) //Area01=Nothing || Area02=Coffee   || Area03=Dollars  || Area04=Exit     || Area05=Bread
function slot20() => byte(0x95) //Area01=Nothing || Area02=Bread    || Area03=Bottle   || Area04=Dollars  || Area05=Dollars
function slot21() => byte(0x96) //Area01=Tree    || Area02=Nothing  || Area03=Bread    || Area04=Dollars  || Area05=Dollars
function slot22() => byte(0x97) //Area01=Exit    || Area02=Dollars  || Area03=Dollars  || Area04=Bottle   || Area05=Bottle
function slot23() => byte(0x98) //Area01=Nothing || Area02=Bread    || Area03=Tree     || Area04=Dollars  || Area05=Dollars
function slot24() => byte(0x99) //Area01=Nothing || Area02=Bread    || Area03=Exit     || Area04=Bottle   || Area05=Bread
function slot25() => byte(0x9A) //Area01=Nothing || Area02=Dollars  || Area03=Dollars  || Area04=Dollars  || Area05=Dollars
function slot26() => byte(0x9B) //Area01=Coffee  || Area02=Nothing  || Area03=Nothing  || Area04=Flower   || Area05=Coffee
function slot27() => byte(0x9C) //Area01=Bread   || Area02=Coffee   || Area03=Bread    || Area04=Dollars  || Area05=Dollars
function slot28() => byte(0x9D) //Area01=Dollars || Area02=Dollars  || Area03=Bread    || Area04=Scroll   || Area05=Exit
function slot29() => byte(0x9E) //Area01=Nothing || Area02=Nothing  || Area03=Nothing  || Area04=Dollars  || Area05=Coffee
function slot30() => byte(0x9f) //Area01=Nothing || Area02=Nothing  || Area03=Dollars  || Area04=Glasses  || Area05=Coffee

function collectlevel1() =>
         slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+
         slot11()+slot12()+slot13()+slot14()+slot16()+slot17()+slot18()+slot26()+slot27()+slot28() == 0x00 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+
         slot12()+slot13()+slot14()+slot16()+slot17()+slot18()+slot26()+slot27()+slot28()) >= 0x2f &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+
         slot12()+slot13()+slot14()+slot16()+slot17()+slot18()+slot26()+slot27()+slot28()) <= 0x33         

function collectlevel2() =>
         slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot16()+slot17()+slot19()+slot20()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+slot28() == 0x00 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot16()+slot17()+slot19()+slot20()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+slot28()) >= 0x2f &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot16()+slot17()+slot19()+slot20()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+slot28()) <= 0x33
         
function collectlevel3() =>
         slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+
         slot13()+slot14()+slot15()+slot16()+slot18()+slot19()+slot20()+slot21()+slot22()+slot25()+slot27()+slot28()+slot30() == 0x00 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+
         slot13()+slot14()+slot15()+slot16()+slot18()+slot19()+slot20()+slot21()+slot22()+slot25()+slot27()+slot28()+slot30()) >=0x2f &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+
         slot13()+slot14()+slot15()+slot16()+slot18()+slot19()+slot20()+slot21()+slot22()+slot25()+slot27()+slot28()+slot30()) <=0x33
         
function collectlevel4() =>
         slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+
         slot28()+slot29()+slot30() == 00 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+
         slot28()+slot29()+slot30()) >= 0x14 && 
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+slot26()+slot27()+
         slot28()+slot29()+slot30()) <= 0x40
         
function collectlevel5() =>
         slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot18()+slot19()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+
         slot26()+slot27()+slot29()+slot30() == 0x00 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot18()+slot19()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+
         slot26()+slot27()+slot29()+slot30()) >= 0x14 &&
         prev(slot1()+slot2()+slot3()+slot4()+slot5()+slot6()+slot7()+slot8()+slot9()+slot10()+slot11()+slot12()+slot13()+
         slot14()+slot15()+slot16()+slot17()+slot18()+slot19()+slot20()+slot21()+slot22()+slot23()+slot24()+slot25()+
         slot26()+slot27()+slot29()+slot30()) <= 0x40

function dolladolla() => byte(0x7b)
function levelid() => byte(0xac)
area01 = 0x00
area02 = 0x01
area03 = 0x02
area04 = 0x03
area05 = 0x04
gamebeat = 0x05

function lifeforce1() => byte(0xee)
function lifeforce2() => byte(0xed)
function stage01glasses() => byte(0x8a)
function stage02glasses() => byte(0x8b)
function stage03glasses() => byte(0x87)
function stage04glasses() => byte(0x9f)
function stage05glasses() => byte(0x8f)

achievement ("Forest Dweller", "Beat Area 01", 1, badge = "168963",
    trigger = dolladolla() == 0x09 &&
              prev(levelid()) == area01 &&
              levelid() == area02)
    
achievement ("Hoarder", "Collect all treasures in Area 01", 5, badge = "168964",
    trigger = levelid() == area01 && collectlevel1())

achievement ("Feeling It", "Beat Area 01 without picking up the glasses", 5, badge = "168965",
    trigger = stage01glasses() == 0x31 &&
              prev(levelid()) == area01 &&
              levelid() == area02)
                           
achievement ("A Fever You Can't Sweat Out", "Beat Area 02", 2, badge = "168966",
    trigger = prev(levelid()) == area02 &&
              levelid() == area03)
              
achievement ("Burried in the Desert", "Collect all treasures in Area 02", 5, badge = "168967",
    trigger = levelid() == area02 && collectlevel2())
    
achievement ("All the Plants Are Gonna Die!", "Beat Area 02 without picking up the glasses", 5, badge = "168968",
    trigger = stage02glasses() == 0x31 &&
              prev(levelid()) == area02 &&
              levelid() == area03)
    
achievement ("Foest Dweller", "Beat Area 03", 3, badge = "168969",
    trigger = prev(levelid()) == area03 &&
              levelid() == area04)     
              
achievement ("Lumberjack", "Collect all treasures in Area 03", 5, badge = "168970",
    trigger = levelid() == area03 &&
              collectlevel3())
              
achievement ("Clear Skies", "Beat Area 03 without picking up the glasses", 5, badge = "168971",
    trigger = stage03glasses() == 0x31 &&
              prev(levelid()) == area03 &&
              levelid() == area04)
    
achievement ("Corn on the Cob", "Beat Area 04", 4, badge = "168972",
    trigger = prev(levelid()) == area04 &&
              levelid() == area05)
              
achievement ("Popcorn", "Collect all treasures in Area 04", 5, badge = "168973",
    trigger = levelid() == area04 && collectlevel4())
    
achievement ("Colonel Colonel", "Beat Area 04 without picking up the glasses", 5, badge = "168978",
    trigger = stage04glasses() == 0x31 &&
              prev(levelid()) == area04 &&
              levelid() == area05)
              
achievement ("Pineapple on Pizza", "Beat Area 05", 5, badge = "168976",
    trigger = prev(levelid()) == area05 && 
              levelid() == gamebeat)
            
achievement ("Who Lives in a Pineapple under the Sea", "Collect all treasures in Area 05", 5, badge = "168977",
    trigger =  levelid() == area05 && collectlevel5())
    
achievement ("Pineapple Express", "Beat Area 05 without picking upt he glasses", 5, badge = "168975",
    trigger = stage05glasses() == 0x31 &&
              prev(levelid()) == area05 &&
              levelid() == gamebeat)