scoreboard objectives add reset-spawn trigger
scoreboard players enable @a reset-spawn
execute as @a[scores={reset-spawn=1}] in minecraft:overworld run spawnpoint @s 0 -59 0
scoreboard players reset @a[scores={reset-spawn=1..}] reset-spawn