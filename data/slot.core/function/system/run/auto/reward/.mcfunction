#> slot.core:system/run/auto/reward/
# 報酬を確立から取得する
# @within function slot.core:system/run/auto/

# 乱数を取得
    execute store result score @s SlotRandom run random value 1..100

# 再帰してリストから報酬のリスト番号を取得
    ## 初期値格納
        scoreboard players set #Loop SlotTemp 0
        data modify storage core: System.Lottery set from storage property: Slot.Lottery
    ## 再帰でリスト番号を取得
        function slot.core:system/run/auto/reward/get.reward_num

# 報酬を防具立てにセット
    $scoreboard players operation @e[nbt={Tags:[$(LinkedHander)]},limit=1] RewardNumber = #Loop SlotTemp

# 使用したデータを削除
    data remove storage core: System.Lottery
    scoreboard players reset #Loop SlotTemp
