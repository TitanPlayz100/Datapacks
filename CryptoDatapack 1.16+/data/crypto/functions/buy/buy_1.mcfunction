scoreboard players add @s crypto.balance 1
scoreboard players operation @s crypto.temp = $CryptoPrice crypto.balance
execute as @s run function crypto:remove_coin



