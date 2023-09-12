#email- spammablemail100@gmail.com
###delete command
tellraw @a [{"text":"\nStart the game up with: ","bold":false,"italic":false,"underlined":false,"color":"red"},{"text":"/datapack enable \"file/Quiz_show\"","bold":false,"italic":false,"underlined":false,"color":"yellow"}]
tellraw @a {"text":"\n\nShutting down game...","bold":false,"italic":false,"underlined":false,"color":"red"}
#scoreboard create
scoreboard objectives remove quiz.question 
scoreboard objectives remove quiz.timer
scoreboard objectives remove quiz.timeseconds
scoreboard objectives remove quiz.start
scoreboard objectives remove quiz.correct
scoreboard objectives remove quiz.end_game
scoreboard objectives remove Wrong
scoreboard objectives remove q1_right
scoreboard objectives remove q2_right
scoreboard objectives remove q3_right
scoreboard objectives remove q4_right
scoreboard objectives remove q5_right
scoreboard objectives remove q6_right
scoreboard objectives remove q7_right
scoreboard objectives remove q8_right
scoreboard objectives remove q9_right
scoreboard objectives remove q10_right
gamerule commandBlockOutput true
datapack disable "file/Quiz_show"







 
