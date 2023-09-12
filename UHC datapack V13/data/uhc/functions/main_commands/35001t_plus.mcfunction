#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com



#deathmatch
execute if score Minecraft_Titan uhc.totaltime matches 36000 run title @a title [{"text":"DeathMatch in","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 36020 run function uhc:b_game_cd/9
execute if score Minecraft_Titan uhc.totaltime matches 36040 run function uhc:b_game_cd/8
execute if score Minecraft_Titan uhc.totaltime matches 36060 run function uhc:b_game_cd/7
execute if score Minecraft_Titan uhc.totaltime matches 36080 run function uhc:b_game_cd/6
execute if score Minecraft_Titan uhc.totaltime matches 36100 run function uhc:b_game_cd/5
execute if score Minecraft_Titan uhc.totaltime matches 36120 run function uhc:b_game_cd/4
execute if score Minecraft_Titan uhc.totaltime matches 36140 run function uhc:b_game_cd/3
execute if score Minecraft_Titan uhc.totaltime matches 36160 run function uhc:b_game_cd/2
execute if score Minecraft_Titan uhc.totaltime matches 36180 run function uhc:b_game_cd/1
execute if score Minecraft_Titan uhc.totaltime matches 36200 run function uhc:time/24200t
execute if score Minecraft_Titan uhc.totaltime matches 36300 run worldborder set 6 300

#after deathmatch
execute if score Minecraft_Titan uhc.totaltime matches 36210 run tellraw @a {"text":"You must now fight untill we have a winner!!!!","color":"red"}
execute if score Minecraft_Titan uhc.totaltime matches 36211..40000 run title @a actionbar {"text":"This UHC was made by Minecraft_Titan","color":"red"}

