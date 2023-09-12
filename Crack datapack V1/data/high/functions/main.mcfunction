#This uhc datapack was created by TitanPlayz
#email- spammablemail100@gmail.com
execute as @a[scores={high.use_sugar=1..},tag=high_enable] at @s run function high:dropped
execute as @a[tag=!high_enable] as @a[tag=!high_disable] run tag @s add high_enable
execute as @a[scores={high.enable=1..}] run tag @s remove high_disable
execute as @a[scores={high.enable=1..}] run tag @s add high_enable
scoreboard players set @a high.enable 0
execute as @a[scores={high.disable=1..}] run tag @s add high_disable
execute as @a[scores={high.disable=1..}] run tag @s remove high_enable
scoreboard players set @a high.disable 0
scoreboard players enable @a high.enable
scoreboard players enable @a high.disable
execute as @a[tag=high_disable,scores={high.use_sugar=1..}] run scoreboard players remove @s high.use_sugar 1

