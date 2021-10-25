// Final Fantasy Tactics Advance
// #ID = 519


function map() => word(0xa037)
map_pub = 0x3f
map_gizaplains = 0x47
map_lutiapass = 0x57
map_nubswooods = 0x5b
map_eluutsands = 0x63
map_ulei = 0x16
map_cadoannight = 0x34
map_aisenfield = 0x4b
map_rodavolcano = 0x98
map_korinwood = 0x59
map_salikawood = 0x86
map_nargaicave = 0x81
map_jagddorsa = 0x07
map_jerawsands = 0x67
map_palaceroom = 0x1a
map_muscadet = 0x37
map_scouringtime = 0x41
map_uladonbog = 0x6d
map_gotorsands = 0x69
map_deliadunes = 0x6b 
map_materiwood = 0x9e
map_berveniapalace = 0x1c
map_tubolacave = 0x3e
map_detiplains = 0x21
map_siennagorge = 0x22
map_courtyard = 0x9c
map_school = 0x01
map_babus = 0xa2
map_ezel = 0x8a
map_ritz = 0x80
map_cid = 0x36
map_noarms = 0x49
map_kissingrule = 0x5f
map_immunity = 0x9f
map_nofull = 0x88
map_literacy = 0x76
map_favorite = 0xa0
map_answers = 0x39
map_jumping = 0x56
map_decision = 0x41
map_decisionover = 0xa1

function saveslot() => byte(0x8072)
function saveprotect() => prev(map()) != 0 && saveslot() == prev(saveslot())

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0x9940
for i in range(0, 360)
{
  slot = word(inventoryBaseAddr + i * 4)
  trigger = trigger || (prev(slot) != itemId && slot == itemId)
}
return trigger
}

function Welcome() => bit1(0x9fd0) > prev(bit1(0x9fd0))

achievement ("Welcome to Ivalice!", "Become acquainted with Ivalice", 1, 
trigger = saveprotect() && Welcome())
    
function HerbPicking() => bit2(0x9fd0) > prev(bit2(0x9fd0))  
achievement ("Spice Trader", "Complete Mission 001 - Herb Picking", 2, 
trigger = saveprotect() && HerbPicking())
    
function ThesisHunt() => bit3(0x9fd0) > prev(bit3(0x9fd0))
achievement ("Nerdy Bandits", "Complete Mission 002 - Thesis Hunt", 5, 
trigger = saveprotect() && ThesisHunt())

function TheCheetahs() => bit4(0x9fd0) > prev(bit4(0x9fd0))
achievement ("Cheetah Girls", "Complete Mission 003 - The Cheetahs", 5, 
trigger = saveprotect() && TheCheetahs())

function DesertPeril() => bit5(0x9fd0) > prev(bit5(0x9fd0))
achievement ("Desert Heat", "Complete Mission 004 - Desert Peril", 5, 
trigger = saveprotect() && DesertPeril())

function TwistedFlow() => bit6(0x9fd0) > prev(bit6(0x9fd0))
achievement ("A Wrinkle in Space", "Complete Mission 005 - Twisted Flow", 5, 
trigger = saveprotect() && TwistedFlow())

function Antilaws() => bit7(0x9fd0) > prev(bit7(0x9fd0))
achievement ("Advanced Law", "Complete Mission 006 - Antilaws", 5, 
trigger = saveprotect() && Antilaws())

function DiamondRain() => bit0(0x9fd1) > prev(bit0(0x9fd1))
achievement ("Rainy Day", "Complete Mission 007 - Diamond Rain", 5, 
trigger = saveprotect() && DiamondRain())

function HotAwakening() => bit1(0x9fd1) > prev(bit1(0x9fd1))
achievement ("Butterflies", "Complete Mission 008 - Hot Awakening", 5, 
trigger = saveprotect() && HotAwakening())

function MagicWood() => bit2(0x9fd1) > prev(bit2(0x9fd1))
achievement ("Lumberjacks", "Complete Mission 009 - Magic Wood", 5, 
trigger = saveprotect() && MagicWood())

function EmeraldKeep() => bit3(0x9fd1) > prev(bit3(0x9fd1))
achievement ("Personal Mage", "Complete Mission 010 - Emerald Keep", 5, 
trigger = saveprotect() && EmeraldKeep())

function PaleCompany() => bit4(0x9fd1) > prev(bit4(0x9fd1))
achievement ("Leftovers", "Complete Mission 011 - Pale Company", 5, 
trigger = saveprotect() && PaleCompany())

function JagdHunt() => bit5(0x9fd1) > prev(bit5(0x9fd1))
achievement ("Turn Around", "Complete Mission 012 - Jagd Hunt", 5, 
trigger = saveprotect() && JagdHunt())

function TheBounty() => bit6(0x9fd1) > prev(bit6(0x9fd1))
achievement ("Hunted", "Complete Mission 013 - The Bounty", 5, 
trigger = saveprotect() && TheBounty())

function GoldenClock() => bit7(0x9fd1) > prev(bit7(0x9fd1))
achievement ("Other Business", "Complete Mission 014 - Golden Clock", 5, 
trigger = saveprotect() && GoldenClock())

function ScouringTime() => bit0(0x9fd2) > prev(bit0(0x9fd2))
achievement ("Schoolyard Bully", "Complete Mission 015 - Scouring Time", 5, 
trigger = saveprotect() && ScouringTime())

function TheBigFind() => bit1(0x9fd2) > prev(bit1(0x9fd2))
achievement ("The Creeps", "Complete Mission 016 - The Big Find", 5, 
trigger = saveprotect() && TheBigFind())

function DesertPatrol() => bit2(0x9fd2) > prev(bit2(0x9fd2))
achievement ("Well-Informed", "Complete Mission 017 - Desert Patrol", 5, 
trigger = saveprotect() && DesertPatrol())

function QuietSands() => bit3(0x9fd2) > prev(bit3(0x9fd2))
achievement ("How Unfortunate", "Complete Mission 018 - Quiet Sands", 10, 
trigger = saveprotect() && QuietSands())

function MateriteNow() => bit4(0x9fd2) > prev(bit4(0x9fd2))
achievement ("Streetear", "Complete Mission 019 - Materite Now", 5, 
trigger = saveprotect() && MateriteNow())

function PresentDay() => bit5(0x9fd2) > prev(bit5(0x9fd2))
achievement ("Lugaborg", "Complete Mission 020 - Present Day", 5, 
trigger = saveprotect() && PresentDay())

function HiddenVein() => bit6(0x9fd2) > prev(bit6(0x9fd2))
achievement ("Come Back Home", "Complete Mission 021 - Hidden Vein", 5, 
trigger = saveprotect() && HiddenVein())

function ToAmbervale() => bit7(0x9fd2) > prev(bit7(0x9fd2))
achievement ("Face the Consequences", "Complete Mission 022 - To Ambervale", 5, 
trigger = saveprotect() && ToAmbervale())

function OverTheHill() => bit0(0x9fd3) > prev(bit0(0x9fd3))
achievement ("Bringing It Back", "Complete Mission 023 - Over The Hill", 5, 
trigger = saveprotect() && OverTheHill())

function RoyalValley() => map() == map_school && prev(map()) == map_courtyard
achievement ("Goodbye, Ivalice", "Complete Mission 024 - Royal Valley", 25, 
trigger = saveprotect() && RoyalValley())

function FreedAll() => saveprotect() && bit4(0xa016) > prev(bit4(0xa016))
achievement ("Liberator", "Freed all maps and read The Liberators rumor", 5, 
trigger = FreedAll())

function BattleCounter() => word(0x9f6c)
achievement ("1 in 10", "Battle Count is 10+", 1, 
trigger = saveprotect() && measured(BattleCounter() == 10) && prev(BattleCounter()) == 9)
achievement ("1 in 100", "Battle Count is 100+", 5, 
trigger = saveprotect() && measured(BattleCounter() == 100) && prev(BattleCounter()) == 99)
achievement ("1 in 10000", "Battle Count is 200+", 10, 
trigger = saveprotect() && measured(BattleCounter() == 200) && prev(BattleCounter()) == 199)
achievement ("Peerless", "Battle Count is 500+", 25, 
trigger = saveprotect() && measured(BattleCounter() == 500) && prev(BattleCounter()) == 499)

function CombatStat() => byte(0xa1b6)
achievement ("Warrior", "Combat Stat is 10+", 1, 
trigger = saveprotect() && measured(CombatStat() >= 10) && prev(CombatStat()) < 10)
achievement ("Commander", "Combat Stat is 20+", 3, 
trigger = saveprotect() && measured(CombatStat() >= 20) && prev(CombatStat()) < 20)
achievement ("Warmaster", "Combat Stat is 40+", 4, 
trigger = saveprotect() && measured(CombatStat() >= 40) && prev(CombatStat()) < 40)
achievement ("Riskbreaker", "Combat Stat is 70+", 5, 
trigger = saveprotect() && measured(CombatStat() >= 70) && prev(CombatStat()) < 70)

function MagicStat() => byte(0xa1b8)
achievement ("Amagus", "Magic Stat is 10+", 1, 
trigger = saveprotect() && measured(MagicStat() >= 10) && prev(MagicStat()) < 10)
achievement ("Ramagus", "Magic Stat is 20+", 3, 
trigger = saveprotect() && measured(MagicStat() >= 20) && prev(MagicStat()) < 20)
achievement ("Gamagus", "Magic Stat is 40+", 4, 
trigger = saveprotect() && measured(MagicStat() >= 40) && prev(MagicStat()) < 40)
achievement ("Jamagus", "Magic Stat is 70+", 5, 
trigger = saveprotect() && measured(MagicStat() >= 70) && prev(MagicStat()) < 70)

function SmithingStat() => byte(0xa1ba)
achievement ("Craftsman", "Smithing Stat is 10+", 1, 
trigger = saveprotect() && SmithingStat() >= 10 && prev(SmithingStat()) < 10)
achievement ("Blacksmith", "Smithing Stat is 20+", 3, 
trigger = saveprotect() && SmithingStat() >= 20 && prev(SmithingStat()) < 20)
achievement ("Mastersmith", "Smithing Stat is 40+", 4, 
trigger = saveprotect() && SmithingStat() >= 40 && prev(SmithingStat()) < 40)
achievement ("Meister", "Smithing Stat is 70+", 5, 
trigger = saveprotect() && SmithingStat() >= 70 && prev(SmithingStat()) < 70)

function CraftStat() => byte(0xa1bc)
achievement ("Copperhand", "Craft Stat is 10+", 1, 
trigger = saveprotect() && CraftStat() >= 10 && prev(CraftStat()) < 10)
achievement ("Silverhand", "Craft Stat is 20+", 3, 
trigger = saveprotect() && CraftStat() >= 20 && prev(CraftStat()) < 20)
achievement ("Goldhand", "Craft Stat is 40+", 4, 
trigger = saveprotect() && CraftStat() >= 40 && prev(CraftStat()) < 40)
achievement ("Defthand", "Craft Stat is 70+", 5, 
trigger = saveprotect() && CraftStat() >= 70 && prev(CraftStat()) < 70)

function AppraiseStat() => byte(0xa1be)
achievement ("Squinteye", "Appraise Stat is 10+", 1, 
trigger = saveprotect() && AppraiseStat() >= 10 && prev(AppraiseStat()) < 10)
achievement ("Cleareye", "Appraise Stat is 20+", 3, 
trigger = saveprotect() && AppraiseStat() >= 20 && prev(AppraiseStat()) < 20)
achievement ("Trueeye", "Appraise Stat is 40+", 4, 
trigger = saveprotect() && AppraiseStat() >= 40 && prev(AppraiseStat()) < 40)
achievement ("Godeye", "Appraise Stat is 70+", 5, 
trigger = saveprotect() && AppraiseStat() >= 70 && prev(AppraiseStat()) < 70)

function GatherStat() => byte(0xa1c0)
achievement ("Reednose", "Gather Stat is 10+", 1, 
trigger = saveprotect() && GatherStat() >= 10 && prev(GatherStat()) < 10)
achievement ("Funginose", "Gather Stat is 20+", 3, 
trigger = saveprotect() && GatherStat() >= 20 && prev(GatherStat()) < 20)
achievement ("Strawnose", "Gather Stat is 40+", 4, 
trigger = saveprotect() && GatherStat() >= 40 && prev(GatherStat()) < 40)
achievement ("Trufflenose", "Gather Stat is 70+", 5, 
trigger = saveprotect() && GatherStat() >= 70 && prev(GatherStat()) < 70)

function NegotiateStat() => byte(0xa1c2)
achievement ("Taleteller", "Negotiate Stat is 10+", 1, 
trigger = saveprotect() && NegotiateStat() >= 10 && prev(NegotiateStat()) < 10)
achievement ("Know-It-All", "Negotiate Stat is 20+", 3, 
trigger = saveprotect() && NegotiateStat() >= 20 && prev(NegotiateStat()) < 20)
achievement ("Counselor", "Negotiate Stat is 40+", 4, 
trigger = saveprotect() && NegotiateStat() >= 40 && prev(NegotiateStat()) < 40)
achievement ("Negotiator", "Negotiate Stat is 70+", 5, 
trigger = saveprotect() && NegotiateStat() >= 70 && prev(NegotiateStat()) < 70)

function TrackStat() => byte(0xa1c4)
achievement ("Ratcatcher", "Track Stat is 10+", 1, 
trigger = saveprotect() && TrackStat() >= 10 && prev(TrackStat()) < 10)
achievement ("Shepherd", "Track Stat is 20+", 3, 
trigger = saveprotect() && TrackStat() >= 20 && prev(TrackStat()) < 20)
achievement ("Bearkiller", "Track Stat is 40+", 4, 
trigger = saveprotect() && TrackStat() >= 40 && prev(TrackStat()) < 40)
achievement ("Wyrmkiller", "Track Stat is 70+", 5, 
trigger = saveprotect() && TrackStat() >= 70 && prev(TrackStat()) < 70)

function ClanLevel() => byte(0xa1b4)
achievement ("Beginner", "Clan level 20+", 1, 
trigger = saveprotect() && ClanLevel() == 20 && prev(ClanLevel()) == 19)
achievement ("Intermediate", "Clan level 35+", 3, 
trigger = saveprotect() && ClanLevel() == 35 && prev(ClanLevel()) == 34)
achievement ("Expert", "Clan level 60+", 4, 
trigger = saveprotect() && ClanLevel() == 60 && prev(ClanLevel()) == 59)
achievement ("Master", "Clan level 99+", 5, 
trigger = saveprotect() && ClanLevel() == 99 && prev(ClanLevel()) == 98)

function hasIceprism(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x003c
    }
    return trigger
}

achievement ("Icicle", "Obtain the Iceprism", 5, 
trigger = saveprotect() && hasIceprism(0x9940) && ItemObtained(0x003c))

function hasGalmiaShoes(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0159
    }
    return trigger
}

achievement ("Shiny Shoes", "Obtain a pair of Galmia Shoes", 5, 
trigger = saveprotect() && hasGalmiaShoes(0x9940) && ItemObtained(0x0159))

function hasGenjiHelm(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x010e
    }
    return trigger
}

achievement ("Dope Helmet", "Obtain the Genji Helmet", 5, 
trigger = saveprotect() && hasGenjiHelm(0x9940) && ItemObtained(0x010e))

function hasGenjiArmor(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x012a
    }
    return trigger
}
achievement ("Dope Armor", "Obtain the Genji Armor", 5, 
trigger = saveprotect() && hasGenjiArmor(0x9940) && ItemObtained(0x012a))

function hasGenjiShield(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0103
    }
    return trigger
}
achievement ("Dope Shield", "Obtain the Genji Shield", 5, 
trigger = saveprotect() && hasGenjiShield(0x9940) && ItemObtained(0x0103))

function hasGenjiGlove(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0160
    }
    return trigger
}
achievement ("Dope Gloves", "Obtain the Genji Armlets", 5, 
trigger = saveprotect() && hasGenjiGlove(0x9940) && ItemObtained(0x0160))

function hasGastraBow(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x00bb
    }
    return trigger
}
achievement ("Solid Bow", "Obtain a Gastra Bow", 5, 
trigger = saveprotect() && hasGastraBow(0x9940) && ItemObtained(0x00bb))

function hasRubberSuit(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x013c
    }
    return trigger
}
achievement ("Shock Absorber", "Obtain a Rubber Suit", 5, 
trigger= saveprotect() && hasRubberSuit(0x9940) && ItemObtained(0x013c))


function hasMateriaBlade(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x001a
    }
    return trigger
}

achievement ("Socket Blade", "Obtain a Materia Blade", 5, 
trigger = saveprotect() && hasMateriaBlade(0x9940) && ItemObtained(0x001a))

function hasZeusMace(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x009e
    }
    return trigger
}

achievement ("Thunder Bonker", "Obtain Zeus' Mace", 5, 
trigger = saveprotect() && hasZeusMace(0x9940) && ItemObtained(0x009e))

function hasTulwar(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0026
    }
    return trigger
}

achievement ("Curved Blade", "Obtain a Tulwar", 5, 
trigger = saveprotect() && hasTulwar(0x9940) && ItemObtained(0x0026))

function hasZanmato(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0074
    }
    return trigger
}

achievement ("From Shadows", "Obtain a Zanmato", 5, 
trigger = saveprotect() && hasZanmato(0x9940) && ItemObtained(0x0074))

function hasSeventh(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0074
    }
    return trigger
}

achievement ("Divine Bow", "Obtain Seventh Heaven", 5, 
trigger = saveprotect() && hasSeventh(0x9940) && ItemObtained(0x00b8))

function hasSilverCoat(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x014e
    }
    return trigger
}

achievement ("Best Dressed", "Obtain a Silver Coat", 5, 
trigger = saveprotect() && hasSilverCoat(0x9940) && ItemObtained(0x014e))

function hasMinduGem(startaddr) {
    trigger = always_true()
    for i in range(0, 360){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x0169
    }
    return trigger
}

achievement ("Immunity", "Obtain the Mindu Gem", 5, 
trigger = saveprotect() && hasMinduGem(0x9940) && ItemObtained(0x0169))



function RecruitEldena()
{
trigger = always_false()
char_sprite = 0x818d
char_race = 0x818e
char_class = 0x818f
skill_barrier = 0x81de
skill_doublecast = 0x81e5

for i in range(0, 22)
{
num1 = byte(char_sprite + i * 264)
num2 = byte(char_race + i * 264)
num3 = byte(char_class + i * 264)
num4 = byte(skill_barrier + i * 264)
num5 = byte(skill_doublecast + i * 264)
  trigger = trigger || (num1 == 0x1e && prev(num1) == 0x00 && num2 == 0x04 && prev(num2) == 0x00 && num3 == 0x1e && prev(num3) == 0x00 && num4 == 0xe4 && num5 == 0xe4)
}
return trigger
}

achievement ("Double Down Red", "Recruit Eldena", 5, 
trigger = saveprotect() && RecruitEldena())

function RecruitLini()
{
trigger = always_false()
char2_sprite = 0x818d
char2_race = 0x818e
char2_class = 0x818f
skill_mogguard = 0x81d4
skill_ultimacharge = 0x81da

for i in range(0, 22)
{
num6 = byte(char2_sprite + i * 264)
num7 = byte(char2_race + i * 264)
num8 = byte(char2_class + i * 264)
num9 = byte(skill_mogguard + i * 264)
num10 = byte(skill_ultimacharge + i * 264)
  trigger = trigger || (num6 == 0x25 && prev(num6) == 0x00 && num7 == 0x05 && prev(num7) == 0x00 && num8 == 0x25 && prev(num8) == 0x00 && num9 == 0xe4 && num10 == 0xe4)
}
return trigger
}

achievement ("Knight of Old", "Recruit Lini", 5, 
trigger = saveprotect() && RecruitLini())

function RecruitCheney()
{
trigger = always_false()
char3_sprite = 0x818d
char3_race = 0x818e
char3_class = 0x818f
skill_capture = 0x824f
skill_ultimashot = 0x8251

for i in range(0, 22)
{
num11 = byte(char3_sprite + i * 264)
num12 = byte(char3_race + i * 264)
num13 = byte(char3_class + i * 264)
num14 = byte(skill_capture + i * 264)
num15 = byte(skill_ultimashot + i * 264)
  trigger = trigger || (num11 == 0xc && prev(num11) == 0x00 && num12== 0x01 && prev(num12) == 0x00 && num13 == 0xc && prev(num13) == 0x00 && num14 == 0xe4 && num15 == 0xe4)
}
return trigger
}

achievement ("Big Game Hunter", "Recruit Cheney", 5, 
trigger = saveprotect() && RecruitCheney())

function RecruitPallanza()
{
trigger = always_false()
char4_sprite = 0x818d
char4_race = 0x818e
char4_class = 0x818f
skill_blitz = 0x81ec
skill_ultimasword = 0x81f0

for i in range(0, 22)
{
num16 = byte(char4_sprite + i * 264)
num17 = byte(char4_race + i * 264)
num18 = byte(char4_class + i * 264)
num19 = byte(skill_blitz + i * 264)
num20 = byte(skill_ultimasword + i * 264)
  trigger = trigger || (num16 == 0x10 && prev(num16) == 0x00 && num17== 0x02 && prev(num17) == 0x00 && num18 == 0x10 && prev(num18) == 0x00 && num19 == 0xe4 && num20 == 0xe4)
}
return trigger
}

achievement ("Last Man Standing", "Recruit Pallanza", 5, 
trigger = saveprotect() && RecruitPallanza())

function RecruitQuin()
{
trigger = always_false()
char5_sprite = 0x818d
char5_race = 0x818e
char5_class = 0x818f
skill_gigaflare = 0x8220
skill_ultimablow = 0x8222

for i in range(0, 22)
{
num21 = byte(char5_sprite + i * 264)
num22 = byte(char5_race + i * 264)
num23 = byte(char5_class + i * 264)
num24 = byte(skill_gigaflare + i * 264)
num25 = byte(skill_ultimablow + i * 264)
  trigger = trigger || (num21 == 0x1b && prev(num21) == 0x00 && num22 == 0x03 && prev(num22) == 0x00 && num23 == 0x1b && prev(num23) == 0x00 && num24 == 0xe4 && num25 == 0xe4)
}
return trigger
}

achievement ("Top Scholar", "Recruit Quin", 5, 
trigger = saveprotect() && RecruitQuin())

function RecruitLittlevili()
{
trigger = always_false()
char6_sprite = 0x818d
char6_race = 0x818e
char6_class = 0x818f
skill_doubleshot = 0x8213
skill_doomarcher = 0x8217

for i in range(0, 22)
{
num26 = byte(char6_sprite + i * 264)
num27 = byte(char6_race + i * 264)
num28 = byte(char6_class + i * 264)
num29 = byte(skill_doubleshot + i * 264)
num30 = byte(skill_doomarcher + i * 264)
  trigger = trigger || (num26 == 0x23 && prev(num26) == 0x00 && num27 == 0x04 && prev(num27) == 0x00 && num28 == 0x23 && prev(num28) == 0x00 && num29 == 0xe4 && num30 == 0xe4)
}
return trigger
}

achievement ("Shot In The Dark", "Recruit Littlevili", 5, 
trigger = saveprotect() && RecruitLittlevili())

function RecruitEzel() => map() == map_ezel && bit0(0x9fbb) > prev(bit0(0x9fbb))
achievement ("Stacked Deck", "Recruit Ezel", 5, 
trigger = saveprotect() && RecruitEzel())

function RecruitBabus() => map() == map_babus && bit1(0x9fbb) > prev(bit1(0x9fbb))
achievement ("Stuffed Bear", "Recruit Babus", 5, 
trigger = saveprotect() && RecruitBabus()) 

function RecruitRitz() => map() == map_ritz && bit2(0x9fbb) > prev(bit2(0x9fbb))
achievement ("Of White Hair", "Recruit Ritz", 5, 
trigger = saveprotect() && RecruitRitz())

function RecruitShara() => map() == map_pub && bit3(0x9fbb) > prev(bit3(0x9fbb)) 
achievement ("Tight Aim", "Recruit Shara", 5, 
trigger = saveprotect() && RecruitShara())      

function RecruitCid() => map() == map_cid && bit4(0x9fbb) > prev(bit4(0x9fbb))    
achievement ("Judgemaster", "Recruit Cid", 10, 
trigger = saveprotect() && RecruitCid())  

function CidOne() => map() == map_noarms && bit3(0xa000) > prev(bit3(0xa000))
achievement ("No Arms Rule", "Complete extra quest 002", 10, 
trigger = saveprotect() && CidOne())

function CidTwo() => map() == map_kissingrule && bit4(0xa000) > prev(bit4(0xa000))
achievement ("Kissing Rule", "Complete extra quest 003", 10, 
trigger = saveprotect() && CidTwo())

function CidThree() => map() == map_immunity && bit5(0xa000) > prev(bit5(0xa000))
achievement ("Immunity Pass", "Complete extra quest 004", 10, 
trigger = saveprotect() && CidThree())

function CidFour() => map() == map_nofull && bit6(0xa000) > prev(bit6(0xa000))
achievement ("No Full HP", "Complete extra quest 005", 10, 
trigger = saveprotect() && CidFour())

function CidFive() => map() == map_literacy && bit7(0xa000) > prev(bit7(0xa000))
achievement ("No Literacy", "Complete extra quest 006", 10, 
trigger = saveprotect() && CidFive())

function CidSix() => map() == map_favorite && bit0(0xa001) > prev(bit0(0xa001))
achievement ("Favoritism", "Complete extra quest 007", 10, 
trigger = saveprotect() && CidSix())

function CidSeven() => map() == map_answers && bit1(0xa001) > prev(bit1(0xa001))
achievement ("No Answers", "Complete extra quest 008", 10, 
trigger = saveprotect() && CidSeven())

function CidEight() => map() == map_jumping && bit2(0xa001) > prev(bit2(0xa001))
achievement ("No Jumping", "Complete extra quest 009", 10, 
trigger = saveprotect() && CidEight())

function CidNine() => map() == map_decisionover && prev(map()) == map_decision && bit0(0xa001)+bit1(0xa001)+bit2(0xa001)+bit3(0xa000)+bit5(0xa000)+bit6(0xa000)+bit7(0xa000) == 7
achievement ("Decision Time", "Complete extra quest 010", 10, 
trigger = saveprotect() && CidNine())

function BlueMagick()
{
trigger = always_false()
GoblinPunch = 0x811c
MagicHammer = 0x811d
Acid = 0x811e
BlowUp = 0x811f
MightyGuard = 0x8120
GuardOff = 0x8121
DragonForce = 0x8122
Night = 0x8123
Twister = 0x8124
lv3Def = 0x8125
MatraMagic = 0x8126
PoisonClaw = 0x8129
HasteBreak = 0x812a
BadBreath = 0x812b
Stare = 0x812c
Roulette = 0x812d
DrainTouch = 0x812e
LvSFlare = 0x812f
WhiteWind = 0x8130
AngelWhisper = 0x8131
DamageMP = 0x8132
for i in range(0, 23)
{
slot1 = byte(GoblinPunch + i * 264)
slot2 = byte(MagicHammer + i * 264)
slot3 = byte(Acid + i * 264)
slot4 = byte(BlowUp + i * 264)
slot5 = byte(MightyGuard + i * 264)
slot6 = byte(GuardOff + i * 264)
slot7 = byte(DragonForce + i * 264)
slot8 = byte(Night + i * 264)
slot9 = byte(Twister + i * 264)
slot10 = byte(lv3Def + i * 264)
slot11 = byte(MatraMagic + i * 264)
slot12 = byte(PoisonClaw + i * 264)
slot13 = byte(HasteBreak + i * 264)
slot14 = byte(BadBreath + i * 264)
slot15 = byte(Stare + i * 264)
slot16 = byte(Roulette + i * 264)
slot17 = byte(DrainTouch + i * 264)
slot18 = byte(LvSFlare + i * 264)
slot19 = byte(WhiteWind + i * 264)
slot20 = byte(AngelWhisper + i * 264)
slot21 = byte(DamageMP + i * 264)           
  trigger = trigger || (slot1+slot2+slot3+slot4+slot5+slot6+slot7+slot8+slot9+slot10+slot11+slot12+slot13+slot14+slot15+slot16+slot17+slot18+slot19+slot20+slot21 == 0x12b4 &&
                        prev(slot1+slot2+slot3+slot4+slot5+slot6+slot7+slot8+slot9+slot10+slot11+slot12+slot13+slot14+slot15+slot16+slot17+slot18+slot19+slot20+slot21) == 0x11d0)
}
return trigger
}

achievement ("Big Blue", "Abosorb all Blue Magic on a single character", 25, 
trigger = saveprotect() && BlueMagick())

function GoblinCapture() => saveprotect() && byte(0xae7c) == 1 && prev(byte(0xae7c)) == 0
achievement ("House Elf", "Capture a Goblin", 3, 
trigger = GoblinCapture())

function RedCapCapture() => saveprotect() && byte(0xae8c) == 1 && prev(byte(0xae8c)) == 0
achievement ("Elder Elf", "Capture a Red Cap", 3, 
trigger = RedCapCapture())

function JellyCapture() => saveprotect() && byte(0xae9c) == 1 && prev(byte(0xae9c)) == 0
achievement ("Jello Cup", "Capture a Jelly", 3, 
trigger = JellyCapture())

function IceFlanCapture() => saveprotect() && byte(0x00aeac) == 1 && prev(byte(0x00aeac)) == 0
achievement ("Ice Cold", "Capture an Ice Flan", 3, 
trigger = IceFlanCapture())

function CreamCapture() => saveprotect() && byte(0x00aebc) == 1 && prev(byte(0x00aebc)) == 0
achievement ("Yellow Goop", "Capture a Cream", 3,
 trigger = CreamCapture())

function BombCapture() => saveprotect() && byte(0x00aecc) == 1 && prev(byte(0x00aecc)) == 0
achievement ("Splodie Boi", "Capture a Bomb", 3, 
trigger = BombCapture())

function GrenadeCapture() => saveprotect() && byte(0x00aedc) == 1 && prev(byte(0x00aedc)) == 0
achievement ("Fire In The Hole!", "Capture a Grenade", 3, 
trigger = GrenadeCapture())

function IceDrakeCapture() => saveprotect() && byte(0x00aeec) == 1 && prev(byte(0x00aeec)) == 0
achievement ("Frost Drake", "Capture an Ice Drake", 3, 
trigger = IceDrakeCapture())

function FirewymCapture() => saveprotect() && byte(0x00aefc) == 1 && prev(byte(0x00aefc)) == 0
achievement ("Flame Blast", "Capture a Firewyrm", 3, 
trigger = FirewymCapture())

function ThunderakeCapture() => saveprotect() && byte(0x00af0c) == 1 && prev(byte(0x00af0c)) == 0
achievement ("Thunder Clap", "Capture a Thunderake", 3, 
trigger = ThunderakeCapture())

function LamiaCapture() => saveprotect() && byte(0x00af1c) == 1 && prev(byte(0x00af1c)) == 0
achievement ("Snake Lady", "Capture a Lamia", 3, 
trigger = LamiaCapture())

function LilithCapture() => saveprotect() && byte(0x00af2c) == 1 && prev(byte(0x00af2c)) == 0
achievement ("Seductrice", "Capture a Lilith", 3, 
trigger = LilithCapture())

function AntlionCapture() => saveprotect() && byte(0x00af3c) == 1 && prev(byte(0x00af3c)) == 0
achievement ("Strong Manidbles", "Capture an Antlion", 3, 
trigger = AntlionCapture())

function JawbreakerCapture() => saveprotect() && byte(0x00af4c) == 1 && prev(byte(0x00af4c)) == 0
achievement ("Sandstorm", "Cpature a Jawbreaker", 3, 
trigger = JawbreakerCapture())

function RedPantherCapture() => saveprotect() && byte(0x00af5c) == 1 && prev(byte(0x00af5c)) == 0
achievement ("Seeing Red", "Cature a Red Panther", 3, 
trigger = RedPantherCapture())

function CoeurlCapture() => saveprotect() && byte(0x00af6c) == 1 && prev(byte(0x00af6c)) == 0
achievement ("Blue Beast", "Capture a Coeurl", 3, 
trigger = CoeurlCapture())

function MalboroCapture() => saveprotect() && byte(0x00af7c) == 1 && prev(byte(0x00af7c)) == 0
achievement ("Stinky Breath", "Capture a Malboro", 3, 
trigger = MalboroCapture())

function BigMalboroCapture() => saveprotect() && byte(0x00af8c) == 1 && prev(byte(0x00af8c)) == 0
achievement ("Big Mouth", "Capture a Big Malboro", 3, 
trigger = BigMalboroCapture())

function FloateyeCapture() => saveprotect() && byte(0x00af9c) == 1 && prev(byte(0x00af9c)) == 0
achievement ("Fragile Flyer", "Capture a Floateye", 3, 
trigger = FloateyeCapture())

function AhrimanCapture() => saveprotect() && byte(0x00afac) == 1 && prev(byte(0x00afac)) == 0
achievement ("One Eyed Roulette", "Capture an Ahriman", 3, 
trigger = AhrimanCapture())

function QuestsOne() => bit3(0x9fd3)+bit4(0x9fd3)+bit5(0x9fd3)+bit6(0x9fd3)+bit7(0x9fd3)+bit0(0x9fd4)+bit1(0x9fd4)+
                        bit2(0x9fd4)+bit3(0x9fd4)+bit4(0x9fd4)+bit5(0x9fd4)+bit6(0x9fd4)
achievement ("Quest Report I", "Complete page 2 of the mission reports 25-36", 5, 
trigger = saveprotect() && QuestsOne() == 12 && prev(QuestsOne()) == 11)

function QuestsTwo() => bit7(0x9fd4)+bitcount(0x9fd5)+bitcount(0x9fd6)+bit0(0x9fd7)
achievement ("Quest Report II", "Complete page 3 of the mission reports 37-54", 10, 
trigger = saveprotect() && QuestsTwo() == 18 && prev(QuestsTwo()) == 17)

function QuestsThree() => bitcount(0x9fd7)-bit0(0x9fd7)+bitcount(0x9fd8)+bit0(0x9fd9)+bit1(0x9fd9)+bit2(0x9fd9)+bit3(0x9fd9)
achievement ("Quest Report III", "Complete page 4 of the mission reports 55-72", 10, 
trigger = saveprotect() && QuestsThree() == 18 && prev(QuestsThree()) == 17)

function QuestsFour() => bit4(0x9fd9)+bit5(0x9fd9)+bit6(0x9fd9)+bit7(0x9fd9)+bitcount(0x9fda)+bitcount(0x9fdb)-bit6(0x9fdb)-bit7(0x9fdb)
achievement ("Quests Report IV", "Complete page 5 of the mission reports 73-90", 10, 
trigger = saveprotect() && QuestsFour() == 18 && prev(QuestsFour()) == 17)

function QuestsFive() => bit6(0x9fdb)+bit7(0x9fdb)+bitcount(0x9fdc)+bit0(0x9fdd)+bit1(0x9fdd)+bit6(0x9fdd)+bit7(0x9fdd)+bit0(0x9fde)+bit1(0x9fde)+
                         bit3(0x9fde)+bit4(0x9fde)
achievement ("Quests Report V", "Complete page 6 of the missions report 91-108", 10, 
trigger = saveprotect() && QuestsFive() == 18 && prev(QuestsFive()) == 17)

function QuestsSix() => bit5(0x9fde)+bit6(0x9fde)+bit7(0x9fde)+bit0(0x9fdf)+bit7(0x9fdf)+bitcount(0x9fe0)+bit0(0x9fe1)+bit1(0x9fe1)+
                        bit2(0x9fe1)+bit3(0x9fe1)+bit4(0x9fe1)
achievement ("Quests Report VI", "Complete page 7 of the missions report 109-126", 10, 
trigger = saveprotect() && QuestsSix() == 18 && prev(QuestsSix()) == 17)

function QuestsSeven() => bit5(0x9fe1)+bit6(0x9fe1)+bit7(0x9fe1)+bitcount(0x9fe2)+bitcount(0x9fe3)-bit7(0x9fe3)
achievement ("Quests Report VII", "Complete page 8 of the missions report 127-144", 10, 
trigger = saveprotect() && QuestsSeven() == 18 && prev(QuestsSeven()) == 17)

function QuestsEight() => bit7(0x9fe3)+bitcount(0x9fe4)+bitcount(0x9fe5)+bit0(0x9fe6)
achievement ("Quests Report VIII", "Complete page 9 of the missions report 145-162", 10, 
trigger = saveprotect() && QuestsEight() == 18 && prev(QuestsEight()) == 17)

function QuestsNine() => bitcount(0x9fe6)-bit0(0x9fe6)+bitcount(0x9fe7)+bit0(0x9fe8)+bit1(0x9fe8)+bit2(0x9fe8)
achievement ("Quests Report IX", "Complete page 10 of the missions report 163-180", 10, 
trigger = saveprotect() && QuestsNine() == 18 && prev(QuestsNine()) == 17)

function QuestsTen() => bit3(0x9fe8)+bit4(0x9fe8)+bit5(0x9fe8)+bit6(0x9fe8)+bit7(0x9fe8)+bitcount(0x9fe9)+bitcount(0x9fea)-bit5(0x9fea)-bit6(0x9fea)-bit7(0x9fea)
achievement ("Quests Report X", "Complete page 11 of the missions report 181-198", 10, 
trigger = saveprotect() && QuestsTen() == 18 && prev(QuestsTen()) == 17)

function QuestsEleven() => bit5(0x9fea)+bit6(0x9fea)+bit7(0x9fea)+bitcount(0x9feb)+bitcount(0x9fec)-bit7(0x9fec)
achievement ("Quests Report XI", "Complete page 12 of the missions report 199-216", 10, 
trigger = saveprotect() && QuestsEleven() == 18 && prev(QuestsEleven()) == 17)

function QuestsTwelve() => bit7(0x9fec)+bitcount(0x9fed)+bitcount(0x9fee)+bit0(0x9fef)
achievement ("Quests Report XII", "Complete page 13 of the missions report 217-234", 10, 
trigger = saveprotect() && QuestsTwelve() == 18 && prev(QuestsTwelve()) == 17)

function QuestsThirteen() => bitcount(0x9fef)-bit0(0x9fef)+bitcount(0x9ff0)+bit0(0x9ff1)+bit1(0x9ff1)+bit2(0x9ff1)
achievement ("Quests Report XIII", "Complete page 14 of the missions report 235-252", 10, 
trigger = saveprotect() && QuestsThirteen() == 18 && prev(QuestsThirteen()) == 17)

function QuestsFourteen() => bit3(0x9ff1)+bit4(0x9ff1)+bit5(0x9ff1)+bit6(0x9ff1)+bit7(0x9ff1)+bitcount(0x9ff2)+bit0(0x9ff3)+bit1(0x9ff3)+bit2(0x9ff3)+
                             bit3(0x9ff3)+bit4(0x9ff3)
achievement ("Quests Report XIV", "Complete Page 15 of the missions report 253-270", 10, 
trigger = saveprotect() && QuestsFourteen() == 18 && prev(QuestsFourteen()) == 17)

function QuestsFifteen() => bit5(0x9ff3)+bit6(0x9ff3)+bit7(0x9ff3)+bitcount(0x9ff4)+bitcount(0x9ff5)-bit7(0x9ff5)
achievement ("Quests Report XV", "Complete Page 16 of the missions report 271-288", 10, 
trigger = saveprotect() && QuestsFifteen() == 18 && prev(QuestsFifteen()) == 17)

function QuestsSixteen() => bit7(0x9ff5)+bitcount(0x9ff6)+bit0(0x9ff7)+bit1(0x9ff7)+bit2(0x9ff7)
achievement ("Quests Report XVI", "Complete page 17 of the missions report 289-300", 5, 
trigger = saveprotect() && QuestsSixteen() == 12 && prev(QuestsSixteen()) == 11)