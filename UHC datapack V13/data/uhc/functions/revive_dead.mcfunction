#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com


clear @a[team=deaded]

effect give @a[team=deaded] minecraft:health_boost 10000 4 true
gamemode survival @a[team=deaded]
give @a[team=deaded] minecraft:stone_sword
give @a[team=deaded] minecraft:stone_pickaxe
give @a[team=deaded] minecraft:stone_axe
give @a[team=deaded] minecraft:stone_shovel
give @a[team=deaded] minecraft:oak_log 5

effect give @a[team=deaded] minecraft:regeneration 10 255 true
title @a[team=deaded] title [{"text":"REVIVED!","color":"green"}]
effect give @a[team=deaded] minecraft:fire_resistance 30 1 true


#book
give @a minecraft:written_book{title:"All drop crafts",author:"Minecraft_Titan",generation:0,pages:['[{"text":"All drop crafts:\\n"},{"text":"quick pick","hoverEvent":{"action":"show_text","value":[{"text":"stone pick\\n1 iron"}]}},{"text":"decent bow and 20 arrows","hoverEvent":{"action":"show_text","value":[{"text":"iron blockk\\n5 sticks\\n5redstone torches"}]}},{"text":"1.8.9 sword","hoverEvent":{"action":"show_text","value":[{"text":"stone sword\\n2 iron blocks\\n2 coal blocks"}]}},{"text":"knockback 5 stick","hoverEvent":{"action":"show_text","value":[{"text":"64 sticks\\n2 sugar"}]}},{"text":"\\nquick sword","hoverEvent":{"action":"show_text","value":[{"text":"stone sword\\n1 iron"}]}},{"text":"\\ndiamond shielder sword","hoverEvent":{"action":"show_text","value":[{"text":"diamond sword\\n1 iron chestplate"}]}},{"text":"\\nobsidian sword","hoverEvent":{"action":"show_text","value":[{"text":"diamond sword\\n2 obsidian\\n2 blaze powder"}]}},{"text":"\\nFull iron set","hoverEvent":{"action":"show_text","value":[{"text":"iron block\\nanvil"}]}},{"text":"\\nsharpness book","hoverEvent":{"action":"show_text","value":[{"text":"iron sword\\nbook"}]}},{"text":"\\n power book","hoverEvent":{"action":"show_text","value":[{"text":"2 feathers\\nbook"}]}},{"text":"\\n protection book","hoverEvent":{"action":"show_text","value":[{"text":"iron helmet\\nbook"}]}},{"text":"\\nspeedy sword","hoverEvent":{"action":"show_text","value":[{"text":"iron sword\\n1 sugar"}]}},{"text":"\\nshield sword","hoverEvent":{"action":"show_text","value":[{"text":"iron sword\\niron chestplate"}]}},{"text":"\\nobsidian leggings","hoverEvent":{"action":"show_text","value":[{"text":"diamond leggings\\n2 blaze powder\\n2 obsidian"}]}},{"text":"\\nobsidian chestplate","hoverEvent":{"action":"show_text","value":[{"text":"diamond chestplate\\n2 obsidian\\n2 blaze powder"}]}}]','{"text":"all craftng table crafts can be found in crafting table recipies book\\n\\nautosmelt is on\\nleaves drop more apples"}']} 1

team join pvp @a[team=deaded]



