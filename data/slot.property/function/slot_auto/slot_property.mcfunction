#> slot.property:slot_auto/slot_property
# オートスロットのプロパティ
# @public

# 抽選されるアイテム
    data modify storage property: Slot.SlotItem set value ["nether_star", "enchanted_golden_apple", "diamond", "emerald", "lapis_lazuli", "gold_ingot", "iron_ingot"]

# 当たる確率(%)
    data modify storage property: Slot.Probability set value 50

# 当たった時にどれが抽選される確率(先頭からレア度が降順 : %)
    data modify storage property: Slot.Lottery set value [3, 8, 20, 30, 40, 60, 100]

# 報酬(このリストのlengthと各レア度の報酬リストのlengthは一致していないといけない)
    data modify storage property: Slot.Reward set value ["enchanted_golden_apple", "diamond", "emerald"]

# レア度ごとの報酬数
    data modify storage property: Slot.RewardCount set value [[1, 5, 32], [1, 3, 32], [0, 1, 24], [0, 0, 16], [0, 0, 12], [0, 0, 6], [0, 0, 3]]

# 抽選にかかる時間の長さ(Tick)
    data modify storage property: Slot.RouletteTime set value 30

# 各スロットの停止間隔(Tick)
    data modify storage property: Slot.RouletteDelay set value 4
