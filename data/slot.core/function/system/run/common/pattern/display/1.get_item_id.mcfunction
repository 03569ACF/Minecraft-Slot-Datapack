#> slot.core:system/run/common/pattern/display/1.get_item_id
# リスト番号からアイテムIDを取得
# @within function slot.core:system/run/common/pattern/display/

# 取得
    $data modify storage core: System.Slot.Pattern.Id1 set from storage property: Slot.SlotItem[$(1)]
    $data modify storage core: System.Slot.Pattern.Id2 set from storage property: Slot.SlotItem[$(2)]
    $data modify storage core: System.Slot.Pattern.Id3 set from storage property: Slot.SlotItem[$(3)]

# 引数指定
    ## スロットの向き取得
        $data modify storage core: System.Slot.Pattern.Facing set from entity @e[predicate=slot.core:is_slot,nbt={Tags:[$(LinkedHander)]},limit=1] data.Facing
    ## AutoかManualか
        $execute if entity @e[predicate=slot.core:is_slot_handler/is_auto,nbt={Tags:[$(LinkedHander)]},limit=1] run data modify storage core: System.Slot.Pattern.Version set value "SlotAuto"
        $execute if entity @e[predicate=slot.core:is_slot_handler/is_manual,nbt={Tags:[$(LinkedHander)]},limit=1] run data modify storage core: System.Slot.Pattern.Version set value "SlotManual"
    ## 継続時間取得
        ### 時間計算
            execute store result score #Delay SlotTemp run data get storage property: Slot.RouletteDelay 1.0
        ### 計算と代入
            #### base
                execute store result score #Temp SlotTemp run data get storage property: Slot.RouletteTime
            #### 3
                execute store result storage core: System.Slot.Pattern.RouletteTime3 int 1.0 run scoreboard players get #Temp SlotTemp
            #### 2
                scoreboard players operation #Temp SlotTemp -= #Delay SlotTemp
                execute store result storage core: System.Slot.Pattern.RouletteTime2 int 1.0 run scoreboard players get #Temp SlotTemp
            #### 1
                scoreboard players operation #Temp SlotTemp -= #Delay SlotTemp
                execute store result storage core: System.Slot.Pattern.RouletteTime1 int 1.0 run scoreboard players get #Temp SlotTemp
        ### 引数削除
            scoreboard players reset #Delay SlotTemp
            scoreboard players reset #Temp SlotTemp

# アイテムを表示
    function slot.core:system/run/common/pattern/display/2.display_item with storage core: System.Slot.Pattern
