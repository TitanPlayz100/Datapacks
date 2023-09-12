tag @s add spider
execute at @s at @e[sort=nearest,limit=1,tag=!spider] run summon armor_stand ~ ~0.5 ~ {Invisible:1,Marker:1,Tags:[web],Small:1}
playsound minecraft:entity.spider.ambient master @s ~ ~ ~ 0.8 0.75
scoreboard players set @s arachnid_cd 150
tag @s remove spider
particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0 100
