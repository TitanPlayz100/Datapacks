#This ds datapack was created by shreyans
#email- spammablemail100@gmail.com

title @a actionbar [{"text":"10 seconds untill match starts","color":"green"}]
scoreboard players set Minecraft_Titan ds.totaltime 0

tag @a[team=joined] add game
tag @r add a
tag @r[tag=!a] add b
tag @r[tag=!a,tag=!b] add c
tag @r[tag=!a,tag=!b,tag=!c] add d
tag @r[tag=!a,tag=!b,tag=!c,tag=!d] add e
effect give @a minecraft:slowness 10 255 true
effect give @a minecraft:jump_boost 10 200 true
effect give @a minecraft:mining_fatigue 10 255 true

tellraw @a {"text":"The Deathswap will start in 10 seconds","color":"light_purple"}
execute as @a[tag=game] run scoreboard players add number ds.players 1
spreadplayers 0 0 100 500 false @a[tag=game]
clear @a
gamemode survival @a
effect give @a minecraft:regeneration 15 255 true
schedule function ds:count 10s