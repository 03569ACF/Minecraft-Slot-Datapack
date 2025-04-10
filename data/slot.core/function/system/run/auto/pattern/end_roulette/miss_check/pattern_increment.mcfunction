#> slot.core:system/run/auto/pattern/end_roulette/miss_check/pattern_increment
# 
# @within function slot.core:system/run/auto/pattern/end_roulette/miss_check/

# パターン変更
    scoreboard players add @s SlotPattern 1
    execute store result storage core: Slot.ListIndex int 1.0 run scoreboard players get @s SlotPattern
    function slot.core:system/run/common/pattern/change_item_id with storage core: Slot
