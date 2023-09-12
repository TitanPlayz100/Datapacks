#this datapack was made by TitanPlayz
scoreboard objectives add tick dummy
scoreboard players add @a tick 1
scoreboard players set @a[scores={tick=20..}] tick 0


execute as @a[tag=limited] store result score @s axis run data get entity @s Pos[0] 100
execute as @a[tag=limited] at @s unless score @s axis matches 0 run tp @s 0 ~ ~





