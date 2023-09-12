#WHYYYYYYYYY
scoreboard players set @a stop_ray 30

#execute as @a[scores={rainbow=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rainbow:1b}}}] at @s run summon sheep ^ ^1 ^15 {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Color:15b,CustomName:'{"text":"jeb_"}'}
execute as @a[scores={count_dist=1}] run function mss:dist/dist_5
execute as @a[scores={count_dist=2}] run function mss:dist/dist_15
execute as @a[scores={count_dist=3}] run function mss:dist/dist_25



execute as @a[scores={rainbow=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{rainbow:1b}}}] at @s positioned ^ ^1.5 ^1 run function mss:ray_rainbow
execute as @a[scores={red=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{red:1b}}}] at @s positioned ^ ^1.5 ^1 run function mss:ray_red
execute as @a[scores={yellow=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{yellow:1b}}}] at @s positioned ^ ^1.5 ^1 run function mss:ray_yellow
execute as @a[scores={green=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{green:1b}}}] at @s positioned ^ ^1.5 ^1 run function mss:ray_green
execute as @a[scores={blue=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{blue:1b}}}] at @s positioned ^ ^1.5 ^1 run function mss:ray_blue
execute as @a[scores={delete=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{delete:1b}}}] at @s positioned ^ ^1.5 ^2 run function mss:ray_delete


execute as @a[scores={clear=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{clear:1b}}}] at @s run kill @e[type=sheep]
execute as @e[type=sheep,tag=rainbow] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run setblock ~ ~ ~ white_wool
execute as @e[type=sheep,tag=red] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run setblock ~ ~ ~ red_wool
execute as @e[type=sheep,tag=yellow] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run setblock ~ ~ ~ yellow_wool
execute as @e[type=sheep,tag=blue] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run setblock ~ ~ ~ blue_wool
execute as @e[type=sheep,tag=green] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run setblock ~ ~ ~ green_wool
execute as @e[type=sheep] at @s if score @a[limit=1,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{save:1b}}}] save matches 1.. run kill @s

execute as @a[scores={distance=1},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run scoreboard players add @s count_dist 1
execute as @a[scores={distance=1},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run replaceitem entity @s container.8 lime_wool{display:{Name:'{"text":"Toggle Distance","color":"green","bold":"true"}'},distance:1b} 9
execute as @a[scores={distance=1},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool",Count:1b,tag:{distance:1b}}}]
execute as @a[scores={distance=1,count_dist=1},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run tellraw @s {"text":"\nDistance set to 5\n","color":"aqua"}
execute as @a[scores={distance=1,count_dist=2},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run tellraw @s {"text":"\nDistance set to 15\n","color":"aqua"}
execute as @a[scores={distance=1,count_dist=3},nbt={SelectedItem:{id:"minecraft:lime_wool",tag:{distance:1b}}}] at @s run tellraw @s {"text":"\nDistance set to 25\n","color":"aqua"}
execute as @a[scores={count_dist=4..}] at @s run scoreboard players set @s count_dist 0

scoreboard players set @a rainbow 0 
scoreboard players set @a red 0 
scoreboard players set @a yellow 0
scoreboard players set @a green 0 
scoreboard players set @a blue 0 
scoreboard players set @a clear 0 
scoreboard players set @a save 0 
scoreboard players set @a delete 0
scoreboard players set @a distance 0

execute as @a at @s if block ~ ~-1 ~ minecraft:gold_block run spawnpoint @s ~ ~ ~ -90
execute as @a at @s if block ~ ~-1 ~ minecraft:chiseled_polished_blackstone run kill @s
execute as @a[scores={firework=0}] at @s if block ~ ~-1 ~ diamond_block run summon firework_rocket ~ ~ ~ {Life:1,LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;14959641],FadeColors:[I;14959641]}]}}}}
execute as @a at @s if block ~ ~-1 ~ minecraft:diamond_block run scoreboard players set @s firework 1
execute as @a[scores={firework=1..}] at @s unless block ~ ~-1 ~ diamond_block run scoreboard players set @s firework 0

