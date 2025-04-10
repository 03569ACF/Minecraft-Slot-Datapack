#> slot.core:system/run/common/pattern/change_item_id
# 実行者のitemIDを変更する
# @within function slot.core:system/run/common/pattern_update

# プロパティ読み込み
    execute if entity @s[tag=SlotAuto] run function slot.property:slot_auto/slot_property
    execute if entity @s[tag=SlotManual] run function slot.property:slot_manual/slot_property

# 変更
    $execute if data storage property: Slot.SlotItem[$(ListIndex)] run scoreboard players add @s SlotPattern 1
    $execute if data storage property: Slot.SlotItem[$(ListIndex)] run data modify entity @s item.id set from storage property: Slot.SlotItem[$(ListIndex)]
    ## 変更できない?
        $execute unless data storage property: Slot.SlotItem[$(ListIndex)] run scoreboard players set @s SlotPattern 0
        $execute unless data storage property: Slot.SlotItem[$(ListIndex)] run data modify storage core: Slot.ListIndex set value 1
        $execute unless data storage property: Slot.SlotItem[$(ListIndex)] run function slot.core:system/run/common/pattern/change_item_id with storage core: Slot

# タイムをデクリメント
    scoreboard players remove @s SlotRouletteTime 1

# プロパティ削除
    function slot.property:gc
