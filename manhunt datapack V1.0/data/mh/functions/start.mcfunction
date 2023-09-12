#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

title @a actionbar [{"text":"30 seconds untill chaser is released","color":"green"}]
scoreboard players set Minecraft_Titan mh.totaltime 0


team join chaser @a
team join speedrunner @r[team=chaser]
effect give @a[team=chaser] minecraft:slowness 30 255 true
effect give @a[team=chaser] minecraft:jump_boost 30 200 true
effect give @a[team=chaser] minecraft:mining_fatigue 30 255 true

tellraw @a {"text":"30 seconds untill chaser is released","color":"light_purple"}

title @a[team=chaser] title "CHASER"
title @a[team=speedrunner] title "SPEEDRUNNER"
clear @a
gamemode survival @a[team=chaser]
gamemode survival @a[team=speedrunner]
spreadplayers 0 0 10 30 false @a
