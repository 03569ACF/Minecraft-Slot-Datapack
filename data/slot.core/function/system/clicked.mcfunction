#> slot.core:system/clicked
# スロットがクリックされたとき
# @within function slot.main:listener/**

# 背面の生成者UUIDを取得
    data modify storage core: System.LinkedHander set from block ~ ~ ~ back_text.messages[0]

# ハンドラチェック?
    ## 存在チェック
        execute store result score @s SlotTemp run function slot.core:system/handler_exist_check with storage core: System
        ### falseだったらreturn
            execute if score @s SlotTemp matches -1 run return -1
    ## クールダウンチェック
        execute store result score @s SlotTemp run function slot.core:system/run/hander_cooldown_check with storage core: System
        ### falseだったらreturn
            execute if score @s SlotTemp matches -1 run return -1
    ## Temp削除
        scoreboard players reset @s SlotTemp

# サウンド
    playsound entity.arrow.hit_player ambient @a ~ ~ ~ 0.4 0.8 0.0

# 実行
    function slot.core:system/run with storage core: System

# ストレージ削除
    data remove storage core: System
