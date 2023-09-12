execute if score @s ender_cooldown matches 1.. at @s run function origins:enderian/progress_bar
execute as @s[scores={used_pearl=1..}] run function origins:enderian/used_pearl
scoreboard players remove @a[scores={ender_cooldown=1..}] ender_cooldown 1
execute as @a[scores={ender_cooldown=0},nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]}] run give @s ender_pearl{infinite:1b}
scoreboard players set @a used_pearl 0
scoreboard players add @a ender_cooldown 0
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",tag:{infinite:1b}}}] at @s run kill @s
execute as @a[tag=enderian] at @s unless entity @e[type=boat,distance=0.0..1.5] if block ~ ~ ~ #origins:water_blocks run effect give @s wither 1 1 true
