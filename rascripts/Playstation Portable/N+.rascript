// N+
// #ID = 3733

function n_episode() => byte(0xa2f6d4)
function n_level() => byte(0xa2f797)
function n_status() => byte(0xa2ce05)
n_playing = 0x00
n_win = 0x01
n__fail = 0x02
function e_timer() => dword(0x88ff1c) //displays in MS
function l_timer() => dword(0xa92658) //counts down
function n_gold() => word(0xa928ec) //counts gold totals in current episode
function n_tgold() => word(0xa2f710) //Total gold acquired. Goes up on episode complete screen
function n_tries() => byte(0xa928f8)
function n_stat() => never(bit7(0xa2cdf9) == 1)
function n_tut() => bit7(0xa2cdf9)

function episode_done(episode)
{
    return n_episode() == episode &&
           n_level() == 5 &&
           prev(n_status()) == 0 && 
           n_status() == 1
}

function episode_deathless(episode)
{
    return n_episode() == episode &&
           n_level() == 5 &&
           prev(n_status()) == 0 && 
           n_status() == 1 &&
           once(n_episode() == episode &&
           n_level() == 1 && 
           prev(n_level()) == 0) &&
           never(n_status() == 2)
}

function tutorial_done()
{
    return n_level() == 0x0c &&
           prev(n_status()) == 0 && 
           n_status() == 1
}

function tutorial_deathless()
{
    return n_level() == 0x0c &&
           prev(n_status()) == 0 && 
           n_status() == 1 &&
           once(n_episode() == 0 &&
           n_level() == 1 && 
           prev(n_level()) == 0) &&
           (never(n_tut() != 1 && 
           n_status() == 2))
}

achievement ("Learning the Ropes", "Complete the tutorial", 5,
trigger = tutorial_done())

achievement ("Mastering the Ropes", "Complete the tutorial without dying", 10,
trigger = tutorial_deathless())

achievement ("Episode 0", "Complete episode 0", 1,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x00) && n_stat())

achievement ("Episode 0 - Expert", "Complete episode 0 without dying", 2,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x00) && n_stat())

achievement ("Episode I", "Complete episode 1", 2,
trigger =  once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x01) && n_stat())

achievement ("Episode I - Expert", "Complete episode 1 without dying", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x01) && n_stat())

achievement ("Episode II", "Complete episode 2", 3,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x02) && n_stat())

achievement ("Episode II - Expert", "Complete episode 2 without dying", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x02) && n_stat())

achievement ("Episode III", "Complete episode 3", 4,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x03) && n_stat())

achievement ("Episode III - Expert", "Complete episode 3 without dying", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x03) && n_stat())

achievement ("Episode IV", "Complete episode 4", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x09) && n_stat())

achievement ("Episode IV - Expert", "Complete episode 4 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x09) && n_stat())

achievement ("Episode V", "Complete episode 5", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0a) && n_stat())

achievement ("Episode V - Expert", "Complete episode 5 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0a) && n_stat())

achievement ("Episode VI", "Complete episode 6", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0b) && n_stat())

achievement ("Episode VI - Expert", "Complete episode 6 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0b) && n_stat())

achievement ("Episode VII", "Complete episode 7", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0c) && n_stat())

achievement ("Episode VII - Expert", "Complete episode 7 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0c) && n_stat())

achievement ("Episode VIII", "Complete episode 8", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0d) && n_stat())

achievement ("Episode VIII - Expert", "Complete episode 8 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0d) && n_stat())

achievement ("Episode IX", "Complete episode 9", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x04) && n_stat())

achievement ("Episode IX - Expert", "Complete episode 9 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x04) && n_stat())

achievement ("Episode X", "Complete episode 10", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x12) && n_stat())

achievement ("Episode X - Expert", "Complete episode 10 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x12) && n_stat())

achievement ("Episode XI", "Complete episode 11", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x13) && n_stat())

achievement ("Episode XI - Expert", "Complete episode 11 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x13) && n_stat())

achievement ("Episode XII", "Complete episode 12", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x14) && n_stat())

achievement ("Episode XII - Expert", "Complete episode 12 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x14) && n_stat())

achievement ("Episode XIII", "Complete episode 13", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x15) && n_stat())

achievement ("Episode XIII - Expert", "Complete episode 13 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x15) && n_stat())

achievement ("Episode XIV", "Complete episode 14", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x16) && n_stat())

achievement ("Episode XIV - Expert", "Complete episode 14 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x16) && n_stat())

achievement ("Episode XV", "Complete episode 15", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x17) && n_stat())

achievement ("Episode XV - Expert", "Complete episode 15 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x17) && n_stat())

achievement ("Episode XVI", "Complete episode 16", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0e) && n_stat())

achievement ("Episode XVI - Expert", "Complete episode 16 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0e) && n_stat())

achievement ("Episode XVII", "Complete episode 17", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x05) && n_stat())

achievement ("Episode XVII - Expert", "Complete episode 17 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x05) && n_stat())

achievement ("Episode XVIII", "Complete episode 18", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1b) && n_stat())

achievement ("Episode XVIII - Expert", "Complete episode 18 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1b) && n_stat())

achievement ("Episode XIX", "Complete episode 19", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1c) && n_stat())

achievement ("Episode XIX - Expert", "Complete episode 19 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1c) && n_stat())

achievement ("Episode XX", "Complete episode 20", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1d) && n_stat())

achievement ("Episode XX - Expert", "Complete episode 20 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1d) && n_stat())

achievement ("Episode XXI", "Complete episode 21", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1e) && n_stat())

achievement ("Episode XXI - Expert", "Complete episode 21 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1e) && n_stat())

achievement ("Episode XXII", "Complete episode 22", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1f) && n_stat())

achievement ("Episode XXII - Expert", "Complete episode 22 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1f) && n_stat())

achievement ("Episode XXIII", "Complete episode 23", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x20) && n_stat())

achievement ("Episode XXIII - Expert", "Complete episode 23 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x20) && n_stat())

achievement ("Episode XXIV", "Complete episode 24", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x21) && n_stat())

achievement ("Episode XXIV - Expert", "Complete episode 24 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x21) && n_stat())

achievement ("Episode XXV", "Complete episode 25", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x18) && n_stat())

achievement ("Episode XXV - Expert", "Complete episode 25 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x18) && n_stat())

achievement ("Episode XXVI", "Complete episode 26", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x0f) && n_stat())

achievement ("Episode XXVI - Expert", "Complete episode 26 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x0f) && n_stat())

achievement ("Episode XXVII", "Complete episode 27", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x06) && n_stat())

achievement ("Episode XXVII - Expert", "Complete episode 27 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x06) && n_stat())

achievement ("Episode XXVIII", "Complete episode 28", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x24) && n_stat())

achievement ("Episode XXVIII - Expert", "Complete episode 28 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x24) && n_stat())

achievement ("Episode XXIX", "Complete episode 29", 5,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x25) && n_stat())

achievement ("Episode XXIX - Expert", "Complete episode 29 without dying", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x25) && n_stat())

achievement ("Episode XXX", "Complete episode 30", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x26) && n_stat())

achievement ("Episode XXX - Expert", "Complete episode 30 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x26) && n_stat())

achievement ("Episode XXXI", "Complete episode 31", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x27) && n_stat())

achievement ("Episode XXXI - Expert", "Complete episode 31 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x27) && n_stat())

achievement ("Episode XXXII", "Complete episode 32", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x28) && n_stat())

achievement ("Episode XXXII - Expert", "Complete episode 32 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x28) && n_stat())

achievement ("Episode XXXIII", "Complete episode 33", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x29) && n_stat())

achievement ("Episode XXXIII - Expert", "Complete episode 33 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x29) && n_stat())

achievement ("Episode XXXIV", "Complete episode 34", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2a) && n_stat())

achievement ("Episode XXXIV - Expert", "Complete episode 34 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2a) && n_stat())

achievement ("Episode XXXV", "Complete episode 35", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2b) && n_stat())

achievement ("Episode XXXV - Expert", "Complete episode 35 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2b) && n_stat())

achievement ("Episode XXXVI", "Complete episode 36", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x22) && n_stat())

achievement ("Episode XXXVI - Expert", "Complete episode 36 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x22) && n_stat())

achievement ("Episode XXXVII", "Complete episode 37", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x19) && n_stat())

achievement ("Episode XXXVII - Expert", "Complete episode 37 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x19) && n_stat())

achievement ("Episode XXXVIII", "Complete episode 38", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x10) && n_stat())

achievement ("Episode XXXVIII - Expert", "Complete episode 38 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x10) && n_stat())

achievement ("Episode XXXIX", "Complete episode 39", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x07) && n_stat())

achievement ("Episode XXXIX - Expert", "Complete episode 39 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x07) && n_stat())

achievement ("Episode XL", "Complete episode 40", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x08) && n_stat())

achievement ("Episode XL - Expert", "Complete episode 40 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x08) && n_stat())

achievement ("Episode XLI", "Complete episode 41", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x11) && n_stat())

achievement ("Episode XLI - Expert", "Complete episode 41 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x11) && n_stat())

achievement ("Episode XLII", "Complete episode 42", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x1a) && n_stat())

achievement ("Episode XLII - Expert", "Complete episode 42 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x1a) && n_stat())

achievement ("Episode XLIII", "Complete episode 43", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x23) && n_stat())

achievement ("Episode XLIII - Expert", "Complete episode 43 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x23) && n_stat())

achievement ("Episode XLIV", "Complete episode 44", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2c) && n_stat())

achievement ("Episode XLIV - Expert", "Complete episode 44 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2c) && n_stat())

achievement ("Episode XLV", "Complete episode 45", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2d) && n_stat())

achievement ("Episode XLV - Expert", "Complete episode 45 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2d) && n_stat())

achievement ("Episode XLVI", "Complete episode 46", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2e) && n_stat())

achievement ("Episode XLVI - Expert", "Complete episode 46 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2e) && n_stat())

achievement ("Episode XLVII", "Complete episode 47", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x2f) && n_stat())

achievement ("Episode XLVII - Expert", "Complete episode 47 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x2f) && n_stat())

achievement ("Episode XLVIII", "Complete episode 48", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x30) && n_stat())

achievement ("Episode XLVIII - Expert", "Complete episode 48 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x30) && n_stat())

achievement ("Episode XLIX", "Complete episode 49", 10,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_done(0x31) && n_stat())

achievement ("Episode XLIX - Expert", "Complete episode 49 without dying", 25,
trigger = once(n_level() == 1 && prev(n_level()) == 0) && episode_deathless(0x31) && n_stat())

achievement ("Victory I", "Obtain Victory Animation 1", 1,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 400 &&
          prev(n_tgold()) < 400)

achievement ("Victory II", "Obtain Victory Animation 2", 2,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 800 &&
          prev(n_tgold()) < 800)

achievement ("Victory III", "Obtain Victory Animation 3", 3,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 1100 &&
          prev(n_tgold()) < 1100)

achievement ("Victory IV", "Obtain Victory Animation 4", 4,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 1500 &&
          prev(n_tgold()) < 1500)

achievement ("Victory V", "Obtain Victory Animation 5", 10,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 10000 &&
          prev(n_tgold()) < 10000)
          
achievement ("Musical", "Obtain Bonus Music 2", 10,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 20000 &&
          prev(n_tgold()) < 20000)
          
achievement ("Pinkish", "Unlock Pink Ninja", 5,
trigger = n_tgold()-prev(n_tgold()) == n_gold() &&
          n_tgold() >= 5000 &&
          prev(n_tgold()) < 5000)          