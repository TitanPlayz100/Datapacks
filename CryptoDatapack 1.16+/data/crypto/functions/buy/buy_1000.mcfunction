scoreboard players add @s crypto.balance 1000
scoreboard players operation @s crypto.temp = $CryptoPrice crypto.balance
scoreboard players operation @s crypto.temp *= $1000 crypto.temp
execute as @s run function crypto:remove_coin_fast



