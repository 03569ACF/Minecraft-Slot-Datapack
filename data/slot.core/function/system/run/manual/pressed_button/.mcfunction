#> slot.core:system/run/manual/pressed_button/
# 
# @within function slot.core:system/run/manual/

# 現在の押されたボタンに対応してSlot停止
    # 0
        $execute if score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 0 run data modify storage core: System.DisplayNum set value 1
    # 1
        $execute if score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 1 run data modify storage core: System.DisplayNum set value 2
    # 2
        $execute if score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 2 run data modify storage core: System.DisplayNum set value 3

# スロットを止める
    function slot.core:system/run/manual/pressed_button/1.stop_display with storage core: System

# 押されたボタンが最後だったら評価
    $execute if score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 2 run function slot.core:system/run/manual/check_pattern/ with storage core: System

# 押されたボタンincrement
    $scoreboard players add @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot] SlotPressCount 1

# return
    return 1
