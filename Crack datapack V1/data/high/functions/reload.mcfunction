#This uhc datapack was created by TitanPlayz
#email- spammablemail100@gmail.com

tellraw @a {"text":"High Datapack initialised","false":true,"italic":false,"underlined":false,"color":"yellow"}
tellraw @a {"text":"\nThe high Datapck","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"I have no life :|\nDrop sugar to literally go blind and deaf\nMade by an unlucky soul: TitanPlayz","color":"green"}]}}
tellraw @a {"text":"Click here to uninstall","color":"green","clickEvent":{"action":"run_command","value":"/function high:uninstall"}}

scoreboard objectives add high.use_sugar minecraft.dropped:minecraft.sugar
scoreboard objectives add high.timer dummy
scoreboard objectives add high.enable trigger
scoreboard objectives add high.disable trigger
scoreboard players set @a high.timer 0
