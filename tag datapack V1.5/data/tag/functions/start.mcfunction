#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

title @a actionbar [{"text":"10 seconds untill match starts","color":"green"}]
scoreboard players set .timer tag.totaltime 0

execute if score Games: tag.gameNum matches 1 run spreadplayers 0 0 45 49 false @a
execute if score Games: tag.gameNum matches 1 run worldborder center 0 0
execute if score Games: tag.gameNum matches 2 run spreadplayers 0 200 45 49 false @a
execute if score Games: tag.gameNum matches 2 run worldborder center 0 200
execute if score Games: tag.gameNum matches 3 run spreadplayers 0 400 45 49 false @a
execute if score Games: tag.gameNum matches 3 run worldborder center 0 400
execute if score Games: tag.gameNum matches 4 run spreadplayers 0 600 45 49 false @a
execute if score Games: tag.gameNum matches 4 run worldborder center 0 600
execute if score Games: tag.gameNum matches 5 run spreadplayers 0 800 45 49 false @a
execute if score Games: tag.gameNum matches 5 run worldborder center 0 800
execute if score Games: tag.gameNum matches 6 run spreadplayers 200 0 45 49 false @a
execute if score Games: tag.gameNum matches 6 run worldborder center 200 0
execute if score Games: tag.gameNum matches 7 run spreadplayers 400 0 45 49 false @a
execute if score Games: tag.gameNum matches 7 run worldborder center 400 0
execute if score Games: tag.gameNum matches 8 run spreadplayers 600 0 45 49 false @a
execute if score Games: tag.gameNum matches 8 run worldborder center 600 0
execute if score Games: tag.gameNum matches 9 run spreadplayers 800 0 45 49 false @a
execute if score Games: tag.gameNum matches 9 run worldborder center 800 0
execute if score Games: tag.gameNum matches 10 run spreadplayers 0 0 45 49 false @a
execute if score Games: tag.gameNum matches 10 run worldborder center 0 0


team join runner @r
team join chaser @a[team=!runner]
effect give @a minecraft:slowness 10 255 true
effect give @a minecraft:jump_boost 10 200 true
effect give @a minecraft:mining_fatigue 10 255 true

tellraw @a {"text":"The tag game will start in 10 seconds","color":"light_purple"}
