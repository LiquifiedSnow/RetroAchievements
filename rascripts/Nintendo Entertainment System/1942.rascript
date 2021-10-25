// 1942
// #ID = 1515



function levels() => byte(0x438)
stage1 = 0x00
stage2 = 0x01
stage3 = 0x02
stage4 = 0x03
stage5 = 0x04
stage6 = 0x05
stage7 = 0x06
stage8 = 0x07
stage9 = 0x08
stage10 = 0x09
stage11 = 0x0a
stage12 = 0x0b
stage13 = 0x0c
stage14 = 0x0d
stage15 = 0x0e
stage16 = 0x0f
stage17 = 0x10
stage18 = 0x11
stage19 = 0x12
stage20 = 0x13
stage21 = 0x14
stage22 = 0x15
stage23 = 0x16
stage24 = 0x17
stage25 = 0x18
stage26 = 0x19
stage27 = 0x1a
stage28 = 0x1b
stage29 = 0x1c
stage30 = 0x1d
stage31 = 0x1e
stage32 = 0x1f

function End() => byte(0x437)

achievement ("Midway", "Clear stages 32-29", 5, id = 178300, badge = "198586", 
trigger = levels() == stage5 && prev(levels()) == stage4 && prev(End()) == 0xff)

achievement ("Marshall", "Clear stages 28-25", 5, id = 178301, badge = "198587", 
trigger = levels() == stage9 && prev(levels()) == stage8 && prev(End()) == 0xff)

achievement ("Attu", "Clear sages 24-21", 5, id = 178302, badge = "198588", 
trigger = levels() == stage13 && prev(levels()) == stage12 && prev(End()) == 0xff)

achievement ("Rabaul", "Clear stages 20-17", 5, id = 178303, badge = "198589", 
trigger = levels() == stage17 && prev(levels()) == stage16 && prev(End()) == 0xff)

achievement ("Leyte", "Clear stages 16-13", 5, id = 178304, badge = "198590", 
trigger = levels() == stage21 && prev(levels()) == stage20 && prev(End()) == 0xff)

achievement ("Saipan", "Clear stages 12-9", 5, id = 178305, badge = "198591",
trigger = levels() == stage25 && prev(levels()) == stage24 && prev(End()) == 0xff)

achievement ("Iwojima", "Clear stages 8-5", 5, id = 178306, badge = "198592",
trigger = levels() == stage29 && prev(levels()) == stage28 && prev(End()) == 0xff)

achievement ("Okinawa", "Clear stages 4-1", 5, id = 178307, badge = "198593",
trigger = tally(1000,levels() == stage32) && End() == 0xff && unless(levels() < stage32))
