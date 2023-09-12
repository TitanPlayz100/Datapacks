advancement revoke @s only lifesteal:killplayer
execute as @s[scores={Health=..19}] run execute as @a run playsound minecraft:entity.lightning_bolt.thunder neutral @s ~ ~ ~ 1 1
execute as @s[scores={Health=..19}] run title @s actionbar {"text":"You have lost 1 heart","color":"green"}
execute as @s[scores={Health=..19}] run advancement grant @s only lifesteal:ingame/violenttrader
scoreboard players remove @s Health 1
scoreboard players set @s kills 0
function lifesteal:edithealth
