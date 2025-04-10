#> slot.core:system/run/auto/pattern/end_roulette/check_reward
# 報酬をチェックしてディスプレイを変更
# @within function slot.core:system/run/auto/pattern/end_roulette/

# ストレージ初期化
    data remove storage core: System.RewardIndex

# 報酬チェック
    $execute store result storage core: System.RewardIndex int 1.0 run scoreboard players get @e[nbt={Tags:[$(LinkedHander)]},limit=1] RewardNumber

# 報酬があるならスロットをそろえる
    execute unless data storage core: {System:{RewardIndex:-1}} run function slot.core:system/run/auto/pattern/set_reward_pattern with storage core: System

# もしハズレなのにDisplayがそろってしまった場合はアイテムを一つずらす
    execute as @s[tag=SlotItem3] run function slot.core:system/run/auto/pattern/end_roulette/miss_check/ with storage core: System
