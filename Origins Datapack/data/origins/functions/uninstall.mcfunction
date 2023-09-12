tellraw @a {"text":"The Origins Datapack Has Been Uninstalled (Hover for more)","color":"yellow","bold":false,"italic":false,"underlined":false,"hoverEvent":{"action":"show_text","contents":[{"text":"- Reinstall using /reload\n- To completely remove this, delete folder","color":"yellow"}]}}

scoreboard objectives remove ender_cooldown
scoreboard objectives remove arachnid_cd
scoreboard objectives remove elytra_cd
scoreboard objectives remove phantom_cd
scoreboard objectives remove dealt_damage
scoreboard objectives remove attack1
scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove tempbool
scoreboard objectives remove perma_bool
scoreboard objectives remove firetick
scoreboard objectives remove identifier
scoreboard objectives remove delay
scoreboard objectives remove falling
scoreboard objectives remove used_pearl 
scoreboard objectives remove clickedvillager 
scoreboard objectives remove sleeping
scoreboard objectives remove sneak
scoreboard objectives remove eatstew
scoreboard objectives remove choose
scoreboard objectives remove health
scoreboard objectives remove food
scoreboard objectives remove death

forceload remove 625000 6
setblock 10000000 254 100 air
setblock 10000000 255 100 air
schedule clear origins:shulk/shulker_20t
datapack disable "file/Origins Datapack"