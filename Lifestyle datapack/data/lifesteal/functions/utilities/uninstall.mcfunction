scoreboard objectives remove Health
scoreboard objectives remove Deathings
scoreboard objectives remove refreshhealth
tellraw @a {"text":"Rip datapack","bold":false,"color":"red"}
execute as @a run playsound minecraft:block.note_block.bass block @s ~ ~ ~ 1 1 1
