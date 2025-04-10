#> slot.core:generate/util/marker
# マーカーの召喚
# @within function slot.core:generate/**

# 向きを合わせて召喚
    ## Auto
        $execute if score @s GenerateFlag matches 1 run summon marker ~ ~ ~ {Tags:["SlotHandler","SlotAuto","$(UUID)"]}
    ## Manual
        $execute if score @s GenerateFlag matches 2 run summon marker ~ ~ ~ {Tags:["SlotHandler","SlotManual","$(UUID)"]}

# 初期データ格納
    $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] data.Rewards set value [I; 0, 0, 0]

# 向きを合わせる
    $data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] Rotation set from entity @s Rotation

# クールダウンをセット
    $scoreboard players set @e[nbt={Tags:["$(UUID)"]},limit=1] SlotRouletteTime 0

# 向きデータ格納
    $execute if data entity @s {Facing:2b} run data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] data.Facing set value 180
    $execute if data entity @s {Facing:3b} run data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] data.Facing set value 0
    $execute if data entity @s {Facing:4b} run data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] data.Facing set value 90
    $execute if data entity @s {Facing:5b} run data modify entity @e[nbt={Tags:["$(UUID)"]},limit=1] data.Facing set value 270

# マニュアルならボタンを押した回数をセット
    $execute as @e[nbt={Tags:["$(UUID)"]},predicate=slot.core:is_slot_handler/is_manual] run scoreboard players set @s SlotPressCount 3
