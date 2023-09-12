title @s actionbar "You need fresh air to sleep"
fill ~ ~ ~ ~ ~ ~ air replace #minecraft:beds
give @s red_bed
scoreboard players set @s sleeping 0
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0.88
particle minecraft:barrier ~ ~ ~ 0.1 0.1 0.1 0 1