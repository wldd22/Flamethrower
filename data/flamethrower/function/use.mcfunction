execute positioned 0.0 0 0.0 run summon marker ^ ^ ^1 {Tags:["direction"]}
execute positioned ~ ~1.25 ~ run summon snowball ^ ^ ^2 {Tags:["flameStart","flame"],Item:{id:"minecraft:fire_charge",count:1}}
execute as @e[type=minecraft:snowball,tag=flameStart] run data modify entity @s Motion set from entity @e[type=minecraft:marker,tag=direction,limit=1] Pos
tag @e[tag=flameStart] remove flameStart
kill @e[tag=direction]

execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:unbreakable":{}}}}] run function flamethrower:damage
execute unless entity @s[nbt={equipment:{offhand:{components:{"minecraft:unbreakable":{}}}}}] run function flamethrower:damage_fas

# Break item when durability = 0
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":100}}}] run playsound entity.item.break player @a ~ ~ ~
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":100}}}] run item replace entity @s weapon.mainhand with air
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:damage":64}}}}] run playsound entity.item.break player @a ~ ~ ~
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:damage":64}}}}] run item replace entity @s weapon.offhand with air
