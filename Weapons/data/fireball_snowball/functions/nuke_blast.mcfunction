execute as @s at @s if block ^ ^ ^0.1 air run tp @s ^ ^ ^0.1
execute as @s at @s if block ^ ^ ^0.1 air run tp @s ^ ^ ^0.1
execute as @s at @s if block ^ ^ ^0.1 air run tp @s ^ ^ ^0.1

execute as @s at @s if entity @e[type=!area_effect_cloud,type=!armor_stand,type=!item,distance=0..2.5] run effect give @e[type=!area_effect_cloud,type=!armor_stand,type=!item,distance=0..2.5] wither 10 5 true
execute as @s at @s unless block ^ ^ ^0.1 air run particle minecraft:lava ~ ~ ~ 0.0001 0.0001 0.0001 1 15
execute as @s at @s unless block ^ ^ ^0.1 air run kill @s



