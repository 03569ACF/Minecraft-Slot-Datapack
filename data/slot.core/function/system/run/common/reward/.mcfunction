#> slot.core:system/run/common/reward/
# 報酬の獲得
#   @input : $(LinkedHander)
# @within function slot.core:system/**

# 音を出す
    playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 0.7 1.5 0.0

# ハンドラの報酬Indexを取得
    $execute store result storage core: System.Reward.Index int 1.0 run scoreboard players get @e[nbt={Tags:[$(LinkedHander)]},limit=1] RewardNumber

# プロパティの読み込み
    $execute if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_auto] run function slot.property:slot_auto/slot_property
    $execute if entity @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot_handler/is_manual] run function slot.property:slot_manual/slot_property

# 報酬のリストを取得
    function slot.core:system/run/common/reward/1.get_reward_list with storage core: System.Reward

# 報酬を手持ちのアイテムに追加
    ## 取得
        $data modify storage core: System.Reward.NowRewards set from entity @e[nbt={Tags:[$(LinkedHander)]},limit=1] data.Rewards
    ## 加算
        function slot.core:system/run/common/reward/2.add_rewards
        $data modify entity @e[nbt={Tags:[$(LinkedHander)]},limit=1] data.Rewards set from storage core: System.Reward.SetRewards
