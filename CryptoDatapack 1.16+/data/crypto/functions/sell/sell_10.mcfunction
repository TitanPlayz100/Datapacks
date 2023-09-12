scoreboard players remove @s crypto.balance 10
scoreboard players operation @s crypto.temp = $CryptoPrice crypto.balance
scoreboard players operation @s crypto.temp *= $10 crypto.temp
execute as @s run function crypto:add_coin



