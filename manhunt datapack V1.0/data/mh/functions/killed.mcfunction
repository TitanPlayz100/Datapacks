#This tag datapack was created by shreyans
#email- spammablemail100@gmail.com

tellraw @a[gamemode=creative] {"text":"Start Manhunt","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}
tellraw @a {"text":"Rematch?\n \n ","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}


scoreboard players add Minecraft_Titan mh.totaltime 100000
title @a[team=runner] title "you lost lol"
title @a[team=chaser] title "you won!!"
tellraw @a "The speedrunner slipped up and got killed"
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

scoreboard players set @a killed 0
