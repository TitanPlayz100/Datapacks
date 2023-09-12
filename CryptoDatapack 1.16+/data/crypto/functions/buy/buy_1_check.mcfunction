execute if score @s coin.balance < $CryptoPrice crypto.balance run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Failed! Don't have required funds","color":"yellow"}]
execute as @s if score @s coin.balance >= $CryptoPrice crypto.balance run function crypto:buy/buy_1



