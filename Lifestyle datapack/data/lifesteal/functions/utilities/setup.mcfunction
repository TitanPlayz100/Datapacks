scoreboard objectives add Health dummy
scoreboard objectives add Deathings deathCount
scoreboard objectives add refreshhealth trigger
scoreboard objectives add died deathCount
scoreboard objectives add kills totalKillCount
tellraw @a {"text":"Datapack loaded","italic":false,"color":"yellow"}
execute as @a run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 1 1
execute as @a run function lifesteal:utilities/reseteveryone
