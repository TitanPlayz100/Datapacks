#This tag datapack was created by shreyans
#email- spammablemail100@gmail.com
tellraw @a[gamemode=creative] {"text":"Start tag game","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}
tellraw @a[team=chaser] {"text":"Rematch tag game\n \n ","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}
tellraw @a[team=runner] {"text":"Rematch tag game\n \n ","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}


scoreboard players add .timer tag.totaltime 100000
scoreboard players add Games: tag.gameNum 1
title @a[team=chaser] title "you lost :("
title @a[team=runner] title "you won!!"
team join joined @a
worldborder center 0 0
gamemode adventure @a[gamemode=survival]
gamemode adventure @a[gamemode=spectator]
effect clear @a
kill @e[type=item]
recipe give @a *
advancement revoke @a everything
tp @a 6 151 5
clear @a
