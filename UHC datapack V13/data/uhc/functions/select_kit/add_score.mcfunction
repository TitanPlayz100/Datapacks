#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

execute as @a[tag=lobby,scores={dm.dropped=1},nbt={SelectedItem:{id:"minecraft:red_wool",tag:{switch:1b}}}] at @s if entity @s[tag=lobby,scores={dm.dropped=1},nbt={SelectedItem:{id:"minecraft:red_wool",tag:{switch:1b}}}] run function uhc:select_kit/change

kill @e[type=item,nbt={Item:{id:"minecraft:red_wool",Count:1b,tag:{switch:1b}}}]

