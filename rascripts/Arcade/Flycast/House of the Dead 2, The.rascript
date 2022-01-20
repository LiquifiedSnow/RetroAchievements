// House of the Dead 2, The
// #ID = 18015

//system 
function play_score() => dword(0x3d042c)
function play_creds() => byte(0x145e2c)
function play_diff() => byte(0x3d109c)
play_veasy = 0x00
play_measy = 0x01
play_normal = 0x02
play_mhard = 0x03
play_vhard = 0x04

function play_life() => byte(0x3d109e)
start_1_max_3 = 0x00
start_2_max_3 = 0x01
start_3_max_3 = 0x02
start_1_max_4 = 0x03
start_2_max_4 = 0x04
start_3_max_4 = 0x05
start_4_max_4 = 0x06
start_1_max_5 = 0x07
start_2_max_5 = 0x08
start_3_max_5 = 0x09
start_4_max_5 = 0x0a
start_5_max_5 = 0x0b

function dip_default() => play_diff() == play_normal && play_life() == start_3_max_5
function dip_veryhard() => play_diff() == play_vhard && play_life() == start_3_max_5

//game
function p1_life() => byte(0x3d0430)
function p1_ammo() => byte(0x3d0444)
function p1_shots_fired() => word(0x3d0454)
function p1_shots_hit() => word(0x3d0458)
function p2_ammo() => byte(0x3d0544)
function p2_shots_fired() => word(0x3d0554) == 0

function p2_prot_progression() => tally(1,in_level() == 9) && never(p2_ammo() == 5 && prev(p2_ammo()) == 6)

// What level you're on
function in_level() => byte(0x3d0800)
ch1_prelude = 0x00
ch2_muddy = 0x01
ch3_darkness = 0x02
ch4_despair = 0x03
ch5_dawn = 0x04
ch6_original = 0x5
ch_win = 0x6
ch_credits = 0x8

// What area of the level you're in
function on_screen() => byte(0x3d0802)
ch1_end = 0xa
ch2_end = 0x13
ch2_end_alt = 0x15
ch3_end = 0x08
ch3_end_alt = 0xa
ch4_end = 0xa
ch4_end_alt = 0xc

function ch2_ending() => (on_screen() == 0x13 || on_screen() == 0x15)
function ch3_ending() => (on_screen() == 0x08 || on_screen() == 0x0a)
function ch4_ending() => (on_screen() == 0x0a || on_screen() == 0x0c)
function ch5_ending() => on_screen() == 0x05

// What your progress is in the specific area of the level you're in
function screen_prog() => byte(0x3d0804)

function ch_over() => screen_prog() == 0x02 && prev(screen_prog()) == 0x01
function ch5_over() => screen_prog() == 0x05 && prev(screen_prog()) == 0x04



//               Level 1  0x0           
//      Screen // Prog // The hell is happening
// [0.1]   0x0    0x1   The First Chapter - A Prelude Title Card
// [0.2]   0x0    0x2   Car Cutscene / First Encounter
// [0.3]   0x1    0x1   Turning to Library
// [0.4]   0x1    0x2   Entered Library
// [0.5]   0x1    0x3   First Library Encounter Done - Moving Forward 
// [0.6]   0x1    0x4   How could anyone do this - Dead Body discovered
// [0.7]   0x1    0x5   Finding G in Library
// [0.8]   0x1    0x6   Leaving G in Library
// [0.9]   0x1    0x7   Leaving Library
// [0.a]   0x1    0x8   I don't want to die guy dies - Outside Library
// [0.b]   0x1    0x9   Don't come girl scene
//       ||____________________________________________________________________________________
//       | ___________________________________________________________________________________ |
//       ||                                                                                   ||
//       \/                                                                                   \/
// [0.e]   0x7   0x1   Don't come girl (saved)                                          [0.c]   0x8   0x1   Don't come girl (killed)    
// [0.f]   0x7   0x2   Don't come girl - please help him                                [0.d]   0x8   0x2   Courtyard gates busted down                                                   
//       ||____________________________________________________________________               ||_________________________________________________                                                       
//       |  __________________________________________________________________ |              |________________________________________________ |
//        ||                                                                  ||                                                               ||
//        \/                                                                  \/                                                               ||                                                          
// [0.12]   0x6   0x1   Well boy saved                                 [0.10]   0x2   0x1   Well boy killed - There was nothing we could do    ||
// [0.13]   0x6   0x2   Entering the bypass                            [0.11]   0x2   0x2   Courtyard gates busted down                        ||
// [0.13]   0x6   0x2   Entering the bypass                                   ||_______________________________________________________________||
// [0.14]   0x6   0x3   First bypass encounter complete                       |____  ___________________________________________________________|
// [0.15]   0x6   0x4   Bypass leech encounter complete                            ||                                                              
//        ||                                                                       \/                                                                                                                               
//        ||                                                                [0.16]   0x3   0x1   Entering courtyard                                      
//        ||                                                                [0.17]   0x3   0x2   Frogs in courtyard killed          
//        ||                                                                [0.18]   0x3   0x3   Entering courtyard door             
//        ||                                                                [0.19]   0x3   0x4   After G's bloodstain leech attack                                                      
//        ||                                                                [0.1a]   0x3   0x5   Chainsaw guy dead  
//        ||_______________________________________________________________________||                             
//        | ________________________________________________________________________|                             
//        ||                              
//        ||                              
//        ||
//        \/
// [0.1b]   0x4   0x1   Entering Back Street
// [0.1c]   0x4   0x2   Swamp things climbing bridge dead
// [0.1d]   0x4   0x3   Annoying boy got away. Shucks.
// [0.1e]   0x4   0x4   El Feurte acting things dead
// [0.1f]   0x4   0x5   Pack after El Feurte wannabe's dead
// [0.20]   0x4   0x6   2nd Pack after El Feurte losers down
// [0.21]   0x9   0x1   Shot barrel out of bridge dudes hands
// [0.22]   0xa   0x1   Boss fight (Judgment - Type 28)
// [0.23]   0xa   0x2   The First Chapter - A Prelude - Complete

achievement ("Prelude", "Survive [Chapter 1 - Prelude] [Default Settings]", 3, 
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch1_prelude && 
          on_screen() == ch1_end && 
          ch_over()
)

achievement ("Prelude Expert", "Survive [Chapter 1 - Prelude] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          once(in_level() == ch1_prelude  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 &&
          prev(screen_prog()) == 0x01) &&
          trigger_when(on_screen() == ch1_end && 
          ch_over()) &&
          never(play_creds() < prev(play_creds()))
)

function chapter_one() => on_screen() == 0x0a && screen_prog() == 0x01 && prev(screen_prog()) == 0x01 && (prev(on_screen()) == 0x05 || prev(on_screen()) == 0x09)

achievement ("Prelude Master", "Survive [Chapter 1 - Prelude] til the boss without taking damage [Default Settings]", 25, 
trigger = dip_default() &&
          p2_shots_fired() &&
          once(in_level() == ch1_prelude  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 &&
          prev(screen_prog()) == 0x01) &&
          trigger_when(chapter_one()) && 
          never(p1_life() < prev(p1_life()))
)

achievement ("Judgment Type 28 Researcher", "Defeat [Judgment] without taking damage [Default Settings]", 10,
trigger = dip_default() &&
          p2_shots_fired() &&
          once(in_level() == ch1_prelude && chapter_one()) &&
          trigger_when(screen_prog() == 0x02) &&
          never(p1_life() < prev(p1_life()))
)


//                                                                      ____________
//                                                                     | __________ |
///////////////////////////////////////////////////////////////////    ||          ||
//                                                                     ||          \/
//               Level 2  0x1           //                             ||   [1.5a]   0x6   0x1   Driver - crashes into jewelry store        __________    
//        Screen // Prog // The hell is happening                      ||   [1.5b]   0x6   0x2   Girl screams for help in jewelry store    | ________ | 
// [1.1]   0x0   0x1   The Second Chapter - Muddy Title Card           ||   [1.5c]   0x6   0x3   Moving towards back door of jewelry store ||        ||
// [1.2]   0x0   0x2   Car cutscene                                    ||   [1.5d]   0x6   0x4   Hallway first encounter complete          ||        \/                                  
// [1.3]   0x0   0x3   First encounter                                 ||   [1.5e]   0x6   0x5   Hallway El Feurte encounter complete      || [1.78]   0x8   0x1   Girl in trouble dies                                              
//       ||____________________________________________________________||   [1.5f]   0x6   0x6   Hallway Chain saw dude defeated           ||        ||
//       | _____________________________________________________________|   [1.60]   0x6   0x7   Axe thrower in hallway       _____________||        ||__________________________________                                               
//       ||                                                                 [1.61]   0x6   0x8   TV cutscene                 | ________  ___|        |__________________________________ |                                      
//       ||                                                                 [1.62]   0x7   0x1   Leaving building            ||        ||                                               ||
//       \/                                                                 [1.63]   0x7   0x2   Entering alleyway           ||        \/                                               ||
// [1.4]   0x1   0x1   Saved driver from crashing                           [1.64]   0x7   0x3   Dual axe alleyway           || [1.6d]   0xd   0x1   Girl in trouble saved              ||                                       
// [1.5]   0x1   0x2   Van zombies                                          [1.65]   0x7   0x4   Dual knife alleyway         || [1.6e]   0xd   0x2   Moving through gates               ||                                        
// [1.6]   0x1   0x3   Heading to stairs                                    [1.66]   0x7   0x5   Jumpers in alley            || [1.6f]   0xd   0x4   Oggie Boogie dead                  ||                                 
// [1.7]   0x1   0x4   Top of stairs knife thrower in alleyway              [1.67]   0x7   0x6   Slugs in torn down area     || [1.70]   0xd   0x5   Opening door                       ||                                    
// [1.8]   0x1   0x5   El Feute in alleyway                                 [1.68]   0x7   0x7   Oogie-Boogie breaks door    || [1.71]   0xd   0x6   Second door opening                ||                                            
// [1.9]   0x1   0x6   Owl attack in alleyway                               [1.69]   0x7   0x8   Owl attack                  || [1.72]   0xd   0x7   Entered pantry                     ||                       
// [1.a]   0x1   0x7   Screaming help me through doorway                    [1.6a]   0x7   0x9   Up the stairs               || [1.73]   0xd   0x8   Double chainsaw pantry             ||                                    
// [1.b]   0x1   0x8   Dude falls from rooftop. he ded.                     [1.6b]   0x7   0xa   Knife thrower in tunnel     || [1.74]   0xd   0x9   El Feurtes in pantry               ||                                            
// [1.c]   0x1   0x9   Axe thrower in window                                [1.6c]   0x7   0xb   Girl in trouble             || [1.75]   0xe   0x1   Leaving pantry                     ||                           
// [1.d]   0x1   0xa   Heading down stairs after owl attack                        ||________________________________________|| [1.76]   0xe   0x2   Water crawlers                     ||                                 
// [1.e]   0x1   0xb   Double knife throwers                                       |__________________________________________| [1.77]   0xe   0x3   Leaving flooded room               ||                                     
// [1.f]   0x1   0xc   Dead body by doorway                                                                                            ||                                               ||_______________________
//       ||____________________________________________________________________________________________________________________________||__________                                     |_______________________ |                               
//       |  ___________________________________________________________________________________________________________________________||_________ |                                                            ||        
//        ||                                                           _____________                                                   ||         ||                                                            ||         
//        ||                                                          | ___________ |                                                  ||         ||                                                            ||
//        \/                                                          ||           ||                                                  ||         \/                                                            ||
// [1.10]   0x2   0x1   Dead body in doorway - shot the key           ||           ||                                                  ||  [1.41]   0xc   0x1    Dead body in doorway - didn't shoot the key    ||
// [1.11]   0x2   0x2   Entering gate                                 ||           \/                                                  ||  [1.42]   0xc   0x2    Crossing the bridge                            ||
// [1.12]   0x2   0x3   Little boy running                            ||    [1.27]   0x3   0x1   Little boy saved                      ||  [1.43]   0xc   0x3    Entering clock tower                           ||
//        ||__________________________________________________________||    [1.28]   0x3   0x2   Entered pub                           ||  [1.44]   0xc   0x4    Looking down clocktower scene                  ||
//        | ___________________________________________________________|   ________||___________________                               ||  [1.45]   0xc   0x5    Heading upstairs of clocktower                 ||
//        ||                                                    __________|  __________________________ |                              ||  [1.46]   0xc   0x6    Double chainsaws top of stairs                 ||
//        ||                                                   | ___________|                          ||                              ||  [1.47]   0xc   0x7    Lowered ladder in clocktower                   ||
//        \/                                                   ||                                      ||                              ||  [1.48]   0xc   0x8    Going down the ladder                          ||
// [1.13]   0xa   0x1   Little boy dies                        ||                                      \/                              ||         ||                                                            ||
// [1.14]   0xa   0x2   Enter left building                    \/                               [1.29]   0x4   0x1   Ignored door      ||         ||____________________________________________________________||
// [1.15]   0xa   0x3   After inspecting dead mother    [1.35]   0xf   0x1   Opened door        [1.2a]   0x4   0x2   Bar back room     ||         | _____________________________________________________________|
// [1.16]   0xa   0x4   Orphans building                [1.36]   0xf   0x2   Enter locked room  [1.2b]   0x4   0x3   Double chainsaw   ||         ||
// [1.17]   0xa   0x5   El Feurtes in the hallway       [1.37]   0xf   0x3   Slugs on floor     [1.2c]   0x4   0x4   Downstairs bar    ||         ||
// [1.18]   0xa   0x6   Oogie Boogie coming for ya      [1.38]   0xf   0x4   Leave locked room         ||                              ||         \/
// [1.19]   0xa   0x7   Heading outside                 [1.39]   0x11  0x1   Big guy attacked          ||                              ||  [1.49]   0x9   0x1    Heading into wharf
// [1.1a]   0xa   0x8   Entering elevator               [1.3a]   0x11  0x2   Boat crashes              ||______________________________||  [1.4a]   0x9   0x2    Wharf swamp thing encounter 1/2
// [1.1b]   0xb   0x1   Going up                               ||                                      | _______________________________|  [1.4b]   0x9   0x3    Heading into underpass
// [1.1c]   0xb   0x2   Getting off elevator                   ||________________                   ___||                                  [1.4c]   0x9   0x4    Heading to bridge   
// [1.1d]   0xb   0x3   Killed tin head                        |_________________|                 | ___|                                  [1.4d]   0x9   0x5    Heading over bridge
// [1.1e]   0xb   0x4   Up the hatch                                            ||                 ||                                      [1.4e]   0x9   0x6    Distressed lady
// [1.1f]   0xb   0x5   Dual chainsaw fight                                     ||                 \/                                      [1.4f]   0x9   0x7    Drug into canal
// [1.20]   0xb   0x6   Entering hallway                                        ||          [1.2d]   0x5   0x1   Leaving basement          [1.50]   0x9   0x8    Moving past boat
// [1.21]   0xb   0x7   El Feurtes in hallway                                   ||          [1.2e]   0x5   0x2   Crossing bridge           [1.51]   0x9   0x9    Past piranhas
// [1.22]   0xb   0x8   Dual knife throwers in hallway                          ||          [1.2f]   0x5   0x3   Help screamer             [1.52]   0x9   0xa    Boat zombies
// [1.23]   0xb   0x9   Exiting hallway                                         ||_______   [1.30]   0x5   0x4   Canal side                [1.53]   0x9   0xb    Swimming under bridge
// [1.24]   0xa   0x9   Down the ladder                _________________________| ______ |  [1.31]   0x5   0x5   Drug into canal           [1.54]   0x9   0xc    Boat survivor
// [1.25]   0xb   0xa   Boat fight                    | _________________________|      ||  [1.32]   0x5   0x6   Boat approaches           [1.55]   0x9   0xd    Heading around boat
// [1.26]   0xb   0xb   Boat cutscene                 ||                                ||  [1.33]   0x5   0x7   Towards ladder            [1.56]   0x9   0xe    Getting out of canal                                  
//        ||                                   [1.3b]   0x12   0x1   Around corner      ||  [1.34]   0x5   0x8   Leaving canal             [1.57]   0x9   0xf    Boat cutscene
//        ||                                   [1.3c]   0x12   0x2   Window thrower     ||_________||                                      [1.58]   0x9   0x10   Over here... cutscene
//        ||                                   [1.3d]   0x12   0x3   Canal walkway      |___________|                                      [1.59]   0x9   0x11   Heading over to boat
//        ||                                   [1.3d]   0x12   0x3   Canal walkway                                                                ||
//        ||                                   [1.3e]   0x12   0x4   Canal stairway                                                               ||
//        ||                                   [1.3f]   0x12   0x5  Two Oogie-Boogies                                                             || 
//        ||                                   [1.40]   0x12   0x6  Mini-horde                                                                    ||
//        ||__________________________________________||__________________________________________________________________________________________||
//        | _______________________________________________________________________________________________________________________________________|
//        ||
//        ||
//        \/           (0x13 Boss on left side of map, 0x15 Boss on right side of map)
// [1.78]   0x13/0x15   0x1   Boss fight (Hierophant - Type B05)
// [1.79]   0x13/0x15   0x2   The Second Chapter - Muddy - Complete


achievement ("Muddy", "Survive [Chapter 2 - Muddy] [Default Settings]", 3, 
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch2_muddy && 
          ch2_ending() && 
          ch_over()
)

achievement ("Muddy Expert", "Survive [Chapter 2 - Muddy] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          once(in_level() == ch2_muddy  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x01) &&
          trigger_when(ch2_ending() && 
          ch_over()) && 
          never(play_creds() < prev(play_creds()))
)

function chapter_boss_two() => on_screen() == 0x13 && prev(on_screen()) == 0x9 && prev(screen_prog()) == 0x11
function chapter_boss_two2() => on_screen() == 0x13 && prev(on_screen()) == 0xb && prev(screen_prog()) == 0xb
function chapter_boss_two3() => on_screen() == 0x15 && prev(on_screen()) == 0x12 && prev(screen_prog()) == 0x6

achievement ("Muddy Master", "Survive [Chapter 2 - Muddy] til the boss without taking damage [Default Settings]", 25, 
trigger = dip_default() &&
          p2_shots_fired() &&
          once(in_level() == ch2_muddy  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x01) &&
          (trigger_when(chapter_boss_two()) || trigger_when(chapter_boss_two2()) || trigger_when(chapter_boss_two3())) &&
          never(p1_life() < prev(p1_life()))
)

function chapter_two_one() => once(in_level() == ch2_muddy && on_screen() == 0x13 && prev(on_screen()) == 0x9 && prev(screen_prog()) == 0x11)
function chapter_two_two() => once(in_level() == ch2_muddy && on_screen() == 0x13 && prev(on_screen()) == 0xb && prev(screen_prog()) == 0xb)
function chapter_two_three() => once(in_level() == ch2_muddy && on_screen() == 0x15 && prev(on_screen()) == 0x12 && prev(screen_prog()) == 0x6)

achievement ("Hierophant Type B05 Researcher", "Defeat [Hierophant] without taking damage [Default Settings]", 10,
trigger = dip_default() &&
          p2_shots_fired() &&
          (chapter_two_one() ||
          chapter_two_two() ||
          chapter_two_three()) &&
          trigger_when(screen_prog() == 0x02) &&
          never(p1_life() < prev(p1_life()))
)

// Chapter 2 - 0x09 && 0x11 into 0x13 && 0x1 Boss Route 1
// Chapter 2 - 0x0b && 0x0b into 0x13 && 0x1 Boss Route 2
// Chapter 2 - 0x12 && 0x06 into 0x15 && 0x1 Boss Route 3



                                                      
//               Level 3  0x2          // 
//        Screen // Prog // The hell is happening  
//         Starting level on left side                                                                 Starting level on right side
// [2.1]   0x0   0x1   The Third Chapter - Darkness Title Card                                [2.1f]   0x5   0x1   The Third Chapter - Darkness Title Card
// [2.2]   0x0   0x2   Boat opening cutscene                                                  [2.20]   0x5   0x2   Boat opening cutscene
// [2.3]   0x0   0x3   Going through gate                                                     [2.21]   0x5   0x3   Control while on boat
// [2.4]   0x0   0x4   Zombie falls on boat                                                   [2.22]   0x5   0x4   Going under bridge
// [2.5]   0x0   0x5   Zombie hanging from bridge                                             [2.23]   0x5   0x5   Turning corner
// [2.6]   0x0   0x6   Survivor attacked on boat                                              [2.24]   0x5   0x6   Owl attack
//       ||_____________________________________________                                      [2.25]   0x5   0x7   Kid being attacked in water
//       ||____________________________________________ |                                     [2.26]   0x5   0x8   Approaching 2nd bridge
//       ||                                            ||                                     [2.27]   0x5   0xa   Survivor attacked on boat
//       \/                                            \/                                            ||_____________________________________
// [2.7]   0x1   0x1   Survivor died on boat    [2.12]   0x3   0x1   Survivor saved on boat          | ____________________________________ |
// [2.8]   0x1   0x2   Turning right            [2.13]   0x3   0x2   Assaulted on boat               \/                                    ||
// [2.9]   0x1   0x3   Survivor in water        [2.14]   0x3   0x3   Through the gate         [2.28]   0x7   0x1   Survivor died on boat   ||
// [2.a]   0x1   0x4   Amy phone call scene     [2.15]   0x3   0x4   Towards bridge           [2.29]   0x7   0x2   Amy phone scene         ||
// [2.b]   0x1   0x5   Under bridge             [2.16]   0x3   0x5   Amy phone call scene     [2.2a]   0x7   0x3   Survivor in water       ||
// [2.c]   0x1   0x6   Parking boat             [2.17]   0x7   0x4   Double barrel bridge            ||    ________________________________||
//       ||                                            ||____________________________________________||   | ________________________________|
//       ||                                            | _____________________________________________|   ||
//       ||____________________________________________||_________________________________                ||
//       | ____________________________________________||________________________________ |               \/
//       ||                                            ||                                ||        [2.2b]   0x6   0x1   Survivor saved on boat
//       \/                                            \/                                ||        [2.2c]   0x6   0x2   Amy phone scene
// [2.d]   0x2   0x1   2nd horde parked         [2.18]   0x4   0x1   Pirahna bridge      ||_______________||
// [2.e]   0x2   0x3   Boat on the move         [2.19]   0x4   0x2   Boat landing        |_________________|
// [2.f]   0x2   0x4   Entering crypt           [2.1a]   0x4   0x3   Getting off boat
// [2.10]  0x2   0x5   Getting off boat         [2.1b]   0x4   0x4   Underpass
// [2.11]  0x2   0x6   Dumbass falls            [2.1c]   0x4   0x5   Bat attack
//       ||                                     [2.1d]   0x4   0x6   Sewer Man
//       ||                                     [2.1e]   0x4   0x7   Guy grabbed by boss       
//       ||                                            ||
//       ||____________________________________________||
//       | _____________________________________________|
//       ||                                                          
//       \/         (0x8 Boss on left side of map, 0xa Boss on right side of map)                               
// [2.2d]  0x8/0xa   0x1   Boss Fight (Tower Type 8000)           
// [2.2e]  0x8/0xa   0x2   The Third Chapter - Darkness - Complete 

achievement ("Blind as a Bat", "During [Chapter 3 - Darkness] shoot down 12 bats flying out of the tunnel [Default Settings]", 5,
trigger = in_level() == ch3_darkness &&
          p2_shots_fired() &&
          tally(12,play_score()-prev(play_score()) == 0x50) &&
          never(on_screen() != 0x02 && screen_prog() != 0x04)
)

achievement ("Darkness", "Survive [Chapter 3 - Darkness] [Default Settings]", 3, 
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch3_darkness && 
          ch3_ending() && 
          ch_over()
)

achievement ("Darkness Expert", "Survive [Chapter 3 - Darkness] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch3_darkness  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x03 && 
          prev(screen_prog()) == 0x02) ||
          once(in_level() == ch3_darkness &&
          on_screen() == 0x05 &&
          screen_prog() == 0x03 &&
          prev(screen_prog()) == 0x02)) &&          
          trigger_when(ch3_ending() && 
          ch_over()) && 
          never(play_creds() < prev(play_creds()))
)

function chapter_three_one() => on_screen() == 0x08 && screen_prog() == 0x01 && prev(on_screen()) == 0x02 && prev(screen_prog()) == 0x06
function chapter_three_two() => on_screen() == 0x0a && screen_prog() == 0x01 && prev(on_screen()) == 0x04 && prev(screen_prog()) == 0x07

achievement ("Darkness Master", "Survive [Chapter 3 - Darkness] til the boss without taking damage [Default Settings]", 25, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch3_darkness  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x03 && 
          prev(screen_prog()) == 0x02) ||
          once(in_level() == ch3_darkness &&
          on_screen() == 0x05 &&
          screen_prog() == 0x03 &&
          prev(screen_prog()) == 0x02)) &&          
          trigger_when(chapter_three_one()) && 
          trigger_when(chapter_three_two()) &&
          never(p1_life() < prev(p1_life()))
)

function chapter_three_boss1() => once(in_level() == ch3_darkness && on_screen() == 0x0a && screen_prog() == 0x01 && prev(on_screen()) == 0x4 && prev(screen_prog()) == 0x7)
function chapter_three_boss2() => once(in_level() == ch3_darkness && on_screen() == 0x08 && screen_prog() == 0x01 && prev(on_screen()) == 0x2 && prev(screen_prog()) == 0x06)


achievement ("Tower Type 8000 Researcher", "Defeat [Tower] without taking damage [Default Settings]", 10,
trigger = dip_default() &&
          p2_shots_fired() &&
          (chapter_three_boss1() ||
          chapter_three_boss2()) &&
          trigger_when(screen_prog() == 0x02) &&
          never(p1_life() < prev(p1_life()))
)


//                                                       
//               Level 4  0x3          // 
//        Screen // Prog // The hell is happening  
//          Starting level on left side                                                       Starting level on right side          
// [3.1]   0x3   0x1   The Fourth Chapter - Despair Title Card                       [3.15]   0x0   0x1   The Fourth Chapter - Despair Title Card
// [3.2]   0x3   0x2   Opening cutscene                                              [3.16]   0x0   0x2   Opening cutscene
// [3.3]   0x3   0x3   Pipeline                                                      [3.17]   0x0   0x3   First encounter
// [3.4]   0x3   0x4   Pipeline battle                                               [3.18]   0x0   0x4   On bridge
// [3.5]   0x3   0x5   Another pipeline battle                                       [3.19]   0x0   0x5   Crossing bridge
// [3.6]   0x3   0x6   Cross the pipeline                                            [3.1a]   0x0   0x6   Bat swarm
// [3.7]   0x3   0x7   Survivor hanging                                              [3.1b]   0x0   0x7   Gate survivor
//       ||                                                                          [3.1c]   0x0   0x8   Lizard things
//       ||_______________________________________                                   [3.1d]   0x0   0x9   Survivor crawling vent
//       | ______________________________________ |                                         ||_____________________________________________________
//       ||                                      ||                                         | ____________________________________________________ |
//       \/                                      \/                                         ||                                                    ||
// [3.8]   0x4   0x1   Survivor saved     [3.11]   0x6   0x1   Survivor dies                \/                                                    \/
// [3.9]   0x4   0x2   Bottom of stairs   [3.12]   0x6   0x2   Jump down hole        [3.1e]   0x1   0x1   Survivor saved                   [3.25]   0x2   0x1   Survivor died
// [3.a]   0x4   0x3   Top of stairs      [3.13]   0x6   0x3   Caged survivor        [3.1f]   0x1   0x2   Back tracking                    [3.26]   0x2   0x2   Sliding down tunnel
// [3.b]   0x4   0x4   Lizards on pipe    [3.14]   0x6   0x4   Corridor              [3.20]   0x1   0x3   Big sword dude                          ||
// [3.c]   0x4   0x5   Caged zombies             ||                                  [3.21]   0x1   0x4   Lizard dudes               _____________||
// [3.d]   0x4   0x6   Caged dead people         ||                                  [3.22]   0x1   0x5   Going through door        | ____________ |
// [3.e]   0x4   0x7   Stairwell downward        ||                                  [3.23]   0x1   0x6   Bat attack                ||            ||
//       ||                                      ||                                  [3.24]   0x1   0x7   Survivor being attacked   ||            \/
//       ||                                      ||_________________________________________||______________________________________||     [3.27]   0x7   0x1   Entering colosseum
//       ||                                      |__________________________________________||_______________________________________|     [3.28]   0x7   0x2   Chainsaw guy
//       ||                                                                                 ||                                             [3.29]   0x7   0x3   Lizard on pillars
//       ||                                                                                 ||                                             [3.2a]   0x7   0x4   Survivor running
//       ||_______________________________________________________________                  ||                                                    ||
//       | ______________________________________________________________ |                 ||          __________________________________________||
//       ||                                                              ||                 ||         | _________________________________________ |
//       \/                                                              ||                 ||         ||                                         ||
// [3.f]   0x5   0x1   Colosseum cutscene                                ||                 ||         \/                                         \/
// [3.10]  0x5   0x2   Battle in colosseum                               ||                 ||  [3.2b]   0x9   0x1   Survivor saved        [3.2f]   0x8   0x1   Survivor died
//       ||                                                              ||                 ||  [3.2c]   0x9   0x2   Down hallway          [3.30]   0x8   0x2   Heading forward
//       ||_________________________________________________________________________________||  [3.2d]   0x9   0x3   Bottom of stairs      [3.30]   0x8   0x3   Power cutscene
//       | __________________________________________________________________________________|  [3.2e]   0x9   0x4   Top of stairs         [3.31]   0x8   0x4   Hallway knifers goes in 0x5 0x1
//       ||                                                              ||                            ||                                         ||
//       ||____________________________________________________________________________________________||                                         ||
//       |  ____________________________________________________________________________________________|                                         ||
//        ||                                                             ||_______________________________________________________________________||
//        ||                                                             |_________________________________________________________________________|
//        \/
// [3.32]   0xa/0xc   0x1   Boss Fight (Strength Type 205)
// [3.33]   0xa/0xc   0x2   The Fourth Chapter - Despair - Complete


achievement ("Despair", "Survive [Chapter 4 - Despair] [Default Settings]", 3, 
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch4_despair && 
          ch4_ending() && 
          ch_over()
)

achievement ("Despair Expert", "Survive [Chapter 4 - Despair] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch4_despair  && 
          on_screen() == 0x03 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x1) ||
          once(in_level() == ch4_despair &&
          on_screen() == 0x00 &&
          screen_prog() == 0x02 &&
          prev(screen_prog()) == 0x01)) &&          
          trigger_when(ch4_ending() && 
          ch_over()) &&
          play_creds() < prev(play_creds())
)

function chapter_four_one() => on_screen() == 0xa && screen_prog() == 0x1 && prev(on_screen()) == 0x9 && prev(screen_prog()) == 0x5
function chapter_four_two() => on_screen() == 0xc && screen_prog() == 0x1 && prev(on_screen()) == 0x5 && prev(screen_prog()) == 0x2

achievement ("Despair Master", "Survive [Chapter 4 - Despair] til the boss without taking damage [Default Settings]", 25, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch4_despair  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x01) ||
          once(in_level() == ch4_despair &&
          on_screen() == 0x00 &&
          screen_prog() == 0x02 &&
          prev(screen_prog()) == 0x01)) &&          
          (trigger_when(chapter_four_one()) ||
          trigger_when(chapter_four_two())) &&
          never(p1_life() < prev(p1_life()))
)

function chapter_four_boss1() => once(in_level() == ch4_despair && on_screen() == 0xa && screen_prog() == 0x1 && prev(on_screen()) == 0x9 && prev(screen_prog()) == 0x5)
function chapter_four_boss2() => once(in_level() == ch4_despair && on_screen() == 0xc && screen_prog() == 0x1 && prev(on_screen()) == 0x5 && prev(screen_prog()) == 0x2)

achievement ("Strength Type 205 Researcher", "Defeat [Strength] without taking damage [Default Settings]", 10,
trigger = dip_default() &&
          p2_shots_fired() &&
          (chapter_four_boss1() ||
          chapter_four_boss2()) &&
          trigger_when(screen_prog() == 0x02) &&
          never(p1_life() < prev(p1_life()))
)


//                                                       
//               Level 5  0x4          // 
//        Screen // Prog // The hell is happening
// [4.1]   0x0   0x1   The Fifth Chapter - Dawn Title Card
// [4.2]   0x0   0x2   Opening cutscene
// [4.3]   0x0   0x3   It's too quite start
// [4.4]   0x0   0x4   Out of van
// [4.5]   0x0   0x5   Entering centre plaza
// [4.6]   0x0   0x6   Getting to car
// [4.7]   0x1   0x1   Boss Fight (First Boss Rematch)
// [4.8]   0x2   0x1   Driving across bridge
// [4.9]   0x3   0x1   Boss Fight (Second Boss Rematch)
// [4.a]   0x4   0x1   Getting back in car
// [4.b]   0x4   0x2   Van blockade
// [4.c]   0x4   0x3   Red car blockade
// [4.d]   0x4   0x4   Car park
// [4.e]   0x4   0x5   Front of building
// [4.f]   0x5   0x2   Goldman's Headquarter explosion
// [4.10]  0x5   0x3   Magician Cutscene
// [4.11]  0x5   0x4   Boss Fight (Magician - Type 0)
// [4.12]  0x5   0x5   The Fifth Chapter - Dawn - Complete


achievement ("Dawn", "Survive [Chapter 5 - Dawn] [Default Settings]", 3, 
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch5_dawn && 
          ch5_ending() && 
          ch_over()
)

achievement ("Dawn Expert", "Survive [Chapter 5 - Dawn] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch5_dawn  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x1)) &&          
          trigger_when(ch5_ending() && 
          ch5_over()) && 
          never(play_creds() < prev(play_creds()))
)

function chapter_five() => on_screen() == 0x5 && screen_prog() == 0x2 && prev(on_screen()) == 0x4 && prev(screen_prog()) == 0x5

achievement ("Dawn Master", "Survive [Chapter 5 - Dawn] til the boss without taking damage [Default Settings]", 50, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch5_dawn  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x01)) &&          
          trigger_when(chapter_five()) && 
          never(p1_life() < prev(p1_life()))
)

function chapter_five_boss() => once(in_level() == ch5_dawn && on_screen() == 0x5 && screen_prog() == 0x2 && prev(on_screen()) == 0x4 && prev(screen_prog()) == 0x5)

achievement ("Magician Type 0 Researcher", "Defeat [Magician] without taking damage [Default Settings]", 25,
trigger = dip_default() &&
          p2_shots_fired() &&
          chapter_five_boss() &&
          trigger_when(screen_prog() == 0x05) &&
          never(p1_life() < prev(p1_life()))
)


//                                                       
//               Level 6  0x5         // 
//        Screen // Prog // The hell is happening
// [5.1]   0x0   0x1   The Final Chapter - Original Sin Title Card 
// [5.2]   0x0   0x2   Entering headquarters 
// [5.3]   0x0   0x3   Inviting cutscene
// [5.4]   0x0   0x4   Disappearing throwers
// [5.5]   0x0   0x5   Approaching elevators
// [5.6]   0x0   0x6   Elevator cutscene
// [5.7]   0x1   0x1   Elevator opening
// [5.8]   0x1   0x2   Getting off elevator
// [5.9]   0x1   0x3   Ceiling throwers
// [5.a]   0x1   0x4   Approaching door
// [5.b]   0x1   0x5   Entering lab
// [5.c]   0x1   0x6   Lab encounter
// [5.d]   0x1   0x7   Back of lab
// [5.e]   0x2   0x1   Boss Fight (Third Boss Rematch)
// [5.f]   0x3   0x1   Walkthrough walls hallway
// [5.10]  0x3   0x2   3x Disappearing throwers
// [5.11]  0x3   0x3   2x Baton twirlers
// [5.12]  0x4   0x1   Heading to door
// [5.13]  0x6   0x1   Boss Fight (Emperor Type Alpha)
// [5.14]  0x8   0x0   0x1   Successor cutscene
//         ^^^
// Level ID changes for this cutscene
// [5.15]  0x8   0x3   Credits
// [5.16]  0x6   0x1   Bad Ending - Goldman Zombie
//
//
//
//

achievement ("Original Sin Expert", "Survive [Final Chapter - Original Sin] using only 1 credit [Default Settings]", 5, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch6_original  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x1)) &&          
          trigger_when(ch5_ending() && 
          ch5_over()) && 
          never(play_creds() < prev(play_creds()))
)

achievement ("Original Sin Master", "Survive [Final Chapter - Original Sin] til the boss without taking damage [Default Settings]", 25, 
trigger = dip_default() &&
          p2_shots_fired() &&
          (once(in_level() == ch6_original  && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 && 
          prev(screen_prog()) == 0x01)) &&          
          trigger_when(on_screen() == 0x6 && screen_prog() == 0x1) &&
          never(p1_life() < prev(p1_life()))
)

function chapter_six_boss1() => once(in_level() == ch6_original && on_screen() == 0x6 && screen_prog() == 0x01 && prev(on_screen()) == 0x05)
function chapter_six_boss2() => once(in_level() == ch6_original && on_screen() == 0x6 && screen_prog() == 0x01 && prev(on_screen()) == 0x04)

achievement ("Emperor Type Alpha Researcher", "Defeat [Emperor] without taking damage [Default Settings]", 25,
trigger = dip_default() &&
          p2_shots_fired() &&
          (chapter_six_boss1() ||
          chapter_six_boss2()) &&
          trigger_when(in_level() == 0x06) &&
          never(p1_life() < prev(p1_life()))
)

achievement ("Treasure Room", "Enter the treasure room  [Default Settings]", 5,
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch6_original &&
          on_screen() == 0x05 &&
          screen_prog() == 0x01 &&
          prev(on_screen()) == 0x03 &&
          prev(screen_prog()) == 0x03
)

achievement ("Treasure Hunter", "Collect all the treasure in the treasure room (Life Up & Mushroom don't matter)  [Default Settings]", 10,
trigger = dip_default() &&
          p2_shots_fired() &&
          in_level() == ch6_original &&
          on_screen() == 0x05 && 
          screen_prog() == 0x01 &&
          tally(2,play_score()-prev(play_score()) == 1000) &&
          tally(2,play_score()-prev(play_score()) == 600) &&
          tally(2,play_score()-prev(play_score()) == 400) &&
          tally(2,play_score()-prev(play_score()) == 100) &&
          never(in_level() == ch6_original && on_screen() != 0x05)
)

function normal_ending() => in_level() == ch_credits && on_screen() == 0x04 && screen_prog() == 0x01

achievement ("Average Joe", "Obtain the normal ending  [Default Settings]", 5,
trigger = dip_default() &&
          normal_ending() &&
          p2_shots_fired()
)

function good_ending() => in_level() == ch_credits && on_screen() == 0x05 && screen_prog() == 0x01

achievement ("Best Self", "Obtain the good ending  [Default Settings]", 10,
trigger = dip_default() &&
          good_ending() &&
          p2_shots_fired()
)

function bad_ending() => in_level() == ch_credits && on_screen() == 0x06 && screen_prog() == 0x01

achievement ("Terrible Person", "Obtain the bad ending  [Default Settings]", 5, 
trigger = dip_default() &&
          bad_ending() &&
          p2_shots_fired()
)



achievement ("Wimpy's House", "Beat the game on [Very Hard] within 3 credits [Default Life Settings]", 50,
trigger = play_diff() == play_vhard &&
          play_life() == start_3_max_5 &&
          p2_shots_fired() &&
          in_level() == 0x06 &&
          once(in_level() == ch1_prelude && 
          on_screen() == 0x00 &&
          screen_prog() == 0x02 &&
          prev(screen_prog()) == 0x01) && never(tally(4,play_creds() < prev(play_creds())))
          
          
          
)

















