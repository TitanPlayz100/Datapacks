playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 1
execute at @s in minecraft:the_nether run tp @s ~ ~ ~
execute at @s in minecraft:the_nether run spreadplayers ~ ~ 0 16 under 96 false @s
scoreboard players set @s death 0