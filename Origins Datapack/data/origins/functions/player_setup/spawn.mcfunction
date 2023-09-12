effect clear @s
effect give @s slow_falling 1 0 true
execute as @s at @s run spreadplayers ~ ~ 0 1 false @s
execute at @s run particle poof ~ ~1 ~ 0.2 0.6 0.2 0.1 100 force
scoreboard players reset @s choose
clear @s written_book
execute as @a[tag=blazeborn] run function origins:blazeborn/nether_respawn