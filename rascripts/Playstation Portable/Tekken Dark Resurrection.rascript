// Tekken: Dark Resurrection
// #ID = 3203



function LeftChar() => byte(0xb78978)
function RightChar() => byte(0xb789f0)
Paul = 0x00
Law = 0x01
Lei = 0x02
King = 0x03
Yoshimitsu = 0x04
Nina = 0x05
Hwoarang = 0x06
Xiaoyu = 0x07
Christie = 0x08
Jin = 0x09
Julia = 0x0a
Kuma = 0x0b
Bryan = 0x0c
Heihachi = 0x0d
Kazuya = 0x0e
Lee = 0x0f
Steve = 0x10
Marduk = 0x11
Mokujin = 0x12
JackFive = 0x13
RogerJr = 0x14
Anna = 0x15
Wang = 0x16
Ganryu = 0x17
Asuka = 0x18
Bruce = 0x19
Baek = 0x1a
DevilJin = 0x1b
Raven = 0x1c
Feng = 0x1d
ArmorKing = 0x1e
Lili = 0x1f
Dragunov = 0x20
Eddy = 0x21

function Mode() => byte(0xb7519c)
Arcade = 0x00
MainMenu = 0x01
Story = 0x02
QuickB = 0x04
TimeAttack = 0x05
Survival = 0x06
RankingTournament = 0x18
STournament = 0x19
Gold = 0x0a
Command = 0x0b
Bowling = 0x1e
QuickC = 0x29

function Diff() => byte(0x1b5bb80)
E = 0
M = 1
H = 2
V = 3
U = 4

function Rounds() => byte(0x1b5bb81)
function Timer() => byte(0x1b5bb82)
function StoryLevel() => byte(0xb751d0)
function GuardDamage() => byte(0x1b5bb83)
function Settings() => Mode() == Story && Rounds() == 1 && Timer() == 2
function StoryBeat() => StoryLevel() == 9 && prev(StoryLevel()) == 8
function CommandStage() => byte(0x1d9e8c4) == 9
function CommandWin() => byte(0x1d9e8ec) == 2
function CommandBeat() => Mode() == Command && CommandStage() && CommandWin()
function ContinuePauseLeft() => unless(once,PlayerSide() == Left && byte(0xb76290) == 2)
function ContinuePauseRight() => unless(once,PlayerSide() == Right && byte(0xb759c0) == 2)
function ContinueReset() => never(StoryLevel() == 0)
function PlayerSide() => byte(0x1b5bbcb)
Left = 0
Right = 1

function pPaul() => PlayerSide() == Left && LeftChar() == Paul || PlayerSide() == Right && RightChar() == Paul
function pLaw() => PlayerSide() == Left && LeftChar() == Law || PlayerSide() == Right && RightChar() == Law
function pLei() => PlayerSide() == Left && LeftChar() == Lei || PlayerSide() == Right && RightChar() == Lei
function pKing() => PlayerSide() == Left && LeftChar() == King || PlayerSide() == Right && RightChar() == King
function pYoshimitsu() => PlayerSide() == Left && LeftChar() == Yoshimitsu || PlayerSide() == Right && RightChar() == Yoshimitsu
function pNina() => PlayerSide() == Left && LeftChar() == Nina || PlayerSide() == Right && RightChar() == Nina
function pHwoarang() => PlayerSide() == Left && LeftChar() == Hwoarang || PlayerSide() == Right && RightChar() == Hwoarang
function pXiaoyu() => PlayerSide() == Left && LeftChar() == Xiaoyu || PlayerSide() == Right && RightChar() == Xiaoyu
function pChristie() => PlayerSide() == Left && LeftChar() == Christie || PlayerSide() == Right && RightChar() == Christie
function pJin() => PlayerSide() == Left && LeftChar() == Jin || PlayerSide() == Right && RightChar() == Jin
function pJulia() => PlayerSide() == Left && LeftChar() == Julia || PlayerSide() == Right && RightChar() == Julia
function pKuma() => PlayerSide() == Left && LeftChar() == Kuma || PlayerSide() == Right && RightChar() == Kuma
function pBryan() => PlayerSide() == Left && LeftChar() == Bryan || PlayerSide() == Right && RightChar() == Bryan
function pHeihachi() => PlayerSide() == Left && LeftChar() == Heihachi || PlayerSide() == Right && RightChar() == Heihachi
function pKazuya() => PlayerSide() == Left && LeftChar() == Kazuya || PlayerSide() == Right && RightChar() == Kazuya
function pLee() => PlayerSide() == Left && LeftChar() == Lee || PlayerSide() == Right && RightChar() == Lee
function pSteve() => PlayerSide() == Left && LeftChar() == Steve || PlayerSide() == Right && RightChar() == Steve
function pMarduk() => PlayerSide() == Left && LeftChar() == Marduk || PlayerSide() == Right && RightChar() == Marduk
function pMokujin() => PlayerSide() == Left && LeftChar() == Mokujin || PlayerSide() == Right && RightChar() == Mokujin
function pJackFive() => PlayerSide() == Left && LeftChar() == JackFive || PlayerSide() == Right && RightChar() == JackFive
function pRogerJr() => PlayerSide() == Left && LeftChar() == RogerJr || PlayerSide() == Right && RightChar() == RogerJr
function pAnna() => PlayerSide() == Left && LeftChar() == Anna || PlayerSide() == Right && RightChar() == Anna
function pWang() => PlayerSide() == Left && LeftChar() == Wang || PlayerSide() == Right && RightChar() == Wang
function pGanryu() => PlayerSide() == Left && LeftChar() == Ganryu || PlayerSide() == Right && RightChar() == Ganryu
function pAsuka() => PlayerSide() == Left && LeftChar() == Asuka || PlayerSide() == Right && RightChar() == Asuka
function pBruce() => PlayerSide() == Left && LeftChar() == Bruce || PlayerSide() == Right && RightChar() == Bruce
function pBaek() => PlayerSide() == Left && LeftChar() == Baek || PlayerSide() == Right && RightChar() == Baek
function pDevilJin() => PlayerSide() == Left && LeftChar() == DevilJin || PlayerSide() == Right && RightChar() == DevilJin
function pRaven() => PlayerSide() == Left && LeftChar() == Raven || PlayerSide() == Right && RightChar() == Raven
function pFeng() => PlayerSide() == Left && LeftChar() == Feng || PlayerSide() == Right && RightChar() == Feng
function pArmorKing() => PlayerSide() == Left && LeftChar() == ArmorKing || PlayerSide() == Right && RightChar() == ArmorKing
function pLili() => PlayerSide() == Left && LeftChar() == Lili || PlayerSide() == Right && RightChar() == Lili
function pDragunov() => PlayerSide() == Left && LeftChar() == Dragunov || PlayerSide() == Right && RightChar() == Dragunov
function pEddy() => PlayerSide() == Left && LeftChar() == Eddy || PlayerSide() == Right && RightChar() == Eddy

achievement ("One Shot: Medium", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with any character without using continues", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          ContinuePauseRight() &&
          ContinuePauseLeft() &&
          (always_false() || ContinueReset()))
          
achievement ("Getting There", "[>= Hard] [Rounds:2] [Timer:60] Beat the story with any character", 5,
trigger = Diff() >= H &&
          Settings() &&
          StoryBeat())  
          
achievement ("One Shot: Hard", "[>= Hard] [Rounds:2] [Timer:60] Beat the story with any character without using continues", 10,
trigger = Diff() >= H &&
          Settings() &&
          StoryBeat() &&
          ContinuePauseRight() &&
          ContinuePauseLeft() &&
          (always_false() || ContinueReset()))
          
achievement ("Getting Things Done", "[>= Very Hard] [Rounds:2] [Timer:60] Beat the story with any character", 10,
trigger = Diff() >= V &&
          Settings() &&
          StoryBeat())
          
achievement ("One Shot: V.Hard", "[>= Very Hard] [Rounds:2] [Timer:60] Beat the story with any character without using continues", 10,
trigger = Diff() >= V &&
          Settings() &&
          StoryBeat() &&
          ContinuePauseRight() &&
          ContinuePauseLeft() &&
          (always_false() || ContinueReset()))       
          
achievement ("Got it Done", "[Ultra Hard] [Rounds:2] [Timer:60] Beat the story with any character", 10,
trigger = Diff() == U &&
          Settings() &&
          StoryBeat())

achievement ("One Shot: U.Hard", "[Ultra Hard] [Rounds:2] [Timer:60] Beat the story with any character without using continues", 25,
trigger = Diff() == U &&
          Settings() &&
          StoryBeat() &&
          ContinuePauseRight() &&
          ContinuePauseLeft() &&
          (always_false() || ContinueReset()))

achievement ("Vengeful Demon of Prison", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Eddy", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pEddy())
          
achievement ("[Command Attack] Vengeful Demon of Prison", "Complete all 10 rounds with Eddy", 5,
trigger = CommandBeat() &&
          pEddy())
        
achievement ("Killing Hawk", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Baek", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pBaek())
 
achievement ("[Command Attack] Killing Hawk", "Complete all 10 rounds with Baek", 5,
trigger = CommandBeat() &&
          pBaek()) 
       
achievement ("Who's the Dummy Now?", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Mokujin", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pMokujin())

achievement ("[Command Attack] Who's the Dummy Now?", "Complete all 10 rounds with Mokujin", 5,
trigger = CommandBeat() &&
          pMokujin()) 
         
achievement ("Devil Gene", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Devil Jin", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pDevilJin())

achievement ("[Command Attack] Devil Gene", "Complete all 10 rounds with Devil Jin", 5,
trigger = CommandBeat() &&
          pDevilJin()) 
                  
achievement ("Dark Talon of Death", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Raven", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pRaven())

achievement ("[Command Attack] Dark Talon of Death", "Complete all 10 rounds with Raven", 5,
trigger = CommandBeat() &&
          pRaven()) 

achievement ("Gang Mediator", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Asuka", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pAsuka())

achievement ("[Command Attack] Gang Mediator", "Complete all 10 rounds with Asuka", 5,
trigger = CommandBeat() &&
          pAsuka()) 

achievement ("Merciless", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Feng", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pFeng())

achievement ("[Command Attack] Merciless", "Complete all 10 rounds with Feng", 5,
trigger = CommandBeat() &&
          pFeng()) 
     
achievement ("Reckless Great Maidenhair", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Ganryu", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pGanryu())

achievement ("[Command Attack] Reckless Great Maidenhair", "Complete all 10 rounds with Ganryu", 5,
trigger = CommandBeat() &&
          pGanryu()) 

achievement ("Master Fighter", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Wang", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pWang())
          
achievement ("[Command Attack] Master Fighter", "Complete all 10 rounds with Wang", 5,
trigger = CommandBeat() &&
          pWang()) 
      
achievement ("Wicked Flower", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Armor King", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pArmorKing())

achievement ("[Command Attack] Wicked Flower", "Complete all 10 rounds with Armor King", 5,
trigger = CommandBeat() &&
          pArmorKing()) 

achievement ("Scarlet Lightning", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Anna", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pAnna())

achievement ("[Command Attack] Scarlet Lightning", "Complete all 10 rounds with Anna", 5,
trigger = CommandBeat() &&
          pAnna()) 
 
achievement ("Brutal Vale Tudo Fighter", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Marduk", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pMarduk())

achievement ("[Command Attack] Brutal Vale Tudo Fighter", "Complete all 10 rounds with Marduk", 5,
trigger = CommandBeat() &&
          pMarduk()) 

achievement ("The Fighting Chef", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Law", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pLaw())

achievement ("[Command Attack] The Fighting Chef", "Complete all 10 rounds with Law", 5,
trigger = CommandBeat() &&
          pLaw()) 

achievement ("Blood Talon", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Hwoarang", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pHwoarang())

achievement ("[Command Attack] Blood Talon", "Complete all 10 rounds with Hwoarang", 5,
trigger = CommandBeat() &&
          pHwoarang()) 

achievement ("Beast Priest", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with King", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pKing())

achievement ("[Command Attack] Beast Priest", "Complete all 10 rounds with King", 5,
trigger = CommandBeat() &&
          pKing()) 

achievement ("Platinum Grace", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Lili", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pLili())

achievement ("[Command Attack] Platinum Grace", "Complete all 10 rounds with Lili", 5,
trigger = CommandBeat() &&
          pLili()) 

achievement ("The White Angel of Death", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Dragunov", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pDragunov())

achievement ("[Command Attack] The White Angel of Death", "Complete all 10 rounds with Dragunov", 5,
trigger = CommandBeat() &&
          pDragunov()) 

achievement ("The King of Iron Fist", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Heihachi", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pHeihachi())

achievement ("[Command Attack] The King of Iron Fist", "Complete all 10 rounds with Heihachi", 5,
trigger = CommandBeat() &&
          pHeihachi()) 
 
achievement ("Art of Capoeira", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Christie", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pChristie())
          
achievement ("[Command Attack] Art of Capoeira", "Complete all 10 rounds with Christie", 5,
trigger = CommandBeat() &&
          pChristie()) 

achievement ("Blazing Brawler", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Paul", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pPaul())

achievement ("[Command Attack] Blazing Brawler", "Complete all 10 rounds with Paul", 5,
trigger = CommandBeat() &&
          pPaul()) 
  
achievement ("Heavy Arms", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Jack-5", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pJackFive())

achievement ("[Command Attack] Heavy Arms", "Complete all 10 rounds with Jack-5", 5,
trigger = CommandBeat() &&
          pJackFive()) 
  
achievement ("Nightmare Impact", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Bruce", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pBruce())

achievement ("[Command Attack] Nightmare Impact", "Complete all 10 rounds with Bruce", 5,
trigger = CommandBeat() &&
          pBruce()) 
 
achievement ("Genetic Masterpiece", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Roger Jr.", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pRogerJr())

achievement ("[Command Attack] Genetic Masterpiece", "Complete all 10 rounds with Roger Jr.", 5,
trigger = CommandBeat() &&
          pRogerJr()) 
    
achievement ("Super Police", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Lei", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pLei())

achievement ("[Command Attack] Super Police", "Complete all 10 rounds with Lei", 5,
trigger = CommandBeat() &&
          pLei()) 
  
achievement ("Silent Assassin", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Nina", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pNina())

achievement ("[Command Attack] Silent Assassin", "Complete all 10 rounds with Nina", 5,
trigger = CommandBeat() &&
          pNina()) 
 
achievement ("Stinging Hook", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Steve", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pSteve())

achievement ("[Command Attack] Stinging Hook", "Complete all 10 rounds with Steve", 5,
trigger = CommandBeat() &&
          pSteve()) 
   
achievement ("Cold-Blooded Son", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Kazuya", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pKazuya())

achievement ("[Command Attack] Cold-Blooded Son", "Complete all 10 rounds with Kazuya", 5,
trigger = CommandBeat() &&
          pKazuya()) 
  
achievement ("Dancing Phoenix", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Xiaoyu", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pXiaoyu())

achievement ("[Command Attack] Dancing Phoenix", "Complete all 10 rounds with Xiaoyu", 5,
trigger = CommandBeat() &&
          pXiaoyu()) 
  
achievement ("Fatal Lightning", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Jin", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pJin())

achievement ("[Command Attack] Fatal Lightning", "Complete all 10 rounds with Jin", 5,
trigger = CommandBeat() &&
          pJin()) 
   
achievement ("Silver Haired-Demon", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Lee", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pLee())

achievement ("[Command Attack] Silver Haired-Demon", "Complete all 10 rounds with Lee", 5,
trigger = CommandBeat() &&
          pLee()) 
    
achievement ("Jaycee", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Julia", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pJulia())

achievement ("[Command Attack] Jaycee", "Complete all 10 rounds with Julia", 5,
trigger = CommandBeat() &&
          pJulia()) 

achievement ("The Inheritor of the Demon Sword", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Yoshimitsu", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pYoshimitsu())

achievement ("[Command Attack] The Inheritor of the Demon Sword", "Complete all 10 rounds with Yoshimitsu", 5,
trigger = CommandBeat() &&
          pYoshimitsu()) 
		    
achievement ("Snake Eyes", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Bryan", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pBryan())

achievement ("[Command Attack] Snake Eyes", "Complete all 10 rounds with Bryan", 5,
trigger = CommandBeat() &&
          pBryan()) 
		    
achievement ("Mad Bear", "[>= Medium] [Rounds:2] [Timer:60] Beat the story with Kuma", 5,
trigger = Diff() >= M &&
          Settings() &&
          StoryBeat() &&
          pKuma())

achievement ("[Command Attack] Mad Bear", "Complete all 10 rounds with Kuma", 5,
trigger = CommandBeat() &&
          pKuma()) 
          
function TimeAttack() => Mode() == TimeAttack && StoryBeat()         
          
achievement ("On the Clock", "Beat time attack with any character", 5,
trigger = TimeAttack())          
          
function ClockCheck() => dword(0xb751d8)         
function TimeAttackFast() => Mode() == TimeAttack && tally(9,prev(ClockCheck()) <= 0x70c && StoryLevel() > prev(StoryLevel())) && ContinueReset() && never(StoryLevel() < prev(StoryLevel()))  
          
achievement ("Let's Murderlize 'Em", "Beat time attack with any character while taking less than 30 seconds per fighter without using a continue", 25,
trigger = TimeAttackFast())          
          
function BowlingMode() => byte(0xb822a4)
OneP = 0x00
TwoP = 0x01
Tournament = 0x02
Striker = 0x03
function BowlingScore() => word(0xb823c0)
function JrBowling() => Mode() == Bowling && BowlingMode() == OneP && BowlingScore() <= 300 && BowlingScore() >= 100
function Exbowling() => Mode() == Bowling && BowlingMode() == OneP  && BowlingScore() <= 300 && BowlingScore() >= 200
function PerfectBowling() => Mode() == Bowling && BowlingMode() == OneP  && BowlingScore() == 300

achievement ("Junior Division", "[One Player] Bowl a 100 or higher", 5,
trigger = JrBowling())

achievement ("Intermediate Division", "[One Player] Bowl a 200 or higher", 10,
trigger = Exbowling())

achievement ("Master Division", "[One Player] Bowl a perfect game", 50,
trigger = PerfectBowling())

function BowlingStrikeRemaining() => byte(0xb8253c)
function BowlingStrikeScore() => word(0xb82538)
function StrikeBowlHundred() => Mode() == Bowling && BowlingMode() == Striker && BowlingStrikeRemaining() == 0xff && prev(BowlingStrikeRemaining()) == 0 && BowlingStrikeScore() >= 100
function StrikeBowlTwo() => Mode() == Bowling && BowlingMode() == Striker && BowlingStrikeRemaining() == 0xff && prev(BowlingStrikeRemaining()) == 0 && BowlingStrikeScore() >= 200

achievement ("Spectacular", "[Striker] Finish with 100 or more points", 10,
trigger = StrikeBowlHundred())

achievement ("Master Bowler", "[Striker] Finish with 200 or more points", 25,
trigger = StrikeBowlTwo())

function Overcharge() => Mode() == Bowling && byte(0xb822a8) == 0x0b && prev(byte(0xb822a8)) == 0x02

achievement ("I Am One With the Ball", "Overcharge a bowling ball", 1,
trigger = Overcharge())

 
function GoldDiff() => byte(0xb75370)
Med = 1
Har = 2
VHar = 3
UHar = 4
function GoldDigger() => Mode() == Gold && word(0xb751e8) >= 0x2710 && prev(word(0xb751e8)) == 0

achievement ("Exploration", "[Gold Digger] [Medium] Finish with 10,000 or more points in Gold Digger", 1,
trigger = GoldDiff() == 1 && 
          GoldDigger())

achievement ("Miner", "[Gold Digger] [Hard] Finish with 10,000 or more points in Gold Digger", 2,
trigger = GoldDiff() == 2 && 
          GoldDigger())
          
achievement ("Enthusiast", "[Gold Digger] [Very Hard] Finish with 10,000 or more points in Gold Digger", 4,
trigger = GoldDiff() == 3 && 
          GoldDigger())

achievement ("Gold Digger", "[Gold Digger] [Ultra Hard] Finish with 10,000 or more points in Gold Digger", 5,
trigger = GoldDiff() == 4 && 
          GoldDigger())

function DojoDiff() => byte(0xb79a20)
Easy = 0x00
Normal = 0x01

function DojoEle() => byte(0xb79a21)
Yurin = 0
Earth = 1
Water = 2
Fire = 3
Wind = 4
Void = 5
Heaven = 6

function DojoModeEarth() => byte(0xb79a22)
LeagueMatch = 0
EarthRanking = 1
Free = 2

function DojoModeWaterFire() => byte(0xb79a22)
LeagueMatchB = 0
LeagueMatchA = 1
WaterFireRanking = 2
Free = 3
Challenge = 4

function DojoModeWind() => byte(0xb79a22)
LeagueMatchB = 0
SurvivalTournament = 1
LeagueMatchA = 2
WindRanking = 3
Free = 4
Challenge = 5

function DojoModeHeaven() => byte(0xb79a22)
LeagueMatch = 0
SurvivalTournament = 1

function DojoRank() => byte(0xb79a28)

function EarthDojo() => Mode() == RankingTournament && DojoDiff() == Normal && DojoEle() == Earth && DojoModeEarth() == EarthRanking && StoryLevel() == 3 && prev(StoryLevel()) == 2
function WaterDojo() => Mode() == RankingTournament && DojoDiff() == Normal && DojoEle() == Water && DojoModeWaterFire() == WaterFireRanking && StoryLevel() == 3 && prev(StoryLevel()) == 2
function FireDojo() => Mode() == RankingTournament && DojoDiff() == Normal && DojoEle() == Fire && DojoModeWaterFire() == WaterFireRanking && StoryLevel() == 4 && prev(StoryLevel()) == 3
function WindDojo() => Mode() == RankingTournament && DojoDiff() == Normal && DojoEle() == Wind && DojoModeWind() == WindRanking && StoryLevel() == 4 && prev(StoryLevel()) == 3
function VoidDojo() => Mode() == RankingTournament && DojoDiff() == Normal && DojoEle() == Void && DojoModeWind() == WindRanking && StoryLevel() == 5 && prev(StoryLevel()) == 4
function HeavenDojo() => DojoDiff() == Normal && DojoEle() == Heaven && DojoRank() == 0 && prev(DojoRank()) >= 1 && prev(DojoRank()) <= 9 && (always_false() || Mode() == RankingTournament || Mode() == STournament)

achievement ("Elemental Earth", "[Normal] Reach rank 1 in the Earth Dojo with any fighter", 5,
trigger = EarthDojo())

achievement ("Elemental Water", "[Normal] Reach rank 1 in the Water Dojo with any fighter", 10,
trigger = WaterDojo())

achievement ("Elemental Fire", "[Normal] Reach rank 1 in the Fire Dojo with any fighter", 10,
trigger = FireDojo())

achievement ("Elemental Wind", "[Normal] Reach rank 1 in the Wind Dojo with any fighter", 10,
trigger = WindDojo())

achievement ("Elemental Void", "[Normal] Reach rank 1 in the Void Dojo with any fighter", 25,
trigger = VoidDojo())

achievement ("Elemental Heaven", "[Normal] Reach rank 1 in the Heaven Dojo with any fighter", 50,
trigger = HeavenDojo())
                 