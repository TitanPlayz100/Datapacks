function cm:menu/get_page
function cm:menu/get_selection

scoreboard players set bool chest_menu 0
### expand for new pages ###
execute if score bool chest_menu matches 0 if score @s chest_menu matches 0 run function cm:menu/page0/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 1 run function cm:menu/page1/directory
execute if score bool chest_menu matches 0 if score @s chest_menu matches 2 run function cm:menu/page2/directory

#############################

function cm:menu/update

clear @s #cm:chest_menu{isMenu:1b}