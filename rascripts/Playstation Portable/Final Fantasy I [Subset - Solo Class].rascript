// Final Fantasy I [Subset - Solo Class]
// #ID = 17996


// Final Fantasy I
// #ID = 3215

function Map() => byte(0xd11398+0x1000)
Airship = 0x77
ChaosShrine1 = 0x1f
Pravoka = 0x62
MarsheCave = 0x5b
WesternKeep = 0x58
ElfheimCastle = 0x06
EarthCave = 0x03
EarthShrine = 0x78
CrescentLake = 0x2f
IceCave = 0x44
Bahamut = 0x54
FireStone = 0x79
WaterStone = 0x7a
Onrac = 0x11
SunkenTemple = 0x19
AirCrystal = 0x7b
War = 0x60
Calibur = 0x57
Earthgift = 0x87
Genji = 0x96
Atomo =0x97
LifeFinal = 0x98
HellFireOne = 0x8c
HellFireTwo = 0x8d
TyphonSky = 0xaa
OrthrosSky = 0xab
PhantomSky = 0x7f
DeathSky = 0xad
ChaosShrineEnd = 0x27
Chronodia = 0xf3

function Battle() => byte(0xd2c564+0x1000)


function SlotClassOne() => byte(0xd11ee2+0x1000)
function SlotClassTwo() => byte(0xd11f3e+0x1000)
function SlotClassThree() => byte(0xd11f9a+0x1000)
function SlotClassFour() => byte(0xd11ff6+0x1000)

function SlotLevelOne() => byte(0xd11ee4+0x1000) == 1
function SlotLevelTwo() => byte(0xd11f40+0x1000) == 1 
function SlotLevelThree() => byte(0xd11f9c+0x1000) == 1
function SlotLevelFour() => byte(0xd11ff8+0x1000) == 1

function SlotXPOne() => dword(0xd11ee8+0x1000)
function SlotXPTwo() => dword(0xd11f44+0x1000)
function SlotXPThree() => dword(0xd11fa0+0x1000)
function SlotXPFour() => dword(0xd11ffc+0x1000)

function SlotHPOne() => word(0xd11eec+0x1000) == 0 
function SlotHPTwo() => word(0xd11f48+0x1000) == 0
function SlotHPThree() => word(0xd11fa4+0x1000) == 0
function SlotHPFour() => word(0xd12000+0x1000) == 0
function SoloWarrior() => always_false() || (SlotClassOne() == 0x00 || SlotClassOne() == 0x06) && SlotLevelTwo()&& SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassTwo() == 0x00 || SlotClassTwo() == 0x06) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassThree() == 0x00 || SlotClassThree() == 0x06) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassFour() == 0x00 || SlotClassFour() == 0x06) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree()
                                            
function SoloThief() => always_false() || (SlotClassOne() == 0x01 || SlotClassOne() == 0x07) && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                          (SlotClassTwo() == 0x01 || SlotClassTwo() == 0x07) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                          (SlotClassThree() == 0x01 || SlotClassThree() == 0x07) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour()&& SlotXPFour() == 0 && SlotHPFour() ||
                                          (SlotClassFour() == 0x01 || SlotClassFour() == 0x07) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree()
 
function SoloMonk() => always_false() || (SlotClassOne() == 0x02 || SlotClassOne() == 0x08) && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                         (SlotClassTwo() == 0x02 || SlotClassTwo() == 0x08) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                         (SlotClassThree() == 0x02 || SlotClassThree() == 0x08) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                         (SlotClassFour() == 0x02 || SlotClassFour() == 0x08) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() 

function SoloRedMage() => always_false() || (SlotClassOne() == 0x03 || SlotClassOne() == 0x09) && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassTwo() == 0x03 || SlotClassTwo() == 0x09) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassThree() == 0x03 || SlotClassThree() == 0x09) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                            (SlotClassFour() == 0x03 || SlotClassFour() == 0x09) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() 

function SoloWhiteMage() => always_false() || (SlotClassOne() == 0x04 || SlotClassOne() == 0x0a) && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassTwo() == 0x04 || SlotClassTwo() == 0x0a) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassThree() == 0x04 || SlotClassThree() == 0x0a) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassFour() == 0x04 || SlotClassFour() == 0x0a) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() 

function SoloBlackMage() => always_false() || (SlotClassOne() == 0x05 || SlotClassOne() == 0x0b) && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassTwo() == 0x05 || SlotClassTwo() == 0x0b) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassThree() == 0x05 || SlotClassThree() == 0x0b) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelFour() && SlotXPFour() == 0 && SlotHPFour() ||
                                              (SlotClassFour() == 0x05 || SlotClassFour() == 0x0b) && SlotLevelOne() && SlotXPOne() == 0 && SlotHPOne() && SlotLevelTwo() && SlotXPTwo() == 0 && SlotHPTwo() && SlotLevelThree() && SlotXPThree() == 0 && SlotHPThree()

function GarlandDefeat() => Map() == prev(Map()) && Map() == ChaosShrine1 && bit1(0xd1151c+0x1000) > prev(bit1(0xd1151c+0x1000))
function BoatObtained() => Map() == prev(Map()) &&  Map() == Pravoka && bit5(0xd1151c+0x1000) > prev(bit5(0xd1151c+0x1000))
function CrownObtained() => Map() == prev(Map()) &&  Map() == MarsheCave && bit6(0xd1151c+0x1000) > prev(bit6(0xd1151c+0x1000))
function AtrosDefeat() => Map() == prev(Map()) &&  Map() == WesternKeep && bit7(0xd1151c+0x1000) > prev(bit7(0xd1151c+0x1000))
function JoltedAwake() => Map() == prev(Map()) &&  Map() == ElfheimCastle && bit1(0xd1151d+0x1000) > prev(bit1(0xd1151d+0x1000))
function Vampire() => Map() == prev(Map()) &&  Map() == EarthCave && bit4(0xd1151d+0x1000) > prev(bit4(0xd1151d+0x1000))
function EarthShrineflag() => Map() == prev(Map()) &&  Map() == EarthShrine && bit1(0xd1151e+0x1000) > prev(bit1(0xd1151e+0x1000))
function Canoe() => Map() == prev(Map()) &&  Map() == CrescentLake && bit2(0xd1151e+0x1000) > prev(bit2(0xd1151e+0x1000))
function AirshipGet() => Map() == prev(Map()) &&  Map() == Airship && bit5(0xd1151e+0x1000) > prev(bit5(0xd1151e+0x1000))
function JobChange() => Map() == prev(Map()) &&  Map() == Bahamut && bit0(0xd1151f+0x1000) > prev(bit0(0xd1151f+0x1000))
function FirePure() => Map() == prev(Map()) &&  Map() == FireStone && bit3(0xd1151e+0x1000) > prev(bit3(0xd1151e+0x1000))
function GoingDown() => Map() == SunkenTemple && prev(Map()) == Onrac && bit5(0xd1151f+0x1000) == 0
function UnderDaSea() => Map() == prev(Map()) &&  Map() == WaterStone && bit5(0xd1151f+0x1000) > prev(bit5(0xd1151f+0x1000))
function WarMech() => Map() == prev(Map()) &&  Map() == War && Battle() == 0 && byte(0xd12384+0x1000) > prev(byte(0xd12384+0x1000))
function AirPurify() => Map() == prev(Map()) &&  Map() >= 0x5c && Map() <= 0x60 && byte(0xD13392) > prev(byte(0xD13392))
function Cerberus() => Map() == prev(Map()) &&  Map() == Earthgift && Battle() == 0 && byte(0xd1239a+0x1000) > prev(byte(0xd1239a+0x1000))
function Echidna() => Map() == prev(Map()) &&  Map() == Earthgift && Battle() == 0 && byte(0xd12398+0x1000) > prev(byte(0xd12398+0x1000))
function TwoHeads() => Map() == prev(Map()) &&  Map() == Earthgift && Battle() == 0 && byte(0xd1239e+0x1000) > prev(byte(0xd1239e+0x1000))
function Ahriman() => Map() == prev(Map()) &&  Map() == Earthgift && Battle() == 0 && byte(0xd1239c+0x1000) > prev(byte(0xd1239c+0x1000))
function Gilgamesh() => Map() == prev(Map()) &&  Map() == Genji && Battle() == 0 && byte(0xd123aa+0x1000) > prev(byte(0xd123aa+0x1000))
function Atomos() => Map() == prev(Map()) &&  Map() == Atomo && Battle() == 0 && byte(0xd123b0+0x1000) > prev(byte(0xd123b0+0x1000))
function Omega() => Map() == prev(Map()) &&  Map() == LifeFinal && Battle() == 0 && byte(0xd123ac+0x1000) > prev(byte(0xd123ac+0x1000))
function Shinryu() => Map() == prev(Map()) &&  Map() == LifeFinal && Battle() == 0 && byte(0xd123ae+0x1000) > prev(byte(0xd123ae+0x1000))
function Scarmiglione() => Map() == prev(Map()) &&  Map() == HellFireOne && Battle() == 0 && byte(0xd123a2+0x1000) > prev(byte(0xd123a2+0x1000))
function Cagnazzo() => Map() == prev(Map()) &&  Map() == HellFireOne && Battle() == 0 && byte(0xd123a4+0x1000) > prev(byte(0xd123a4+0x1000))
function Barbariccia() => Map() == prev(Map()) &&  Map() == HellFireTwo && Battle() == 0 && byte(0xd123a6+0x1000) > prev(byte(0xd123a6+0x1000))
function Rubicante() => Map() == prev(Map()) &&  Map() == HellFireTwo && Battle() == 0 && byte(0xd123a8+0x1000) > prev(byte(0xd123a8+0x1000))
function Typhon() => Map() == prev(Map()) &&  Map() == TyphonSky && Battle() == 0 && byte(0xd123b2+0x1000) > prev(byte(0xd123b2+0x1000))
function Orthros() => Map() == prev(Map()) &&  Map() == OrthrosSky && Battle() == 0 && byte(0xd123b4+0x1000) > prev(byte(0xd123b4+0x1000))
function Phantom() => Map() == prev(Map()) &&  Map() == PhantomSky && Battle() == 0 && byte(0xd123b6+0x1000) > prev(byte(0xd123b6+0x1000))
function Death() => Map() == prev(Map()) &&  Map() == DeathSky && Battle() == 0 && byte(0xd123b8+0x1000) > prev(byte(0xd123b8+0x1000))
function Peace() => Map() == prev(Map()) &&  Map() == ChaosShrineEnd && byte(0xd11520+0x1000) > prev(byte(0xd11520+0x1000))

achievement ("[Warrior] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloWarrior())
achievement ("[Warrior] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloWarrior())
achievement ("[Warrior] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloWarrior())
achievement ("[Warrior] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloWarrior())
achievement ("[Warrior] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloWarrior())
achievement ("[Warrior] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloWarrior())
achievement ("[Warrior] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloWarrior())
achievement ("[Warrior] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloWarrior())
achievement ("[Warrior] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloWarrior())
achievement ("[Warrior] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloWarrior())
achievement ("[Warrior] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloWarrior())
achievement ("[Warrior] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloWarrior())
achievement ("[Warrior] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloWarrior())
achievement ("[Warrior] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloWarrior())
achievement ("[Warrior] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloWarrior())
achievement ("[Warrior] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloWarrior())
achievement ("[Warrior] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloWarrior()) 
achievement ("[Warrior] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloWarrior())
achievement ("[Warrior] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloWarrior())
achievement ("[Warrior] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloWarrior())
achievement ("[Warrior] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloWarrior())
achievement ("[Warrior] Omega", "Defeat Omega", 10, trigger = Omega() && SoloWarrior())
achievement ("[Warrior] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloWarrior())
achievement ("[Warrior] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloWarrior())
achievement ("[Warrior] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloWarrior())
achievement ("[Warrior] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloWarrior())
achievement ("[Warrior] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloWarrior())
achievement ("[Warrior] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloWarrior())
achievement ("[Warrior] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloWarrior())
achievement ("[Warrior] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloWarrior())
achievement ("[Warrior] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloWarrior())
achievement ("[Warrior] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloWarrior())

achievement ("[Thief] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloThief())
achievement ("[Thief] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloThief())
achievement ("[Thief] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloThief())
achievement ("[Thief] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloThief())
achievement ("[Thief] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloThief())
achievement ("[Thief] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloThief())
achievement ("[Thief] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloThief())
achievement ("[Thief] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloThief())
achievement ("[Thief] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloThief())
achievement ("[Thief] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloThief())
achievement ("[Thief] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloThief())
achievement ("[Thief] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloThief())
achievement ("[Thief] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloThief())
achievement ("[Thief] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloThief())
achievement ("[Thief] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloThief())
achievement ("[Thief] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloThief())
achievement ("[Thief] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloThief()) 
achievement ("[Thief] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloThief())
achievement ("[Thief] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloThief())
achievement ("[Thief] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloThief())
achievement ("[Thief] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloThief())
achievement ("[Thief] Omega", "Defeat Omega", 10, trigger = Omega() && SoloThief())
achievement ("[Thief] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloThief())
achievement ("[Thief] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloThief())
achievement ("[Thief] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloThief())
achievement ("[Thief] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloThief())
achievement ("[Thief] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloThief())
achievement ("[Thief] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloThief())
achievement ("[Thief] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloThief())
achievement ("[Thief] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloThief())
achievement ("[Thief] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloThief())
achievement ("[Thief] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloThief())

achievement ("[Monk] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloMonk())
achievement ("[Monk] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloMonk())
achievement ("[Monk] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloMonk())
achievement ("[Monk] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloMonk())
achievement ("[Monk] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloMonk())
achievement ("[Monk] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloMonk())
achievement ("[Monk] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloMonk())
achievement ("[Monk] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloMonk())
achievement ("[Monk] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloMonk())
achievement ("[Monk] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloMonk())
achievement ("[Monk] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloMonk())
achievement ("[Monk] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloMonk())
achievement ("[Monk] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloMonk())
achievement ("[Monk] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloMonk())
achievement ("[Monk] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloMonk())
achievement ("[Monk] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloMonk())
achievement ("[Monk] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloMonk()) 
achievement ("[Monk] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloMonk())
achievement ("[Monk] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloMonk())
achievement ("[Monk] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloMonk())
achievement ("[Monk] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloMonk())
achievement ("[Monk] Omega", "Defeat Omega", 10, trigger = Omega() && SoloMonk())
achievement ("[Monk] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloMonk())
achievement ("[Monk] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloMonk())
achievement ("[Monk] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloMonk())
achievement ("[Monk] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloMonk())
achievement ("[Monk] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloMonk())
achievement ("[Monk] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloMonk())
achievement ("[Monk] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloMonk())
achievement ("[Monk] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloMonk())
achievement ("[Monk] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloMonk())
achievement ("[Monk] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloMonk())

achievement ("[Red Mage] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloRedMage())
achievement ("[Red Mage] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloRedMage())
achievement ("[Red Mage] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloRedMage())
achievement ("[Red Mage] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloRedMage())
achievement ("[Red Mage] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloRedMage())
achievement ("[Red Mage] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloRedMage())
achievement ("[Red Mage] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloRedMage())
achievement ("[Red Mage] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloRedMage())
achievement ("[Red Mage] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloRedMage())
achievement ("[Red Mage] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloRedMage())
achievement ("[Red Mage] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloRedMage())
achievement ("[Red Mage] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloRedMage())
achievement ("[Red Mage] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloRedMage())
achievement ("[Red Mage] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloRedMage())
achievement ("[Red Mage] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloRedMage())
achievement ("[Red Mage] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloRedMage())
achievement ("[Red Mage] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloRedMage()) 
achievement ("[Red Mage] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloRedMage())
achievement ("[Red Mage] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloRedMage())
achievement ("[Red Mage] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloRedMage())
achievement ("[Red Mage] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloRedMage())
achievement ("[Red Mage] Omega", "Defeat Omega", 10, trigger = Omega() && SoloRedMage())
achievement ("[Red Mage] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloRedMage())
achievement ("[Red Mage] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloRedMage())
achievement ("[Red Mage] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloRedMage())
achievement ("[Red Mage] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloRedMage())
achievement ("[Red Mage] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloRedMage())
achievement ("[Red Mage] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloRedMage())
achievement ("[Red Mage] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloRedMage())
achievement ("[Red Mage] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloRedMage())
achievement ("[Red Mage] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloRedMage())
achievement ("[Red Mage] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloRedMage())

achievement ("[White Mage] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloWhiteMage())
achievement ("[White Mage] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloWhiteMage())
achievement ("[White Mage] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloWhiteMage())
achievement ("[White Mage] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloWhiteMage())
achievement ("[White Mage] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloWhiteMage())
achievement ("[White Mage] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloWhiteMage())
achievement ("[White Mage] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloWhiteMage())
achievement ("[White Mage] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloWhiteMage())
achievement ("[White Mage] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloWhiteMage())
achievement ("[White Mage] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloWhiteMage())
achievement ("[White Mage] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloWhiteMage())
achievement ("[White Mage] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloWhiteMage())
achievement ("[White Mage] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloWhiteMage())
achievement ("[White Mage] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloWhiteMage())
achievement ("[White Mage] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloWhiteMage())
achievement ("[White Mage] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloWhiteMage())
achievement ("[White Mage] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloWhiteMage()) 
achievement ("[White Mage] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloWhiteMage())
achievement ("[White Mage] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloWhiteMage())
achievement ("[White Mage] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloWhiteMage())
achievement ("[White Mage] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloWhiteMage())
achievement ("[White Mage] Omega", "Defeat Omega", 10, trigger = Omega() && SoloWhiteMage())
achievement ("[White Mage] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloWhiteMage())
achievement ("[White Mage] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloWhiteMage())
achievement ("[White Mage] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloWhiteMage())
achievement ("[White Mage] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloWhiteMage())
achievement ("[White Mage] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloWhiteMage())
achievement ("[White Mage] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloWhiteMage())
achievement ("[White Mage] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloWhiteMage())
achievement ("[White Mage] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloWhiteMage())
achievement ("[White Mage] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloWhiteMage())
achievement ("[White Mage] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloWhiteMage())

achievement ("[Black Mage] Garland", "Defeat Garland", 5, trigger = GarlandDefeat() && SoloBlackMage())
achievement ("[Black Mage] Boat", "Obtain the Ship", 1, trigger = BoatObtained() && SoloBlackMage())
achievement ("[Black Mage] Crown", "Obtain the Crown", 5, trigger = CrownObtained() && SoloBlackMage())
achievement ("[Black Mage] Astos", "Defeat Astos and obtain the Crystal Eye", 5, trigger = AtrosDefeat() && SoloBlackMage())
achievement ("[Black Mage] Mystic Key", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake() && SoloBlackMage())
achievement ("[Black Mage] Vampire", "Defeat the Vampire", 5, trigger = Vampire() && SoloBlackMage())
achievement ("[Black Mage] Lich", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag() && SoloBlackMage())
achievement ("[Black Mage] Canoe", "Obtain the canoe", 1, trigger = Canoe() && SoloBlackMage())
achievement ("[Black Mage] Airship", "Obtain the Airship", 5, trigger = AirshipGet() && SoloBlackMage())
achievement ("[Black Mage] Advancement", "Upgrade your job", 5, trigger = JobChange() && SoloBlackMage())
achievement ("[Black Mage] Marilith", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure() && SoloBlackMage())
achievement ("[Black Mage] We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown() && SoloBlackMage())
achievement ("[Black Mage] Kraken", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea() && SoloBlackMage())
achievement ("[Black Mage] Warmech", "Defeat a Warmech", 10, trigger = WarMech() && SoloBlackMage())
achievement ("[Black Mage] Tiamat", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify() && SoloBlackMage())
achievement ("[Black Mage] Cerberus", "Defeat Cerberus", 10, trigger = Cerberus() && SoloBlackMage())
achievement ("[Black Mage] Echidna", "Defeat Echidna", 10, trigger = Echidna() && SoloBlackMage())
achievement ("[Black Mage] Two-Headed Dragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads() && SoloBlackMage())
achievement ("[Black Mage] Ahriman", "Defeat Ahriman", 10, trigger = Ahriman() && SoloBlackMage())
achievement ("[Black Mage] Gilgamesh", "Defeat Gilgamesh", 10, trigger = Gilgamesh() && SoloBlackMage())
achievement ("[Black Mage] Atomos", "Defeat Atomos", 10, trigger = Atomos() && SoloBlackMage())
achievement ("[Black Mage] Omega", "Defeat Omega", 10, trigger = Omega() && SoloBlackMage())
achievement ("[Black Mage] Shinryu", "Defeat Shinryu", 10, trigger = Shinryu() && SoloBlackMage())
achievement ("[Black Mage] Scarmiglione", "Defeat Scarmiglione", 10, trigger = Scarmiglione() && SoloBlackMage())
achievement ("[Black Mage] Cagnazzo", "Defeat Cagnazzo", 10, trigger = Cagnazzo() && SoloBlackMage())
achievement ("[Black Mage] Barbariccia", "Defeat Barbariccia", 10, trigger = Barbariccia() && SoloBlackMage())
achievement ("[Black Mage] Rubicante", "Defeat Rubicante", 10, trigger = Rubicante() && SoloBlackMage())
achievement ("[Black Mage] Typhon", "Defeat Typhon", 10, trigger = Typhon() && SoloBlackMage())
achievement ("[Black Mage] Orthros", "Defeat Orthros", 10, trigger = Orthros() && SoloBlackMage())
achievement ("[Black Mage] Phantom Train", "Defeat Phantom Train", 10, trigger = Phantom() && SoloBlackMage())
achievement ("[Black Mage] Death Gaze", "Defeat Death Gaze", 10, trigger = Death() && SoloBlackMage())
achievement ("[Black Mage] Chaos", "Defeat Chaos", 10, trigger = Peace() && SoloBlackMage())