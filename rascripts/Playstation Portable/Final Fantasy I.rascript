// Final Fantasy I
// #ID = 3215

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0xd12034
inventorySlotAddr = 0xd12035
for i in range(0, 185)
{
  slot = byte(inventoryBaseAddr + i * 3)
  gen = byte(inventorySlotAddr + i * 3)
  trigger = trigger || (tally(0,slot == 0x03 && prev(gen) != itemId && gen == itemId))
}
return trigger
}

function Map() => byte(0xd11398)
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

function Battle() => byte(0xd2c564)

function GarlandDefeat() => Map() == ChaosShrine1 && bit1(0xd1151c) > prev(bit1(0xd1151c))
achievement ("Lapdogs", "Defeat Garland and rescue the Princess", 5, trigger = GarlandDefeat())


function BoatObtained() => Map() == Pravoka && bit5(0xd1151c) > prev(bit5(0xd1151c))
achievement ("Sailing Away", "Obtain the Ship", 1, trigger = BoatObtained())


function CrownObtained() => Map() == MarsheCave && bit6(0xd1151c) > prev(bit6(0xd1151c))
achievement ("Crown", "Obtain the Crown", 5, trigger = CrownObtained())


function AtrosDefeat() => Map() == WesternKeep && bit7(0xd1151c) > prev(bit7(0xd1151c))
achievement ("All Seeing Eye", "Defeat Atros and obtain the Crystal Eye", 5, trigger = AtrosDefeat())


function JoltedAwake() => Map() == ElfheimCastle && bit1(0xd1151d) > prev(bit1(0xd1151d))
achievement ("Jolted Awake", "Wake the Prince up and obtain the Mystic Key", 5, trigger = JoltedAwake())


function Vampire() => Map() == EarthCave && bit4(0xd1151d) > prev(bit4(0xd1151d))
achievement ("Blood Sucker", "Defeat the Vampire", 5, trigger = Vampire())


function EarthShrineflag() => Map() == EarthShrine && bit1(0xd1151e) > prev(bit1(0xd1151e))
achievement ("Power of Earth", "Defeat the Lich and purify the Earth Crystal", 10, trigger = EarthShrineflag())


function Canoe() => Map() == CrescentLake && bit2(0xd1151e) > prev(bit2(0xd1151e))
achievement ("Row, Row, Row!", "Obtain the canoe", 1, trigger = Canoe())


function AirshipGet() => Map() == Airship && bit5(0xd1151e) > prev(bit5(0xd1151e))
achievement ("Flotation", "Obtain the Airship", 5, trigger = AirshipGet())


function JobChange() => Map() == Bahamut && bit0(0xd1151f) > prev(bit0(0xd1151f))
achievement ("Advancement", "Upgrade your jobs", 5, trigger = JobChange())


function FirePure() => Map() == FireStone && bit3(0xd1151e) > prev(bit3(0xd1151e))
achievement ("Burn in Hellfire", "Defeat Marilith and purify the Fire Crystal", 10, trigger = FirePure())


function GoingDown() => Map() == SunkenTemple && prev(Map()) == Onrac && bit5(0xd1151f) == 0
achievement ("We're Going Under", "Take the Barrel to the Sunken Temple", 1, trigger = GoingDown())


function UnderDaSea() => Map() == WaterStone && bit5(0xd1151f) > prev(bit5(0xd1151f))
achievement ("Tomb in the Depths", "Defeat the Kraken and purify the Water Crystal", 10, trigger = UnderDaSea())

function WarMech() => Map() == War && Battle() == 0 && byte(0xd12384) > prev(byte(0xd12384))
achievement ("War Machine", "Defeat a Warmech", 10, trigger = WarMech())

achievement ("Immunization", "Obtain the Genji Armor", 25, trigger = Map() != 0x00 && ItemObtained(0x1b))

function AirPurify() => Map() >= 0x5c && Map() <= 0x60 && byte(0xd12392) > prev(byte(0xd12392))
achievement ("Breathe Easy", "Defeat Tiamat and purify the Air Crystal", 10, trigger = AirPurify())

function Exa() => Map() == Calibur && bit1(0xd11520) == 1 && bit3(0xd11520) > prev(bit3(0xd11520))
achievement ("Dwarven Made", "Obtain the Excalibur", 5, trigger = Exa())

function Cerberus() => Map() == Earthgift && Battle() == 0 && byte(0xd1239a) > prev(byte(0xd1239a))
achievement ("Hound of Hades", "Defeat Cerberus", 10, trigger = Cerberus())

function Echidna() => Map() == Earthgift && Battle() == 0 && byte(0xd12398) > prev(byte(0xd12398))
achievement ("Hanging Out", "Defeat Echidna", 10, trigger = Echidna()) 

function TwoHeads() => Map() == Earthgift && Battle() == 0 && byte(0xd1239e) > prev(byte(0xd1239e))
achievement ("Niheddodoragon", "Defeat Two-Headed Dragon", 10, trigger = TwoHeads())

function Ahriman() => Map() == Earthgift && Battle() == 0 && byte(0xd1239c) > prev(byte(0xd1239c))
achievement ("Gobbled", "Defeat Ahriman", 10, trigger = Ahriman())

function Gilgamesh() => Map() == Genji && Battle() == 0 && byte(0xd123aa) > prev(byte(0xd123aa))
achievement ("Man of Many Talents", "Defeat Gilgamesh", 10, trigger = Gilgamesh())

function Atomos() => Map() == Atomo && Battle() == 0 && byte(0xd123b0) > prev(byte(0xd123b0))
achievement ("Black Hole", "Defeat Atomos", 10, trigger = Atomos())

function Omega() => Map() == LifeFinal && Battle() == 0 && byte(0xd123ac) > prev(byte(0xd123ac))
achievement ("Quadrupedal", "Defeat Omega", 10, trigger = Omega())

function Shinryu() => Map() == LifeFinal && Battle() == 0 && byte(0xd123ae) > prev(byte(0xd123ae))
achievement ("Dragon Lord", "Defeat Shinryu", 10, trigger = Shinryu())

function Scarmiglione() => Map() == HellFireOne && Battle() == 0 && byte(0xd123a2) > prev(byte(0xd123a2))
achievement ("Milon", "Defeat Scarmiglione", 10, trigger = Scarmiglione())

function Cagnazzo() => Map() == HellFireOne && Battle() == 0 && byte(0xd123a4) > prev(byte(0xd123a4))
achievement ("Hard Shell", "Defeat Cagnazzo", 10, trigger = Cagnazzo())

function Barbariccia() => Map() == HellFireTwo && Battle() == 0 && byte(0xd123a6) > prev(byte(0xd123a6))
achievement ("Tornado Alley", "Defeat Barbariccia", 10, trigger = Barbariccia())

function Rubicante() => Map() == HellFireTwo && Battle() == 0 && byte(0xd123a8) > prev(byte(0xd123a8))
achievement ("Crucible of Flames", "Defeat Rubicante", 10, trigger = Rubicante())

function Typhon() => Map() == TyphonSky && Battle() == 0 && byte(0xd123b2) > prev(byte(0xd123b2))
achievement ("Snorter", "Defeat Typhon", 10, trigger = Typhon())

function Orthros() => Map() == OrthrosSky && Battle() == 0 && byte(0xd123b4) > prev(byte(0xd123b4))
achievement ("He's Armed!", "Defeat Orthros", 10, trigger = Orthros())

function Phantom() => Map() == PhantomSky && Battle() == 0 && byte(0xd123b6) > prev(byte(0xd123b6))
achievement ("Traveling Light", "Defeat Phantom Train", 10, trigger = Phantom())

function Death() => Map() == DeathSky && Battle() == 0 && byte(0xd123b8) > prev(byte(0xd123b8))
achievement ("Deathly", "Defeat Death Gaze", 10, trigger = Death())

function Peace() => Map() == ChaosShrineEnd && bit6(0xd11520) > prev(bit6(0xd11520))
achievement ("Chaotic No More", "Defeat Chaos", 10, trigger = Peace())

function TheFirst() => Map() == Chronodia && Battle() == 0 && byte(0xd1241e) > prev(byte(0xd1241e))
achievement ("Chronodia I", "Defeat Chronodia [R,R,R,R,R,R,R,R]", 25, trigger = TheFirst())

function TheSecond() => Map() == Chronodia && Battle() == 0 && byte(0xd12420) > prev(byte(0xd12420))
achievement ("Chronodia II", "Defeat Chronodia [B,R,R,R,R,R,R,R]", 25, trigger = TheSecond())

function TheThird() => Map() == Chronodia && Battle() == 0 && byte(0xd12422) > prev(byte(0xd12422))
achievement ("Chronodia III", "Defeat Chronodia [B,B,R,R,R,R,R,R]", 25, trigger = TheThird())

function TheFourth() => Map() == Chronodia && Battle() == 0 && byte(0xd12424) > prev(byte(0xd12424))
achievement ("Chronodia IV", "Defeat Chronodia [B,R,R,R,R,R,B,B,R]", 25, trigger = TheFourth())

function TheFifth() => Map() == Chronodia && Battle() == 0 && byte(0xd12426) > prev(byte(0xd12426))
achievement ("Chronodia V", "Defeat Chronodia [B,R,B,B,R,R,R,R,B,R]", 25, trigger = TheFifth())

function TheSixth() => Map() == Chronodia && Battle() == 0 && byte(0xd12428) > prev(byte(0xd12428))
achievement ("Chronodia VI", "Defeat Chronodia [B,B,B,B,B,B,B,R]", 25, trigger = TheSixth())

function TheSeventh() => Map() == Chronodia && Battle() == 0 && byte(0xd1242a) > prev(byte(0xd1242a))
achievement ("Chronodia VII", "Defeat Chronodia [B,B,B,B,B,B,R]", 25, trigger = TheSeventh())

function TheEigth() => Map() == Chronodia && Battle() == 0 && byte(0xd1242c) > prev(byte(0xd1242c))
achievement ("Chronodia VIII", "Defeat Chronodia [B,B,B,B,B,B,B,B]", 25, trigger = TheEigth())

function BestiaryOne() => word(0xd12298)/word(0xd12298)+word(0xd1229a)/word(0xd1229a)+word(0xd1229c)/word(0xd1229c)+
                          word(0xd12380)/word(0xd12380)+word(0xd122c2)/word(0xd122c2)+word(0xd1232a)/word(0xd1232a)+
                          word(0xd122c6)/word(0xd122c6)+word(0xd1229e)/word(0xd1229e)+word(0xd122a0)/word(0xd122a0)+
                          word(0xd122ee)/word(0xd122ee)+word(0xd122f0)/word(0xd122f0)+word(0xd1236a)/word(0xd1236a)+
                          word(0xd122d4)/word(0xd122d4)+word(0xd122ce)/word(0xd122ce)+word(0xd122d0)/word(0xd122d0)+
                          word(0xd122a4)/word(0xd122a4)+word(0xd122b6)/word(0xd122b6)+word(0xd122b0)/word(0xd122b0)+
                          word(0xd122b2)/word(0xd122b2)+word(0xd122b8)/word(0xd122b8)+word(0xd122ba)/word(0xd122ba)+
                          word(0xd122be)/word(0xd122be)+word(0xd1232c)/word(0xd1232c)+word(0xd122f2)/word(0xd122f2)+
                          word(0xd122da)/word(0xd122da)+word(0xd122e6)/word(0xd122e6)+word(0xd12322)/word(0xd12322)+
                          word(0xd122c8)/word(0xd122c8)+word(0xd12324)/word(0xd12324)+word(0xd12314)/word(0xd12314)+
                          word(0xd122c4)/word(0xd122c4)+word(0xd12366)/word(0xd12366)+word(0xd1237a)/word(0xd1237a)+
                          word(0xd12336)/word(0xd12336)+word(0xd122e8)/word(0xd122e8)+word(0xd122d6)/word(0xd122d6)+
                          word(0xd122ca)/word(0xd122ca)+word(0xd1230c)/word(0xd1230c)+word(0xd122de)/word(0xd122de)+
                          word(0xd122aa)/word(0xd122aa)+word(0xd12318)/word(0xd12318)+word(0xd122e2)/word(0xd122e2)+
                          word(0xd122f4)/word(0xd122f4)+word(0xd12326)/word(0xd12326)+word(0xd1233a)/word(0xd1233a)+
                          word(0xd12310)/word(0xd12310)+word(0xd122d2)/word(0xd122d2)+word(0xd12330)/word(0xd12330)+
                          word(0xd12386)/word(0xd12386)+word(0xd12308)/word(0xd12308)
achievement ("Bestiary I", "Obtain bestiary entries #1-50", 5, trigger = measured(BestiaryOne() == 50) && prev(BestiaryOne()) == 49)

function BestiaryTwo() => word(0xd12346)/word(0xd12346)+word(0xd12348)/word(0xd12348)+word(0xd1234a)/word(0xd1234a)+
                          word(0xd1234c)/word(0xd1234c)+word(0xd1234e)/word(0xd1234e)+word(0xd12350)/word(0xd12350)+
                          word(0xd12352)/word(0xd12352)+word(0xd12316)/word(0xd12316)+word(0xd1233c)/word(0xd1233c)+
                          word(0xd1231a)/word(0xd1231a)+word(0xd12354)/word(0xd12354)+word(0xd122fa)/word(0xd122fa)+
                          word(0xd122cc)/word(0xd122cc)+word(0xd122a6)/word(0xd122a6)+word(0xd122ae)/word(0xd122ae)+
                          word(0xd1231e)/word(0xd1231e)+word(0xd1238a)/word(0xd1238a)+word(0xd1231c)/word(0xd1231c)+
                          word(0xd122a2)/word(0xd122a2)+word(0xd12368)/word(0xd12368)+word(0xd122ac)/word(0xd122ac)+
                          word(0xd122ea)/word(0xd122ea)+word(0xd1230a)/word(0xd1230a)+word(0xd1237c)/word(0xd1237c)+
                          word(0xd122fc)/word(0xd122fc)+word(0xd12334)/word(0xd12334)+word(0xd1230e)/word(0xd1230e)+
                          word(0xd1233e)/word(0xd1233e)+word(0xd12340)/word(0xd12340)+word(0xd1232e)/word(0xd1232e)+
                          word(0xd12332)/word(0xd12332)+word(0xd122a8)/word(0xd122a8)+word(0xd12342)/word(0xd12342)+
                          word(0xd12304)/word(0xd12304)+word(0xd122f8)/word(0xd122f8)+word(0xd122e0)/word(0xd122e0)+
                          word(0xd12338)/word(0xd12338)+word(0xd12300)/word(0xd12300)+word(0xd12306)/word(0xd12306)+
                          word(0xd12370)/word(0xd12370)+word(0xd12382)/word(0xd12382)+word(0xd12320)/word(0xd12320)+
                          word(0xd122b4)/word(0xd122b4)+word(0xd122bc)/word(0xd122bc)+word(0xd122c0)/word(0xd122c0)+
                          word(0xd122d8)/word(0xd122d8)+word(0xd122dc)/word(0xd122dc)+word(0xd122e4)/word(0xd122e4)+
                          word(0xd122ec)/word(0xd122ec)+word(0xd1235a)/word(0xd1235a)
achievement ("Bestiary II", "Obtain bestiary entries #51-100", 5, trigger = measured(BestiaryTwo() == 50) && prev(BestiaryTwo()) == 49)

function BestiaryThree() => word(0xd1235e)/word(0xd1235e)+word(0xd1238e)/word(0xd1238e)+word(0xd12344)/word(0xd12344)+
                            word(0xd12376)/word(0xd12376)+word(0xd12362)/word(0xd12362)+word(0xd12356)/word(0xd12356)+
                            word(0xd1236e)/word(0xd1236e)+word(0xd1236c)/word(0xd1236c)+word(0xd12372)/word(0xd12372)+
                            word(0xd1235c)/word(0xd1235c)+word(0xd12360)/word(0xd12360)+word(0xd12378)/word(0xd12378)+
                            word(0xd12302)/word(0xd12302)+word(0xd12328)/word(0xd12328)+word(0xd12358)/word(0xd12358)+
                            word(0xd12312)/word(0xd12312)+word(0xd1237e)/word(0xd1237e)+word(0xd12384)/word(0xd12384)+
                            word(0xd12392)/word(0xd12392)+word(0xd12364)/word(0xd12364)+word(0xd122fe)/word(0xd122fe)+
                            word(0xd122f6)/word(0xd122f6)+word(0xd12374)/word(0xd12374)+word(0xd12388)/word(0xd12388)+
                            word(0xd1238c)/word(0xd1238c)+word(0xd12390)/word(0xd12390)+word(0xd12394)/word(0xd12394)+
                            word(0xd12396)/word(0xd12396)+word(0xd12398)/word(0xd12398)+word(0xd1239a)/word(0xd1239a)+
                            word(0xd1239c)/word(0xd1239c)+word(0xd1239e)/word(0xd1239e)+word(0xd123a0)/word(0xd123a0)+
                            word(0xd123a2)/word(0xd123a2)+word(0xd123a4)/word(0xd123a4)+word(0xd123a6)/word(0xd123a6)+
                            word(0xd123a8)/word(0xd123a8)+word(0xd123aa)/word(0xd123aa)+word(0xd123ac)/word(0xd123ac)+
                            word(0xd123ae)/word(0xd123ae)+word(0xd123b0)/word(0xd123b0)+word(0xd123b2)/word(0xd123b2)+
                            word(0xd123b4)/word(0xd123b4)+word(0xd123b6)/word(0xd123b6)+word(0xd123b8)/word(0xd123b8)+
                            word(0xd123ba)/word(0xd123ba)+word(0xd123bc)/word(0xd123bc)+word(0xd123be)/word(0xd123be)+
                            word(0xd123c0)/word(0xd123c0)+word(0xd123c2)/word(0xd123c2)
achievement ("Bestiary III", "Obtain bestiary entries #101-150", 10, trigger = measured(BestiaryThree() == 50) && prev(BestiaryThree()) == 49)

function BestiaryFour() => word(0xd123c4)/word(0xd123c4)+word(0xd123c6)/word(0xd123c6)+word(0xd123c8)/word(0xd123c8)+
                           word(0xd123ca)/word(0xd123ca)+word(0xd123cc)/word(0xd123cc)+word(0xd123ce)/word(0xd123ce)+
                           word(0xd123d0)/word(0xd123d0)+word(0xd123d2)/word(0xd123d2)+word(0xd123d4)/word(0xd123d4)+
                           word(0xd123d6)/word(0xd123d6)+word(0xd123d8)/word(0xd123d8)+word(0xd123da)/word(0xd123da)+
                           word(0xd123dc)/word(0xd123dc)+word(0xd123de)/word(0xd123de)+word(0xd123e0)/word(0xd123e0)+
                           word(0xd123e2)/word(0xd123e2)+word(0xd123e4)/word(0xd123e4)+word(0xd123e6)/word(0xd123e6)+
                           word(0xd123e8)/word(0xd123e8)+word(0xd123ea)/word(0xd123ea)+word(0xd123ec)/word(0xd123ec)+
                           word(0xd123ee)/word(0xd123ee)+word(0xd123f0)/word(0xd123f0)+word(0xd123f2)/word(0xd123f2)+
                           word(0xd123f4)/word(0xd123f4)+word(0xd123f6)/word(0xd123f6)+word(0xd123f8)/word(0xd123f8)+
                           word(0xd123fa)/word(0xd123fa)+word(0xd123fc)/word(0xd123fc)+word(0xd123fe)/word(0xd123fe)+
                           word(0xd12400)/word(0xd12400)+word(0xd12402)/word(0xd12402)+word(0xd12404)/word(0xd12404)+
                           word(0xd12406)/word(0xd12406)+word(0xd12408)/word(0xd12408)+word(0xd1240a)/word(0xd1240a)+
                           word(0xd1240c)/word(0xd1240c)+word(0xd1240e)/word(0xd1240e)+word(0xd12410)/word(0xd12410)+
                           word(0xd12412)/word(0xd12412)+word(0xd12414)/word(0xd12414)+word(0xd12416)/word(0xd12416)+
                           word(0xd12418)/word(0xd12418)+word(0xd1241a)/word(0xd1241a)+word(0xd1241c)/word(0xd1241c)+
                           word(0xd1241e)/word(0xd1241e)+word(0xd12420)/word(0xd12420)+word(0xd12422)/word(0xd12422)+
                           word(0xd12424)/word(0xd12424)+word(0xd12426)/word(0xd12426)+word(0xd12428)/word(0xd12428)+
                           word(0xd1242a)/word(0xd1242a)+word(0xd1242c)/word(0xd1242c)
achievement ("Bestiary IV", "Obtain bestiary entries #151-203", 25, trigger = measured(BestiaryFour() == 53) && prev(BestiaryFour()) == 52)

function LooterOne() => bitcount(0xd1150a)+bitcount(0xd114ed)+
                        bit1(0xd1150a)+bit2(0xd1150a)+bit3(0xd1150a)+bitcount(0xd114ee)+bit1(0xd114ef)+bit2(0xd114ef)+bit3(0xd114ef)+
                        bit4(0xd114ef)+bit0(0xd1150b)+bit1(0xd1150b)+bit2(0xd1150b)+bit3(0xd1150b)+bit5(0xd1150a)+bit6(0xd1150a)+
                        bit7(0xd1150a)
achievement ("Looter", "Collect all treasures in [Chaos Shrine] [Cornelia] [Elven Castle] [Matoya] [Western Keep] [Citadel of Trials]", 3, trigger = measured(LooterOne() == 38) && prev(LooterOne()) == 37)

function LooterTwo() => bit3(0xd114ff)+bit4(0xd114ff)+bit5(0xd114ff)+bit6(0xd114ff)+bit7(0xd114ff)+bitcount(0xd11500)+bitcount(0xd11501)+bitcount(0xd11502)+
                        bit0(0xd11503)+bit2(0xd11503)+bit3(0xd11503)+bit6(0xd11503)
achievement ("Plunderer", "Collect all treasures in [Mount Gulg]", 3, trigger = measured(LooterTwo() == 33) && prev(LooterTwo()) == 32)

function LooterThree() => bit6(0xd114f6)+bit7(0xd114f6)+bitcount(0xd114f7)+bitcount(0xd114f8)
achievement ("Treasure Hunter", "Collect all treasures in [Mirage Tower]", 3, trigger = measured(LooterThree() == 18) && prev(LooterThree()) == 17)

function LooterFour() => bit5(0xd114ef)+bit6(0xd114ef)+bit7(0xd114ef)+bitcount(0xd114f0)+bit1(0xd114f1)+bit2(0xd114f1)+bit3(0xd114f1)+bit4(0xd114f1)+bit5(0xd114f1)+bit6(0xd114f1)+bit7(0xd114f1)+
                         bit0(0xd114f2)+bit1(0xd114f2)+bit3(0xd114f2)+bit4(0xd114f2)+bit5(0xd114f2)
achievement ("Lock Pick", "Collect all treasures in [Cavern of Earth]", 3, trigger = measured(LooterFour() == 23) && prev(LooterFour()) == 22)

function LooterFive() => bit7(0xd114f2)+bitcount(0xd114f3)+bitcount(0xd114f4)+bitcount(0xd114f5)+bit0(0xd114f6)+bit1(0xd114f6)+bit2(0xd114f6)+bit3(0xd114f6)+bit4(0xd114f6)+bit5(0xd114f6)+bit4(0xd1150a)
achievement ("Borrower", "Collect all treasures in [Sunken Shrine]", 3, trigger = measured(LooterFive() == 32) && prev(LooterFive()) == 31)

function LooterSix() => bitcount(0xd11506)+bitcount(0xd11507)+bitcount(0xd11508)+bitcount(0xd11509)+bit0(0xd1150a)
achievement ("Finders Keepers", "Collect all treasures in [Flying Fortress]", 3, trigger = measured(LooterSix() == 33) && prev(LooterSix()) == 32)

function LooterSeven() => bit0(0xd114fc)+bit1(0xd114fc)+bit2(0xd114fc)+bit6(0xd114fc)+bit7(0xd114fc)+bit0(0xd114fd)+bit1(0xd114fd)+bit3(0xd114fd)+bit4(0xd114fd)+bit6(0xd114fd)+bit7(0xd114fd)+bit0(0xd114fe)+
                          bit0(0xd11504)+bit1(0xd11504)+bit2(0xd11504)+bit3(0xd11504)+bit4(0xd11504)+bit5(0xd11504)+bit7(0xd11504)+bitcount(0xd11505)
achievement ("Empty Boxes", "Collect all treasures in [Marsh Cave] [Cavern of Ice]", 3, measured(LooterSeven() == 27) && prev(LooterSeven()) == 26)

function LooterEight() => bit5(0xd114fa)+bit6(0xd114fa)+bit7(0xd114fa)+bitcount(0xd114fb)+bit1(0xd114fe)+
                          bit2(0xd114fe)+bit3(0xd114fe)+bit4(0xd114fe)+bit5(0xd114fe)+bit6(0xd114fe)+bit7(0xd114fe)+bit0(0xd114ff)+bit1(0xd114ff)+bit2(0xd114ff)-bit7(0xd114fb)
achievement ("Hoarder", "Collect all treasures in [Mt.Duergar] [Waterfall Cavern] [Giant's Cave]", 3, trigger = measured(LooterEight() == 20) && prev(LooterEight()) == 19)

function SliderTimer() => word(0xd26154)
ThirtySeconds = 0x70c
OneMinute = 0xe14
TwoMinute = 0x1c24
function Slider() => byte(0xd113a8) == prev(byte(0xd113a8)) && byte(0xd113a8) == 0x02 && byte(0xd12294) > prev(byte(0xd12294))
achievement ("Going in Circles", "Complete a Sliding Puzzle", 1, trigger = Slider())
achievement ("Time Crunch", "Complete a Sliding Puzzle in 2 minutes or less", 3, trigger = Slider() && SliderTimer() <= TwoMinute)
achievement ("Over Time", "Complete a Sliding Puzzle in 1 minute or less", 5, trigger = Slider() && SliderTimer() <= OneMinute)
achievement ("Dead Line", "Complete a Sliding Puzzle in 30 seconds or less", 10, trigger =Slider() && SliderTimer() <= ThirtySeconds)