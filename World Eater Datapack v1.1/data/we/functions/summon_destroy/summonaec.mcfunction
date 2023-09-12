summon area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["we"]}
scoreboard players remove $remaining worldeater 1
execute if score $remaining worldeater matches 1.. run function we:summon_destroy/summonaec
