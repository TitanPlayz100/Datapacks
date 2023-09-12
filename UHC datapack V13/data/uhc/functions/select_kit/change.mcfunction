#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com
execute if score @s dm.start_kit matches 5 run scoreboard players set @s dm.start_kit 0
scoreboard players add @s dm.start_kit 1


execute if score @s dm.start_kit matches 1 run tellraw @s {"text":"You have successfully switched starter kit to STONE TOOLS\n \n ","color":"green"}
execute if score @s dm.start_kit matches 2 run tellraw @s {"text":"You have successfully switched starter kit to LOOTER\n \n ","color":"green"}
execute if score @s dm.start_kit matches 3 run tellraw @s {"text":"You have successfully switched starter kit to PVP READY\n \n ","color":"green"}
execute if score @s dm.start_kit matches 4 run tellraw @s {"text":"You have successfully switched starter kit to CRAFTER\n \n ","color":"green"}
execute if score @s dm.start_kit matches 5 run tellraw @s {"text":"You have successfully switched starter kit to POTION MASTER\n \n ","color":"green"}

execute as @s if entity @s[tag=lobby] run replaceitem entity @s container.8 minecraft:red_wool{display:{Name:'{"text":"Drop 1 Wool To Switch Kit","color":"red","bold":true,"italic":false}'},switch:1b} 9


scoreboard players set @s dm.dropped 0
