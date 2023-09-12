execute as @s at @s run summon armor_stand ^-0.1 ^1 ^2.6 {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["nuke_blast","rotate_me"],ArmorItems:[{id:"minecraft:stone_button",Count:1b},{},{},{}]}

execute as @e[tag=nuke_blast,tag=rotate_me] at @s anchored eyes rotated as @p run tp @s ~ ~ ~ ~ ~

execute as @e[tag=nuke_blast,tag=rotate_me] at @s rotated as @p run tag @s remove rotate_me
scoreboard players set @s mando_cooldown 75
