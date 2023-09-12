#Made by Titanplayz - Email: spammablemail100@gmail.com

###COIN SYSTEM
execute as @a[scores={coin.dirt=1..}] run scoreboard players add @s coin.balance 1
execute as @a[scores={coin.dirt=1..}] run scoreboard players remove @s coin.dirt 1
execute as @a[scores={coin.grassblock=1..}] run scoreboard players add @s coin.balance 1
execute as @a[scores={coin.grassblock=1..}] run scoreboard players remove @s coin.grassblock 1

###Crypto system

#crypto price system
scoreboard players add $timer crypto.timer 1
execute if score $timer crypto.timer = $time crypto.timer run function crypto:crypto_price

#crypto admin trigger commands
execute as @a[tag=admin] run scoreboard players enable @s crypto.timer
execute as @a[tag=admin,scores={crypto.timer=1..}] run scoreboard players operation $time crypto.timer = @s crypto.timer
execute as @a[tag=admin,scores={crypto.timer=1..}] run tellraw @a [{"text":"[Crypto] ","color":"red"},{"text":"The timer is now ","color":"yellow"},{"score":{"name":"$time","objective":"crypto.timer"},"color":"yellow"},{"text":" ticks long (20 tick = 1 second)","color":"yellow"}]
execute as @a[tag=admin,scores={crypto.timer=1..}] run scoreboard players set $timer crypto.timer 1
execute as @a[tag=admin,scores={crypto.timer=1..}] run scoreboard players set @s crypto.timer 0

execute as @a[tag=admin] run scoreboard players enable @s crypto.random
execute as @a[tag=admin,scores={crypto.random=1..}] run scoreboard players operation @e[type=area_effect_cloud,tag=1,limit=1] random = @s crypto.random
execute as @a[tag=admin,scores={crypto.random=1..}] run tellraw @a [{"text":"[Crypto] ","color":"red"},{"text":"The randomiser amount factor is now ","color":"yellow"},{"score":{"name":"@e[type=area_effect_cloud,tag=1,limit=1]","objective":"random"},"color":"yellow"}]
execute as @a[tag=admin,scores={crypto.random=1..}] run scoreboard players set @s crypto.random 0

execute as @a[tag=admin] run scoreboard players enable @s crypto.price
execute as @a[tag=admin,scores={crypto.price=1..}] run scoreboard players operation $CryptoPrice crypto.balance = @s crypto.price
execute as @a[tag=admin,scores={crypto.price=1..}] run tellraw @a [{"text":"[Crypto] ","color":"red"},{"text":"The price for crypto is now ","color":"yellow"},{"score":{"name":"$CryptoPrice","objective":"crypto.balance"},"color":"yellow"}]
execute as @a[tag=admin,scores={crypto.price=1..}] run scoreboard players set @s crypto.price 0

#crypto get item trigger command
execute as @a run scoreboard players enable @s ShopItem
execute as @a[scores={ShopItem=1..}] run give @s sunflower{display:{Name:'{"text":"CryptoShop (look down and click)","color":"aqua","italic":false}',Lore:['{"text":"Look down to access all Crypto related options","color":"white","italic":false}']},HideFlags:35,open_cm:1b,Enchantments:[{}]} 1
execute as @a[scores={ShopItem=1..}] run scoreboard players set @s ShopItem 0

#crypto HUD toggle
scoreboard players add @a ShopHUD_bool 0
execute as @a run scoreboard players enable @s ShopHUD
execute as @a[scores={ShopHUD=1..}] if score @s ShopHUD_bool matches 1 run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Your HUD is now hidden","color":"yellow"}]
execute as @a[scores={ShopHUD=1..}] if score @s ShopHUD_bool matches 1 run scoreboard players reset @s ShopHUD_bool
execute as @a[scores={ShopHUD=1..}] if score @s ShopHUD_bool matches 0 run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Your HUD is now shown","color":"yellow"}]
execute as @a[scores={ShopHUD=1..}] if score @s ShopHUD_bool matches 0 run scoreboard players set @s ShopHUD_bool 1


execute as @a[scores={ShopHUD_bool=1}] run title @a actionbar [{"text":"Balance: ","color":"blue"},{"score":{"name":"*","objective":"coin.balance"},"color":"red"},{"text":" | CryptoCoin balance: ","color":"blue"},{"score":{"name":"*","objective":"crypto.balance"},"color":"red"},{"text":" | Value of CryptoCoin: ","color":"blue"},{"score":{"name":"$CryptoPrice","objective":"crypto.balance"},"color":"green"}]
execute as @a[scores={ShopHUD=1..}] run scoreboard players set @a ShopHUD 0


##MISC
scoreboard players add @a coin.balance 0
scoreboard players add @a crypto.balance 0
execute if score $CryptoPrice crypto.balance matches ..0 run tellraw @a [{"text":"[Crypto] ","color":"red"},{"text":"The price for crypto has reached 0, and thus is now back to 50 ","color":"yellow"}]
execute if score $CryptoPrice crypto.balance matches ..0 run scoreboard players set $CryptoPrice crypto.balance 50