scoreboard players set @s clickedvillager 0
scoreboard players add @s perma_bool 0
scoreboard players reset @s[scores={perma_bool=1}] perma_bool
scoreboard players set @s[scores={perma_bool=0}] perma_bool 1
title @s actionbar [{"text":"You have switched modes!","color":"green"}]
particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0 100
playsound minecraft:entity.puffer_fish.blow_out master @s ~ ~ ~ 1 0.78