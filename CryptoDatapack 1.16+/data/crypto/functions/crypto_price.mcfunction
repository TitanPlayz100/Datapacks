scoreboard players set $timer crypto.timer 0
execute as @e[type=area_effect_cloud,tag=2,limit=1] run function crypto:randomiser/generate
execute as @e[type=area_effect_cloud,tag=1,limit=1] run function crypto:randomiser/generate
execute if score @e[type=area_effect_cloud,tag=2,limit=1] random_data matches 1 run scoreboard players operation $CryptoPrice crypto.balance -= @e[type=area_effect_cloud,tag=1,limit=1] random_data
execute if score @e[type=area_effect_cloud,tag=2,limit=1] random_data matches 0 run scoreboard players operation $CryptoPrice crypto.balance += @e[type=area_effect_cloud,tag=1,limit=1] random_data




