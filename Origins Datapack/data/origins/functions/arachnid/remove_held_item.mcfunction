summon item ~ ~ ~ {Age:0,NoGravity:1b,Silent:1b,PickupDelay:60,Tags:["temp"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,distance=..5,limit=1,sort=nearest] Item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air
scoreboard players set @s delay 1
particle minecraft:poof ~ ~ ~ 0 0 0 0 10