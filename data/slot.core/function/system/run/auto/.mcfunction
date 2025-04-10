#> slot.core:system/run/auto/
# Autoスロットの実行
# @within function slot.core:generate/

# プロパティ読み込み
    function slot.property:slot_auto/slot_property

# 確率抽選
    ## 当たり確率を取得
        execute store result score #Random SlotRandom run data get storage property: Slot.Probability
    ## 1~100で抽選
        execute store result score @s SlotRandom run random value 1..100
    ## 当たりだったら報酬を抽選
        execute if score @s SlotRandom <= #Random SlotRandom run function slot.core:system/run/auto/reward/ with storage core: System
    ## 使用データ削除
        scoreboard players reset @s SlotRandom

# itemDisplayを回す
    ## 抽選されるアイテム数を取得
        execute store result score #Temp SlotTemp run data get storage property: Slot.SlotItem
        scoreboard players remove #Temp SlotTemp 1
        execute store result storage core: System.Slot.PatternLength int 1.0 run scoreboard players get #Temp SlotTemp
        scoreboard players reset #Temp SlotTemp
    ## 実行
        function slot.core:system/run/common/pattern/display/ with storage core: System.Slot

# プロパティを削除
    function slot.property:gc
