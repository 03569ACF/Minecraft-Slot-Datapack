#> slot.core:system/run/manual/check_pattern/
# 
# @within function slot.core:system/run/manual/pressed_button/

# 数値チェックして揃ってたらリワード
    $execute if score @e[nbt={Tags:["SlotItem1",$(LinkedHander)]},limit=1] SlotPattern = @e[nbt={Tags:["SlotItem2",$(LinkedHander)]},limit=1] SlotPattern if score @e[nbt={Tags:["SlotItem1",$(LinkedHander)]},limit=1] SlotPattern = @e[nbt={Tags:["SlotItem3",$(LinkedHander)]},limit=1] SlotPattern run function slot.core:system/run/manual/check_pattern/set_reward with storage core: System
