###initialize command

tellraw @a {"text":"*****TAG DATAPACK*****","bold":true,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a tag game on any world!\nMust be in creative mode to start","color":"green"}]}}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}
tellraw @a[gamemode=creative] {"text":"Start tag game","color":"green","clickEvent":{"action":"run_command","value":"/function tag:start"}}
tellraw @a[gamemode=creative] {"text":"Stop or reset Datapack","color":"red","clickEvent":{"action":"run_command","value":"/reload"}}
tellraw @a[gamemode=creative] {"text":"New map on start\n \n ","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players add Games: tag.gameNum 1"}}

#what to do in datapack
#when click start do spreadplayers, 100x100 border and give full diamond gear, water bucket and 32 steak, blocks
# the game lasts 2 minutes. there are 2 teams, the runner and chaser, and the chaser has to tip the runner. best of 7



#scoreboards
scoreboard objectives add tag.totaltime dummy "Total Tme"
scoreboard objectives add tag.gameNum dummy [{"text":"TAG DATAPACK","color":"yellow","bold":"true"}]
scoreboard objectives add tag.health health "Health"
scoreboard objectives add tipped minecraft.custom:minecraft.damage_dealt
scoreboard objectives add xcord dummy
scoreboard objectives add ycord dummy
scoreboard objectives add zcord dummy
scoreboard objectives add Ypos dummy
scoreboard objectives add dead deathCount

scoreboard objectives setdisplay list tag.health
scoreboard players add Minecraft_Titan tag.totaltime 100000
scoreboard players set Games: tag.gameNum 1
scoreboard objectives setdisplay sidebar tag.gameNum

#bossbar
bossbar add wb [{"text":"Time until Match is over","bold":true,"italic":false,"underlined":false,"color":"red"}]
bossbar set minecraft:wb color green
bossbar set minecraft:wb players @a
bossbar set minecraft:wb max 2600

#teams
team add runner "runner"
team add chaser "chaser"
team add joined "joined"
team modify runner friendlyFire false
team modify chaser friendlyFire false
team modify joined friendlyFire false

###gamerule and player/world setup
#gamerules
gamerule keepInventory true
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
