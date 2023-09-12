attribute @s minecraft:generic.max_health base set 14
execute as @s store result score @s firetick run data get entity @s Fire
execute as @s at @s unless score @s perma_bool matches 1 if predicate origins:is_daylight if score @s firetick matches -20 if block ~ ~ ~ air run effect give @s resistance 1 255 true
execute as @s at @s unless score @s perma_bool matches 1 if predicate origins:is_daylight if score @s firetick matches -20 if block ~ ~ ~ air run summon minecraft:small_fireball ~ ~3 ~ {Tags:[temp],Motion:[0.0,-10.0,0.0]}
execute as @e[type=small_fireball,tag=temp] at @s run fill ~ ~1 ~ ~ ~-1 ~ air replace fire

execute as @a[scores={clickedvillager=1..}] at @s if entity @e[tag=invis_trigger,distance=0..4] run function origins:phantom/goinvis

execute as @s[predicate=origins:sneaking,tag=phantom,tag=!summoned] at @s run summon villager ^ ^3 ^ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["invis_trigger"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}
execute as @a[tag=phantom,predicate=origins:sneaking] at @s run tag @s add summoned
execute as @s[tag=summoned,predicate=origins:sneaking] at @s run tp @e[type=villager,distance=0..5,tag=invis_trigger,limit=1,sort=nearest] ^ ^0 ^3.3
execute as @s unless predicate origins:sneaking at @s run tp @e[type=villager,limit=1,sort=nearest,tag=invis_trigger] ~ ~-70 ~
execute as @s unless predicate origins:sneaking at @s run tag @s remove summoned

effect give @s[scores={perma_bool=1}] invisibility 1 0 true
effect give @s[scores={perma_bool=1}] hunger 1 1 true

execute as @a[tag=phantom,scores={phantom_cd=500}] at @s run function origins:phantom/leave_spectator
execute if score @s phantom_cd matches 1.. at @s run function origins:phantom/progress_bar
scoreboard players add @a phantom_cd 0
execute as @a unless predicate origins:sneaking run scoreboard players set @s sneak 0
execute as @a[tag=phantom,scores={sneak=5..20,phantom_cd=0,perma_bool=1}] at @s run title @s actionbar [{"text":"Charging!","color":"red"}]
execute as @a[tag=phantom,scores={sneak=21..40,phantom_cd=0,perma_bool=1}] at @s run title @s actionbar [{"text":"Charging!","color":"gold"}]
execute as @a[tag=phantom,scores={sneak=41..59,phantom_cd=0,perma_bool=1}] at @s run title @s actionbar [{"text":"Charging!","color":"green"}]
execute as @a[tag=phantom,scores={sneak=60..,phantom_cd=0,perma_bool=1}] at @s run function origins:phantom/enter_spectator
scoreboard players remove @s[scores={phantom_cd=1..}] phantom_cd 1

execute at @e[tag=limiter,type=area_effect_cloud] if entity @a[tag=phantom,scores={phantom_cd=501..},distance=16..] as @a[tag=phantom,scores={phantom_cd=501..},distance=16..] at @s run function origins:phantom/leave_spectator