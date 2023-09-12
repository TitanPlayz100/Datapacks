#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command

tellraw @a {"text":"\n\nUninstall complete","bold":false,"italic":false,"underlined":false,"color":"yellow"}

#gamerules
gamerule commandBlockOutput true
gamerule logAdminCommands true
gamerule spawnRadius 3
scoreboard objectives remove axis

#world

fill 0 69 0 0 69 0 minecraft:air

#player

tag @a remove limited
tag @a remove onewide







