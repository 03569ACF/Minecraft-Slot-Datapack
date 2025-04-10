#> slot.core:system/run/common/reward/1.get_reward_list
# 
# @within function slot.core:system/run/common/reward/

# 取得
    $data modify storage core: System.Reward.RewardCountList set from storage property: Slot.RewardCount[$(Index)]
