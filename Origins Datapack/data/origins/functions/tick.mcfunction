execute as @a at @s store result score @s x run data get entity @s Pos[0]
execute as @a at @s store result score @s y run data get entity @s Pos[1]
execute as @a at @s store result score @s z run data get entity @s Pos[2]

execute as @a[tag=phantom,limit=1] run function origins:phantom/phantom
execute as @a[tag=blazeborn,limit=1] run function origins:blazeborn/blaze
execute as @a[tag=shulk,limit=1] run function origins:shulk/shulker
execute as @a[tag=enderian,limit=1] run function origins:enderian/enderian
execute as @a[tag=arachnid,limit=1] run function origins:arachnid/arachnid
execute as @a[tag=merlin,limit=1] run function origins:merlin/merlin
execute as @a[tag=elytrian,limit=1] run function origins:elytrian/elytrian
execute as @a[tag=avian,limit=1] run function origins:avian/avian
execute as @a at @s run function origins:hasitem

scoreboard players set @a[scores={sleeping=1..}] sleeping 0
scoreboard players add @a[scores={delay=1..}] delay 1
kill @e[type=item,nbt={Item:{id:"minecraft:gray_stained_glass_pane",tag:{selection:1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:elytra",tag:{wings:1b}}}]

execute as @a[tag=!chosen,nbt=!{Inventory:[{id:"minecraft:written_book"}]}] at @s run function origins:player_setup/choosing
execute as @a[tag=!chosen] at @s run function origins:player_setup/choosing_origin