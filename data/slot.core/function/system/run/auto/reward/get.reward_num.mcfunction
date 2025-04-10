#> slot.core:system/run/auto/reward/get.reward_num
# 報酬のリスト番号を取得
# @within function slot.core:system/run/auto/reward/

# 現在の確率を取得
    execute store result score #Random SlotTemp run data get storage core: System.Lottery[0]

# 比較して一致したらreturn
    execute if score @s SlotRandom <= #Random SlotTemp run return 1

# 値を更新して再帰呼び出し
    ## ループ回数の取得用
        scoreboard players add #Loop SlotTemp 1
    ## ストレージ更新
        data remove storage core: System.Lottery[0]
    ## 再帰
        execute if data storage core: System.Lottery[0] run function slot.core:system/run/auto/reward/get.reward_num
