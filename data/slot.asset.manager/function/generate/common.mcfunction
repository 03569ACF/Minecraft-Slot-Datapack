#> slot.asset.manager:generate/common
# アセットをアイテム化
# @within function slot.asset:**

# シュルカーボックスを生成
    function slot.asset.manager:generate/util/summon_box with entity @s

# データの代入
    ## ItemID
        $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] Item.components."minecraft:container".[{slot:0}].item.id set from storage asset: Item.ItemID
    ## Name
        $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] Item.components."minecraft:container".[{slot:0}].item.components."minecraft:custom_name" set from storage asset: Item.Name
    ## Lore
        $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] Item.components."minecraft:container".[{slot:0}].item.components."minecraft:lore" set from storage asset: Item.Lore
    ## SlotID
        $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] Item.components."minecraft:container".[{slot:0}].item.components."minecraft:custom_data" set from storage asset: Item.SlotID

# アイテムを渡す
    $damage @e[nbt={Tags:["$(UUID)"]},limit=1] 100.0
