// Naruto: Ninja Council 2
// #ID = 548

function CharHealth() => word(0x356)
function ComboCount() => word(0x19ba)
function EnemiesDefeated() => word(0x4536)
function LeavesCollected() => word(4538)
function CurrentLevel() => byte(0x453f)
function CurrentCharacter() => byte(0x4545)
    Naruto = 0x00
    Sasuke = 0x01
    Sakura = 0x03
function ResultScreenShown() => byte(0x5fb3)

achievement(
    title = "The First Exam!", description = "Clear Level 1", points = 5,
    id = 1271, badge = "01524", published = "5/25/2013 7:45:12 PM", modified = "8/3/2019 10:59:31 AM",
    trigger = CurrentLevel() == 0x01 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x01)

achievement(
    title = "The Second Exam!", description = "Clear Level 2", points = 10,
    id = 1272, badge = "01524", published = "5/25/2013 7:45:16 PM", modified = "5/25/2013 7:46:02 PM",
    trigger = CurrentLevel() == 0x02 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x02)
    
achievement( //The For Further Growth!
    title = "For Further Growth!", description = "Clear Level 3", points = 10,
    id = 1273, badge = "01524", published = "5/25/2013 7:45:19 PM", modified = "5/25/2013 7:46:06 PM",
    trigger = CurrentLevel() == 0x03 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x03)

achievement( //Reach Level 4 - The Pursuer!
    title = "The Pursuer!", description = "Clear Level 4", points = 10,
    id = 1274, badge = "01524", published = "5/25/2013 7:45:24 PM", modified = "5/25/2013 7:46:09 PM",
    trigger = CurrentLevel() == 0x04 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x04)

achievement( //Reach Level 5 - Wild Desires!
    title = "Wild Desires!", description = "Clear level 5", points = 10,
    id = 1275, badge = "01524", published = "5/25/2013 7:45:28 PM", modified = "5/25/2013 7:46:12 PM",
    trigger = CurrentLevel() == 0x05 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x05)

achievement( //Final Chunin Exam!
    title = "Final Chunin Exam!", description = "Clear Level 6", points = 10,
    id = 1276, badge = "01524", published = "5/25/2013 7:45:31 PM", modified = "5/25/2013 7:46:17 PM",
    trigger = CurrentLevel() == 0x06 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x06)

achievement(
    title = "Leaf Ninja!", description = "Finish the Game", points = 25,
    id = 1277, badge = "01524", published = "5/25/2013 7:45:35 PM", modified = "10/23/2019 5:09:01 PM",
    trigger = CurrentLevel() == 0x07 && prev(ResultScreenShown()) == 00 && ResultScreenShown() == 0x07)

achievement(
    title = "Leaves", description = "Collect 50 Leaves", points = 5,
    id = 1264, badge = "01525", published = "5/25/2013 5:54:57 AM", modified = "12/16/2020 4:59:04 PM",
    trigger = prev(LeavesCollected()) <= 49 && prev(LeavesCollected()) >= 45 && LeavesCollected() >= 50 && CurrentLevel() >= 0x01)

achievement(
    title = "Leaves II", description = "Collect 125 Leaves", points = 10,
    id = 1279, badge = "01525", published = "5/25/2013 7:54:07 PM", modified = "12/13/2020 6:12:45 AM",
    trigger = prev(LeavesCollected()) <= 124 && prev(LeavesCollected()) >= 119 && LeavesCollected() >= 125 && CurrentLevel() >= 0x01)

achievement(
    title = "Good Fight", description = "Defeat 50 enemies", points = 5,
    id = 1263, badge = "01527", published = "5/25/2013 5:44:56 AM", modified = "11/25/2019 9:35:24 PM",
    trigger = repeated(50, EnemiesDefeated() > prev(EnemiesDefeated())) && never(CurrentLevel() == 0x00))

achievement(
    title = "Great Fight", description = "Defeat 125 enemies", points = 10,
    id = 1278, badge = "01526", published = "5/25/2013 7:54:00 PM", modified = "11/25/2019 9:35:21 PM",
    trigger =  repeated(125, EnemiesDefeated() > prev(EnemiesDefeated())) && never(CurrentLevel() == 0x00))

achievement(
    title = "10 Combo", description = "Perform a 10 Hit combo", points = 5,
    id = 31856, badge = "32621", published = "1/12/2016 1:10:22 AM", modified = "8/3/2019 10:59:56 AM",
    trigger = prev(ComboCount()) >= 5 && prev(ComboCount()) <= 9 && ComboCount() == 10)

achievement(
    title = "17 Combo", description = "Perform a 17 Hit combo", points = 5,
    id = 31857, badge = "32622", published = "1/12/2016 1:10:26 AM", modified = "8/3/2019 11:00:02 AM",
    trigger = prev(ComboCount()) >= 11 && prev(ComboCount()) <= 16 && ComboCount() == 17)

achievement(
    title = "21 Combo", description = "Perform a 21 Hit combo", points = 5,
    id = 31858, badge = "32623", published = "1/12/2016 1:36:23 AM", modified = "8/3/2019 11:00:07 AM",
    trigger = prev(ComboCount()) >= 15 && prev(ComboCount()) <= 20 && ComboCount() == 21)
