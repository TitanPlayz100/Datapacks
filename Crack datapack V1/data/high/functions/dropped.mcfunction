#This uhc datapack was created by TitanPlayz
#email- spammablemail100@gmail.com
tellraw @s[scores={high.timer=2}] [{"text":"What's happening?","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"To enable again, run /trigger high.enable"}]},"clickEvent":{"action":"run_command","value":"/trigger high.disable"}},{"text":" (Click to disable)","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"To enable again, run /trigger high.enable"}]},"clickEvent":{"action":"run_command","value":"/trigger high.disable"}}]
scoreboard players add @s high.timer 1
execute if score @s high.timer matches 2 run kill @e[type=item,nbt={Item:{id:"minecraft:sugar"}},limit=1,sort=nearest]
execute if score @s high.timer matches 20..39 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 40..59 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 60..79 run particle minecraft:dust 0 1 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 80..99 run particle minecraft:dust 0 1 1 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 100..119 run particle minecraft:dust 0 0 1 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 120..139 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 140..159 run particle minecraft:dust 1 1 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 160..179 run particle minecraft:dust 0 1 0 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 180..198 run particle minecraft:dust 0 1 1 1 ~ ~ ~ 2 2 2 1 100
execute if score @s high.timer matches 199 run particle minecraft:dust 0 0 1 1 ~ ~ ~ 2 2 2 1 100
effect give @s minecraft:nausea 10 1 true
effect give @s minecraft:blindness 10 255 true
execute if score @s high.timer matches 200.. run scoreboard players set @s high.use_sugar 0
execute if score @s high.timer matches 200.. run effect clear @s
execute if score @s high.timer matches 200.. run scoreboard players set @s high.timer 0
playsound minecraft:ui.button.click master @s
playsound minecraft:block.bell.use master @s
playsound minecraft:block.wooden_door.open master @s
playsound minecraft:block.note_block.bell master @s
playsound minecraft:block.piston.extend master @s