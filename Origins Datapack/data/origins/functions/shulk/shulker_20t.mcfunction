execute as @a[tag=shulk] at @s run schedule function origins:shulk/shulker_20t 10t
scoreboard players set @a[tag=shulk] tempbool 4
execute as @a[tag=shulk] at @s rotated as @s positioned ~ ~2 ~ run function origins:shulk/current_block