#fireball
execute as @e[nbt={Item:{tag:{fireballa:1b}}}] at @s run summon fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.0,0.0]}
execute as @e[nbt={Item:{tag:{fireballa:1b}}}] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[0] double 0.01 run data get entity @s Motion[0] 10
execute as @e[nbt={Item:{tag:{fireballa:1b}}}] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[1] double 0.01 run data get entity @s Motion[1] 10
execute as @e[nbt={Item:{tag:{fireballa:1b}}}] at @s store result entity @e[type=minecraft:fireball,limit=1,sort=nearest] power[2] double 0.01 run data get entity @s Motion[2] 10
kill @e[nbt={Item:{tag:{fireballa:1b}}}]

#explosive bow
execute as @a[scores={arrowshot=1..},nbt={SelectedItem:{id:"minecraft:bow",tag:{explosive:1b}}}] at @s run tag @e[type=arrow,sort=nearest,limit=1] add explosion
execute as @e[tag=explosion,nbt={inGround:1b}] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[tag=explosion,nbt={inGround:1b}] at @s run kill @s
scoreboard players remove @a[scores={arrowshot=1..}] arrowshot 1

#summonable creeper
execute as @a[scores={summoncreeper=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{creeper:1b}}}] at @s run summon creeper ^ ^1 ^4 {Fuse:1s,ignited:60b,ExplosionRadius:1,CustomNameVisible:1,CustomName:"{\"text\":\"BOOM\",\"color\":\"red\"}"}
scoreboard players remove @a[scores={summoncreeper=1..}] summoncreeper 1

#magic wand
execute as @a[scores={magicwand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic:1b}}}] at @s run particle minecraft:dust 1 0 0 1 ^ ^1.8 ^4 1 0.0001 1 100 500
execute as @a[scores={magicwand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic:1b}}}] at @s run summon armor_stand ^ ^1.8 ^4 {CustomNameVisible:0,CustomName:"{\"text\":\"hello\",\"color\":\"gray\"}",NoGravity:1,Invisible:1,Invulnerable:1}
execute as @e[name=hello,type=armor_stand] at @s run effect give @e[distance=..2.5] minecraft:instant_damage 1 0 true
kill @e[name=hello,type=armor_stand]
scoreboard players set @a[scores={magicwand=1..}] magicwand 0

#harming bow
execute as @a[scores={waterarrow=1..},nbt={SelectedItem:{id:"minecraft:bow",tag:{water:1b}}}] at @s run tag @e[type=arrow,sort=nearest,limit=1] add wet
execute as @e[tag=wet,nbt={inGround:1b}] at @s run summon minecraft:potion ~ ~ ~ {Potion:{id:"minecraft:splash_potion",Count:1,tag:{Potion:"minecraft:harming"}}}
execute as @e[tag=wet,nbt={inGround:1b}] at @s run kill @s
scoreboard players remove @a[scores={waterarrow=1..}] waterarrow 1

function fireball_snowball:trap

#trailer
execute as @e[nbt={Item:{tag:{trailer:1b}}}] at @s run scoreboard players set $killer killastand 0
execute as @e[nbt={Item:{tag:{trailer:1b}}}] at @s run summon armor_stand ~ ~-1.5 ~ {CustomNameVisible:1,CustomName:"{\"text\":\"trailing\",\"color\":\"red\"}",NoGravity:1,Invisible:1,Invulnerable:1,Tags:["trail"]}
execute as @e[nbt={Item:{tag:{trailer:1b}}}] at @s run particle minecraft:barrier ~ ~ ~ 0.0001 0.0001 0.0001 1 10
execute as @e[name=trailing] at @s run effect give @e[distance=..2] minecraft:instant_damage 1 0 true
scoreboard players add $killer killastand 1
execute if score $killer killastand matches 40 run kill @e[name=trailing]

#speedy sword
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{speedy:1b}}}] at @s run effect give @s speed 1 2 true

#shielder sword
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{shielder:1b}}}] at @s run effect give @s minecraft:resistance 1 1 true
#weapons
execute as @a[scores={mando_rc=1..,mando_cooldown=0,ammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{sniper:1b}}}] at @s run function fireball_snowball:sniper_blast_summon
execute as @e[tag=sniper_blast] at @s run function fireball_snowball:sniper_blast
execute as @e[tag=sniper_blast] at @s run particle minecraft:dust 0 0 1 0.8 ~ ~ ~ 0.0001 0.0001 0.0001 5 1
execute as @a[scores={mando_rc=1..,mando_cooldown=0,ammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pistol:1b}}}] at @s run function fireball_snowball:pistol_blast_summon
execute as @e[tag=pistol_blast] at @s run function fireball_snowball:pistol_blast
execute as @e[tag=pistol_blast] at @s run particle minecraft:dust 1 0 0 0.8 ~ ~ ~ 0.0001 0.0001 0.0001 5 1
execute as @a[scores={mando_rc=1..,mando_cooldown=0,ammo=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{nuke:1b}}}] at @s run function fireball_snowball:nuke_blast_summon
execute as @e[tag=nuke_blast] at @s run function fireball_snowball:nuke_blast
execute as @e[tag=nuke_blast] at @s run particle minecraft:dust 0 0 1 1 ~ ~ ~ 0.8 0.8 0.8 1 25
execute as @a[scores={mando_cooldown=2..}] at @s run title @a actionbar [{"text":"Cooldown: ","color":"aqua"},{"score":{"name":"*","objective":"mando_cooldown"},"color":"yellow"},{"text":"  Ammo left: ","color":"aqua"},{"score":{"name":"*","objective":"ammo"},"color":"yellow"}]
execute as @a[scores={ammo=..0,mando_rc=1..}] at @s run particle minecraft:barrier ^ ^1.8 ^1.5 0.0001 0.0001 0.0001 1 1

scoreboard players remove @a[scores={mando_rc=1..,ammo=1..}] ammo 1
scoreboard players set @a[scores={mando_rc=1..}] mando_rc 0
scoreboard players remove @a[scores={mando_cooldown=1..}] mando_cooldown 1

