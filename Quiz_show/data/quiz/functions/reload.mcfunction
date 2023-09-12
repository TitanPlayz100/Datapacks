#email- spammablemail100@gmail.com
###initialize command
tellraw @a {"text":"\n\nSetup complete - Out of context Quiz","bold":false,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"A quiz, taken out of context","color":"green"}]}}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}
tellraw @a {"text":"Click to start Quiz","color":"green","clickEvent":{"action":"run_command","value":"/trigger quiz.start"}}
tellraw @a[gamemode=creative] {"text":"Click to uninstall datapack","color":"red","clickEvent":{"action":"run_command","value":"/function quiz:uninstall"}}
#scoreboard create
scoreboard objectives add quiz.question dummy "Question"
scoreboard objectives add quiz.start trigger
scoreboard objectives add quiz.timer dummy
scoreboard objectives add quiz.timeseconds dummy
scoreboard objectives add quiz.correct dummy
scoreboard objectives add quiz.end_game trigger
scoreboard objectives add Wrong trigger
scoreboard objectives add q1_right trigger
scoreboard objectives add q2_right trigger
scoreboard objectives add q3_right trigger
scoreboard objectives add q4_right trigger
scoreboard objectives add q5_right trigger
scoreboard objectives add q6_right trigger
scoreboard objectives add q7_right trigger
scoreboard objectives add q8_right trigger
scoreboard objectives add q9_right trigger
scoreboard objectives add q10_right trigger
scoreboard players set #20 quiz.timer 20
gamerule commandBlockOutput false







 