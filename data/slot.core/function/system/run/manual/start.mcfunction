#> slot.core:system/run/manual/start
# 
# @within function slot.core:system/run/manual/

# プロパティ読み込み
    function slot.property:slot_manual/slot_property

# itemDisplayを回す
    ## 抽選されるアイテム数を取得
        execute store result score #Temp SlotTemp run data get storage property: Slot.SlotItem
        scoreboard players remove #Temp SlotTemp 1
        execute store result storage core: System.Slot.PatternLength int 1.0 run scoreboard players get #Temp SlotTemp
        scoreboard players reset #Temp SlotTemp
    ## 実行
        function slot.core:system/run/common/pattern/display/ with storage core: System.Slot

# SlotPressCountをセット
    $scoreboard players set @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]}] SlotPressCount 0

# プロパティを削除
    function slot.property:gc
