scoreboard players set @s DeathCoordinatesJustDied 0

execute store result score @s DeathCoordinatesX run data get entity @s Pos.[0]
execute store result score @s DeathCoordinatesY run data get entity @s Pos.[1]
execute store result score @s DeathCoordinatesZ run data get entity @s Pos.[2]

tellraw @s ["Death Position: [",{"score": {"objective": "DeathCoordinatesX","name": "@s"}},", ",{"score": {"objective": "DeathCoordinatesY","name": "@s"}},", ",{"score": {"objective": "DeathCoordinatesZ","name": "@s"}},"]"]

scoreboard players reset * DeathCoordinatesX
scoreboard players reset * DeathCoordinatesY
scoreboard players reset * DeathCoordinatesZ