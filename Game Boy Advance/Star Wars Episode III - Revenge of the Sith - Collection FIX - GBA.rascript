// Star Wars Episode III - Revenge of the Sith
// #ID = 6663

function ScreenID() => byte(0x76ea)
function SceneID() => byte(0x7789)
function Difficulty() => byte(0x77a8)
function AniScene1Complete() => bit5(0x76EC)+bit7(0x76EC)+bit4(0x76ED)+bit5(0x76ED)+bit6(0x76ED)+bit7(0x76ED)+bit0(0x76EE)+bit1(0x76EE)+bit2(0x76EE)+bit3(0x76EE)+bit4(0x76EE)+bit5(0x76EE)+bit0(0x76F0)+bit2(0x76F0)
function AniScene2Complete() => bit5(0x76F1)+bit7(0x76F1)+bit4(0x76F2)+bit5(0x76F2)+bit6(0x76F2)+bit7(0x76F2)+bit0(0x76F3)+bit1(0x76F3)+bit2(0x76F3)+bit3(0x76F3)+bit4(0x76F3)+bit5(0x76F3)+bit0(0x76F5)+bit2(0x76F5)
function AniScene4Complete() => bit5(0x76F6)+bit7(0x76F6)+bit4(0x76F7)+bit5(0x76F7)+bit6(0x76F7)+bit7(0x76F7)+bit0(0x76F8)+bit1(0x76F8)+bit2(0x76F8)+bit3(0x76F8)+bit4(0x76F8)+bit5(0x76F8)+bit0(0x76FA)+bit2(0x76FA)
function AniScene5Complete() => bit5(0x76FB)+bit7(0x76FB)+bit4(0x76FC)+bit5(0x76FC)+bit6(0x76FC)+bit7(0x76FC)+bit0(0x76FD)+bit1(0x76FD)+bit2(0x76FD)+bit3(0x76FD)+bit4(0x76FD)+bit5(0x76FD)+bit0(0x76FF)+bit2(0x76FF)
function AniScene6Complete() => bit5(0x7700)+bit7(0x7700)+bit4(0x7701)+bit5(0x7701)+bit6(0x7701)+bit7(0x7701)+bit0(0x7702)+bit1(0x7702)+bit2(0x7702)+bit3(0x7702)+bit4(0x7702)+bit5(0x7702)+bit0(0x7704)+bit2(0x7704)
function AniScene8Complete() => bit5(0x7705)+bit7(0x7705)+bit4(0x7706)+bit5(0x7706)+bit6(0x7706)+bit7(0x7706)+bit0(0x7707)+bit1(0x7707)+bit2(0x7707)+bit3(0x7707)+bit4(0x7707)+bit5(0x7707)+bit0(0x7709)+bit2(0x7709)
function AniScene9Complete() => bit5(0x770A)+bit7(0x770A)+bit4(0x770B)+bit5(0x770B)+bit6(0x770B)+bit7(0x770B)+bit0(0x770C)+bit1(0x770C)+bit2(0x770C)+bit3(0x770C)+bit4(0x770C)+bit5(0x770C)+bit0(0x770E)+bit2(0x770E)
function AniScene11Complete() => bit5(0x770F)+bit7(0x770F)+bit4(0x7710)+bit5(0x7710)+bit6(0x7710)+bit7(0x7710)+bit0(0x7711)+bit1(0x7711)+bit2(0x7711)+bit3(0x7711)+bit4(0x7711)+bit5(0x7711)+bit0(0x7713)+bit2(0x7713)
function AniScene12Complete() => bit5(0x7714)+bit7(0x7714)+bit4(0x7715)+bit5(0x7715)+bit6(0x7715)+bit7(0x7715)+bit0(0x7716)+bit1(0x7716)+bit2(0x7716)+bit3(0x7716)+bit4(0x7716)+bit5(0x7716)+bit0(0x7718)+bit2(0x7718)
function ObiScene1Complete() => bit5(0x7719)+bit7(0x7719)+bit4(0x771A)+bit5(0x771A)+bit6(0x771A)+bit7(0x771A)+bit0(0x771B)+bit1(0x771B)+bit2(0x771B)+bit3(0x771B)+bit4(0x771B)+bit5(0x771B)+bit0(0x771D)+bit2(0x771D)
function ObiScene2Complete() => bit5(0x771E)+bit7(0x771E)+bit4(0x771F)+bit5(0x771F)+bit6(0x771F)+bit7(0x771F)+bit0(0x7720)+bit1(0x7720)+bit2(0x7720)+bit3(0x7720)+bit4(0x7720)+bit5(0x7720)+bit0(0x7722)+bit2(0x7722)
function ObiScene4Complete() => bit5(0x7723)+bit7(0x7723)+bit4(0x7724)+bit5(0x7724)+bit6(0x7724)+bit7(0x7724)+bit0(0x7725)+bit1(0x7725)+bit2(0x7725)+bit3(0x7725)+bit4(0x7725)+bit5(0x7725)+bit0(0x7727)+bit2(0x7727)
function ObiScene5Complete() => bit5(0x7728)+bit7(0x7728)+bit4(0x7729)+bit5(0x7729)+bit6(0x7729)+bit7(0x7729)+bit0(0x772A)+bit1(0x772A)+bit2(0x772A)+bit3(0x772A)+bit4(0x772A)+bit5(0x772A)+bit0(0x772C)+bit2(0x772C)
function ObiScene6Complete() => bit5(0x772D)+bit7(0x772D)+bit4(0x772E)+bit5(0x772E)+bit6(0x772E)+bit7(0x772E)+bit0(0x772F)+bit1(0x772F)+bit2(0x772F)+bit3(0x772F)+bit4(0x772F)+bit5(0x772F)+bit0(0x7731)+bit2(0x7731)
function ObiScene8Complete() => bit5(0x7732)+bit7(0x7732)+bit4(0x7733)+bit5(0x7733)+bit6(0x7733)+bit7(0x7733)+bit0(0x7734)+bit1(0x7734)+bit2(0x7734)+bit3(0x7734)+bit4(0x7734)+bit5(0x7734)+bit0(0x7736)+bit2(0x7736)
function ObiScene9Complete() => bit5(0x7737)+bit7(0x7737)+bit4(0x7738)+bit5(0x7738)+bit6(0x7738)+bit7(0x7738)+bit0(0x7739)+bit1(0x7739)+bit2(0x7739)+bit3(0x7739)+bit4(0x7739)+bit5(0x7739)+bit0(0x773B)+bit2(0x773B)
function ObiScene11Complete() => bit5(0x773C)+bit7(0x773C)+bit4(0x773D)+bit5(0x773D)+bit6(0x773D)+bit7(0x773D)+bit0(0x773E)+bit1(0x773E)+bit2(0x773E)+bit3(0x773E)+bit4(0x773E)+bit5(0x773E)+bit0(0x7740)+bit2(0x7740)
function ObiScene12Complete() => bit5(0x7741)+bit7(0x7741)+bit4(0x7742)+bit5(0x7742)+bit6(0x7742)+bit7(0x7742)+bit0(0x7743)+bit1(0x7743)+bit2(0x7743)+bit3(0x7743)+bit4(0x7743)+bit5(0x7743)+bit0(0x7745)+bit2(0x7745)
    
achievement ("Hanger Crew", "Obtain [25/25] in [Scene 1] [Anakin] [Jedi Difficulty]", 5, id = 152423, badge = "171165",
    trigger = SceneID() == 0x01 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(AniScene1Complete()) != 0x0e &&
              AniScene1Complete() == 0x0e)
              
achievement ("Hanger Ace", "Obtain [25/25] in [Scene 1] [Obi-Wan] [Jedi Difficulty]", 5, id = 152424, badge = "171082",
    trigger = SceneID() == 0x01 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(ObiScene1Complete()) != 0x0e &&
              ObiScene1Complete() == 0x0e)
  
achievement ("Corridors Creeper", "Obtain [25/25] in [Scene 2] [Obi-Wan] [Jedi Difficulty]", 5, id = 152428, badge = "171086",
    trigger = SceneID() == 0x02 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(ObiScene2Complete()) != 0x0e &&
              ObiScene2Complete() == 0x0e)              

achievement ("Corridors Stalker", "Obtain [25/25] in [Scene 2] [Anakin] [Jedi Difficulty]", 5, id = 152429, badge = "171087",
    trigger = SceneID() == 0x02 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(AniScene2Complete()) != 0x0e &&
              AniScene2Complete() == 0x0e)

achievement ("Crewman", "Obtain [25/25] in [Scene 4] [Obi-Wan] [Jedi Difficulty]", 5, id = 152435, badge = "171093",
    trigger = SceneID() == 0x04 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(ObiScene4Complete()) != 0x0e &&
              ObiScene4Complete() == 0x0e)

achievement ("Bridge", "Obtain [25/25] in [Scene 4] [Anakin] [Jedi Difficulty]", 5, id = 152436, badge = "171094",
    trigger = SceneID() == 0x04 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(AniScene4Complete()) != 0x0e &&
              AniScene4Complete() == 0x0e)
              
achievement ("Utapau Cleaner", "Obtain [25/25] in [Scene 5] [Obi-Wan] [Jedi Difficulty]", 5, id = 152439, badge = "171097",
    trigger = SceneID() == 0x0e &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(ObiScene5Complete()) != 0x0e &&
              ObiScene5Complete() == 0x0e)              

achievement ("Coruscant City Worker", "Obtain [25/25] in [Scene 5] [Anakin] [Jedi Difficulty]", 5, id = 152442, badge = "171100",
    trigger = SceneID() == 0x05 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(AniScene5Complete()) != 0x0e &&
              AniScene5Complete() == 0x0e)

achievement ("Negotiations", "Obtain [25/25] in [Scene 6] [Obi-Wan] [Jedi Difficulty]", 5, id = 152445, badge = "171103",
    trigger = SceneID() == 0x0f &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(ObiScene6Complete()) != 0x0e &&
              ObiScene6Complete() == 0x0e)
 
achievement ("Great Confusion", "Obtain [25/25] in [Scene 6] [Anakin] [Jedi Difficulty]", 5, id = 152448, badge = "171106",
    trigger = SceneID() == 0x06 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(AniScene6Complete()) != 0x0e &&
              AniScene6Complete() == 0x0e)  

achievement ("Commander", "Obtain [25/25] in [Scene 8] [Obi-Wan] [Jedi Difficulty]", 5, id = 152457, badge = "171115",
    trigger = SceneID() == 0x11 &&
              ScreenID() == 0x06 &&
              Difficulty() == 0x01 &&
              prev(ObiScene8Complete()) != 0x0e &&
              ObiScene8Complete() == 0x0e)

achievement ("Crumbling the Temple", "Obtain [25/25] in [Scene 8] [Anakin] [Jedi Difficulty]", 5, id = 152460, badge = "171118",
    trigger = SceneID() == 0x08 &&
              ScreenID() == 0x03 &&
              Difficulty() == 0x01 &&
              prev(AniScene8Complete()) != 0x0e &&
              AniScene8Complete() == 0x0e)
              
achievement ("Dig Dug", "Obtain [25/25] in [Scene 9] [Obi-Wan] [Jedi Difficulty]", 5, id = 152463, badge = "171121",
    trigger = SceneID() == 0x12 &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(ObiScene9Complete()) != 0x0e &&
              ObiScene9Complete() == 0x0e)

achievement ("Try and Hide", "Obtain [25/25] in [Scene 9] [Anakin] [Jedi Difficulty]", 5, id = 152466, badge = "171124",
    trigger = SceneID() == 0x09 &&
              ScreenID() == 0x02 &&
              Difficulty() == 0x01 &&
              prev(AniScene9Complete()) != 0x0e &&
              AniScene9Complete() == 0x0e)

achievement ("The Last Few", "Obtain [25/25] in [Scene 11] [Obi-Wan] [Jedi Difficulty]", 5, id = 152475, badge = "171133",
    trigger = SceneID() == 0x14 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(ObiScene11Complete()) != 0x0e &&
              ObiScene11Complete() == 0x0e)

achievement ("Crush Them", "Obtain [25/25] in [Scene 11] [Anakin] [Jedi Difficulty]", 5, id = 152478, badge = "171136",
    trigger = SceneID() == 0x0b &&
              ScreenID() == 0x04 &&
              Difficulty() == 0x01 &&
              prev(AniScene11Complete()) != 0x0e &&
              AniScene11Complete() == 0x0e)
 
 achievement ("Strong Enough, You Are Not", "Obtain [25/25] in [Scene 12] [Obi-Wan] [Jedi Difficulty]", 5, id = 152481, badge = "171139",
    trigger = SceneID() == 0x15 &&
              ScreenID() == 0x05 &&
              Difficulty() == 0x01 &&
              prev(ObiScene12Complete()) != 0x0e &&
              ObiScene12Complete() == 0x0e)
 
achievement ("Destroy All", "Obtain [25/25] in [Scene 12] [Anakin] [Jedi Difficulty]", 5, id = 152484, badge = "171142",
    trigger = SceneID() == 0x0c &&
              ScreenID() == 0x03 &&
              Difficulty() == 0x01 &&
              prev(AniScene12Complete()) != 0x0e &&
              AniScene12Complete() == 0x0e) 
              