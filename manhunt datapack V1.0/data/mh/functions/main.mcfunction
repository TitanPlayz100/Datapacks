#This tag datapack was created by shreyans
#email- spammablemail100@gmail.com

scoreboard players add Minecraft_Titan mh.totaltime 1

execute if score Minecraft_Titan mh.totaltime matches 200 run tellraw @a {"text":"Chaser(s) released in 20 seconds","color":"green"}
execute if score Minecraft_Titan mh.totaltime matches 300 run tellraw @a {"text":"Chaser(s) released in 15 seconds","color":"green"}
execute if score Minecraft_Titan mh.totaltime matches 400 run tellraw @a {"text":"Chaser(s) released in 10 seconds","color":"gold"}
execute if score Minecraft_Titan mh.totaltime matches 500 run tellraw @a {"text":"Chaser(s) released in 5 seconds","color":"gold"}
execute if score Minecraft_Titan mh.totaltime matches 520 run tellraw @a {"text":"Chaser(s) released in 4 seconds","color":"red"}
execute if score Minecraft_Titan mh.totaltime matches 540 run tellraw @a {"text":"Chaser(s) released in 3 seconds","color":"red"}
execute if score Minecraft_Titan mh.totaltime matches 560 run tellraw @a {"text":"Chaser(s) released in 2 seconds","color":"red"}
execute if score Minecraft_Titan mh.totaltime matches 580 run tellraw @a {"text":"Chaser(s) released in 1 seconds","color":"red"}
execute if score Minecraft_Titan mh.totaltime matches 600 run effect clear @a[team=chaser]
execute if score Minecraft_Titan mh.totaltime matches 610 run tellraw @a {"text":"The speedrunner has to avoid the chaser and stay alive while trying to beat the game\nThe chaser has the co-ords of the runner\nthe chaser has to kill the runner","color":"aqua"}


execute if score @a[team=chaser,limit=1] killed matches 1.. run function mh:killed

###bossbars

execute store result score xcrd xcord run data get entity @a[team=runner,limit=1] Pos[0]
execute store result score ycrd ycord run data get entity @a[team=runner,limit=1] Pos[1]
execute store result score zcrd zcord run data get entity @a[team=runner,limit=1] Pos[2]

title @a[team=chaser] actionbar [{"text":"speedrunner is at-","color":"yellow"},{"text":"X: ","color":"green"},{"score":{"name":"xcrd","objective":"xcord"},"color":"red"},{"text":"Y: ","color":"green"},{"score":{"name":"ycrd","objective":"ycord"},"color":"red"},{"text":"Z: ","color":"green"},{"score":{"name":"zcrd","objective":"zcord"},"color":"red"}]

setworldspawn 6 150 5
spawnpoint @a 6 150 5
