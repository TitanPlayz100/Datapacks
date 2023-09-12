summon item ~ ~ ~ {Age:0,NoGravity:1b,Silent:1b,PickupDelay:60,Tags:["temp"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,distance=..5,limit=1,sort=nearest,tag=temp] Item set from entity @s Inventory[{Slot:101b}]
item replace entity @s armor.legs with air
title @s actionbar [{"text":"These are too heavy for you!","color":"red"}]
scoreboard players set @s delay 1
particle minecraft:poof ~ ~ ~ 0 0 0 0 10