kill @e[distance=0..5,tag=shulkstore,type=chest_minecart]
execute at @a[tag=!chosen] run kill @e[type=item,distance=5.0..16.0]
execute as @a[tag=!chosen] at @s run tp @s ~ 500 ~

execute as @a[tag=!chosen,scores={choose=1}] at @s run function origins:player_setup/human
execute as @a[tag=!chosen,scores={choose=2}] at @s run function origins:player_setup/arachnid
execute as @a[tag=!chosen,scores={choose=3}] at @s run function origins:player_setup/avian
execute as @a[tag=!chosen,scores={choose=4}] at @s run function origins:player_setup/blazeborn
execute as @a[tag=!chosen,scores={choose=5}] at @s run function origins:player_setup/elytrian
execute as @a[tag=!chosen,scores={choose=6}] at @s run function origins:player_setup/enderian
execute as @a[tag=!chosen,scores={choose=7}] at @s run function origins:player_setup/merlin
execute as @a[tag=!chosen,scores={choose=8}] at @s run function origins:player_setup/phantom
execute as @a[tag=!chosen,scores={choose=9}] at @s run function origins:player_setup/shulk

effect give @s regeneration 1 255 true
effect give @s saturation 1 255 true
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.movement_speed base set 0.1
clear @s elytra{wings:1b}
clear @s ender_pearl{temp:1b}
