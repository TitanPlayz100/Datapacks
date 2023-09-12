execute as @a[nbt={SelectedItem:{tag:{change:1b}}}] at @s run tag @s add holding_stew
execute as @a[tag=holding_stew,scores={eatstew=1..}] at @s run function origins:remove_tags
execute as @a[nbt=!{SelectedItem:{tag:{change:1b}}}] at @s run tag @s remove holding_stew
scoreboard players set @a eatstew 0