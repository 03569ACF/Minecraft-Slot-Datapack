#> slot.core:system/run/auto/pattern/end_roulette/
# 抽選が終わったitemDisplayに適正IDを割り振る
# 実行者 : itemDisplay
# @within function slot.core:system/run/common/pattern_update

# サウンド
    playsound entity.arrow.hit_player ambient @a ~ ~ ~ 0.5 0.8 0.0

# 自身のハンドラを取得
    ## 背面の生成者UUIDを取得
        data modify storage core: System.LinkedHander set from entity @s item.components."minecraft:custom_data".LinkedHander
    ## チェック
        execute store result score @s SlotTemp run function slot.core:system/handler_exist_check with storage core: System
        ### falseだったらreturn
            execute if score @s SlotTemp matches -1 run return -1
    ## Temp削除
        scoreboard players reset @s SlotTemp

# 報酬チェックとディスプレイ変更
    function slot.core:system/run/auto/pattern/end_roulette/check_reward with storage core: System

# 使用データ削除
    data remove storage core: System
