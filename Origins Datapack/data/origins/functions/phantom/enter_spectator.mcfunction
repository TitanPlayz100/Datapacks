gamemode spectator @s
effect give @s minecraft:blindness 999 0 true
scoreboard players set @s phantom_cd 600
playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 0.86
particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 1 50
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["limiter"]} 