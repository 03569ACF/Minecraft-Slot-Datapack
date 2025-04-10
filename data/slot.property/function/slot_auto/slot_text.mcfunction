#> slot.property:slot_auto/slot_text
# スロット本体に書き込むテキスト
# @within function slot.core:generate/util/set_sigh

# reset
    data remove storage property: Slot.FrontText

# 1
    data modify storage property: Slot.FrontText append value '{"text":""}'
# 2
    data modify storage property: Slot.FrontText append value '{"text":"☆たのしいスロット☆", "color":"gold"}'
# 3
    data modify storage property: Slot.FrontText append value '{"text":"クリックして開始", "color":"red"}'
# 4
    data modify storage property: Slot.FrontText append value '{"text":""}'
