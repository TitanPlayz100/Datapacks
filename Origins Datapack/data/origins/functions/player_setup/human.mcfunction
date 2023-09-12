tag @s add chosen
execute at @s run playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 1000000 1
execute as @s run function origins:player_setup/spawn