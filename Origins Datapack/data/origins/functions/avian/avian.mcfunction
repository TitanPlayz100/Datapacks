attribute @s minecraft:generic.movement_speed base set 0.12
effect give @s minecraft:slow_falling 1 0 true
execute as @s at @s if predicate origins:has_meat run function origins:avian/remove_held_item 
execute as @s[scores={sleeping=1..,y=..80}] at @s run function origins:avian/slept
execute at @s if score @s delay matches 1 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute at @s if score @s delay matches 3 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.31
execute at @s if score @s delay matches 6 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.64

