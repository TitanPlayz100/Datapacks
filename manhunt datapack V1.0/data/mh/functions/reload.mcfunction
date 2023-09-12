###initialize command

tellraw @a {"text":"*****MANHUNT DATAPACK*****","bold":true,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a manhunt game on any world!\nMust be in creative mode to start","color":"green"}]}}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}
tellraw @a[gamemode=creative] {"text":"Start manhunt","color":"green","clickEvent":{"action":"run_command","value":"/function mh:start"}}
tellraw @a[gamemode=creative] {"text":"Stop or reset Datapack","color":"red","clickEvent":{"action":"run_command","value":"/reload"}}

#what to do in datapack
#when click start do spreadplayers, 100x100 border and give full diamond gear, water bucket and 32 steak, blocks
# the game lasts 2 minutes. there are 2 teams, the runner and chaser, and the chaser has to tip the runner. best of 7



#scoreboards
scoreboard objectives add mh.totaltime dummy "Total Tme"
scoreboard objectives add mh.health health "Health"
scoreboard objectives add killed playerKillCount
scoreboard objectives add xcord dummy
scoreboard objectives add ycord dummy
scoreboard objectives add zcord dummy

scoreboard objectives setdisplay list mh.health
scoreboard players add Minecraft_Titan mh.totaltime 100000


#teams
team add speedrunner "speedrunner"
team add chaser "chaser"
team add joined "joined"
team modify speedrunner friendlyFire false
team modify chaser friendlyFire false
team modify joined friendlyFire false
team join joined @a

###gamerule and player/world setup
#gamerules
gamerule keepInventory false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule spawnRadius 0
gamerule doMobSpawning false

#world
time set day
fill 0 150 0 10 154 10 minecraft:barrier hollow
fill 1 154 1 9 154 9 minecraft:air 
setworldspawn 6 150 5
spawnpoint @a 6 150 5
worldborder center 0 0
worldborder damage amount 99999
worldborder set 100 1

#player
gamemode adventure @a[gamemode=survival]
gamemode adventure @a[gamemode=spectator]
effect clear @a
kill @e[type=item]
recipe give @a *
advancement revoke @a everything
tp @a 6 151 5
