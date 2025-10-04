execute store result score @s flamethrowerDamage run data get entity @s SelectedItem.components.minecraft:damage
scoreboard players add @s flamethrowerDamage 1

summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["tempItem"],equipment:{mainhand:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{custom_model_data:{strings:["flamethrower"]},custom_name:{"text":"Aerosol Can","italic":false}}}}}

execute store result entity @e[tag=tempItem,limit=1] equipment.mainhand.components.minecraft:damage int 1 run scoreboard players get @s flamethrowerDamage
item replace entity @s weapon.mainhand from entity @e[tag=tempItem,limit=1] weapon.mainhand

kill @e[tag=tempItem]