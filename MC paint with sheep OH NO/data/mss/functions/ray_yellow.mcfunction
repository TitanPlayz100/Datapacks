#WHYYYYY
particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1

scoreboard players remove @s stop_ray 1
execute as @e[dx=0,type=!player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run effect give @s glowing 1 1 true 
execute as @e[dx=0,type=!player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s stop_ray 0 


execute if score @s stop_ray matches 1.. if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[distance=..0.75,type=!minecraft:armor_stand,type=!item_frame,type=!player] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function mss:ray_yellow



