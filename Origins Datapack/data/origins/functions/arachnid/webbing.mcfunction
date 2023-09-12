scoreboard players add @e[tag=web] arachnid_cd 1
execute as @e[tag=web,scores={arachnid_cd=..89}] at @s unless block ~ ~ ~ cobweb run kill @e[type=item,nbt={Item:{id:"minecraft:string"}},limit=1,sort=nearest]
execute as @e[tag=web,scores={arachnid_cd=2..}] at @s unless block ~ ~ ~ cobweb run scoreboard players set @s arachnid_cd 80
execute at @e[tag=web,scores={arachnid_cd=1}] run fill ~ ~ ~ ~ ~ ~ cobweb destroy
execute at @e[tag=web,scores={arachnid_cd=90}] run particle block cobweb ~ ~0.25 ~ 0.4 0.4 0.4 0.1 50
execute at @e[tag=web,scores={arachnid_cd=90}] run fill ~ ~ ~ ~ ~ ~ air replace cobweb
execute at @e[tag=web,scores={arachnid_cd=90}] run playsound entity.spider.death player @a ~ ~ ~ 1 1
kill @e[tag=web,scores={arachnid_cd=90..}]