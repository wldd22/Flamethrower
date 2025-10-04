particle flame ~ ~ ~ 0.25 0.25 0.25 0 5
playsound block.fire.ambient player @a ~ ~ ~
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire keep
execute as @e[distance=..2] run damage @s 3 minecraft:in_fire
