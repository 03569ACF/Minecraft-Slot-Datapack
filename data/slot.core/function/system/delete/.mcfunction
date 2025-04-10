#> slot.core:system/delete/
# スロットの削除
# 実行者は削除する防具立て本人
# @within function slot.core:tick

# タグをUUIDのみにする
    tag @s remove SlotHandler
    tag @s remove SlotAuto
    tag @s remove SlotManual

# タグのコピー
    data modify storage core: System.UUID set from entity @s Tags[0]

# 削除実行
    function slot.core:system/delete/delete_entity with storage core: System

# ストレージ削除
    data remove storage core: System
