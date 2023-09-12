#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command

tellraw @a {"text":"\n\nSetup complete","bold":false,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}

#gamerules
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule spawnRadius 0

#world
time set day
setworldspawn 0 69 0
spawnpoint @a 0 69 0
fill 0 70 0 0 75 0 air
fill 0 69 0 0 69 0 minecraft:bedrock

#player
effect clear @a
kill @e[type=item]
clear @a enchanted_book
tp @a 0 70 0
clear @a
tag @a add onewide







