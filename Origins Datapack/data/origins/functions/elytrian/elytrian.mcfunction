execute if score @s elytra_cd matches 1.. at @s run function origins:elytrian/progress_bar
item replace entity @s armor.chest with elytra{wings:1b,display:{Name:'{"text":"Wings","color":"white","italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:protection,lvl:2}]} 1

execute as @s[scores={falling=500..}] at @s unless block ~ ~-1 ~ air run effect give @s instant_damage 1 0 true
execute as @s[scores={falling=1000..}] at @s unless block ~ ~-1 ~ air run effect give @s instant_damage 1 0 true
execute as @s at @s unless block ~ ~-1 ~ air run scoreboard players set @s[scores={falling=1..}] falling 0

scoreboard players add @a elytra_cd 0
execute as @a unless predicate origins:sneaking run scoreboard players set @s sneak 0
execute as @a[tag=elytrian,scores={sneak=5..20,elytra_cd=0}] at @s run title @s actionbar [{"text":"Charging!","color":"red"}]
execute as @a[tag=elytrian,scores={sneak=21..40,elytra_cd=0}] at @s run title @s actionbar [{"text":"Charging!","color":"gold"}]
execute as @a[tag=elytrian,scores={sneak=41..59,elytra_cd=0}] at @s run title @s actionbar [{"text":"Charging!","color":"green"}]
execute as @a[tag=elytrian,scores={sneak=60..,elytra_cd=0}] at @s run function origins:elytrian/boost
scoreboard players remove @s[scores={elytra_cd=1..}] elytra_cd 1

execute as @s at @s unless block ~ ~2 ~ air run effect give @s slowness 1 1 true
execute as @s at @s unless block ~ ~2 ~ air run effect give @s weakness 1 0 true

execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run function origins:elytrian/remove_boot
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] at @s run function origins:elytrian/remove_boot
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run function origins:elytrian/remove_pant
execute as @s[nbt={Inventory:[{Slot:101b,id:"minecraft:netherite_leggings"}]}] at @s run function origins:elytrian/remove_pant
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] at @s run function origins:elytrian/remove_helmet
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:netherite_helmet"}]}] at @s run function origins:elytrian/remove_helmet

execute at @s if score @s delay matches 1 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute at @s if score @s delay matches 3 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.31
execute at @s if score @s delay matches 6 run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0.64