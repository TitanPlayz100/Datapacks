scoreboard players remove @s crypto.balance 1
scoreboard players operation @s crypto.temp = $CryptoPrice crypto.balance
execute as @s run function crypto:add_coin


