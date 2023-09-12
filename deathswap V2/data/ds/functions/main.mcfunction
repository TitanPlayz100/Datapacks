scoreboard players add .count ds.totaltime 1


execute as @a[scores={ds.check_dead=1..}] at @s run function ds:dead
execute if score .count ds.totaltime matches 5800 run tellraw @a {"text":"Swapping in 10","color":"red","bold":true}
execute if score .count ds.totaltime matches 5820 run tellraw @a {"text":"Swapping in 9","color":"red","bold":true}
execute if score .count ds.totaltime matches 5840 run tellraw @a {"text":"Swapping in 8","color":"red","bold":true}
execute if score .count ds.totaltime matches 5860 run tellraw @a {"text":"Swapping in 7","color":"red","bold":true}
execute if score .count ds.totaltime matches 5880 run tellraw @a {"text":"Swapping in 6","color":"red","bold":true}
execute if score .count ds.totaltime matches 5900 run tellraw @a {"text":"Swapping in 5","color":"red","bold":true}
execute if score .count ds.totaltime matches 5920 run tellraw @a {"text":"Swapping in 4","color":"red","bold":true}
execute if score .count ds.totaltime matches 5940 run tellraw @a {"text":"Swapping in 3","color":"red","bold":true}
execute if score .count ds.totaltime matches 5960 run tellraw @a {"text":"Swapping in 2","color":"red","bold":true}
execute if score .count ds.totaltime matches 5980 run tellraw @a {"text":"Swapping in 1","color":"red","bold":true}
execute if score .count ds.totaltime matches 6000 run tellraw @a {"text":"Swapping!","color":"green","bold":true}

execute if score .count ds.totaltime matches 6000 run function ds:swap
execute if score .count ds.totaltime matches 5 run function ds:check_players

execute if score .count ds.totaltime matches 1..6000 as @a[tag=!game] run gamemode spectator @s
execute if score .count ds.totaltime matches 6000 run scoreboard players set .count ds.totaltime 0


