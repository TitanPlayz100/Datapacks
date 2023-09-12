scoreboard players remove @s crypto.temp 1
scoreboard players remove @s coin.balance 1
execute as @s if score @s crypto.temp matches 1.. run function crypto:remove_coin
execute if score @s crypto.temp matches 0 run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Transaction complete!","color":"yellow"}]
execute if score @s crypto.temp matches 0 run scoreboard players reset @s crypto.temp


