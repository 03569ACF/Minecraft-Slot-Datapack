#> slot.core:generate/util/set_sigh
# 
# @within function slot.core:generate/**

# 向きから看板を設置
    execute if data entity @s {Facing:2b} run setblock ~ ~ ~ oak_wall_sign[facing=north] replace
    execute if data entity @s {Facing:3b} run setblock ~ ~ ~ oak_wall_sign[facing=south] replace
    execute if data entity @s {Facing:4b} run setblock ~ ~ ~ oak_wall_sign[facing=west] replace
    execute if data entity @s {Facing:5b} run setblock ~ ~ ~ oak_wall_sign[facing=east] replace

# 内容をセット
    ## プロパティ読み込み
        ### Auto
            execute if score @s GenerateFlag matches 1 run function slot.property:slot_auto/slot_text
        ### Manual
            execute if score @s GenerateFlag matches 2 run function slot.property:slot_manual/slot_text
    ## クリックイベントの書き込み
        function slot.core:generate/util/merge_string/merge_click_event
    ## 書き込み
        data modify block ~ ~ ~ front_text.messages[0] set from storage property: Slot.FrontText[0]
        data modify block ~ ~ ~ front_text.messages[1] set from storage property: Slot.FrontText[1]
        data modify block ~ ~ ~ front_text.messages[2] set from storage property: Slot.FrontText[2]
        data modify block ~ ~ ~ front_text.messages[3] set from storage property: Slot.FrontText[3]
    ## 背面にUUIDをコピー
        $data modify block ~ ~ ~ back_text.messages[0] set value '["$(UUID)"]'
# 光らせる
    data modify block ~ ~ ~ front_text.has_glowing_text set value true
# 書き込みを変更できないようにする
    data modify block ~ ~ ~ is_waxed set value true

# エフェクト
    ## particle
        particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 0.3 30 normal
    ## sound
        playsound block.note_block.harp ambient @a ~ ~ ~ 0.7 1.8 0.0

# プロパティ削除
    function slot.property:gc
