#> slot.core:system/run/common/reward/return/1.set_reward
# 報酬をひとつのみセットして召喚する
# @input
#   ItemCountList : 貰えるアイテム数が格納されたリスト
#   ItemIDList : アイテム名が格納されたリスト
# @within function slot.core:system/run/common/reward/return/

# アイテムIDを格納
    data modify storage core: Reward.ItemID set from storage core: Reward.ItemIDList[0]

# 数値をチェックして、1以上ならアイテム召喚
    execute store result score #Temp SlotTemp run data get storage core: Reward.ItemCountList[0]
    execute if score #Temp SlotTemp matches 1.. run function slot.core:system/run/common/reward/return/return with storage core: Reward

# データ更新
    ## ItemID
        data remove storage core: Reward.ItemIDList[0]
    ## ItemCountListはデクリメントして再格納
        ### 再格納
            execute if score #Temp SlotTemp matches 1.. run scoreboard players remove #Temp SlotTemp 1
            execute store result storage core: Reward.Temp int 1.0 run scoreboard players get #Temp SlotTemp
            data modify storage core: Reward.ResultList append from storage core: Reward.Temp
        ## リスト更新
            data remove storage core: Reward.ItemCountList[0]

# 再帰
    execute if data storage core: Reward.ItemIDList[0] run function slot.core:system/run/common/reward/return/1.set_reward
