// Duke Nukem 3D (USA) Redump
// #ID = 4273
// RA Checksum: 34f591b72e8e97ef76ba0645027af01f
//
//Stage are completed in order, but can change if you enter the two secret stages. 0x07 & 0x1b.
//The Abyss 2 0x06 has 2 exits. One going to 0x07 - Launch Facility and Spaceport 0x08.
//Fahrenheit 0x1a has 2 exits. One going to Urea 51 0x1b and Hotel Hell 0x1c.
function Difficulty() => byte(0x17ecf8)
No_Monsters = 0x00 //Cheat Code to Unlock
Piece_of_Cake = 0x01
Lets_Rock = 0x02
Come_Get_Some = 0x03
Damn_Im_Good = 0x04

function Current_Level() => byte(0x17ecf4)
Hollywood_Holocaust = 0x00
Red_Light_District = 0x01
Death_Row = 0x02
Toxic_Dump = 0x03
Toxic_Dump_2 = 0x04
The_Abyss = 0x05
The_Abyss_2 = 0x06
Launch_Facility = 0x07 //Secret Level
Spaceport = 0x08
Incubator = 0x09
Warp_Factor = 0x0a
Fusion_Station = 0x0b
Fusion_Station_2 = 0x0c
Occupied_Territory = 0x0d
Tiberius_Station = 0x0e
Lunar_Factor = 0x0f
Dark_Side = 0x10
Dark_Side_2 = 0x11
Overlord = 0x12
Overlord_2 = 0x13
Raw_Meat = 0x14
Bank_Roll = 0x15
Flood_Zone = 0x16
LA_Rumble = 0x17
Movie_Set = 0x18
Rabid_Transit = 0x19
Fahrenheit = 0x1a
Urea_51 = 0x1b // Secret Level
Hotel_Hell = 0x1c
Stadium = 0x1d
End_Cutscene = 0x63

function DemoProtection() => byte(0x170ab1)
function DebugCheat() => byte(0x170ab9)
function StageSelectCheat() => byte(0x170ac5)
function GodModeCheat() => byte(0x17eabd)
function AllWeapons() => byte(0x17eab7)
function PasswordInput() => byte(0x17eabc)
function GameTime() => word(0x175f2e)
function DemoCheatProtect() => DemoProtection() == 0 &&
                               unless(once(DebugCheat() == 1)) && 
                               unless(once(StageSelectCheat() == 0)) &&
                               unless(prev(PasswordInput()) == 9 && once(GodModeCheat() == 1)) &&
                               unless(prev(PasswordInput()) == 9 && once(AllWeapons() == 7))
function StageSelectAllowedProtection() => DemoProtection() == 0 &&
                               unless(once(DebugCheat() == 1)) && 
                               unless(prev(PasswordInput()) == 9 && once(GodModeCheat() == 1)) &&
                               unless(prev(PasswordInput()) == 9 && once(AllWeapons() == 7))
function Health() => word(0x17ecae)
function Armor() => word(0x17ecaa)
function EnemiesInLevel() => word(0x17e8b2)
function EnemiesKilledInLevel() => word(0x17faee)
function AllEnemiesKilled() => EnemiesInLevel() == EnemiesKilledInLevel() && EnemiesInLevel() != 0
function SecretsInLevel() => byte(0x17faf2)
function SecretsFound() => byte(0x17e8a2)
function AllSecretsFound() => SecretsInLevel() == SecretsFound() && SecretsInLevel() != 0

//Stage 1
achievement("Hollywood is Calling", "Beat Hollywood Holocaust - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Hollywood_Holocaust && Current_Level() == Red_Light_District && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Hardcore Hollywood", "Beat Hollywood Holocaust - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Hollywood_Holocaust && Current_Level() == Red_Light_District && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Hollywood Showdown", "Find all Secrets & Kill all enemies Hollywood Holocaust - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Hollywood_Holocaust && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    

//Stage 2

achievement("House of Ill Fame", "Beat Red Light District - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Red_Light_District && Current_Level() == Death_Row && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Repeat Customer", "Beat Red Light District - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Red_Light_District && Current_Level() == Death_Row && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Bordello Champion", "Find all Secrets & Kill all enemies in Red Light District - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Red_Light_District && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
    
//Stage 3

achievement("Escaping Death", "Beat Death Row - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Death_Row && Current_Level() == Toxic_Dump && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Cell Block Smuggler", "Beat Death Row - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Death_Row && Current_Level() == Toxic_Dump && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Prison Shank", "Find all Secrets & Kill all enemies in Death Row - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Death_Row && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 4

achievement("Sewer Dweller", "Beat Toxic Dump & Toxic Dump 2 - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Toxic_Dump_2 && Current_Level() == The_Abyss && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Toxic Waste", "Beat Toxic Dump & Toxic Dump 2 - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Toxic_Dump_2 && Current_Level() == The_Abyss && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Dumpsite", "Find all Secrets & Kill all enemies in Toxic Dump & Toxic Dump 2 - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Toxic_Dump_2 && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 5

achievement("Abysus", "Beat The Abyss & The Abyss 2 - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == The_Abyss_2 && Difficulty() >= Lets_Rock && DemoCheatProtect() && (Current_Level() == Launch_Facility || Current_Level() == Spaceport))
    
achievement ("Abyssal Depths", "Beat The Abyss & The Abyss 2 - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == The_Abyss_2 && Difficulty() == Damn_Im_Good && DemoCheatProtect() && (Current_Level() == Launch_Facility || Current_Level() == Spaceport))

achievement("HeadHunter", "Find all Secrets & Kill all enemies in The Abyss & The Abyss 2 - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == The_Abyss_2 && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 6

achievement("Blastoff", "Beat Launch Facility [Secret Level] - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Launch_Facility && Current_Level() == Spaceport && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Space X", "Beat Launch Facility - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Launch_Facility && Current_Level() == Spaceport && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("No One Hears You Scream In Space", "Find all Secrets & Kill all enemies in Launch Facility - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Launch_Facility && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 7

achievement("Spaceman", "Beat Spaceport - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Spaceport && Current_Level() == Incubator && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Spacepig", "Beat Spaceport - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Spaceport && Current_Level() == Incubator && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Astroid Blaster", "Find all Secrets & Kill all enemies in Spaceport - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Spaceport && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 8

achievement("Incubation Station", "Beat Incubator - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Incubator && Current_Level() == Warp_Factor && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Incubation Malfunction", "Beat Incubator - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Incubator && Current_Level() == Warp_Factor && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Incubator Unplugged", "Find all Secrets & Kill all enemies in Incubator - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Incubator && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 9
 
achievement("Warpspeed", "Beat Warp Factor - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Warp_Factor && Current_Level() == Fusion_Station && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Warped!", "Beat Warp Factor - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Warp_Factor && Current_Level() == Fusion_Station && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Mach Speed", "Find all Secrets & Kill all enemies in Warp Factor - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Warp_Factor && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
  
//Stage 10  
  
achievement("Fused", "Beat Fusion Station & Fusion Station 2 - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Fusion_Station_2 && Current_Level() == Occupied_Territory && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Fusion Dance", "Beat Beat Fusion Station & Fusion Station 2 - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Fusion_Station_2 && Current_Level() == Occupied_Territory && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Fusion-HA", "Find all Secrets & Kill all enemies in Fusion Station & Fusion Station 2 - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Fusion_Station_2 && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 11

achievement("Occupying Mars", "Beat Occupied Territory - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Occupied_Territory && Current_Level() == Tiberius_Station && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Occupying The Moon", "Beat Occupied Territory - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Occupied_Territory && Current_Level() == Tiberius_Station && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Occypying the Babes", "Find all Secrets & Kill all enemies in Occupied Territory - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Occupied_Territory && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 12

achievement("Tiberium Wars", "Beat Tiberius Station - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Tiberius_Station && Current_Level() == Lunar_Factor && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Ion Cannon", "Beat Tiberius Station - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Tiberius_Station && Current_Level() == Lunar_Factor && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Whose Authority", "Find all Secrets & Kill all enemies in Tiberius Station - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Tiberius_Station && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 13

achievement("Lunar Mission", "Beat Lunar Reactor - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Lunar_Factor && Current_Level() == Dark_Side && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Dark Side of the Moon", "Beat Lunar Reactor - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Lunar_Factor && Current_Level() == Dark_Side && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Crater", "Find all Secrets & Kill all enemies in Lunar Reactor- Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Lunar_Factor && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 14

achievement("Darkseid", "Beat Dark Side & Dark Side 2 - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Dark_Side_2 && Current_Level() == Overlord && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Far Side", "Beat Dark Side & Dark Side 2 - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Dark_Side_2 && Current_Level() == Overlord && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Space Vacuum", "Find all Secrets & Kill all enemies in Dark Side & Dark Side 2 - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Dark_Side_2 && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 15

achievement("Until the End", "Beat Overlord & Overlord 2 - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Overlord_2 && Current_Level() == Raw_Meat && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Supreme One", "Beat Overlord & Overlord 2 - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Overlord_2 && Current_Level() == Raw_Meat && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Dissatisfied?!", "Find all Secrets & Kill all enemies in Overlord & Overlord 2 - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Overlord_2 && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 16

achievement("Beef Cakes", "Beat Raw Meat - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Raw_Meat && Current_Level() == Bank_Roll && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Keep the Fat", "Beat Raw Meat - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Raw_Meat && Current_Level() == Bank_Roll && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Juicy Steak", "Find all Secrets & Kill all enemies in Raw Meat - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Bank_Roll && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 17

achievement("Bank Heist", "Beat Bank Roll - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Bank_Roll && Current_Level() == Flood_Zone && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Rolling in Coins", "Beat Bank Roll - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Bank_Roll && Current_Level() == Flood_Zone && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Scrooge McDuck", "Find all Secrets & Kill all enemies in Bank Roll - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Bank_Roll && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 18

achievement("Flash Flood", "Beat Flood Zone - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Flood_Zone && Current_Level() == LA_Rumble && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Great Flood", "Beat Flood Zone - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Flood_Zone && Current_Level() == LA_Rumble && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Tax Day Flood", "Find all Secrets & Kill all enemies in FloodZone - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Flood_Zone && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 19

achievement("Rumble in the Jungle", "Beat L.A. Rumble - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == LA_Rumble && Current_Level() == Movie_Set && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("LA Devotee", "Beat L.A. Rumble - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == LA_Rumble && Current_Level() == Movie_Set && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Black Magic on the Hollywood Sign", "Find all Secrets & Kill all enemies in L.A. Rumble - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == LA_Rumble && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 20

achievement("Paramount", "Beat Movie Set - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Movie_Set && Current_Level() == Rabid_Transit && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Universal", "Beat Movie Set - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Movie_Set && Current_Level() == Rabid_Transit && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Warner Bros.", "Find all Secrets & Kill all enemies in Movie Set - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Movie_Set && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 21

achievement("Telltale", "Beat Rabid Transit - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Rabid_Transit && Current_Level() == Fahrenheit && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Footprints", "Beat Rabid Transit - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Rabid_Transit && Current_Level() == Fahrenheit && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Credit Accepted", "Find all Secrets & Kill all enemies in Rabid Transit - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Rabid_Transit && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 22

achievement("Guilty", "Beat Farenheit - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Fahrenheit && Difficulty() >= Lets_Rock && DemoCheatProtect() && (Current_Level() == Urea_51 || Current_Level() == Hotel_Hell))
    
achievement ("Curtain Call", "Beat Farenheit - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Fahrenheit && Difficulty() == Damn_Im_Good && DemoCheatProtect() && (Current_Level() == Urea_51 || Current_Level() == Hotel_Hell))

achievement("Action", "Find all Secrets & Kill all enemies in Fahrenheit - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Fahrenheit && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())

//Stage 23

achievement("Toilet Factory", "Beat Urea 51 [Secret Level] - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Urea_51 && Current_Level() == Hotel_Hell && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("The Claw", "Beat Urea 51 [Secret Level] - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Urea_51 && Current_Level() == Hotel_Hell && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("Area 51", "Kill all enemies in Urea 51 [Secret Level] - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Urea_51 && AllEnemiesKilled() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 24

achievement("Floor 13", "Beat Hotel Hell - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Hotel_Hell && Current_Level() == Stadium && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("Glass House", "Beat Hotel Hell - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Hotel_Hell && Current_Level() == Stadium && Difficulty() == Damn_Im_Good && DemoCheatProtect())

achievement("El Diablo", "Find all Secrets & Kill all enemies in Hotel Hell - Diff: [Let's Rock or Above]", 5,
    trigger = Current_Level() == Hotel_Hell && AllEnemiesKilled() && AllSecretsFound() && Difficulty() >= Lets_Rock && StageSelectAllowedProtection())
    
//Stage 25

achievement("Hail to the King, Baby", "Beat Stadium - Diff: [Let's Rock or Above]", 5,
    trigger = prev(Current_Level()) == Stadium && Current_Level() == End_Cutscene && Difficulty() >= Lets_Rock && DemoCheatProtect())
    
achievement ("You've Got Balls of Steel", "Beat Stadium - Diff: [Damn I'm Good]", 10,
    trigger = prev(Current_Level()) == Stadium && Current_Level() == End_Cutscene && Difficulty() == Damn_Im_Good && DemoCheatProtect())