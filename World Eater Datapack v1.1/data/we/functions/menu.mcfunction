tellraw @a [{"text":" "},{"text":"\n\nWorld Eater Settings","color":"blue"},{"text":"\nTurn: ","color":"gold"},{"text":"ON","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"turn on"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set $started worldeater 1"}},{"text":" OFF","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"turn off"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set $started worldeater 0"}},{"text":"\nSet Center","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Center worldeater here"}]},"clickEvent":{"action":"run_command","value":"/function we:center"}},{"text":"\nSet Radius (blocks): ","color":"gold"},{"text":"25 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 25"}},{"text":"50 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 50"}},{"text":"75 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 75"}},{"text":"100 ","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 100"}},{"text":"150","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set $radius worldeater 150"}},{"text":"\nSpeed of destruction(blocks/s): ","color":"gold"},{"text":" -100 ","color":"red","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/destroy5"}},{"text":"-20","color":"red","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/destroy1"}},{"text":"+20","color":"green","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/summon1"}},{"text":"+100 ","color":"green","clickEvent":{"action":"run_command","value":"/function we:summon_destroy/summon5"}},{"text":"\nShow Deaths: ","color":"gold"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar Deaths"}},{"text":" No","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar"}}]