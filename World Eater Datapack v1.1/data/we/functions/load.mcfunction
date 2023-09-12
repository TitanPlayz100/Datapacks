tellraw @a {"text":"The World Eater Datapack Has Been installed (Hover for more)","color":"yellow","bold":false,"italic":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Eats your world continuously!","color":"yellow"},{"text":"\n-If there are any problems use /reload\n-Can be uninstalled with:\n","color":"red"},{"text":"  /function we:uninstall","color":"green"},{"text":"\n- This datapack aims to copy the world eater video\n- Use this command to customise other things:","color":"red"},{"text":"\n  /trigger Menu","color":"green"},{"text":"\n\nMade by: TitanPlayz\nYT: TitanPlayz100","color":"gold"}]}}

tellraw @a [{"text":" "},{"text":"\n\nWorld Eater Settings","color":"blue"},{"text":"\nTurn: ","color":"gold"},{"text":"ON","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"turn on"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set $started worldeater 1"}},{"text":" OFF","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"turn off"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set $started worldeater 0"}},{"text":"\nSet Center","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Center worldeater here"}]},"clickEvent":{"action":"run_command","value":"/function we:center"}},{"text":"\nSet Radius (blocks): ","color":"gold"},{"text":"25 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 25"}},{"text":"50 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 50"}},{"text":"75 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 75"}},{"text":"100 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 100"}},{"text":"150","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 150"}},{"text":"\nSpeed of destruction(blocks/s): ","color":"gold"},{"text":" -100 ","color":"red","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/destroy5"}},{"text":"-20","color":"red","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/destroy1"}},{"text":"+20","color":"green","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/summon1"}},{"text":"+100 ","color":"green","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/summon5"}},{"text":"\nShow Deaths: ","color":"gold"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar Deaths"}},{"text":" No","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar"}}]

scoreboard objectives add worldeater dummy
scoreboard objectives add weshowtext dummy
scoreboard objectives add Deaths deathCount {"text":"Deaths:","color":"red","bold":true,"underlined":true}
scoreboard objectives add ShowText trigger
scoreboard objectives add SpawnWither trigger
scoreboard objectives add Menu trigger
scoreboard objectives add SpawnCreeper trigger
scoreboard objectives add RemoveBlock trigger

execute unless entity @e[tag=wecenter] run summon area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["wecenter"]}
scoreboard players add $started worldeater 0
scoreboard players add $radius worldeater 0
execute if score $radius worldeater matches 0 run scoreboard players set $radius worldeater 25
scoreboard players set $20 worldeater 20
