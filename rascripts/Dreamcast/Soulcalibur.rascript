// Soulcalibur
// #ID = 3395

function d_diff() => byte(0x2cad50)
d_easy = 0x00
d_medium = 0x01
d_hard = 0x02
d_vhard = 0x03
d_uhard = 0x04

function d_fightcount() => byte(0x2cad34)
fc_default = 0x02

function d_roundtimer() => byte(0x2cad3c)
rt_default = 0x28

function d_lifebar1p() => word(0x2cad42)
lb_default = 0x3fa0

function d_charchange() => byte(0x2cad60)
cc_default = 0x00

function default_settings() => d_fightcount() == fc_default && 
                               d_roundtimer() == rt_default &&
                               d_lifebar1p() == lb_default &&
                               d_charchange() == cc_default

function m_timer() => word(0x2cac9e)

function left_health_hit() => word(0x2c1b9e)
function right_health_hit() => word(0x2ca27e)

function g_mode() => byte(0x2cac68)
m_main = 0x00
m_arcade = 0x01
m_timea = 0x02
m_versus = 0x03
m_survival = 0x04
m_extra = 0x05
m_practice = 0x06
m_team = 0x07
m_mission = 0x08
m_motion = 0x09
m_demo = 0x0a
m_exhibitio = 0xb
m_battle = 0x0c
m_character = 0x0d
m_ending = 0x0e
m_director = 0x0f

function p_left() => byte(0x2bfa74)
p_mitsurugi = 0x01
p_seungmina = 0x02
p_taki = 0x03
p_maxi = 0x04
p_voldo = 0x05
p_sophitia = 0x06
p_siegfried = 0x07
p_rock = 0x08
p_hwang = 0x09
p_mitsurugi = 0x0a
p_ivy = 0x0b
p_kilik = 0x0c
p_xianghua = 0x0d
p_lizardman = 0x0e
p_yoshimitsu = 0x0f
p_edgemaster = 0x10
p_nghtmare = 0x11
p_astaroth = 0x12
p_inferno = 0x13
p_cervantes = 0x14
//Any other value is Unknown Soul

function arcade_mitsurugi() => word(0x3a6382) > prev(word(0x3a6382))
function arcade_seungmina() => word(0x3a6386) > prev(word(0x3a6386))
function arcade_taki() => word(0x3a638a) > prev(word(0x3a638a))
function arcade_maxi() => word(0x3a638e) > prev(word(0x3a638e))
function arcade_voldo() => word(0x3a6392) > prev(word(0x3a6392))
function arcade_sophitia() => word(0x3a6396) > prev(word(0x3a6396))
function arcade_siegfried() => word(0x3a639a) > prev(word(0x3a639a))
function arcade_rock() => word(0x3a639e) > prev(word(0x3a639e))
function arcade_hwang() => word(0x3a63a2) > prev(word(0x3a63a2))
function arcade_ivy() => word(0x3a63aa) > prev(word(0x3a63aa))
function arcade_kilik() => word(0x3a63ae) > prev(word(0x3a63ae))
function arcade_xianghua() => word(0x3a63b2) > prev(word(0x3a63b2))
function arcade_lizardman() => word(0x3a63b6) > prev(word(0x3a63b6))
function arcade_yoshimitsu() => word(0x3a63ba) > prev(word(0x3a63ba))
function arcade_edgemaster() => word(0x3a63be) > prev(word(0x3a63be))
function arcade_nghtmare() => word(0x3a63c2) > prev(word(0x3a63c2))
function arcade_astaroth() => word(0x3a63c6) > prev(word(0x3a63c6))
function arcade_inferno() => word(0x3a63ca) > prev(word(0x3a63ca))
function arcade_cervantes() => word(0x3a63ce) > prev(word(0x3a63ce))

function s_arcade() => dword(0x2c8144)
f_stage = 0x07

function arcade_medium() => default_settings() && 
                            g_mode() == m_arcade &&
                            d_diff() >= d_medium &&
                            s_arcade() == f_stage


function p_arcade(char)
{
    return arcade_medium() &&
           char
}

achievement ("Lone Swordsman", "Complete Arcade mode as Mitsurugi [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_mitsurugi()))

achievement ("Heart and Soul Girl", "Complete Arcade mode as Seungmina [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_seungmina()))

achievement ("Dream Shadow of Demon Sealer", "Complete Arcade mode as Taki [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_taki()))

achievement ("Dandy from the South Sea", "Complete Arcade mode as Maxi [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_maxi()))

achievement ("Hell Guardian", "Complete Arcade mode as Voldo [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_voldo()))

achievement ("Second Advent of the Vow", "Complete Arcade mode as Sophitia [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_sophitia()))

achievement ("A Soul in Purgatory", "Complete Arcade mode as Siegfried [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_siegfried()))

achievement ("The Trembling Earth", "Complete Arcade mode as Rock [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_rock()))

achievement ("Patriot's Burning Soul", "Complete Arcade mode as Hwang [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_hwang()))

achievement ("Wreathing Blade of Isolation", "Complete Arcade mode as Ivy [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_ivy()))

achievement ("Awaken Destiny", "Complete Arcade mode as Kilik [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_kilik()))

achievement ("Itenerant Flower of the Breeze", "Complete Arcade mode as Xianghua [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_xianghua()))

achievement ("Jasper Scales of Shudder", "Complete Arcade mode as Lizardman [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_lizardman()))

achievement ("Protector of the Poor", "Complete Arcade mode as Yoshimitsu [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_yoshimitsu()))

achievement ("Edge Lord", "Complete Arcade mode as Edge Master [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_edgemaster()))

achievement ("Azure Nightmare", "Complete Arcade mode as Nightmare [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_nghtmare()))

achievement ("A Soldier of the Heretic", "Complete Arcade mode as Astaroth [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_astaroth()))

achievement ("The Hellfire of Despair", "Complete Arcade mode as Inferno [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_inferno()))

achievement ("The Immortal Pirate", "Complete Arcade mode [Cervantes] [>= Medium] [Default Settings]", 5,
trigger = p_arcade(arcade_cervantes()))

function all_beat() => sum_of(range(0x3a6382,0x3a63ce,step=4), addr => word(addr)/word(addr))

achievement ("Adept Fighter", "Complete Arcade mode with every character [Default Settings]", 5,
trigger = arcade_medium() && all_beat() == 19 && prev(all_beat()) == 18)

function arcade_hard() => default_settings() && 
                          g_mode() == m_arcade &&
                          d_diff() >= d_hard &&
                          s_arcade() == f_stage
                          
function arcade_vhard() => default_settings() && 
                           g_mode() == m_arcade &&
                           d_diff() >= d_vhard &&
                           s_arcade() == f_stage
                           
function arcade_uhard() => default_settings() && 
                           g_mode() == m_arcade &&
                           d_diff() == d_uhard &&
                           s_arcade() == f_stage
function left_wins() => dword(0x2c1b00)
function right_wins() => dword(0x2ca1e0)

function any_cleared() => any_of(range(0x3a6382,0x3a63ce,step=4), addr => word(addr) > prev(word(addr)))

achievement ("Respected", "Complete Arcade mode [>= Hard] [Any Character] [Default Settings]", 5,
trigger = arcade_hard() && any_cleared())

achievement ("The Chosen One", "Complete Arcade mode [>= Very Hard] [Any Character] [Default Settings]", 5,
trigger = arcade_vhard() && any_cleared())

achievement ("The Ruler", "Complete Arcade mode [Ultra Hard] [Any Character] [Default Settings]", 5,
trigger = arcade_uhard() && any_cleared())

function playing_left() => byte(0x2bfa58) == 0x00
function playing_right() => byte(0x2bfa58) == 0x01
function arcade_rounds() => dword(0x2c8144)

function left_reset() => repeated(1,playing_left() && 
                         arcade_rounds() == 0x00 && 
                         m_timer() == 0x01 && 
                         prev(m_timer()) == 0x00 && 
                         never(right_wins() != 0))
                         
function right_reset() => repeated(1,playing_right() &&
                          arcade_rounds() == 0x00 && 
                          m_timer() == 0x01 && 
                          prev(m_timer()) == 0x00 && 
                          playing_right() && 
                          never(left_wins() != 0))
                           
function ultra_noloss() => arcade_uhard() &&
                           any_cleared() &&
                           never(prev(g_mode()) != m_arcade) &&
                          (left_reset() ||
                           right_reset())


achievement ("Mental Breakdown", "Complete Arcade mode [Ultra Hard] [Any Character] [No Losses] [Default Settings]", 50,
trigger = ultra_noloss())


function left_resetcont() => repeated(1,playing_left() && 
                             arcade_rounds() == 0x00 && 
                             m_timer() == 0x01 && 
                             prev(m_timer()) == 0x00 && 
                             never(right_wins() == 2))
                         
function right_resetcont() => repeated(1,playing_right() &&
                              arcade_rounds() == 0x00 && 
                              m_timer() == 0x01 && 
                              prev(m_timer()) == 0x00 && 
                              playing_right() && 
                              never(left_wins() == 2))

function harcade_continue() => arcade_hard() &&
                               any_cleared() &&
                               never(prev(g_mode()) != m_arcade) &&
                              (left_resetcont() ||
                               right_resetcont())
                            
function varcade_continue() => arcade_vhard() &&
                               any_cleared() &&
                               never(prev(g_mode()) != m_arcade) &&
                              (left_resetcont() ||
                               right_resetcont())
                             
function uarcade_continue() => arcade_uhard() &&
                               any_cleared() &&
                               never(prev(g_mode()) != m_arcade) &&
                              (left_resetcont() ||
                               right_resetcont())

achievement ("Dashing Victory", "Complete Arcade mode [>= Hard] [Any Character] [No Continues] [Default Settings]", 10,
trigger = harcade_continue())

achievement ("Proud Victory", "Complete Arcade mode [>= Very Hard] [Any Character] [No Continues] [Default Settings]", 10,
trigger = varcade_continue())

achievement ("Glorious Victory", "Complete Arcade mode [Ultra Hard] [Any Character] [No Continues] [Default Settings]", 25,
trigger = uarcade_continue())


function left_health() => word(0x2c1b9e) == 0x436f
function right_health() => word(0x2ca27e) == 0x436f
function left_win() => dword(0x2ca1ec)
round_prog = 0x00
round_win = 0x01
ring_out = 0x03
time_out = 0x04
function right_win() => dword(0x2c1b0c)

function left_perfect() => playing_left() && left_health() && left_win() == round_win && prev(left_win()) == round_prog
function left_ringout() => playing_left() && left_win() == ring_out && prev(left_win()) == round_prog
function left_timeout() => playing_left() && left_win() == time_out && prev(left_win()) == round_prog

function right_perfect() => playing_right() && right_health() && right_win() == round_win && prev(right_win()) == round_prog
function right_ringout() => playing_right() && right_win() == ring_out && prev(right_win()) == round_prog
function right_timeout() => playing_right() && right_win() == time_out && prev(right_win()) == round_prog

function fail_right() => never(left_wins() == 2 && playing_right())
function fail_left() => never(right_wins() == 2 && playing_left())


function noringout_noperfect_left() => never(left_health_hit() != 0x436f && playing_left() && left_win() == 1)
function noringout_noperfect_right() => never(right_health_hit() != 0x436f && playing_right() && right_win() == 1)

function perfect_ringout() => d_diff() >= d_medium && default_settings() && (never(g_mode() != m_arcade)) && tally(1,g_mode() == 1 && prev(g_mode()) == 0) &&
                             ((noringout_noperfect_left() && fail_left() && trigger_when(tally(16,left_perfect(),left_ringout()))) || 
                               noringout_noperfect_right() && fail_right() && trigger_when(tally(16,right_perfect(),right_ringout()))
                                                          )
achievement ("Forceful Exit", "Complete Arcade mode with every round being either perfect or ring-out [>= Medium][Any Character] [No Continues] [Default Settings]", 25,
trigger = perfect_ringout())                           

function timeout_win() => d_diff() >= d_medium && default_settings() && never(g_mode() != m_arcade) &&
                          left_timeout() || right_timeout()
function movelist_left() => word(0x2c1848)
function movelist_right() => word(0x2c9f28)
before_suffering = 0x5c
during_suffering = 0x98

function summon_suffering_left() => playing_left() && movelist_left() == during_suffering && prev(movelist_left()) == before_suffering
function summon_suffering_right() => playing_right() && movelist_right() == during_suffering && prev(movelist_right()) == before_suffering
function actually_playing() => g_mode() != m_practice && g_mode() != m_versus && g_mode() <= m_mission

achievement ("Whipped Into Shape", "Perform Summon Suffering as Ivy during a match [>= Medium] [Default Settings]", 5,
trigger = d_diff() >= d_medium && default_settings() && actually_playing() &&
          (summon_suffering_left() || summon_suffering_right()))

function extra_survival() => dword(0x2caf04)

achievement ("Survivor of Hathsin", "Earn 20 wins in a row in Extra Survival Mode [Default Settings]", 10,
trigger = default_settings() && g_mode() == m_extra && 
          extra_survival() == 20 && prev(extra_survival()) == 19)

achievement ("Lord of Scars", "Earn 40 wins in a row in Extra Survival Mode [Default Settings]", 25,
trigger = default_settings() && g_mode() == m_extra && 
          extra_survival() == 40 && prev(extra_survival()) == 39)

achievement ("Mist Lord", "Earn 60 wins in a row in Extra Survival Mode [Default Settings]", 50,
trigger = default_settings() && g_mode() == m_extra && 
          extra_survival() == 60 && prev(extra_survival()) == 59)


function left_charging() => dword(0x2c1b6c)
function right_charging() => dword(0x2ca24c)
charging_up = 0x06
soul_charged = 0x07
spirit_charged = 0x08

function left_soul() => playing_left() && left_charging() == 7 && prev(left_charging()) == 6
function right_soul() => playing_right() && right_charging() == 7 && prev(right_charging()) == 6

function left_spirit() => playing_left() && left_charging() == 8 && prev(left_charging()) == 6
function right_spirit() => playing_right() && right_charging() == 8 && prev(right_charging()) == 6

achievement ("Fully Loaded", "Trigger Soul Charge for the first time during a match in arcade mode [>= Medium] [Any Character] [Default Settings]", 1,
trigger = default_settings() && actually_playing() && 
          (left_soul() || right_soul()))

achievement ("Early Bird", "Trigger Spirit Charge for the first time during a match in arcade mode [>= Medium] [Any Character] [Default Settings]", 1,
trigger = default_settings() && actually_playing() && 
          (left_spirit() || right_spirit()))

function left_soul_hit() => playing_left() && left_charging() == 7 && right_health_hit() < prev(right_health_hit())
function right_soul_hit() => playing_right() && right_charging() == 7 && left_health_hit() < prev(left_health_hit())

function left_spirit_hit() => playing_left() && left_charging() == 8 && right_health_hit() < prev(right_health_hit())
function right_spirit_hit() => playing_right() && right_charging() == 8 && left_health_hit() < prev(left_health_hit())

achievement ("Full Power Blow", "Land 15 Soul Charged attacks in a single session in arcade mode [>= Medium] [Any Character] [Default Settings]", 25,
trigger = default_settings() && unless(g_mode() != m_arcade) && (tally(15,left_soul_hit()) || tally(15,right_soul_hit())))

achievement ("Full Counter", "Land 50 Spirit Charged attacks in a single session in arcade mode [>= Medium] [Any Character] [Default Settings]", 10,
trigger = default_settings() && unless(g_mode() != m_arcade) && (tally(50,left_spirit_hit()) || tally(50,right_spirit_hit())))
























































