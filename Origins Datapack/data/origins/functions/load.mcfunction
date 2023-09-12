tellraw @a {"text":"The Origins Datapack Has Been installed (Hover for more)","color":"yellow","bold":false,"italic":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Adds the origin mod to your world!","color":"yellow"},{"text":"\n-Can be uninstalled with:\n","color":"red"},{"text":"  /function origins:uninstall","color":"green"},{"text":"\n- This datapack aims to copy the mod called Origins\n- Silverfish have a small chance to drop the Origin Changer\n- Use this command to rechoose your origin:","color":"red"},{"text":"\n  /function origins:remove_tags","color":"green"},{"text":"\n\nMade by: TitanPlayz\nYT: TitanPlayz100\ngmail: spammablemail100@gmail.com","color":"gold"}]}}

scoreboard objectives add ender_cooldown dummy
scoreboard objectives add arachnid_cd dummy
scoreboard objectives add elytra_cd dummy
scoreboard objectives add phantom_cd dummy
scoreboard objectives add attack1 dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add tempbool dummy
scoreboard objectives add perma_bool dummy
scoreboard objectives add firetick dummy
scoreboard objectives add identifier dummy
scoreboard objectives add delay dummy
scoreboard objectives add dealt_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add falling minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add used_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add clickedvillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add sleeping minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add eatstew minecraft.used:minecraft.mushroom_stew
scoreboard objectives add choose trigger
scoreboard objectives add health health
scoreboard objectives add food food
scoreboard objectives add death deathCount

forceload add 6 6
setblock 100 254 100 shulker_box
setblock 100 255 100 dirt
schedule function origins:shulk/shulker_20t 1t