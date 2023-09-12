gamemode survival @s
effect clear @s minecraft:blindness
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 1
kill @e[distance=0..20,type=area_effect_cloud,tag=limiter]
scoreboard players set @s phantom_cd 499