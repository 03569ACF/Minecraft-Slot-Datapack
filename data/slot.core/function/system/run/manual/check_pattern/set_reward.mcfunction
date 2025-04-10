#> slot.core:system/run/manual/check_pattern/set_reward
# 報酬をセット
# @within function slot.core:system/run/manual/check_pattern/

# 現在の数値を取得
    $execute store result score @e[nbt={Tags:[$(LinkedHander)]},predicate=slot.core:is_slot,limit=1] RewardNumber run scoreboard players get @e[nbt={Tags:[$(LinkedHander),"SlotItem1"]},limit=1] SlotPattern

# 報酬を取得
    function slot.core:system/run/common/reward/ with storage core: System
