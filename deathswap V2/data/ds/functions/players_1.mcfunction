#This ds datapack was created by shreyans
#email- spammablemail100@gmail.com
execute as @a[tag=a,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"a"}'}

tp @a[tag=a,limit=1] @e[type=minecraft:armor_stand,limit=1,name=a]

title @a title "loner wow"

kill @e[type=armor_stand]
