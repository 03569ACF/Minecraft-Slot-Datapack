#> slot.asset:auto/
# auto slot asset
# @private

# ItemID
    data modify storage asset: Item.ItemID set value "emerald"

# Name
    data modify storage asset: Item.Name set value '{"text":"スロットの元(オート)", "color":"gold"}'

# Lore
    data modify storage asset: Item.Lore set value ['{"text":"額縁に入れることで使用可能"}','{"text":"クリックすることでスロットが遊べます"}']

# AssetID
    data modify storage asset: Item.SlotID set value '{SlotID:"Slot_Auto"}'

# アイテム生成
    function slot.asset.manager:generate/

# アセット削除
    data remove storage asset: Item
