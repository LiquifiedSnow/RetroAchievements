// Final Fantasy: The 4 Heroes of Light
// #ID = 14837


function save_protect() => prev(byte(0xca5a4)) != 0xff

function wayfarer_crown() => bit1(0xde430)
function blackmage_crown() => bit2(0xde430)
function whitemage_crown() => bit3(0xde430)
function bandit_crown() => bit4(0xde430)
function bard_crown() => bit5(0xde430)
function elementalist_crown() => bit6(0xde430)
function ranger_crown() => bit7(0xde430)
function merchant_crown() => bit0(0xde431)
function salvemaker_crown() => bit1(0xde431)
function fighter_crown() => bit2(0xde431)
function scholar_crown() => bit3(0xde431)
function partyhost_crown() => bit4(0xde431)
function hero_crown() => bit5(0xde431)
function spellfencer_crown() => bit6(0xde431)
function darkfencer_crown() => bit7(0xde431)
function sage_crown() => bit0(0xde432)
function shaman_crown() => bit1(0xde432)
function paladin_crown() => bit2(0xde432)
function ninja_crown() => bit3(0xde432)
function dancer_crown() => bit4(0xde432)
function musician_crown() => bit5(0xde432)
function monk_crown() => bit6(0xde432)
function beastmaster_crown() => bit7(0xde432)
function seamstress_crown() => bit0(0xde433)
function alchemist_crown() => bit1(0xde433)
function scribe_crown() => bit2(0xde433)
function storyteller_crown() => bit3(0xde433)   


function gift_horne() => byte(0xcd895)+byte(0xcd896)+byte(0xcd8a0)+byte(0xcd8b6)+byte(0xcd8b9)
achievement ("Gifters", "Obtain all the gifts in [Horne]", 1,
trigger = measured(gift_horne() == 5) && prev(gift_horne()) == 4)

function obtain_steelsword() => byte(0xcd898) > prev(byte(0xcd898))
achievement ("Go Forth!", "Obtian the [Steel Sword] from the King", 2,
trigger = save_protect() && obtain_steelsword())

function obtain_inherited() => byte(0xcd8af) > prev(byte(0xcd8af))
achievement ("Family Ring", "Obtain the [Inherited Ring]", 1, 
trigger = save_protect() && obtain_inherited())

function defeat_minotaur() => byte(0xcd89e) > prev(byte(0xcd89e))
achievement ("Broken Horns", "Defeat the [Minotaur] and have [Jusqua] join the party", 5,
trigger = save_protect() && defeat_minotaur())
                                 
achievement ("Double Dose", "Obtained [Wayfarer] Crown", 5,
trigger = save_protect() && wayfarer_crown() > prev(wayfarer_crown()))

function obtain_merkmal() => byte(0xcd8c1) > prev(byte(0xcd8c1))
achievement ("Mapping", "Obtain [Merkmal]", 5,
trigger = save_protect() && obtain_merkmal())

function sand_devil_defeated() => prev(byte(0xcd8cc)) == 1
function black_white_mage() => bit2(0xde430) > prev(bit2(0xde430)) && bit3(0xde430) > prev(bit3(0xde430))
achievement ("Magician at Heart", "Defeat [Sand Devil] and obtain [Black & White Mage] Crowns", 10,
trigger = sand_devil_defeated() && black_white_mage())

function fake_captain() => byte(0xcd8de) > prev(byte(0xcd8de))
achievement ("Fake-Out", "Defeat [Trollud] in [Pirate's Hideout]", 5, 
trigger = save_protect() && fake_captain())

function apollo_talisman() => byte(0xcd8e5) > prev(byte(0xcd8e5))
achievement ("Talis", "Obtain [Apollo's Talisman]", 2,
trigger = save_protect() && apollo_talisman())

function brain_shark() => byte(0x0cd8ed) > prev(byte(0x0cd8ed))
achievement ("Brainy", "Defeat [Brainshark] in [Whirlpool]", 10,
trigger = save_protect() && brain_shark())

function singing_bandit() => bandit_crown() > prev(bandit_crown()) && bard_crown() > prev(bard_crown())
achievement ("Singing Bandit", "Obtain [Bard] & [Bandit] Crowns", 3,
trigger = save_protect() && singing_bandit())

function trylion_task() => prev(byte(0x0cd93a)) == 1 && byte(0xcd93c) > prev(byte(0xcd93c)) && sum_of(range(0xcd93d,0xcd93f,step=1), addr => byte(addr)) == 3
achievement ("Three Rings", "Complete [Trylion's Task] Sidequest", 3,
trigger = trylion_task())

function mylion_task() => prev(byte(0xcd92c)) == 1 && byte(0xcd92e) > prev(byte(0xcd92e))
achievement ("Bombastic", "Complete [Mylion's Task] Sidequest", 5,
trigger = mylion_task())

function bylion_task() => prev(byte(0xcd934)) == 1 && byte(0xcd936) > prev(byte(0xcd936))
achievement ("Sharp Talon", "Complete [Bylion's Task] Sidequest", 5,
trigger = bylion_task())

achievement ("Manipulation", "Obtain [Salve-Maker] Crown", 10,
trigger = save_protect() && salvemaker_crown() > prev(salvemaker_crown()))

function freed_urbeth() => sum_of(range(0xcd94a,0xcd94c,step=1), addr => byte(addr)) == 3 && byte(0xcd951) > prev(byte(0xcd951))
achievement ("Savior", "Defeat [Demon] in [Urbeth] after saving the 3 other shops", 10,
trigger = save_protect() && freed_urbeth())

function ele_rang() => prev(byte(0xcd95e)) == 1
achievement ("Controlling the Elements", "Obtain [Ranger] & [Elementalist] Crowns", 10,
trigger = ele_rang() && elementalist_crown() > prev(elementalist_crown()) && ranger_crown() > prev(ranger_crown()))

function sorc_fight() => byte(0xcd903) > prev(byte(0xcd903))
achievement ("Familiar Foe", "Defeat [Behugemoth]", 10, 
trigger = save_protect() && sorc_fight())

function magic_key() => byte(0xcd911) > prev(byte(0xcd911))
achievement ("Key to the Cities", "Obtain [Magic Key]", 1, 
trigger = save_protect() && magic_key())

achievement ("Fighting Scholar", "Obtain [Fighter] & [Scholar] Crowns", 10,
trigger = save_protect() && fighter_crown() > prev(fighter_crown()) && scholar_crown() > prev(scholar_crown()))

function urbeth_gift() => sum_of(range(0xcd96f,0xcd971,step=1), addr => byte(addr))
achievement ("Jusqua's Special Lady", "Obtain the three gifts from the shop owners in [Urbeth]", 1,
trigger = urbeth_gift() == 3 && prev(urbeth_gift()) == 2)

function rainbow_boots() => byte(0xcd972) > prev(byte(0xcd972))
achievement ("Rainbow Road", "Obtain [Rainbow Boots]", 1,
trigger = save_protect() && rainbow_boots())

function courage_ring() => byte(0xcde45) > prev(byte(0xcde45))
achievement ("Couragious", "Obtain [Courage Ring]", 1, 
trigger = save_protect() && courage_ring())

function hero_armor() => byte(0xcdcde) > prev(byte(0xcdcde))
achievement ("Super Duper", "Obtain [Hero Armor]", 1, 
trigger = save_protect() && hero_armor())

function chasing_ghosts() => sum_of(range(0xcd98a,0xcd98c,step=1), addr => byte(addr))
function chasing_complete() => chasing_ghosts() == 3 && prev(chasing_ghosts()) == 2
achievement ("Chasing Ghosts", "Unlocked the door in [Rolan's Soul]", 2,
trigger = chasing_complete())

function double_trouble() => byte(0xcd98f) > prev(byte(0xcd98f))
achievement ("Double Trouble", "Defeat [Geri] & [Freki]", 5,
trigger = save_protect() && double_trouble())

achievement ("Party Hero", "Obtain [Party Host] & [Hero] Crowns", 10,
trigger = save_protect() && partyhost_crown() > prev(partyhost_crown()) && hero_crown() > prev(hero_crown()))

achievement ("Imbued", "Obtain [Spell Fencer] Crown", 10,
trigger = save_protect() && spellfencer_crown() > prev(spellfencer_crown()))

achievement ("Bare-Fisting", "Obtain [Monk] Crown", 10,
trigger = save_protect() && monk_crown() > prev(monk_crown()))

function lux_book() => byte(0xcda6e) > prev(byte(0xcda6e))
achievement ("Book of Lux", "Obtain [Lux Tome]", 1,
trigger = save_protect() && lux_book())

achievement ("Everybody Mambo", "Obtain [Dancer] Crown", 10, 
trigger = save_protect() && dancer_crown() > prev(dancer_crown()))

achievement ("Holy Knight", "Obtain [Paladin] Crown", 10,
trigger = save_protect() && paladin_crown() > prev(paladin_crown()))

function sword_of_light() => byte(0xcda6a) > prev(byte(0xcda6a))
achievement ("Holy Stick", "Obtain [Sword of Light]", 5,
trigger = save_protect() && sword_of_light())

achievement ("Personal Concoction", "Obtain [Alchemist] Crown", 10,
trigger = save_protect() && alchemist_crown() > prev(alchemist_crown()))

function cape_of_light() => byte(0xcda6b) > prev(byte(0xcda6b))
achievement ("Every Hero Needs a Cape", "Obtain [Cape of Light]", 1,
trigger = save_protect() && cape_of_light())

achievement ("Ritualistic", "Obtain [Shaman] Crown", 10,
trigger = save_protect() && shaman_crown() > prev(shaman_crown()))

function armor_of_light() => byte(0xcda6c) > prev(byte(0xcda6c))
achievement ("Bright Armor", "Obtain [Armor of Light]", 1,
trigger = save_protect() && armor_of_light())

function lamp_truth() => byte(0xcd9be) > prev(byte(0xcd9be))
achievement ("All Seeing Lamp", "Obtain [Lamp of Truth]", 5,
trigger = save_protect() && lamp_truth())

achievement ("Satan Who?", "Obtain [Dark Fencer] Crown", 10,
trigger = save_protect() && darkfencer_crown() > prev(darkfencer_crown()))

function star_chamber_gauntlet1() => sum_of(range(0xcdae7,0xcdaf1,step=5), addr => byte(addr)) // 3
function star_chamber_gauntlet2() => sum_of(range(0xcdafb,0xcdb03,step=4), addr => byte(addr)) // 3
function star_gauntlet() => measured(star_chamber_gauntlet1()+star_chamber_gauntlet2() == 6) && prev(star_chamber_gauntlet1()+star_chamber_gauntlet2()) == 5
achievement ("Sinister Six", "Defeat all 6 bosses in [Star Chamber]", 25,
trigger = star_gauntlet())

function chaos_win() => prev(byte(0xcdb0c)) == 1 && byte(0xcdb0e) > prev(byte(0xcdb0e))
achievement ("Pathetic Humans", "Defeat [Chaos]", 25,
trigger = chaos_win())

function all_animals() => sum_of(range(0xcdba8,0xcdbc8,step=1), addr => byte(addr))
achievement ("Animal Whisperer", "While in animal form, speak with every animal in the game", 5,
trigger = measured(all_animals() == 33) && prev(all_animals()) == 32)

function north_cave() => sum_of(range(0xcdc7a,0xcdc7d,step=1), addr => byte(addr)) // 4
function witch_mansion1() => sum_of(range(0xcdc84,0xcdc86,step=2), addr => byte(addr)) // 2
function witch_mansion2() => sum_of(range(0xcdc87,0xcdc8a,step=1), addr => byte(addr)) // 4
function looted_one() => measured(north_cave()+witch_mansion1()+witch_mansion2() == 10) && prev(north_cave()+witch_mansion1()+witch_mansion2()) == 9
achievement ("Looted I", "Obtain all treasures in [North Cave] & [Witch's Mansion]", 1, 
trigger = looted_one())

function gueracavern_treasure() => sum_of(range(0xcdc98,0xcdc9c,step=1), addr => byte(addr))
function moonlighttower_treasure() => sum_of(range(0xcdd01,0xcdd04,step=1), addr => byte(addr))
function looted_two() => measured(gueracavern_treasure()+moonlighttower_treasure() == 9) && prev(gueracavern_treasure()+moonlighttower_treasure()) == 8
achievement ("Looted II", "Obtain all treasures in [Guera Caverns] & [Moonlight Tower]", 1,
trigger = looted_two())

function liberte_whirlpool1() => sum_of(range(0xcdca3,0xcdca5,step=2), addr => byte(addr)) // 2
function liberte_whirlpool2() => sum_of(range(0xcdca6,0xcdca7,step=1), addr => byte(addr)) // 2
function quicksand_castle() => sum_of(range(0xcdc8f,0xcdc92,step=1), addr => byte(addr)) // 4
function looted_three() => measured(liberte_whirlpool1()+liberte_whirlpool2()+quicksand_castle() == 8) && prev(liberte_whirlpool1()+liberte_whirlpool2()+quicksand_castle()) == 7
achievement ("Looted III", "Obtain all treasures in [Liberte Whirlpool] & [Quicksand Castle]", 1,
trigger = looted_three())

function pirate_hideout() => sum_of(range(0xcdce8,0xcdcf0,step=1), addr => byte(addr)) // 9
function fairy_path() => sum_of(range(0xcdcc0,0xcdcc1,step=1), addr => byte(addr)) // 2
function hunting_cave() => sum_of(range(0xcdd1a,0xcdd1b,step=1), addr => byte(addr))+byte(0xcdd23) // 3
function looted_four() => measured(pirate_hideout()+fairy_path()+hunting_cave() == 14) && prev(pirate_hideout()+fairy_path()+hunting_cave()) == 13
achievement ("Looted IV", "Obtain all treasures in [Pirate Hideout], [Fairy Path] & [Hunting Cave]", 1,
trigger = looted_four())

function tree_root() => sum_of(range(0xcdcf7,0xcdcf8,step=1), addr => byte(addr))+byte(0xcdcff) // 3
function great_tree() => sum_of(range(0xcdcac,0xcdcae,step=1), addr => byte(addr)) // 3
function great_tree2() => sum_of(range(0xcdcb0,0xcdcb5,step=1), addr => byte(addr)) // 6
function looted_five() => measured(tree_root()+great_tree()+great_tree2() == 12) && prev(tree_root()+great_tree()+great_tree2()) == 11
achievement ("Looted V", "Obtain all treasures in [Great Tree Root] & [The Great Tree]", 1,
trigger = looted_five())

function ice_cavern() => sum_of(range(0xcdcca,0xcdccd,step=1), addr => byte(addr))+byte(0xcdcd0) // 5
function invidia_underground() => sum_of(range(0xcdd0b,0xcdd0c, step=1), addr => byte(addr)) // 2
function sky_tower() => sum_of(range(0xcdcb6,0xcdcbe,step=1), addr => byte(addr)) // 9
function looted_six() => measured(ice_cavern()+invidia_underground()+sky_tower() == 16) && prev(ice_cavern()+invidia_underground()+sky_tower()) == 15
achievement ("Looted VI", "Obtain all treasures in [Ice Cavern], [Invidia Underground] & [Sky Tower]", 1, 
trigger = looted_six())

function spelvia_dun() => sum_of(range(0xcdcd4,0xcdcd6,step=1), addr => byte(addr))+byte(0xcdcd8) // 4
function mount_gulg() => sum_of(range(0xcdda1,0xcdda5,step=1), addr => byte(addr)) // 5
function sun_temple() => sum_of(range(0xcddd9,0xcdddb,step=1), addr => byte(addr)) // 3
function looted_seven() => measured(spelvia_dun()+mount_gulg()+sun_temple() == 12) && prev(spelvia_dun()+mount_gulg()+sun_temple()) == 11
achievement ("Looted VII", "Obtain all treasures in [Spelvia Dungeon], [Mount Gulg] & [Sun Temple]", 1,
trigger = looted_seven())

function magic_laboratory() => sum_of(range(0xcdd7e,0xcdd82,step=1), addr => byte(addr)) // 5
function looted_eight() => measured(magic_laboratory() == 5) && prev(magic_laboratory()) == 4
achievement ("Looted VIII", "Obtain all treasures in [Magic Laboratory]", 1,
trigger = looted_eight())

function star_chamber() => sum_of(range(0xcddce,0xcddd2,step=1), addr => byte(addr)) // 5
function star_chamber2() => sum_of(range(0xcddd4,0xcddd7,step=1), addr => byte(addr)) // 4
function looted_nine() => measured(star_chamber()+star_chamber2() == 9) && prev(star_chamber()+star_chamber2()) == 8
achievement ("Looted IX", "Obtain all treasures in [Star Chamber]", 1, 
trigger = looted_nine())

function hidden_horne() => sum_of(range(0xcdde2,0xcdde9,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Horne", "Find the 8 hidden items in [Horne]", 1,
trigger = measured(hidden_horne() == 8) && prev(hidden_horne()) == 7)

function hidden_guera() => sum_of(range(0xcddf6,0xcddfd,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Guera", "Find the 8 hidden items in [Guera]", 1,
trigger = measured(hidden_guera() == 8) && prev(hidden_guera()) == 7)

function hidden_liberte1() => sum_of(range(0xcde0a,0xcde0d,step=1), addr => byte(addr)) // 4
function hidden_liberte2() => sum_of(range(0xcde14,0xcde16,step=2), addr => byte(addr)) // 2
function hidden_liberte3() => sum_of(range(0xcde18,0xcde19,step=1), addr => byte(addr)) // 2
achievement ("8-Item Challenge - Liberte", "Find the 8 hidden items in [Liberte]", 1,
trigger = measured(hidden_liberte1()+hidden_liberte2()+hidden_liberte3() == 8) && 
          prev(hidden_liberte1()+hidden_liberte2()+hidden_liberte3()) == 7)

function hidden_urbeth() => sum_of(range(0xcde28,0xcde2f,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Urbeth", "Find the 8 hidden items in [Urbeth]", 1,
trigger = measured(hidden_urbeth() == 8) && prev(hidden_urbeth()) == 7)

function hidden_arbor() => sum_of(range(0xcde1e,0xcde25,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Arbor", "Find the 8 hidden items in [Arbor]", 1,
trigger = measured(hidden_arbor() == 8) && prev(hidden_arbor()) == 7)

function hidden_invidia() => sum_of(range(0xcde32,0xcde39,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Invidia", "Find the 8 hidden items in [Invidia]", 1,
trigger = measured(hidden_invidia() == 8) && prev(hidden_invidia()) == 7)

function hidden_spelvia() => sum_of(range(0xcde3c,0xcde43,step=1), addr => byte(addr)) // 8
achievement ("8-Item Challenge - Spelvia", "Find the 8 hidden items in [Spelvia]", 1, 
trigger = measured(hidden_spelvia() == 8) && prev(hidden_spelvia()) == 7)

achievement ("Drape Maker", "Obtain [Seamstress] Crown", 10,
trigger = save_protect() && seamstress_crown() > prev(seamstress_crown()))

achievement ("Wild Animals", "Obtain [Beastmaster] Crown", 10,
trigger = save_protect() && beastmaster_crown() > prev(beastmaster_crown()))

achievement ("Shredding", "Obtain [Musician] Crown", 5,
trigger = save_protect() && musician_crown() > prev(musician_crown()))

achievement ("Go Ninja", "Obtain [Ninja] Crown", 25,
trigger = save_protect() && ninja_crown() > prev(ninja_crown()))

achievement ("Pure Wisdom", "Obtain [Sage] Crown", 25,
trigger = save_protect() && sage_crown() > prev(sage_crown()))

achievement ("Booster Seat", "Obtain [Storyteller] Crown", 25,
trigger = save_protect() && storyteller_crown() > prev(storyteller_crown()))

function upgradeItem(startaddr) {
    trigger = always_false()
    for i in range(0, 14){
      trigger = trigger || measured(byte(startaddr + i * 4) == 50) && prev(byte(startaddr + i * 4 )) == 49
    }
    return trigger
} 

achievement ("Master Smith", "Raise any item to +50", 25,
trigger = upgradeItem(0xdcc06) || upgradeItem(0xdcade) || upgradeItem(0xdc9b6) || upgradeItem(0xdcd2e))

function maxedCrown(startaddr) {
    trigger = always_false()
    for i in range(0, 3){
      trigger = trigger || measured(byte(startaddr + i * 28) == 3) && prev(byte(startaddr + i * 28 )) == 2
    }
    return trigger
}

achievement ("Wayfarer Master", "Max out [Wayfarer] crown on any character", 5,         trigger = prev(wayfarer_crown()) == 1 && maxedCrown(0xde3a7))
achievement ("Black Mage Master", "Max out [Black Mage] crown on any character", 5,     trigger = prev(blackmage_crown()) == 1 && maxedCrown(0xde3a8))
achievement ("White Mage Master", "Max out [White Mage] crown on any character", 5,     trigger = prev(whitemage_crown()) == 1 && maxedCrown(0xde3a9))
achievement ("Bandit Master", "Max out [Bandit] crown on any character", 5,             trigger = prev(bandit_crown()) == 1 && maxedCrown(0xde3aa))
achievement ("Bard Master", "Max out [Bard] crown on any character", 5,                 trigger = prev(bard_crown()) == 1 && maxedCrown(0xde3ab))
achievement ("Elementalist Master", "Max out [Elementalist] crown on any character", 5, trigger = prev(elementalist_crown()) == 1 && maxedCrown(0xde3ac))
achievement ("Ranger Master", "Max out [Ranger] crown on any character", 5,             trigger = prev(ranger_crown()) == 1 && maxedCrown(0xde3ad))
achievement ("Merchant Master", "Max out [Merchant] crown on any character", 5,         trigger = prev(merchant_crown()) == 1 && maxedCrown(0xde3ae))
achievement ("Salve Maker Master", "Max out [Salve] crown on any character", 5,         trigger = prev(salvemaker_crown()) == 1 && maxedCrown(0xde3af))
achievement ("Fighter Master", "Max out [Fighter] crown on any character", 5,           trigger = prev(fighter_crown()) == 1 && maxedCrown(0xde3b0))
achievement ("Scholar Master", "Max out [Scholar] crown on any character", 5,           trigger = prev(scholar_crown()) == 1 && maxedCrown(0xde3b1))
achievement ("Party Host Master", "Max out [Party Host] crown on any character", 5,     trigger = prev(partyhost_crown()) == 1 && maxedCrown(0xde3b2))
achievement ("Hero Master", "Max out [Hero] crown on any character", 5,                 trigger = prev(hero_crown()) == 1 && maxedCrown(0xde3b3))
achievement ("Spell Fencer Master", "Max out [Spell Fencer] crown on any character", 5, trigger = prev(spellfencer_crown()) == 1 && maxedCrown(0xde3b4))
achievement ("Dark Fencer Master", "Max out [Dark Fencer] crown on any character", 5,   trigger = prev(darkfencer_crown()) == 1 && maxedCrown(0xde3b5))
achievement ("Sage Master", "Max out [Sage] crown on any character", 5,                 trigger = prev(sage_crown()) == 1 && maxedCrown(0xde3b6))
achievement ("Shaman Master", "Max out [Shaman] crown on any character", 5,             trigger = prev(shaman_crown()) == 1 && maxedCrown(0xde3b7))
achievement ("Paladin Master", "Max out [Paladin] crown on any character", 5,           trigger = prev(paladin_crown()) == 1 && maxedCrown(0xde3b8))
achievement ("Ninja Master", "Max out [Ninja] crown on any character", 5,               trigger = prev(ninja_crown()) == 1 && maxedCrown(0xde3b9))
achievement ("Dancer Master", "Max out [Dancer] crown on any character", 5,             trigger = prev(dancer_crown()) == 1 && maxedCrown(0xde3ba))
achievement ("Musician Master", "Max out [Musician] crown on any character", 5,         trigger = prev(musician_crown()) == 1 && maxedCrown(0xde3bb))
achievement ("Monk Master", "Max out [Monk] crown on any character", 5,                 trigger = prev(monk_crown()) == 1 && maxedCrown(0xde3bc))
achievement ("Beastmaster Master", "Max out [Beastmaster] crown on any character", 5,   trigger = prev(beastmaster_crown()) == 1 && maxedCrown(0xde3bd))
achievement ("Seamstress Master", "Max out [Seamstress] crown on any character", 5,     trigger = prev(seamstress_crown()) == 1 && maxedCrown(0xde3be))
achievement ("Alchemist Master", "Max out [Alchemist] crown on any character", 5,       trigger = prev(alchemist_crown()) == 1 && maxedCrown(0xde3bf))
achievement ("Scribe Master", "Max out [Scribe] crown on any character", 5,             trigger = prev(scribe_crown()) == 1 && maxedCrown(0xde3c0))
achievement ("Storyteller Master", "Max out [Storyteller] crown on any character", 5,   trigger = prev(storyteller_crown()) == 1 && maxedCrown(0xde3c1))

























