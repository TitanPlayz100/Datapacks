#Made by Titanplayz - Email: spammablemail100@gmail.com

#messages
tellraw @p {"text":"The Crypto currency datapack has been uninstalled","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Use this command to reinstall:","color":"red"},{"text":"\n/reload","color":"green"},{"text":"\n\nMade by TitanPlayz","color":"gold"}]}}

#scoreboards
scoreboard objectives remove coin.balance
scoreboard objectives remove crypto.balance
scoreboard objectives remove crypto.temp
scoreboard objectives remove coin.dirt
scoreboard objectives remove crypto.timer
scoreboard objectives remove crypto.random
scoreboard objectives remove crypto.price
scoreboard objectives remove ShopItem
scoreboard objectives remove ShopHUD
scoreboard objectives remove ShopHUD_bool
scoreboard objectives remove random
scoreboard objectives remove random_data
scoreboard objectives remove random_limit
scoreboard objectives remove open_chest
scoreboard objectives remove chest_menu
scoreboard objectives remove holding_item

kill @e[tag=1,type=area_effect_cloud]
kill @e[tag=2,type=area_effect_cloud]
setblock 0 1 0 stone