data remove entity @e[tag=chest_meu,type=minecraft:chest_minecart,distance=0..2,limit=1,sort=nearest] Items

### expand for new pages ###
execute if score @s chest_menu matches 0 run function cm:menu/page0/items
execute if score @s chest_menu matches 1 run function cm:menu/page1/items
execute if score @s chest_menu matches 2 run function cm:menu/page2/items
#############################