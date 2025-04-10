#> slot.core:system/run/common/reward/return/return
# アイテム返却
# @within function slot.core:system/run/common/reward/return/1.set_reward

# アイテム還元
    $summon item ^ ^ ^0.5 {Item:{id:$(ItemID)}}

# 音を出す
    playsound ui.button.click ambient @a ~ ~ ~ 0.5 1.2 0.0

# エフェクトを表示
    particle crit ~ ~ ~ 0 0 0 0.3 3 normal
