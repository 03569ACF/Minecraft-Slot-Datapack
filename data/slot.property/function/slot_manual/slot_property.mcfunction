#> slot.property:slot_manual/slot_property
# マニュアルスロットのプロパティ
# @public

# 抽選されるアイテム
    data modify storage property: Slot.SlotItem set value ["nether_star", "enchanted_golden_apple", "diamond", "emerald", "lapis_lazuli", "gold_ingot", "iron_ingot"]

# 報酬(このリストのlengthと各レア度の報酬リストのlengthは一致していないといけない)
    data modify storage property: Slot.Reward set value ["enchanted_golden_apple", "diamond", "emerald"]

# レア度ごとの報酬数
    data modify storage property: Slot.RewardCount set value [[1, 5, 32], [1, 3, 32], [0, 1, 24], [0, 0, 16], [0, 0, 12], [0, 0, 6], [0, 0, 3]]

# 強制的にスロットが停止するまでの時間(Tick)
    data modify storage property: Slot.RouletteTime set value 2400
