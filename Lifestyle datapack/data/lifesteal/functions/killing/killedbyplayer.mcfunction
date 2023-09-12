execute as @s[scores={Health=2..}] run playsound minecraft:entity.phantom.death neutral @s ~ ~ ~ 1 1

scoreboard players add @s Health 1
function lifesteal:edithealth
advancement revoke @s only lifesteal:dietoplayer
scoreboard players set @s died 0
tag @s add need
