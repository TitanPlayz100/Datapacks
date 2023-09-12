#This tag datapack was created by shreyans
#email- spammablemail100@gmail.com

clear @a
gamemode survival @a[team=chaser]
gamemode survival @a[team=runner]

give @a[team=chaser] minecraft:diamond_sword
give @a[team=chaser] minecraft:diamond_pickaxe
give @a[team=chaser] minecraft:diamond_shovel
give @a[team=chaser] minecraft:diamond_axe
give @a[team=chaser] minecraft:cooked_beef 32
give @a[team=chaser] minecraft:cobblestone 128
give @a[team=chaser] minecraft:water_bucket
replaceitem entity @a[team=chaser] armor.chest minecraft:diamond_chestplate
replaceitem entity @a[team=chaser] armor.feet minecraft:diamond_boots
replaceitem entity @a[team=chaser] armor.head minecraft:diamond_helmet
replaceitem entity @a[team=chaser] armor.legs minecraft:diamond_leggings

give @a[team=runner] minecraft:diamond_sword
give @a[team=runner] minecraft:diamond_pickaxe
give @a[team=runner] minecraft:diamond_shovel
give @a[team=runner] minecraft:diamond_axe
give @a[team=runner] minecraft:cooked_beef 32
give @a[team=runner] minecraft:cobblestone 128
give @a[team=runner] minecraft:water_bucket
replaceitem entity @a[team=runner] armor.chest minecraft:diamond_chestplate
replaceitem entity @a[team=runner] armor.feet minecraft:diamond_boots
replaceitem entity @a[team=runner] armor.head minecraft:diamond_helmet
replaceitem entity @a[team=runner] armor.legs minecraft:diamond_leggings

title @a[team=chaser] title "You are CHASER"
title @a[team=runner] title "You are RUNNER"
