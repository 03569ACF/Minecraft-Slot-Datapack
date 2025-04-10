#> slot.core:system/run/auto/pattern/set_reward_pattern
# 報酬パターンのセット
# @within function slot.core:system/run/auto/pattern/end_roulette/check_reward

# プロパティ読み込み
    function slot.property:slot_auto/slot_property

# 自分を報酬のアイテムにそろえる
    $data modify entity @s item.id set from storage property: Slot.SlotItem[$(RewardIndex)]

# プロパティ削除
    function slot.property:gc

# スロット番号が3なら報酬をセット
    execute if entity @s[tag=SlotItem3] run function slot.core:system/run/common/reward/ with storage core: System
