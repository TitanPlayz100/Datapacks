execute if score @s crypto.balance < $100 crypto.temp run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Failed! Don't have required funds","color":"yellow"}]
execute as @s if score @s crypto.balance >= $100 crypto.temp run function crypto:sell/sell_100
