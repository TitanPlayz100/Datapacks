#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

function uhc:select_kit/add_score
scoreboard players add Minecraft_Titan uhc.totaltime 1
execute if score DeathMatch uhc.timeshow matches -1 run scoreboard players remove minute uhc.timeshow 1

#time 
execute if score Minecraft_Titan uhc.totaltime matches 1..12000 run function uhc:main_commands/1t_12000t
execute if score Minecraft_Titan uhc.totaltime matches 12001..35000 run function uhc:main_commands/12001t_35000t
execute if score Minecraft_Titan uhc.totaltime matches 35001..50000 run function uhc:main_commands/35001t_plus
execute if score Minecraft_Titan uhc.totaltime matches 36300 run spreadplayers 0 0 20 40 false @a[team=pvp]

#progress bar
execute if score Minecraft_Titan uhc.totaltime matches 20..3600 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"}]
execute if score Minecraft_Titan uhc.totaltime matches 3621..7200 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 7221..10800 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 10821..11400 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 11421..18000 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 18021..21600 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 21621..25200 run title @a actionbar [{"text":"\u25A0\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 25221..28800 run title @a actionbar [{"text":"\u25A0\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 28821..32400 run title @a actionbar [{"text":"\u25A0","color":"green"},{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"red"}]
execute if score Minecraft_Titan uhc.totaltime matches 32421..36200 run title @a actionbar [{"text":"\u25A0","color":"dark_green"},{"text":"\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0\u25A0","color":"red"}]


execute if score DeathMatch uhc.timeshow matches ..-1 run scoreboard players set DeathMatch uhc.timeshow 60
