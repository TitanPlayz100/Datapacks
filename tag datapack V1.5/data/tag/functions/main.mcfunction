#This tag datapack was created by shreyans
#email- spammablemail100@gmail.com
team join joined @a[team=!joined,team=!chaser,team=!runner]

scoreboard players add .timer tag.totaltime 1

execute if score .timer tag.totaltime matches 20 run tellraw @a {"text":"Match will start in: 9","color":"gold"}
execute if score .timer tag.totaltime matches 40 run tellraw @a {"text":"Match will start in: 8","color":"gold"}
execute if score .timer tag.totaltime matches 60 run tellraw @a {"text":"Match will start in: 7","color":"gold"}
execute if score .timer tag.totaltime matches 80 run tellraw @a {"text":"Match will start in: 6","color":"gold"}
execute if score .timer tag.totaltime matches 100 run tellraw @a {"text":"Match will start in: 5","color":"gold"}
execute if score .timer tag.totaltime matches 140 run tellraw @a {"text":"Match will start in: 4","color":"gold"}
execute if score .timer tag.totaltime matches 160 run tellraw @a {"text":"Match will start in: 3","color":"gold"}
execute if score .timer tag.totaltime matches 180 run tellraw @a {"text":"Match will start in: 2","color":"gold"}
execute if score .timer tag.totaltime matches 200 run function tag:200t
execute if score .timer tag.totaltime matches 210 run tellraw @a {"text":"The runner has to avoid the chaser and stay alive for 2 minutes\nThe chaser has the co-ords of the runner\nthe chaser has to tip the runner","color":"aqua"}

execute if score .timer tag.totaltime matches 800 run tellraw @a {"text":"There is 90 seconds left","color":"light_purple"}
execute if score .timer tag.totaltime matches 1400 run tellraw @a {"text":"There is 60 seconds left","color":"light_purple"}
execute if score .timer tag.totaltime matches 2000 run tellraw @a {"text":"There is 30 seconds left","color":"light_purple"}
execute if score .timer tag.totaltime matches 2300 run tellraw @a {"text":"There is 15 seconds left!!","color":"light_purple"}
execute if score .timer tag.totaltime matches 2400 run tellraw @a {"text":"There is 10 seconds left","color":"green"}
execute if score .timer tag.totaltime matches 2420 run tellraw @a {"text":"There is 9 seconds left","color":"green"}
execute if score .timer tag.totaltime matches 2440 run tellraw @a {"text":"There is 8 seconds left","color":"green"}
execute if score .timer tag.totaltime matches 2460 run tellraw @a {"text":"There is 7 seconds left","color":"yellow"}
execute if score .timer tag.totaltime matches 2480 run tellraw @a {"text":"There is 6 seconds left","color":"yellow"}
execute if score .timer tag.totaltime matches 2500 run tellraw @a {"text":"There is 5 seconds left","color":"yellow"}
execute if score .timer tag.totaltime matches 2520 run tellraw @a {"text":"There is 4 seconds left","color":"yellow"}
execute if score .timer tag.totaltime matches 2540 run tellraw @a {"text":"There is 3 seconds left","color":"red"}
execute if score .timer tag.totaltime matches 2560 run tellraw @a {"text":"There is 2 seconds left","color":"gold"}
execute if score .timer tag.totaltime matches 2580 run tellraw @a {"text":"There is 1 seconds left","color":"red"}
execute if score .timer tag.totaltime matches 2600 run tellraw @a {"text":"The chaser has lost","color":"light_purple"}
execute if score .timer tag.totaltime matches 2600 run function tag:2600t

execute if score @a[team=chaser,limit=1] tipped matches 1.. run function tag:tipped

###bossbars
execute store result bossbar minecraft:wb value run scoreboard players get .timer tag.totaltime
bossbar set minecraft:wb name [{"text":"Time until Match is over","bold":false,"italic":false,"underlined":false,"color":"green"}]

execute store result score xcrd xcord run data get entity @a[team=runner,limit=1] Pos[0]
execute store result score ycrd ycord run data get entity @a[team=runner,limit=1] Pos[1]
execute store result score zcrd zcord run data get entity @a[team=runner,limit=1] Pos[2]

title @a[team=chaser] actionbar [{"text":"runner is at-","color":"yellow"},{"text":"X: ","color":"green"},{"score":{"name":"xcrd","objective":"xcord"},"color":"red"},{"text":"Y: ","color":"green"},{"score":{"name":"ycrd","objective":"ycord"},"color":"red"},{"text":"Z: ","color":"green"},{"score":{"name":"zcrd","objective":"zcord"},"color":"red"}]

effect give @a minecraft:night_vision 99999 1 true
enchant @a minecraft:efficiency 5
setworldspawn 6 150 5
spawnpoint @a 6 150 5

kill @e[type=!player,type=!item]
execute as @a at @s store result score @s Ypos run data get entity @s Pos[1]

title @a[scores={Ypos=..60}] title [{"text":"UNDER Y=60!","color":"red"}]
effect give @a[scores={Ypos=100..},team=runner] wither 1 3 true
execute as @a at @s run particle dust 1 0 0 0.5 ~ 60 ~ 2 0.0001 2 1 250

title @a[scores={Ypos=100..},team=runner] actionbar [{"text":"OVER Y=100","color":"blue"}]
effect give @a[scores={Ypos=100..},team=runner] wither 1 3 true
execute as @a[team=runner] at @s run particle dust 0 0 1 0.5 ~ 100 ~ 2 0.0001 2 1 250



execute as @a[scores={dead=1..},team=runner] at @s run clear @s
execute as @a[scores={dead=1..},team=runner] at @s run function tag:tipped
scoreboard players reset @a dead



