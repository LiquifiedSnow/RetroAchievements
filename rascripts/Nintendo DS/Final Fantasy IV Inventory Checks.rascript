// Final Fantasy IV
// #ID = 9994

function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0xD8264
for i in range(0, 109)
{
  slot = byte(inventoryBaseAddr + i * 4)
  trigger = trigger || prev(slot) != itemId && slot == itemId
}
return trigger
}

achievement(
    title = "Darkest of Matter", description = "Obtain Dark Matter [New Game] [Active Battle] [Speed 1]", points = 25,
    id = 146383, badge = "161240", published = "2021-03-23 12:58:12 AM", modified = "2021-03-23 12:58:12 AM",
    trigger = byte(0x0CC0F2) == 1 && bit0(0x0D6320) == 0 && bit1(0x0D6320) == 0 && bit2(0x0D6320) == 0 && 
              bit3(0x0D6320) == 0 && byte(0x0D8471) == 0 &&
              ItemObtained(45)
)

achievement(
    title = "Right Back at Ya!", description = "Obtain [Counter] Augment", points = 1,
    id = 146398, badge = "161780", published = "2021-03-23 12:58:31 AM", modified = "2021-03-23 12:58:31 AM",
    trigger = dword(0x0C6D08) == 183704 &&
              ItemObtained(179)
)

achievement(
    title = "Make it Double", description = "Obtain [Twincast] Augment", points = 1,
    id = 145251, badge = "161814", published = "2021-03-11 11:54:17 PM", modified = "2021-03-22 2:05:35 AM",
    trigger = dword(0x0C6D08) == 118060 &&
              ItemObtained(147)
)

achievement(
    title = "Gotcha!", description = "Obtain [Bluff] Augment", points = 2,
    id = 144912, badge = "161811", published = "2021-03-10 2:06:26 AM", modified = "2021-03-10 2:06:26 AM",
    trigger = dword(0x0C6D08) == 118060 &&
             ItemObtained(149)
)

achievement(
    title = "Boohoo!", description = "Obtain [Cry] Augment", points = 2,
    id = 144913, badge = "161812", published = "2021-03-10 2:06:30 AM", modified = "2021-03-10 2:06:30 AM",
    trigger = dword(0x0C6D08) == 118060 &&
              ItemObtained(148)
)

achievement(
    title = "Double Trouble", description = "Obtain [Dualcast] Augment", points = 3,
    id = 145265, badge = "161813", published = "2021-03-12 11:53:36 PM", modified = "2021-03-22 2:04:56 AM",
    trigger = dword(0x0C6D08) == 118060 &&
              ItemObtained(152)
)

achievement(
    title = "Waster", description = "Obtain [Salve] Augment", points = 2,
    id = 146405, badge = "162290", published = "2021-03-23 12:58:40 AM", modified = "2021-03-23 12:58:40 AM",
    trigger = dword(0x0C6D08) == 48480 &&
              ItemObtained(145)
)

achievement(
    title = "Hidden", description = "Obtain [Hide] Augment", points = 3,
    id = 145419, badge = "162291", published = "2021-03-13 11:34:45 PM", modified = "2021-03-13 11:34:45 PM",
    trigger = dword(0x0C6D08) == 48480 &&
             ItemObtained(146)
)

achievement(
    title = "Maximum Output", description = "Obtain [Reach] Augment", points = 5,
    id = 146356, badge = "161757", published = "2021-03-23 12:56:18 AM", modified = "2021-03-23 12:56:18 AM",
    trigger = dword(0x0C6D08) == 99680 &&
              ItemObtained(185)
)

achievement(
    title = "Scouter", description = "Obtain [Analyze] Augment", points = 1,
    id = 146417, badge = "163488", published = "2021-03-23 12:58:54 AM", modified = "2021-03-23 12:58:54 AM",
    trigger = dword(0x0C6D08) == 78856 &&
              ItemObtained(153)
)

achievement(
    title = "Tune-Up", description = "Obtain [Upgrade] Augment", points = 2,
    id = 146415, badge = "163488", published = "2021-03-23 12:58:52 AM", modified = "2021-03-23 12:58:52 AM",
    trigger = dword(0x0C6D08) == 78856 &&
             ItemObtained(154)
)

achievement(
    title = "Two Fold", description = "Obtain [Adrenaline] Augment", points = 3,
    id = 146416, badge = "163488", published = "2021-03-23 12:58:53 AM", modified = "2021-03-23 12:58:53 AM",
    trigger = dword(0x0C6D08) == 78856 &&
              ItemObtained(155)
)

achievement(
    title = "Hiya!", description = "Obtain [Kick] Augment", points = 2,
    id = 146421, badge = "163487", published = "2021-03-23 12:58:59 AM", modified = "2021-03-23 12:58:59 AM",
    trigger = dword(0x0C6D08) == 120240 &&
              ItemObtained(158)
)

achievement(
    title = "If This Is Tortue, Chain Me to the Wall", description = "Obtain [Brace] Augment", points = 3,
    id = 146422, badge = "163487", published = "2021-03-23 12:59:00 AM", modified = "2021-03-23 12:59:00 AM",
    trigger = dword(0x0C6D08) == 120240 &&
              ItemObtained(157)
)

achievement(
    title = "In the Dark", description = "Obtain [Darkness] Augment", points = 5,
    id = 146366, badge = "161763", published = "2021-03-23 12:57:50 AM", modified = "2021-03-23 12:57:50 AM",
    trigger = dword(0x0C6D08) == 76896 &&
              ItemObtained(198)
)
