#> slot.core:generate/
# スロットを作成する？
# @within function slot.main:advancement/player_interacted_with_entity

# データ確認
    ## スコアオブジェクト用意
        scoreboard objectives add GenerateFlag dummy
    ## Auto
        execute as @e[type=item_frame,distance=..10] if predicate slot.core:is_slot_auto run scoreboard players set @s GenerateFlag 1
    ## Manual
        execute as @e[type=item_frame,distance=..10] if predicate slot.core:is_slot_manual run scoreboard players set @s GenerateFlag 2

# 実行？
    execute as @e[scores={GenerateFlag=1..}] at @s run function slot.core:generate/set

# オブジェクト削除
    scoreboard objectives remove GenerateFlag
