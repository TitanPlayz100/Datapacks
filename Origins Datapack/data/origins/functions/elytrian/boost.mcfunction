execute at @s run particle poof ~ ~0.25 ~ 0.3 0.3 0.3 0.3 30
execute at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 1.5 1
effect give @s levitation 1 30 true
scoreboard players set @s elytra_cd 600
playsound minecraft:item.elytra.flying master @s ~ ~ ~ 0.61 0.89