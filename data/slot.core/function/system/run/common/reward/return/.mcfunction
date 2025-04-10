#> slot.core:system/run/common/reward/return/
# 報酬をリターン
# 実行者はスロットハンドラ
# @within function slot.core:tick

# リスト取得
    ## 報酬数
        data modify storage core: Reward.ItemCountList set from entity @s data.Rewards
    ## 貰える報酬
        ### Auto
            execute if predicate slot.core:is_slot_handler/is_auto run function slot.property:slot_auto/slot_property
        ### Manual
            execute if predicate slot.core:is_slot_handler/is_manual run function slot.property:slot_manual/slot_property
        data modify storage core: Reward.ItemIDList set from storage property: Slot.Reward
        function slot.property:gc

# 報酬取得
    data remove storage core: Reward.ResultList
    data remove storage core: Reward.Temp
    function slot.core:system/run/common/reward/return/1.set_reward

# 結果をリストに返却
    data modify entity @s data.Rewards set from storage core: Reward.ResultList
