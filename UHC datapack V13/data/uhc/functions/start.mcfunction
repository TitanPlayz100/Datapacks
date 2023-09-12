#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

title @a actionbar [{"text":"10 seconds untill match starts","color":"green"}]
scoreboard players set Minecraft_Titan uhc.totaltime 0
recipe give @a *
advancement revoke @a everything
clear @a
spreadplayers 0 0 100 500 false @a
effect give @a minecraft:slowness 10 255 true
effect give @a minecraft:jump_boost 10 200 true
effect give @a minecraft:mining_fatigue 10 255 true

worldborder set 1000 600

tellraw @a {"text":"The UHC will start in 10 seconds","color":"light_purple"}

tag @a remove lobby




