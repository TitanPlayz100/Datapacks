#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###others
effect give @a minecraft:night_vision 20 1 true
enchant @a minecraft:efficiency 2
execute store result score WorldBorder_Size: uhc.extra run worldborder get
execute store result score Minutes_left: uhc.extra run scoreboard players get minute uhc.timeshow

execute as @a[scores={uhc.deaths=1..},gamemode=survival] at @s run clear @s
execute as @a[scores={uhc.deaths=1..},gamemode=survival] at @s run team join deaded @s
execute as @a[scores={uhc.deaths=1..},gamemode=survival] at @s run gamemode spectator
execute as @a[scores={uhc.deaths=1..}] at @s run scoreboard players reset @s uhc.deaths

###custom weapons
#teleporter
execute as @a at @s if block ~ ~-1 ~ minecraft:lodestone run spreadplayers ~ ~ 1 1 under 120 false @s
execute at @a run fill ~-1 ~-66 ~-1 ~1 ~-2 ~1 air replace minecraft:lodestone
#speedy sword
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{speedy:1b}}}] at @s run effect give @s speed 1 1 true
#shielder sword
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{shielder:1b}}}] at @s run effect give @s minecraft:resistance 1 0 true
#shielder diamond sword
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",tag:{dshielder:1b}}}] at @s run effect give @s minecraft:resistance 1 1 true
#ohdear 1.8.9
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{ohdear:1b}}}] run effect give @s minecraft:haste 1 255 true
execute as @a if entity @s[nbt=!{SelectedItem:{id:"minecraft:stone_sword",tag:{ohdear:1b}}}] run effect clear @s minecraft:haste

###bossbars
execute store result bossbar minecraft:wb value run scoreboard players get Minecraft_Titan uhc.totaltime
bossbar set minecraft:wb name [{"text":"Time until Deathmatch","bold":false,"italic":false,"underlined":false,"color":"green"}]
execute if score DeathMatch uhc.timeshow matches 0.. run scoreboard players remove DeathMatch uhc.timeshow 1

#quick pick
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run summon minecraft:item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Quick Pick","color":"yellow"}'},CustomModelData:123456}}}
execute as @e[tag=craft] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] at @s run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.6 0.6 0.6 1 100
execute as @e[tag=craft] at @s run tag @s remove craft

#quick sword
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword",Count:1b}}] at @s run execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run summon minecraft:item ~ ~ ~ {Tags:["craft"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Quick sword","color":"yellow"}'},CustomModelData:123458}}}
execute as @e[tag=craft] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_sword",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=craft] at @s run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.6 0.6 0.6 1 100
execute as @e[tag=craft] at @s run tag @s remove craft

##functions
schedule function uhc:20t_clock 20t replace

