attribute @s minecraft:generic.max_health base set 14
execute as @s at @s if predicate origins:has_veg run function origins:arachnid/remove_held_item 
execute as @s[x_rotation=-90..-75] at @s unless block ~ ~ ~0.35 air run effect give @s minecraft:levitation 1 1 true
execute as @s[x_rotation=-90..-75] at @s unless block ~ ~ ~-0.35 air run effect give @s minecraft:levitation 1 1 true
execute as @s[x_rotation=-90..-75] at @s unless block ~0.35 ~ ~ air run effect give @s minecraft:levitation 1 1 true
execute as @s[x_rotation=-90..-75] at @s unless block ~-0.35 ~ ~ air run effect give @s minecraft:levitation 1 1 true
execute as @s[x_rotation=-74..90] at @s unless block ~ ~ ~0.35 air run effect give @s minecraft:slow_falling 1 1 true
execute as @s[x_rotation=-74..90] at @s unless block ~ ~ ~-0.35 air run effect give @s minecraft:slow_falling 1 1 true
execute as @s[x_rotation=-74..90] at @s unless block ~0.35 ~ ~ air run effect give @s minecraft:slow_falling 1 1 true
execute as @s[x_rotation=-74..90] at @s unless block ~-0.35 ~ ~ air run effect give @s minecraft:slow_falling 1 1 true
scoreboard players add @a arachnid_cd 0
execute as @s[scores={dealt_damage=1..,arachnid_cd=0}] at @s run function origins:arachnid/summon_web
scoreboard players set @s dealt_damage 0
scoreboard players remove @s[scores={arachnid_cd=1..}] arachnid_cd 1
execute as @s at @s run function origins:arachnid/webbing
execute if score @s arachnid_cd matches 1.. at @s run function origins:arachnid/progress_bar

execute if score @s delay matches 1 at @s run playsound minecraft:item.shield.break master @s ~ ~ ~ 1 1
execute if score @s delay matches 6 at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.3
execute if score @s delay matches 9 at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.01