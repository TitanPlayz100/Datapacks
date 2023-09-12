advancement grant @e[type=player, tag=need] only lifesteal:impossible/messagerespawn
advancement grant @e[type=player, tag=need] only lifesteal:impossible/healthcheckrespawn
advancement grant @e[type=player, tag=dead] only lifesteal:impossible/deadforever
execute as @a[scores={died=1..}] at @s run function lifesteal:killing/killedbyplayer
execute as @a[scores={kills=1..}] at @s run function lifesteal:killing/playerkilled


scoreboard players enable @a refreshhealth
execute as @e[type=player, scores={refreshhealth=1..}] run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 1 1 1
execute as @e[type=player, scores={refreshhealth=1..}] run tellraw @a ["",{"selector":"@s"},{"text":" has refreshed their health"}]
execute as @e[type=player, scores={refreshhealth=1..}] run function lifesteal:edithealth
execute as @e[type=player, scores={Deathings=1}] run function lifesteal:edithealth

tp @e[type=#lifesteal:test] 0 ~-500 0