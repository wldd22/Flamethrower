execute as @a[scores={flamethrowerUse=1..}] if entity @s[nbt={equipment:{offhand:{id:"minecraft:flint_and_steel"}}}] if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":{strings:["flamethrower"]}}}}] at @s run function flamethrower:use
execute as @a[scores={flamethrowerUse=1..}] run scoreboard players set @s flamethrowerUse 0
execute at @e[tag=flame] run function flamethrower:flame
