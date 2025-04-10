#> slot.core:system/run/auto/pattern/end_roulette/miss_check/
# 全ての数値が一致していたら、自身のスロット番号を一つインクリメントする
# @within function slot.core:system/run/auto/pattern/end_roulette/check_reward

# 数値チェック
    $execute if score @s SlotPattern = @e[nbt={Tags:["SlotItem1",$(LinkedHander)]},limit=1] SlotPattern if score @s SlotPattern = @e[nbt={Tags:["SlotItem2",$(LinkedHander)]},limit=1] SlotPattern run function slot.core:system/run/auto/pattern/end_roulette/miss_check/pattern_increment