#> slot.core:system/run/manual/pressed_button/1.stop_display
# 
# @within function slot.core:system/run/manual/pressed_button/

# 対応したDisplayのrouletteを止める
    $scoreboard players set @e[nbt={Tags:["SlotItem$(DisplayNum)",$(LinkedHander)]}] SlotRouletteTime 0
