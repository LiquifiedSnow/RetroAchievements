// Final Fantasy IV Advance
// #ID = 763




function playtime() => prev(word(0x00e9e4)) != 0x00


function ItemObtained(itemId)
{
trigger = always_false()
inventoryBaseAddr = 0xeee4
for i in range(0, 47)
{
  slot = word(inventoryBaseAddr + i * 4)
  trigger = trigger || (prev(slot) != itemId && slot == itemId)
}
return trigger
}



function hasArmor(startaddr) {
    trigger = always_true()
    for i in range(0, 47){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x8c 
    }
    return trigger
}

function cecilarmor() => prev(byte(0xea26)) !=0x8c

achievement ("Crystal Armor", "Obtain the Crystal Armor", 1, 
trigger = playtime() && cecilarmor() && hasArmor(0xeee4) && ItemObtained(0x8c))

function hasGloves(startaddr) {
    trigger = always_true()
    for i in range(0, 47){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0xa6 
    }
    return trigger
}

function cecilgloves() => prev(byte(0xea28)) !=0xa6

achievement ("Crystal Gloves", "Obtain the Crystal Gloves", 1, 
trigger = playtime() && cecilgloves() && hasGloves(0xeee4) && ItemObtained(0xa6))

function hasShield(startaddr) {
    trigger = always_true()
    for i in range(0, 47){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x6c 
    }
    return trigger
}

function cecilshield() => prev(byte(0xea20)) !=0x6c

achievement ("Crystal Shield", "Obtain the Crystal Shield", 1, 
trigger = playtime() && cecilshield() && hasShield(0xeee4) && ItemObtained(0x6c))

function hasHelm(startaddr) {
    trigger = always_true()
    for i in range(0, 47){
      trigger = trigger && prev(word(startaddr + i * 4)) != 0x76 
    }
    return trigger
}

function cecilhelm() => prev(byte(0xea24)) !=0x76

achievement ("Crystal Helm", "Obtain the Crystal Helm", 1, 
trigger = playtime() && cecilhelm() && hasHelm(0xeee4) && ItemObtained(0x76))