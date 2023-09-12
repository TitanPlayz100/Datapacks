kill @e[type=minecraft:area_effect_cloud,tag=we,limit=1,sort=nearest]
scoreboard players add $remaining worldeater 1
execute if score $remaining worldeater matches ..-1 run function we:summon_destroy/removeaec
