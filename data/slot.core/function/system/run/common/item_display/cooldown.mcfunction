#> slot.core:system/run/common/item_display/cooldown
# クールダウンのデクリメントと管理
# @within function slot.core:tick

# decrement
    scoreboard players remove @s SlotItemDisplayCd 1

# 削除?
    execute if score @s SlotItemDisplayCd matches ..0 run kill @s
