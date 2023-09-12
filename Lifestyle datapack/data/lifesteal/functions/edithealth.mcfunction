#sets a player with no health to dead
execute as @s[scores={Health=0}] run tag @s add dead

#adds the appropriate number of hearts
execute as @s[scores={Health=1}] run attribute @s minecraft:generic.max_health base set 2
execute as @s[scores={Health=1}] run advancement grant @s only lifesteal:ingame/ouch
execute as @s[scores={Health=2}] run attribute @s minecraft:generic.max_health base set 4
execute as @s[scores={Health=3}] run attribute @s minecraft:generic.max_health base set 6
execute as @s[scores={Health=4}] run attribute @s minecraft:generic.max_health base set 8
execute as @s[scores={Health=5}] run attribute @s minecraft:generic.max_health base set 10
execute as @s[scores={Health=6}] run attribute @s minecraft:generic.max_health base set 12
execute as @s[scores={Health=7}] run attribute @s minecraft:generic.max_health base set 14
execute as @s[scores={Health=8}] run attribute @s minecraft:generic.max_health base set 16
execute as @s[scores={Health=9}] run attribute @s minecraft:generic.max_health base set 18
execute as @s[scores={Health=10}] run attribute @s minecraft:generic.max_health base set 20
execute as @s[scores={Health=11}] run attribute @s minecraft:generic.max_health base set 22
execute as @s[scores={Health=12}] run attribute @s minecraft:generic.max_health base set 24
execute as @s[scores={Health=13}] run attribute @s minecraft:generic.max_health base set 26
execute as @s[scores={Health=14}] run attribute @s minecraft:generic.max_health base set 28
execute as @s[scores={Health=15}] run attribute @s minecraft:generic.max_health base set 30
execute as @s[scores={Health=16}] run attribute @s minecraft:generic.max_health base set 32
execute as @s[scores={Health=17}] run attribute @s minecraft:generic.max_health base set 34
execute as @s[scores={Health=18}] run attribute @s minecraft:generic.max_health base set 36
execute as @s[scores={Health=19}] run attribute @s minecraft:generic.max_health base set 38
execute as @s[scores={Health=20}] run attribute @s minecraft:generic.max_health base set 40
execute as @s[scores={Health=20}] run advancement grant @s only lifesteal:ingame/prettyhealthy

#runs maxhealth
execute as @s[scores={Health=21}] run function lifesteal:killing/maxhealth
execute as @s[scores={Health=21}] run scoreboard players remove @s Health 1

#to stop wonky things
effect give @s minecraft:health_boost 255 255 true
effect clear @s minecraft:health_boost

#they are now alive, dont need the tag anymore
tag @s remove need
advancement revoke @s only lifesteal:impossible/healthcheckrespawn


execute as @e[type=player, scores={Deathings=1}] run effect give @s instant_health 1 3 true


#sets death back to zero so it can trigger again
execute as @s run scoreboard players set @s Deathings 0

#so it goes back to 0
execute as @a run scoreboard players reset @s refreshhealth
