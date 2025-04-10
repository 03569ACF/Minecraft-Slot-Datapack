#> slot.core:tick
# core tick file
# @within function

# パターン更新
    execute as @e[predicate=slot.core:is_item_display] at @s if score @s SlotRouletteTime matches 1.. run function slot.core:system/run/common/pattern_update

# 報酬を取得
    execute as @e at @s if predicate slot.core:has_rewards run function slot.core:system/run/common/reward/return/

# もし看板が無かったら削除？
    execute as @e[tag=SlotHandler] at @s unless block ~ ~ ~ oak_wall_sign run function slot.core:system/delete/

# itemDisplayの削除クールタイム
    execute as @e[tag=SlotItemDisplay] run function slot.core:system/run/common/item_display/cooldown

# ハンドラのクールダウンをデクリメント
    execute as @e[tag=SlotHandler] if score @s SlotRouletteTime matches 1.. run scoreboard players remove @s SlotRouletteTime 1
