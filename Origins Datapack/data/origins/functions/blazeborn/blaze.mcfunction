effect give @a[tag=blazeborn] fire_resistance 1 0 true
effect clear @a[tag=blazeborn] poison
effect clear @a[tag=blazeborn] hunger

effect give @a[tag=blazeborn,nbt=!{Fire:-20s}] strength 1 1 true
execute at @a[tag=blazeborn,nbt=!{Fire:-20s}] as @s run particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @a[tag=blazeborn,nbt=!{Fire:-20s}] as @s run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0 1


execute as @a[tag=blazeborn] at @s unless entity @e[type=boat,distance=0.0..1.5] if block ~ ~ ~ #origins:water_blocks run effect give @s wither 1 1 true

execute as @a[tag=blazeborn,scores={death=1..},nbt={Health:20.0f}] at @s run function origins:blazeborn/nether_respawn
