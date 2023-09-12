#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command

tellraw @a {"text":"\n\n***UHC DATAPACK***","bold":true,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a uhc on any world!\nMust be in creative mode to start","color":"green"}]}}
tellraw @a {"text":"Email","bold":true,"italic":false,"underlined":false,"color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"spammablemail100@gmail.com ","color":"green"}]}}
tellraw @a {"text":" "}
tellraw @a[gamemode=creative] {"text":"Start UHC","color":"green","clickEvent":{"action":"run_command","value":"/function uhc:start"}}
tellraw @a[gamemode=creative] {"text":"Stop Game or reset Datapack","color":"red","clickEvent":{"action":"run_command","value":"/reload"}}

#update log
tellraw @a {"text":"\nUpdate v12.4\n ","bold":true,"italic":false,"underlined":false,"color":"gray","hoverEvent":{"action":"show_text","value":["",{"text":"***UPDATE LOG***\n-There is an uninstall button\n-Balanced sarter kits\n-Mostly all crafts have moved to a crafting table\n-Balanced All ore drops, leaves, zombies\n\n**COMING**\n-vampire sword\n-optimisations\n\nEmail suggestions","color":"gold"}]}}

###scoreboard and bossbar and teams

#scoreboard create
scoreboard objectives add uhc.totaltime dummy "Total Tme"
scoreboard objectives add uhc.deaths deathCount
scoreboard objectives add uhc.onesec dummy
scoreboard objectives add uhc.timeshow dummy [{"text":"Welcome to UHC","color":"yellow"}]
scoreboard objectives add uhc.extra dummy [{"text":"UHC DATAPACK","color":"dark_purple"}]
scoreboard objectives add uhc.health health "Health"
scoreboard objectives add uhc.wb dummy
scoreboard objectives add uhc.killCount minecraft.custom:minecraft.player_kills
scoreboard objectives add dm.start_kit dummy
scoreboard objectives add dm.dropped minecraft.custom:minecraft.drop

#scoreboard display and others
scoreboard objectives setdisplay list uhc.health
scoreboard players add WorldBorder_Size: uhc.wb 1
scoreboard players add Minecraft_Titan uhc.totaltime 100000
scoreboard objectives setdisplay sidebar uhc.extra
scoreboard players set DeathMatch uhc.timeshow 0 
scoreboard players set minute uhc.timeshow 0
scoreboard players set $minute uhc.onesec 1
scoreboard players set $counter uhc.onesec 1
scoreboard players set @a dm.start_kit 1
scoreboard players set @a dm.dropped 0


#bossbar
bossbar add wb [{"text":"Time until Deathmatch","bold":false,"italic":false,"underlined":false,"color":"green"}]
bossbar set minecraft:wb color green
bossbar set minecraft:wb players @a
bossbar set minecraft:wb max 36200

#teams
team add uhc "uhc"
team add pvp "pvp"
team add deaded "dead"
team modify uhc friendlyFire false
team join uhc @a


###gamerule and player/world setup
#gamerules
gamerule keepInventory true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule naturalRegeneration false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule spawnRadius 0

#world
time set day
fill 0 150 0 10 154 10 minecraft:barrier hollow
fill 1 154 1 9 154 9 minecraft:air 
setworldspawn 6 150 5
spawnpoint @a 6 150 5
fill 50 70 50 -50 70 -50 air
fill 6 150 5 6 150 5 minecraft:quartz_block
worldborder center 0 0
worldborder damage amount 5
worldborder set 1200 1

#player
gamemode adventure @a[gamemode=survival]
gamemode adventure @a[gamemode=spectator]
effect clear @a
kill @e[type=item]
clear @a enchanted_book
tp @a 6 153 5
clear @a written_book
give @a written_book{display:{Name:'{"text":"UHC RULES + ADDED CRAFTS","color":"aqua","bold":true}',Lore:['{"text":"Rules + CUSTOM CRAFTS","color":"gold"}']},title:"All UHC rules + added crafts",author:"Titan_Minecraft",generation:0,pages:['[{"text":"Rules of UHC:","color":"red","bold":true},{"text":"\\n-No cheating","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"KICKED IF SEEN"}]}},{"text":"\\n-Last player alive wins\\n-There are customised aspects of THIS uhc","bold":false},{"text":"\\nHAVE FUN!","color":"green","bold":true,"underlined":false},{"text":"\\n\\n→ Click for All modifications","color":"gold","bold":false,"italic":true,"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n→ Click for Vanilla crafts","color":"gold","bold":false,"clickEvent":{"action":"change_page","value":"7"}}]','[{"text":"CUSTOM SETTINGS:","color":"red","bold":true},{"text":"\\n-Double ores\\n-Autosmelt is on\\n-two rows of hearts\\n-custom crafting\\n-no daylight cycle\\n-30 min games\\n-Grace period: 10m\\n-Deathmatch: 30m\\n-Iron pickaxe and sword are crafted by dropping the stone variant with 1 iron ingot","color":"gold","bold":false}]','[{"text":"NON-VANILLA crafting table crafts:","color":"red","bold":true},{"text":"\\nSharp/prop/power books","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Iron Sword/chestplate/feather\\n→ Book"}]}},{"text":"\\nKnockback 2 stick","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Sticks surrounding sugar"}]}},{"text":"\\n1.8.9 stone sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Stone sword in middle\\n→ 2 iron blocks to left and right\\n→ 2 coal blocks above and below"}]}},{"text":"\\nDecent bow + 20 arrows","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ 3 sticks on left sides\\n→ Iron block in middle\\n→ 3 redstone torches as if it was string "}]}},{"text":"\\nStone sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ Stone sword in middle\\n→ 2 coal blocks, one above and one below\\n→ 2 iron blocks, one left and one right"}]}},{"text":"\\nSurface teleporter","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→ blast furnace in middle\\n→ 2 redstone blocks, one above and one below\\n→ 2 iron blocks, one left and one right"}]}},{"text":"\\nEasy iron Armour","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Anvil in middle\\n→Iron ingots surrounding it"}]}},{"text":"\\nIron/Diamond shielder sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Iron sword/Diamond sword\\n→Iron chestplate\\n→Can be placed anywhere"}]}},{"text":"\\nSpeedy sword","color":"gold","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"→Iron sword\\n→Sugar\\n→Placed anywhere"}]}}]','[{"text":"Vanilla Crafts\\n","color":"red","bold":true},{"text":"The recipes are found in the crafting table","color":"gray","bold":false,"italic":true},{"text":"\\nlight anvil\\nblaze rod\\nbone\\nenchant bottles\\nduplicate apples\\nenderpearl\\nEasy gapple\\nnether wart\\nsaddle\\nstring\\ntrident\\nEnchanted gapple","color":"gold","bold":false}]']} 1

###others
function uhc:20t_clock






