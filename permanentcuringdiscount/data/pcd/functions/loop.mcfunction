# Add tag after 5 sec
tag @e[tag=!pcd,scores={pcd=101},type=minecraft:villager,nbt={Gossips:[{Type:"major_positive"},{Type:"minor_positive"}]}] add pcd
execute as @e[tag=!pcd,type=minecraft:villager,nbt={Gossips:[{Type:"major_positive"},{Type:"minor_positive"}]}] unless score @s pcd matches 0.. run scoreboard players set @s pcd 0
execute as @e[type=minecraft:villager,scores={pcd=..100}] run scoreboard players add @s pcd 1

execute if score #timer pcd matches 0 run scoreboard players set #timer pcd 20
execute if score #timer pcd matches 1.. run scoreboard players remove #timer pcd 1
execute if score #timer pcd matches 1 as @e[tag=pcd] at @s run function pcd:replace
