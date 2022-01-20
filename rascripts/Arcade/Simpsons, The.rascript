// Simpsons, The
// #ID = 12049



achievement(
    title = "Sledge Hammer!", description = "Beat up 25 enemies with the hammer using the same character", points = 5,
    id = 75792, badge = "80818", published = "4/16/2019 5:37:19 PM", modified = "9/6/2021 10:35:44 PM",
    trigger = unless(byte(0x001011) == 1) &&
              ((measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 7 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 7 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 7 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 7 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 3)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 7 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 7 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 7 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 7 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 3)))
)
achievement(
    title = "For you, a thousand times over", description = "Beat up 25 enemies with the slingshot using the same character", points = 10,
    id = 75793, badge = "80819", published = "4/16/2019 5:37:21 PM", modified = "9/6/2021 10:35:44 PM",
    trigger = unless(byte(0x001011) == 1) &&
              ((measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 8 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 8 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 8 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 8 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 3)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 8 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 8 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 8 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 8 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 3)))
)

achievement(
    title = "Better than a chancla", description = "Beat up 25 enemies with the broom using the same character", points = 25,
    id = 75794, badge = "80820", published = "4/16/2019 5:37:23 PM", modified = "11/15/2021 6:35:42 PM",
    trigger = unless(byte(0x001011) == 1) &&
              ((measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 6 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 6 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 6 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 6 &&
                 byte(0x0011D5) != prev(byte(0x0011D5))), when=byte(0x001238) == 3)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 0 && byte(0x001280) == 6 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 0)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 1 && byte(0x001340) == 6 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 1)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 2 && byte(0x001400) == 6 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 2)) ||
               (measured(repeated(25, byte(0x001003) >= 2 && byte(0x001238) == 3 && byte(0x0014C0) == 6 &&
                 byte(0x0011DD) != prev(byte(0x0011DD))), when=byte(0x001238) == 3)))
)
