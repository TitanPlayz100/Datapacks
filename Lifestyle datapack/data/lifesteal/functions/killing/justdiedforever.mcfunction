gamemode spectator @s
title @s times 20 60 20
title @s subtitle {"text":"You have lost all your hearts","color":"dark_red"}
title @s title {"text":"\u2620","color":"gray"}
playsound minecraft:ambient.soul_sand_valley.mood neutral @s ~ ~ ~ 1 1
playsound minecraft:entity.endermite.step neutral @s ~ ~ ~ 1 1
playsound minecraft:block.conduit.deactivate neutral @s ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete neutral @s ~ ~ ~ 1 1
tag @s remove dead
advancement grant @s only lifesteal:ingame/eliminated
