#> slot.core:system/run/common/pattern_update
# patternの更新
# @within function slot.core:system/run/**

# patternを更新
    execute store result storage core: Slot.ListIndex int 1.0 run scoreboard players get @s SlotPattern
    function slot.core:system/run/common/pattern/change_item_id with storage core: Slot

# 抽選が終了したら
    execute if score @s SlotRouletteTime matches ..0 run function slot.core:system/run/auto/pattern/end_roulette/
