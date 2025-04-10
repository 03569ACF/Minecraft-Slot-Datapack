#> slot.main:load
# load function
# @within tag/function minecraft:load

# objectives
    ## Any
        scoreboard objectives add RewardNumber dummy
        scoreboard objectives add SlotRandom dummy
        scoreboard objectives add SlotTemp dummy
    ## Slot
        scoreboard objectives add SlotPattern dummy
        scoreboard objectives add SlotRouletteTime dummy
        scoreboard objectives add SlotPressCount dummy
    ## ItemDisplay
        scoreboard objectives add SlotItemDisplayCd dummy

# storage 
    ## global
        data modify storage global: prefix.DATAPACK set value "§6[Slot]§r "
        data modify storage global: prefix.ERROR set value "§c[ERROR]§r "

# text
    tellraw @a [{"storage":"global:", "nbt": "prefix.DATAPACK"},{"text": "Loaded Slot Datapack"}]
