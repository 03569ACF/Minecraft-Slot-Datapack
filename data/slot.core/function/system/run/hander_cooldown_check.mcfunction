#> slot.core:system/run/hander_cooldown_check
# クールダウンがもう終了してる？
# @within function slot.core:system/clicked

# チェック
    $execute if score @e[nbt={Tags:["SlotHandler",$(LinkedHander)]},limit=1] SlotRouletteTime matches ..0 run return 1

# Manual版だったら無視
    $execute if entity @e[nbt={Tags:[$(LinkedHander),"SlotManual"]}] run return 1

# エラー処理
    tellraw @s [{"storage": "global:","nbt": "prefix.DATAPACK"},{"text": "クールダウン中です！"}]
    return -1
