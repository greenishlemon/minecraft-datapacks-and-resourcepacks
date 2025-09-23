scoreboard objectives add quick-tp trigger
scoreboard players enable @a quick-tp
execute as @a[scores={quick-tp=1}] in minecraft:overworld run tp @s -49 -60 162
scoreboard players reset @a[scores={quick-tp=1..}] quick-tp