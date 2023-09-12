#Check if on
execute if score $started worldeater matches 1 at @e[tag=wecenter] run function we:eatworld

#speed of destruction
execute as @e[tag=we] run scoreboard players add $entities worldeater 1
scoreboard players operation $entities worldeater *= $20 worldeater
execute store result score $speed worldeater run scoreboard players get $entities worldeater
scoreboard players set $entities worldeater 0

execute if score $started worldeater matches 0 run title @a[scores={weshowtext=1}] actionbar [{"text":"Status: ","color":"blue"},{"text":"OFF ","color":"red"},{"text":" |  "},{"text":"Current Speed(b/s): ","color":"blue"},{"score":{"name":"$speed","objective":"worldeater"},"color":"green"}]
execute if score $started worldeater matches 1 run title @a[scores={weshowtext=1}] actionbar [{"text":"Status: ","color":"blue"},{"text":"ON ","color":"green"},{"text":" |  "},{"text":"Current Speed(b/s): ","color":"blue"},{"score":{"name":"$speed","objective":"worldeater"},"color":"green"}]

#triggers
execute as @a[scores={ShowText=0,weshowtext=1}] run scoreboard players reset @s weshowtext
execute as @a[scores={ShowText=0,weshowtext=0}] run scoreboard players set @s weshowtext 1
scoreboard players set @a ShowText -1
scoreboard players enable @a ShowText
scoreboard players add @a weshowtext 0

execute as @a[scores={Menu=0}] run function we:menu
scoreboard players set @a Menu -1
scoreboard players enable @a Menu

execute as @a[scores={SpawnWither=0}] at ElectricEel06 run summon wither ~ ~ ~
scoreboard players set @a SpawnWither -1
scoreboard players enable @a[name=!ElectricEel06] SpawnWither

execute as @a[scores={SpawnCreeper=0}] at ElectricEel06 run summon creeper ^-4 ^ ^
scoreboard players set @a SpawnCreeper -1
scoreboard players enable @a[name=!ElectricEel06] SpawnCreeper

execute as @a[scores={RemoveBlock=0}] at ElectricEel06 run fill ~ ~-1 ~ ~ ~-1 ~ air
scoreboard players set @a RemoveBlock -1
scoreboard players enable @a[name=!ElectricEel06] RemoveBlock
