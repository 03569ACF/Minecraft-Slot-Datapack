#> slot.asset.manager:generate/
# アセットの生成チェックを行いアイテム生成
# @within function slot.asset:**

# アセットデータを確認
    ## flag
        data modify storage asset:manager CheckFlag set value true
    ## Check
        ### itemID
            execute unless data storage asset: Item.ItemID run data modify storage asset:manager CheckFlag set value false
        ### Name
            execute unless data storage asset: Item.Name run data modify storage asset:manager CheckFlag set value false
        ### Lore
            execute unless data storage asset: Item.Lore run data modify storage asset:manager CheckFlag set value false
        ### SlotID
            execute unless data storage asset: Item.SlotID run data modify storage asset:manager CheckFlag set value false

# 実行可能?
    ## 実行
        execute if data storage asset:manager {CheckFlag:true} run function slot.asset.manager:generate/common with entity @s
    ## エラー?
        execute if data storage asset:manager {CheckFlag:false} run tellraw @s [{"storage":"global:","nbt": "prefix.ERROR"},{"text": "アセットデータに不具合があります"}]

# フラグ削除
    data remove storage asset:manager CheckFlag
