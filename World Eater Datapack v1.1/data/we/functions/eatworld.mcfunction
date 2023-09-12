execute if score $radius worldeater matches 25 run spreadplayers ~ ~ 1 25 false @e[tag=we]
execute if score $radius worldeater matches 50 run spreadplayers ~ ~ 1 50 false @e[tag=we]
execute if score $radius worldeater matches 75 run spreadplayers ~ ~ 1 75 false @e[tag=we]
execute if score $radius worldeater matches 100 run spreadplayers ~ ~ 1 100 false @e[tag=we]
execute if score $radius worldeater matches 150 run spreadplayers ~ ~ 1 150 false @e[tag=we]

execute as @e[tag=we] at @s unless block ~ ~-1 ~ #we:unbreakable run setblock ~ ~-1 ~ air
