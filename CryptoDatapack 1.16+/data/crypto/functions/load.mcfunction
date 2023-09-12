#Made by Titanplayz - Email: spammablemail100@gmail.com

#messages
tellraw @a {"text":"The Crypto currency Datapack Has Been Installed (Hover for more)","color":"yellow","bold":false,"italic":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Creates a Crypto Currency system in your world!","color":"yellow"},{"text":"\n-Can be uninstalled with:\n","color":"red"},{"text":"  /function crypto:uninstall","color":"green"},{"text":"\n-People who have the tag \"admin\" have access to special /trigger commands\n-Use this command to get the item to access the shop:","color":"red"},{"text":"\n  /trigger ShopItem","color":"green"},{"text":"\n\nMade by: TitanPlayz\nYT: TitanPlayz100\ngmail: spammablemail100@gmail.com","color":"gold"}]}}

#scoreboards
scoreboard objectives add coin.balance dummy
scoreboard objectives add crypto.balance dummy
scoreboard objectives add crypto.temp dummy
scoreboard objectives add coin.dirt minecraft.mined:minecraft.dirt
scoreboard objectives add coin.grassblock minecraft.mined:minecraft.grass_block
scoreboard objectives add crypto.timer trigger
scoreboard objectives add crypto.random trigger
scoreboard objectives add crypto.price trigger
scoreboard objectives add ShopItem trigger
scoreboard objectives add ShopHUD trigger
scoreboard objectives add ShopHUD_bool dummy
scoreboard objectives add random dummy
scoreboard objectives add random_data dummy
scoreboard objectives add random_limit dummy
scoreboard objectives add open_chest dummy
scoreboard objectives add chest_menu dummy
scoreboard objectives add holding_item dummy

scoreboard players add $CryptoPrice crypto.balance 0
execute if score $cryptoPrice crypto.balance matches 0 run scoreboard players set $CryptoPrice crypto.balance 50
scoreboard players set $timer crypto.timer 1
scoreboard players add $time crypto.timer 0
execute if score $time crypto.timer matches 0 run scoreboard players set $time crypto.timer 60
scoreboard players set $1 crypto.temp 1
scoreboard players set $10 crypto.temp 10
scoreboard players set $100 crypto.temp 100
scoreboard players set $1000 crypto.temp 1000



execute positioned 0 0 0 unless entity @e[type=minecraft:area_effect_cloud,distance=0..2,tag=1] run summon area_effect_cloud 0 0 0 {Duration:2147483647,Tags:["1"]} 
execute positioned 0 0 0 unless entity @e[type=minecraft:area_effect_cloud,distance=0..2,tag=2] run summon area_effect_cloud 0 0 0 {Duration:2147483647,Tags:["2"]} 
scoreboard players set @e[type=area_effect_cloud,tag=1] random 3
scoreboard players set @e[type=area_effect_cloud,tag=2] random 2