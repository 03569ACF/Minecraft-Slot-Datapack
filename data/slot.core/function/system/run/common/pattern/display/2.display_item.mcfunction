#> slot.core:system/run/common/pattern/display/2.display_item
# アイテム表示
# @within function slot.core:system/run/common/pattern/display/1.get_item_id

# 表示
    $summon item_display ^-0.3 ^0.1 ^0.2 {item:{id:"$(Id1)",components:{custom_data:{LinkedHander:'$(LinkedHander)'}}},Tags:["SlotItemDisplay","$(Version)","SlotItem1",$(LinkedHander)],Rotation:[$(Facing)f,0.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
    $summon item_display ^ ^0.2 ^0.2 {item:{id:"$(Id2)",components:{custom_data:{LinkedHander:'$(LinkedHander)'}}},Tags:["SlotItemDisplay","$(Version)","SlotItem2",$(LinkedHander)],Rotation:[$(Facing)f,0.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
    $summon item_display ^0.3 ^0.1 ^0.2 {item:{id:"$(Id3)",components:{custom_data:{LinkedHander:'$(LinkedHander)'}}},Tags:["SlotItemDisplay","$(Version)","SlotItem3",$(LinkedHander)],Rotation:[$(Facing)f,0.0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}

# スコア指定
    ## パターン
        $scoreboard players set @e[nbt={Tags:["SlotItem1",$(LinkedHander)]}] SlotPattern $(1)
        $scoreboard players set @e[nbt={Tags:["SlotItem2",$(LinkedHander)]}] SlotPattern $(2)
        $scoreboard players set @e[nbt={Tags:["SlotItem3",$(LinkedHander)]}] SlotPattern $(3)
    ## ルーレットタイム
        $scoreboard players set @e[nbt={Tags:["SlotItem1",$(LinkedHander)]}] SlotRouletteTime $(RouletteTime1)
        $scoreboard players set @e[nbt={Tags:["SlotItem2",$(LinkedHander)]}] SlotRouletteTime $(RouletteTime2)
        $scoreboard players set @e[nbt={Tags:["SlotItem3",$(LinkedHander)]}] SlotRouletteTime $(RouletteTime3)
    ## クールダウン
        function slot.property:common/slot_property
        $execute store result score @e[nbt={Tags:["SlotItemDisplay",$(LinkedHander)]}] SlotItemDisplayCd run data get storage property: Slot.ItemDisplayCD
        function slot.property:gc
