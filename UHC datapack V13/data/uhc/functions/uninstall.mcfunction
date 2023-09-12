#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command
tellraw @a [{"text":"\nStart the game up with: ","bold":false,"italic":false,"underlined":false,"color":"red"},{"text":"/datapack enable \"file/UHC datapack V12\"","bold":false,"italic":false,"underlined":false,"color":"yellow"}]
tellraw @a {"text":"\nShutting down game...","bold":false,"italic":false,"underlined":false,"color":"red"}

###scoreboard and bossbar and teams

#scoreboard delete
scoreboard objectives remove uhc.totaltime 
scoreboard objectives remove uhc.deaths 
scoreboard objectives remove uhc.onesec 
scoreboard objectives remove uhc.timeshow
scoreboard objectives remove uhc.extra
scoreboard objectives remove uhc.health 
scoreboard objectives remove uhc.wb 
scoreboard objectives remove uhc.killCount
scoreboard objectives remove dm.start_kit 
scoreboard objectives remove dm.dropped 

#scoreboard display and others
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

#bossbar
bossbar remove minecraft:wb

#teams
team remove uhc
team remove pvp
team remove deaded

###gamerule and player/world setup
#gamerules
gamerule keepInventory false
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule naturalRegeneration true
gamerule commandBlockOutput true
gamerule disableRaids false
gamerule spawnRadius 1

#world
fill 0 150 0 10 154 10 minecraft:air
fill 6 150 5 6 150 5 minecraft:air
worldborder damage amount 1
worldborder set 60000000 1

#player
gamemode survival @a[gamemode=adventure]
gamemode survival @a[gamemode=spectator]
effect clear @a
kill @e[type=item]
clear @a
tag @a remove lobby

datapack disable "file/UHC datapack V12"