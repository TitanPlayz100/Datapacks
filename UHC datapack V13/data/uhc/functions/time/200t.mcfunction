#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com


clear @a
team join uhc @a
effect give @a[team=uhc] minecraft:health_boost 10000 4 true
gamemode survival @a[team=uhc]


#####KITS
##STONE TOOLS
give @a[team=uhc,scores={dm.start_kit=..1}] minecraft:stone_sword
give @a[team=uhc,scores={dm.start_kit=..1}] minecraft:stone_pickaxe
give @a[team=uhc,scores={dm.start_kit=..1}] minecraft:stone_axe
give @a[team=uhc,scores={dm.start_kit=..1}] minecraft:stone_shovel
give @a[team=uhc,scores={dm.start_kit=..1}] minecraft:oak_log 5

##LOOTER
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:oak_log 5
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:string 5
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:stick 16
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:slime_ball 8
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:leather 5
give @a[team=uhc,scores={dm.start_kit=2}] minecraft:redstone_block 3

##PVP READY
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:oak_log 5
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:iron_sword
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:iron_chestplate
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:iron_leggings
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:iron_boots
give @a[team=uhc,scores={dm.start_kit=3}] minecraft:iron_helmet

##CRAFTER
give @a[team=uhc,scores={dm.start_kit=4}] minecraft:iron_block 9
give @a[team=uhc,scores={dm.start_kit=4}] minecraft:oak_log 10
give @a[team=uhc,scores={dm.start_kit=4}] minecraft:diamond 1
give @a[team=uhc,scores={dm.start_kit=4}] minecraft:book 3
give @a[team=uhc,scores={dm.start_kit=4}] minecraft:cobblestone 32

##POTION MASTER
give @a[team=uhc,scores={dm.start_kit=5}] minecraft:blaze_rod 3
give @a[team=uhc,scores={dm.start_kit=5}] minecraft:nether_wart 1
give @a[team=uhc,scores={dm.start_kit=5}] minecraft:glass_bottle 4
give @a[team=uhc,scores={dm.start_kit=5}] minecraft:oak_log 2



effect give @a[team=uhc] minecraft:regeneration 15 255 true
title @a[team=uhc] title [{"text":"The UHC Has Started!","color":"green"}]
effect give @a[team=uhc] minecraft:fire_resistance 600 1 true
tellraw @a {"text":"PvP will be turned on in 5 minutes","color":"light_purple"}

scoreboard players set DeathMatch uhc.timeshow 60 
scoreboard players set minute uhc.timeshow 29

scoreboard players set $counter uhc.onesec 0

#book
give @a written_book{display:{Name:'{"text":"UHC RULES + ADDED CRAFTS","color":"aqua","bold":true}',Lore:['{"text":"Rules + CUSTOM CRAFTS","color":"gold"}']},title:"All UHC rules + added crafts",author:"Titan_Minecraft",generation:0,pages:['[{"text":"Rules of UHC:","color":"red","bold":true},{"text":"\\n-No cheating","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"KICKED IF SEEN"}]}},{"text":"\\n-Last player alive wins\\n-There are customised aspects of THIS uhc","bold":false},{"text":"\\nHAVE FUN!","color":"green","bold":true,"underlined":false},{"text":"\\n\\n→ Click for All modifications","color":"gold","bold":false,"italic":true,"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n→ Click for Vanilla crafts","color":"gold","bold":false,"clickEvent":{"action":"change_page","value":"7"}}]','[{"text":"CUSTOM SETTINGS:","color":"red","bold":true},{"text":"\\n-Double ores\\n-Autosmelt is on\\n-two rows of hearts\\n-custom crafting\\n-no daylight cycle\\n-30 min games\\n-Grace period: 10m\\n-Deathmatch: 30m\\n-Iron pickaxe and sword are crafted by dropping the stone variant with 1 iron ingot","color":"gold","bold":false}]','[{"text":"NON-VANILLA crafting table crafts:","color":"red","bold":true},{"text":"\\nSharp/prop/power books","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Iron Sword/chestplate/feather\\n→ Book"}]}},{"text":"\\nKnockback 2 stick","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Sticks surrounding sugar"}]}},{"text":"\\n1.8.9 stone sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Stone sword in middle\\n→ 2 iron blocks to left and right\\n→ 2 coal blocks above and below"}]}},{"text":"\\nDecent bow + 20 arrows","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ 3 sticks on left sides\\n→ Iron block in middle\\n→ 3 redstone torches as if it was string "}]}},{"text":"\\nStone sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Stone sword in middle\\n→ 2 coal blocks, one above and one below\\n→ 2 iron blocks, one left and one right"}]}},{"text":"\\nSurface teleporter","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ blast furnace in middle\\n→ 2 redstone blocks, one above and one below\\n→ 2 iron blocks, one left and one right"}]}},{"text":"\\nEasy iron Armour","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Anvil in middle\\n→Iron ingots surrounding it"}]}},{"text":"\\nIron/Diamond shielder sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Iron sword/Diamond sword\\n→Iron chestplate\\n→Can be placed anywhere"}]}},{"text":"\\nSpeedy sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Iron sword\\n→Sugar\\n→Placed anywhere"}]}}]','[{"text":"Vanilla Crafts\\n","color":"red","bold":true},{"text":"The recipes are found in the crafting table","color":"gray","bold":false,"italic":true},{"text":"\\nlight anvil\\nblaze rod\\nbone\\nenchant bottles\\nduplicate apples\\nenderpearl\\nEasy gapple\\nnether wart\\nsaddle\\nstring\\ntrident\\nEnchanted gapple","color":"gold","bold":false}]']} 1
