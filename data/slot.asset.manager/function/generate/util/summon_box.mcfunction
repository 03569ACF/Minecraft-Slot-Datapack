#> slot.asset.manager:generate/util/summon_box
# シュルカーボックスの召喚
# @within function slot.asset.manager:generate/common

# 生成
    $summon item ~ ~ ~ {Tags:["$(UUID)"],Item:{id:"minecraft:shulker_box",count:1,components:{"minecraft:container":[{slot:0,item:{id:"minecraft:stone",count:1}}]}},PickupDelay:1s}
