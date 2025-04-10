#> slot.core:system/delete/delete_entity
# エンティティの削除
# @within function slot.core:system/delete/

# 削除
    $kill @e[nbt={Tags:["$(UUID)"]}]
