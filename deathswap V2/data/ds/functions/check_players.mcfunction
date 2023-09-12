#This ds datapack was created by shreyans
#email- spammablemail100@gmail.co
scoreboard players set .number ds.players 0
execute as @a run scoreboard players add .number ds.players 1
tag @a remove a
tag @a remove b
tag @a remove c
tag @a remove d
tag @a remove e
tag @r[tag=game] add a
tag @r[tag=game,tag=!a] add b
tag @r[tag=game,tag=!a,tag=!b] add c
tag @r[tag=game,tag=!a,tag=!b,tag=!c] add d
tag @r[tag=game,tag=!a,tag=!b,tag=!c,tag=!d] add e







