execute as @s[scores={Health=1..}] run title @s actionbar {"text":"You have gained 1 heart","color":"red"}
execute as @a run playsound minecraft:block.note_block.bass block @s ~ ~ ~ 1 1 1
advancement revoke @s only lifesteal:impossible/messagerespawn
