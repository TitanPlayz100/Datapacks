#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com


#start
execute if score Minecraft_Titan uhc.totaltime matches 20 run function uhc:b_game_cd/9
execute if score Minecraft_Titan uhc.totaltime matches 40 run function uhc:b_game_cd/8
execute if score Minecraft_Titan uhc.totaltime matches 60 run function uhc:b_game_cd/7
execute if score Minecraft_Titan uhc.totaltime matches 80 run function uhc:b_game_cd/6
execute if score Minecraft_Titan uhc.totaltime matches 100 run function uhc:b_game_cd/5
execute if score Minecraft_Titan uhc.totaltime matches 120 run function uhc:b_game_cd/4
execute if score Minecraft_Titan uhc.totaltime matches 140 run function uhc:b_game_cd/3
execute if score Minecraft_Titan uhc.totaltime matches 160 run function uhc:b_game_cd/2
execute if score Minecraft_Titan uhc.totaltime matches 180 run function uhc:b_game_cd/1
execute if score Minecraft_Titan uhc.totaltime matches 200 run function uhc:time/200t
execute if score Minecraft_Titan uhc.totaltime matches 210 run tellraw @a {"text":"Collect resources to be used in combat\nThe border will go to 1000x1000\nYou have regeneration","color":"aqua"}

#after_start
execute if score Minecraft_Titan uhc.totaltime matches 510 run function uhc:time/510t
execute if score Minecraft_Titan uhc.totaltime matches 6200 run tellraw @a {"text":"PvP will be on in 5 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 7400 run tellraw @a {"text":"PvP will be on in 4 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 8600 run tellraw @a {"text":"PvP will be on in 3 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 9800 run tellraw @a {"text":"PvP will be on in 2 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 11000 run tellraw @a {"text":"PvP will be on in 1 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 11000 run title @a title [{"text":"pvp will be on in 1 minute","color":"red"}]

#pvp_on
execute if score Minecraft_Titan uhc.totaltime matches 12000 run title @a title [{"text":"pvp will be on in","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 12020 run function uhc:b_game_cd/9
execute if score Minecraft_Titan uhc.totaltime matches 12040 run function uhc:b_game_cd/8
execute if score Minecraft_Titan uhc.totaltime matches 12060 run function uhc:b_game_cd/7
execute if score Minecraft_Titan uhc.totaltime matches 12080 run function uhc:b_game_cd/6
execute if score Minecraft_Titan uhc.totaltime matches 12100 run function uhc:b_game_cd/5
execute if score Minecraft_Titan uhc.totaltime matches 12120 run function uhc:b_game_cd/4
execute if score Minecraft_Titan uhc.totaltime matches 12140 run function uhc:b_game_cd/3
execute if score Minecraft_Titan uhc.totaltime matches 12160 run function uhc:b_game_cd/2
execute if score Minecraft_Titan uhc.totaltime matches 12180 run function uhc:b_game_cd/1
execute if score Minecraft_Titan uhc.totaltime matches 12200 run function uhc:time/12200t
execute if score Minecraft_Titan uhc.totaltime matches 12201 run tellraw @a {"text":"Deathmatch (tp) will occur in 20 minutes","color":"light_purple"}
execute if score Minecraft_Titan uhc.totaltime matches 12202 run tellraw @a {"text":"Start to finish resource collecting\nThe border will go to 100x100\nYou do not have regeneration\nYou can kill other players","color":"aqua"}
