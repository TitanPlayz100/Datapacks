scoreboard players remove @s tempbool 1
execute if score @s tempbool matches 1.. if block ~ ~ ~ stone unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with wooden_pickaxe{temp:1b}
execute if score @s tempbool matches 0 if block ~ ~ ~ air run clear @s wooden_pickaxe{temp:1b}

execute if score @s tempbool matches 1.. if block ~ ~ ~ #origins:air unless entity @e[distance=..0.75,type=!chest_minecart,type=!armor_stand,type=!item,type=!player,type=!item_frame] positioned ^ ^ ^1 run function origins:shulk/current_block