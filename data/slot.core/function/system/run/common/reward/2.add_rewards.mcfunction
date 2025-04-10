#> slot.core:system/run/common/reward/2.add_rewards
# 報酬を追加
# @within function slot.core:system/run/common/reward/

# リストから数値を取得
    execute store result score #Reward SlotTemp run data get storage core: System.Reward.NowRewards[0]
    execute store result score #Add SlotTemp run data get storage core: System.Reward.RewardCountList[0]

# 加算
    scoreboard players operation #Reward SlotTemp += #Add SlotTemp

# 保存用リストに格納
    execute store result storage core: System.Reward.Temp int 1.0 run scoreboard players get #Reward SlotTemp
    data modify storage core: System.Reward.SetRewards append from storage core: System.Reward.Temp

# 使用ストレージ削除
    data remove storage core: System.Reward.Temp

# 再帰
    ## ストレージ更新
        data remove storage core: System.Reward.NowRewards[0]
        data remove storage core: System.Reward.RewardCountList[0]
    ## 再帰
        execute if data storage core: System.Reward.NowRewards[0] run function slot.core:system/run/common/reward/2.add_rewards
