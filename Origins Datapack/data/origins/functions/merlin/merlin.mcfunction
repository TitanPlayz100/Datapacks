effect give @s water_breathing 1 0 true
execute as @s at @s if block ~ ~ ~ water run effect give @s night_vision 12 0 true
execute as @s at @s if block ~ ~ ~ water run effect give @s haste 1 3 true
execute as @s at @s if block ~ ~ ~ water run effect give @s speed 1 4 true
execute as @s at @s unless block ~ ~ ~ water run function origins:merlin/suffocate

