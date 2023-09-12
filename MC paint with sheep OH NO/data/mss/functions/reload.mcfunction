#WHYYYYY


tellraw @a {"text":"MSS (MicroSoft Sheep)","bold":true,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"About the datapack (:|)\n ","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Ms paint in minecrat, with sheep :|","color":"green"}]}}
tellraw @a {"text":"Click here for some brushes","color":"green","clickEvent":{"action":"run_command","value":"/function mss:tools"}}
tellraw @a {"text":"\n\n\nClick here for NETHER PARKOUR right above you","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"IT WILL CLEAR ALL 8 BLOCKS ABOVE YOU AND AROUND YOU","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function mss:parkour_nether"}}
tellraw @a {"text":"Click here for CONCRETE PARKOUR right above you","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"IT WILL CLEAR ALL 8 BLOCKS ABOVE YOU AND AROUND YOU","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function mss:parkour_concrete"}}


scoreboard objectives add rainbow minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add red minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add yellow minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add green minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add blue minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clear minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add save minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add delete minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add stop_ray dummy
scoreboard objectives add firework dummy
scoreboard objectives add distance minecraft.custom:minecraft.drop
scoreboard objectives add count_dist dummy

scoreboard players set @a count_dist 1
scoreboard players set @a firework 0

gamerule keepInventory true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule spawnRadius 0
gamerule doMobLoot false
gamerule maxEntityCramming 0
gamerule doImmediateRespawn true
