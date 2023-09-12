#summonable trap

execute as @e[tag=fireballmob] at @s run summon minecraft:evoker_fangs ~ ~ ~ {CustomNameVisible:1,CustomName:"{\"text\":\"Trapped!!\",\"color\":\"green\"}"}
execute as @e[tag=fireballmob] at @s run tp @s ~ ~-257 ~