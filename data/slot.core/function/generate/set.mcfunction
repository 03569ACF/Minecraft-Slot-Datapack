#> slot.core:generate/set
# 看板の設置
# @within function slot.core:generate/

# 実行環境チェック
    ## 向きが不正ならreturn
        execute unless predicate slot.core:is_correct_facing run tellraw @a [{"storage":"global:","nbt": "prefix.ERROR"},{"text": "設置向きが正しくありません"}]
        execute unless predicate slot.core:is_correct_facing run return -1
    ## ブロックがあったらreturn
        execute unless block ~ ~ ~ air run tellraw @a [{"storage": "global:","nbt": "prefix.ERROR"},{"text": "ブロックが設置されていたためスロットが作成できませんでした"}]
        execute unless block ~ ~ ~ air run return -1

# マーカーの設置
    function slot.core:generate/util/marker with entity @s

# 看板の設置
    function slot.core:generate/util/set_sigh with entity @s

# アイテムフレーム削除
    kill @s
