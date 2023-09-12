###initialize command

tellraw @a {"text":"*****Deathswap datapack*****","bold":true,"italic":false,"underlined":false,"color":"blue"}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a deathswap on any world!\nMust be in creative mode to start","color":"green"}]}}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"yellow","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}
tellraw @a[gamemode=creative] {"text":"Start the deathswap","color":"green","clickEvent":{"action":"run_command","value":"/function ds:start"}}
tellraw @a[gamemode=creative] {"text":"Stop or reset Datapack","color":"red","clickEvent":{"action":"run_command","value":"/reload"}}




#scoreboards
scoreboard objectives add ds.totaltime dummy "Total Tme"
scoreboard objectives add ds.health health "Health"
scoreboard objectives add ds.died deathCount "Dead People"
scoreboard objectives add ds.check_dead deathCount
scoreboard objectives add ds.players dummy

scoreboard objectives setdisplay list ds.health
scoreboard players add Minecraft_Titan ds.totaltime 100000
scoreboard objectives setdisplay sidebar ds.died
scoreboard players set number ds.players 0
#teams
team add joined "joined"
team modify joined friendlyFire false
team join joined @a

tag @a remove a
tag @a remove b
tag @a remove c
tag @a remove d
tag @a remove e
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
worldborder set 1000 1

#player
gamemode adventure @a[gamemode=survival]
gamemode adventure @a[gamemode=spectator]
effect clear @a
kill @e[type=item]
recipe give @a *
advancement revoke @a everything
tp @a 6 151 5


