#> slot.core:system/run/manual/
# Manualスロットの実行
# @within function slot.core:system/run

# チェック用スコアリセット
    scoreboard players reset #Temp SlotTemp

# 出目をストップ
    $execute unless score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 3 store result score #Temp SlotTemp run function slot.core:system/run/manual/pressed_button/ with storage core: System

# もしスロットが止められたターンならreturn
    execute if score #Temp SlotTemp matches 1 run return 1
 
# 新たにスタート
    $execute if score @e[nbt={Tags:[$(LinkedHander),"SlotHandler"]},limit=1] SlotPressCount matches 3 run function slot.core:system/run/manual/start with storage core: System
