scoreboard players remove @s crypto.temp 100
scoreboard players add @s coin.balance 100
execute as @s if score @s crypto.temp matches 100.. run function crypto:add_coin_fast
execute if score @s crypto.temp matches 0 run tellraw @s [{"text":"[Crypto] ","color":"red"},{"text":"Transaction complete!","color":"yellow"}]
execute if score @s crypto.temp matches 0 run scoreboard players reset @s crypto.temp


