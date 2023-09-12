#This ds datapack was created by shreyans
#email- spammablemail100@gmail.com
execute as @a[tag=a,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"a"}'}
execute as @a[tag=b,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"b"}'}
execute as @a[tag=c,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'{"text":"c"}'}



tp @a[tag=a,limit=1] @e[type=minecraft:armor_stand,limit=1,name=b]
tp @a[tag=b,limit=1] @e[type=minecraft:armor_stand,limit=1,name=c]
tp @a[tag=c,limit=1] @e[type=minecraft:armor_stand,limit=1,name=a]

kill @e[type=armor_stand]
