#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com


#deathmatch soon
execute if score Minecraft_Titan uhc.totaltime matches 18200 run tellraw @a {"text":"Deathmatch (tp) will occur in 15 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 24700 run tellraw @a {"text":"Deathmatch (tp) will occur in 10 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 30200 run tellraw @a {"text":"Deathmatch (tp) will occur in 5 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 31400 run tellraw @a {"text":"Deathmatch (tp) will occur in 4 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 32600 run tellraw @a {"text":"Deathmatch (tp) will occur in 3 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 33800 run tellraw @a {"text":"Deathmatch (tp) will occur in 2 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 35000 run tellraw @a {"text":"Deathmatch (tp) will occur in 1 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 35000 run title @a title [{"text":"Deathmatch in 1 minute","color":"red"}]


