#This ds datapack was created by shreyans
#email- spammablemail100@gmail.com
tellraw @a [{"text":"A player is dead","color":"yellow"}]
title @a actionbar "A player went down"
gamemode spectator @s
tag @s remove game
tellraw @s "press 1 to teleport to a player"
tag @s remove a
tag @s remove b
tag @s remove c
tag @s remove d
tag @s remove e
scoreboard players set @s ds.check_dead 0
