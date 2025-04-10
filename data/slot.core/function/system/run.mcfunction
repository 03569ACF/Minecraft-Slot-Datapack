#> slot.core:system/run
# スロット開始
# @within function slot.core:system/clicked

# クールダウンをセット
    ## Auto
        $execute if entity @e[nbt={Tags:[$(LinkedHander),"SlotAuto"]}] run function slot.property:slot_auto/slot_property
    ## Manual
        $execute if entity @e[nbt={Tags:[$(LinkedHander),"SlotManual"]}] run function slot.property:slot_manual/slot_property
    $execute store result score @e[nbt={Tags:["SlotHandler",$(LinkedHander)]},limit=1] SlotRouletteTime run data get storage property: Slot.RouletteTime
    function slot.property:gc

# 対応したitemDisplayを削除
    ## Auto
        $execute if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_auto] run kill @e[type=item_display,nbt={Tags:[$(LinkedHander)]}]
    ## Manual
        $execute if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_manual,scores={SlotPressCount=3}] run kill @e[type=item_display,nbt={Tags:[$(LinkedHander)]}]

# 報酬をリセット
    $scoreboard players set @e[nbt={Tags:[$(LinkedHander)]}] RewardNumber -1

# スロットの種類ごとに処理
    ## Auto
        $execute at @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]}] if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_auto] run function slot.core:system/run/auto/
    ## Manual
        $execute at @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]}] if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_manual] run function slot.core:system/run/manual/ with storage core: System
