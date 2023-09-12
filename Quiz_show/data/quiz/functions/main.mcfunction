#email- spammablemail100@gmail.com
##start quiz
scoreboard players enable @a quiz.start
execute as @a[scores={quiz.start=1..}] run scoreboard players set @s quiz.timer 0
execute as @a[scores={quiz.start=1..}] run scoreboard players set @s quiz.question 1
execute as @a[scores={quiz.start=1..}] run tellraw @s [{"text":"\n\n\n\n\n\n\n\nThe quiz has 10 questions\nAnswer as best as you can","color":"light_purple","bold":true},{"text":"\nEnd game","color":"red","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to end the game","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger quiz.end_game"}}]
execute as @a[scores={quiz.start=1..}] run tellraw @s [{"text":"\n"},{"text":"Question 1)","color":"light_purple","underlined":true},{"text":"\nFinish the sentence","color":"dark_gray"},{"text":"\n     oop, Jaden? time to ___ ","color":"gray","italic":true},{"text":"\n\na) Run","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) Shat","clickEvent":{"action":"run_command","value":"/trigger q1_right"}},{"text":"\nc) Talk","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) Vibe?","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={quiz.start=1..}] run scoreboard players reset @s quiz.start
##timer
scoreboard players add @a[scores={quiz.question=1..}] quiz.timer 1
execute as @a[scores={quiz.question=1..}] store result score @s quiz.timeseconds run scoreboard players get @s quiz.timer
execute as @a[scores={quiz.question=1..}] store result score @s quiz.timeseconds run scoreboard players operation @s quiz.timeseconds /= #20 quiz.timer
##end quiz
scoreboard players enable @a quiz.end_game
execute as @a[scores={quiz.end_game=1..}] run scoreboard players set @s quiz.question 0
execute as @a[scores={quiz.end_game=1..}] run tellraw @s "\n \n \n \n \n \n \n \n \n \n \n \n "
execute as @a[scores={quiz.end_game=1..}] run tellraw @s [{"text":"\n\nClick to play","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger quiz.start"}}]
execute as @a[scores={quiz.end_game=1..}] run scoreboard players reset @s quiz.end_game
##wrong answer
scoreboard players enable @a Wrong
execute as @a[scores={Wrong=1..}] run scoreboard players set @s quiz.question 0
execute as @a[scores={Wrong=1..}] run tellraw @s [{"text":"\n\nYou got the question","color":"red"},{"text":" Wrong.","bold":true},{"text":"\nUsually an inspirational quote would go here: \"Did I ask.\"","color":"gray","italic":true},{"text":"\n\nClick to try again","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger quiz.start"}}]
execute as @a[scores={Wrong=1..}] run scoreboard players reset @s Wrong
##q1 right
scoreboard players enable @a q1_right
execute as @a[scores={q1_right=1..,quiz.question=1}] run scoreboard players set @s quiz.question 2
execute as @a[scores={q1_right=1..,quiz.question=2}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 2)","color":"light_purple","underlined":true},{"text":"\n     Na, its more slavery than ___","color":"gray","italic":true},{"text":"\n\na) Torture","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) Imprisonment","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nc) molesting","clickEvent":{"action":"run_command","value":"/trigger q2_right"}},{"text":"\nd) all of the above","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q1_right=1..}] run scoreboard players reset @s q1_right
##q2 right
scoreboard players enable @a q2_right
execute as @a[scores={q2_right=1..,quiz.question=2}] run scoreboard players set @s quiz.question 3
execute as @a[scores={q2_right=1..,quiz.question=3}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 3)","color":"light_purple","underlined":true},{"text":"\nFind the context to:","color":"dark_gray"},{"text":"\n     Yes the sausage race","color":"gray","italic":true},{"text":"\n\na) Literal sausages with legs running races","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) Sausage dogs racing","clickEvent":{"action":"run_command","value":"/trigger q3_right"}},{"text":"\nc) An unknown form of secret code 3delusion is capable of understanding","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) Something much worse","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q2_right=1..}] run scoreboard players reset @s q2_right
##q3 right
scoreboard players enable @a q3_right
execute as @a[scores={q3_right=1..,quiz.question=3}] run scoreboard players set @s quiz.question 4
execute as @a[scores={q3_right=1..,quiz.question=4}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 4)","color":"light_purple","underlined":true},{"text":"\nFind the correct spelling of:","color":"dark_gray"},{"text":"\n     SpongeBobbete Square Pantsette","color":"gray","italic":true},{"text":"\n\na) SpongeBobbete SquarePantsette","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) SpongeBobete Square Pantsette","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nc) SpongBobbete Square Pantsette","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) SpongeBobette Square Pantsette","clickEvent":{"action":"run_command","value":"/trigger q4_right"}}]
execute as @a[scores={q3_right=1..}] run scoreboard players reset @s q3_right
##q4 right
scoreboard players enable @a q4_right
execute as @a[scores={q4_right=1..,quiz.question=4}] run scoreboard players set @s quiz.question 5
execute as @a[scores={q4_right=1..,quiz.question=5}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 5)","color":"light_purple","underlined":true},{"text":"\nWho sent the quote from Question 4","color":"dark_gray"},{"text":"\n\na) Sleep deprived dumbass","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) DUEPS on  your mum","clickEvent":{"action":"run_command","value":"/trigger q5_right"}},{"text":"\nc) Imagine","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) afk bot ngl","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q4_right=1..}] run scoreboard players reset @s q4_right
##q5 right
scoreboard players enable @a q5_right
execute as @a[scores={q5_right=1..,quiz.question=5}] run scoreboard players set @s quiz.question 6
execute as @a[scores={q5_right=1..,quiz.question=6}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 6)","color":"light_purple","underlined":true},{"text":"\n     i like this brand of ___","color":"gray","italic":true},{"text":"\n\na) dog","clickEvent":{"action":"run_command","value":"/trigger q6_right"}},{"text":"\nb) mum","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nc) rice","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) ","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q5_right=1..}] run scoreboard players reset @s q5_right
##q6 right
scoreboard players enable @a q6_right
execute as @a[scores={q6_right=1..,quiz.question=6}] run scoreboard players set @s quiz.question 7
execute as @a[scores={q6_right=1..,quiz.question=7}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 7)","color":"light_purple","underlined":true},{"text":"\n     no ___","color":"gray","italic":true},{"text":"\n\na) u","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) pomegranates","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nc) groping","clickEvent":{"action":"run_command","value":"/trigger q7_right"}},{"text":"\nd) fricking","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q6_right=1..}] run scoreboard players reset @s q6_right
##q7 right
scoreboard players enable @a q7_right
execute as @a[scores={q7_right=1..,quiz.question=7}] run scoreboard players set @s quiz.question 8
execute as @a[scores={q7_right=1..,quiz.question=8}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 8)","color":"light_purple","underlined":true},{"text":"\nFeeling cursed yet?\n\nWhat is the only quote that was not quoted from shrekans","color":"dark_gray"},{"text":"\n\na) Ur mum gay","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) grainger is retarded","clickEvent":{"action":"run_command","value":"/trigger q8_right"}},{"text":"\nc) I might bully him","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) maybe not","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q7_right=1..}] run scoreboard players reset @s q7_right
##q8 right
scoreboard players enable @a q8_right
execute as @a[scores={q8_right=1..,quiz.question=8}] run scoreboard players set @s quiz.question 9
execute as @a[scores={q8_right=1..,quiz.question=9}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"Question 9)","color":"light_purple","underlined":true},{"text":"\nThere is one rule, no context. How many times has this been broken before","color":"dark_gray"},{"text":"\n\na) 1","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nb) 2","clickEvent":{"action":"run_command","value":"/trigger q9_right"}},{"text":"\nc) 3","clickEvent":{"action":"run_command","value":"/trigger Wrong"}},{"text":"\nd) 4","clickEvent":{"action":"run_command","value":"/trigger Wrong"}}]
execute as @a[scores={q8_right=1..}] run scoreboard players reset @s q8_right
##q9 right
scoreboard players enable @a q9_right
execute as @a[scores={q9_right=1..,quiz.question=9}] run scoreboard players set @s quiz.question 10
execute as @a[scores={q9_right=1..,quiz.question=10}] run tellraw @s [{"text":"\n\n\n\n"},{"text":"\nHow have you made it this far?\n\n\n\nQuestion 10)","color":"light_purple","underlined":true},{"text":"\nFrom the following options, how gay was this quiz.","color":"dark_gray"},{"text":"\n\na) 10/1","clickEvent":{"action":"run_command","value":"/trigger q10_right"}},{"text":"\nb) Did I ask?","clickEvent":{"action":"run_command","value":"/trigger q10_right"}},{"text":"\nc) About as gay as ur mum","clickEvent":{"action":"run_command","value":"/trigger q10_right"}},{"text":"\nd) 69420","clickEvent":{"action":"run_command","value":"/trigger q10_right"}}]
execute as @a[scores={q9_right=1..}] run scoreboard players reset @s q9_right
##q10 right
scoreboard players enable @a q10_right
execute as @a[scores={q10_right=1..,quiz.question=10}] run scoreboard players set @s quiz.question 0
execute as @a[scores={q10_right=1..}] run tellraw @s [{"text":"\n\n\nWell done, you got 10/10 in ","color":"green","bold":true},{"score":{"name":"*","objective":"quiz.timeseconds"},"color":"red"},{"text":"s","color":"red"},{"text":"\nPeak out of context","bold":false},{"text":"\n\nClick here to play again","color":"gold","bold":false,"clickEvent":{"action":"run_command","value":"/trigger quiz.start"}}]
execute as @a[scores={q10_right=1..},gamemode=creative] run tellraw @s {"text":"Click to uninstall datapack","color":"red","clickEvent":{"action":"run_command","value":"/function quiz:uninstall"}}
execute as @a[scores={q10_right=1..}] run scoreboard players reset @s q10_right

























