execute store result score @s flamethrowerDamageFAS run data get entity @s equipment.offhand.components.minecraft:damage
scoreboard players add @s flamethrowerDamageFAS 1

summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["tempItem"],equipment:{offhand:{id:"minecraft:flint_and_steel",count:1}}}

execute store result entity @e[tag=tempItem,limit=1] equipment.offhand.components.minecraft:damage int 1 run scoreboard players get @s flamethrowerDamageFAS
item replace entity @s weapon.offhand from entity @e[tag=tempItem,limit=1] weapon.offhand

kill @e[tag=tempItem]