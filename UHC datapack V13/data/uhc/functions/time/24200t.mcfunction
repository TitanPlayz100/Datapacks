#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

fill 50 70 50 -50 70 -50 bedrock
fill 0 70 0 0 71 0 bedrock
execute as @a[nbt={Dimension:-1}] in minecraft:overworld run tp @s 0 74 0

title @a title [{"text":"DeathMatch","color":"red"}]

worldborder set 100

give @a golden_apple 2
effect give @a regeneration 2 2 true
