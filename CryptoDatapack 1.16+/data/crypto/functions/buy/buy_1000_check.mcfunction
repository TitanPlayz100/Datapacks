scoreboard players operation $CryptoPriceTemp crypto.temp = $CryptoPrice crypto.balance
scoreboard players operation $CryptoPriceTemp crypto.temp *= $1000 crypto.temp
execute if score @s coin.balance < $CryptoPriceTemp crypto.temp run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Failed! Don't have required funds","color":"yellow"}]
execute as @s if score @s coin.balance >= $CryptoPriceTemp crypto.temp run function crypto:buy/buy_1000
scoreboard players set $CryptoPriceTemp crypto.balance 0