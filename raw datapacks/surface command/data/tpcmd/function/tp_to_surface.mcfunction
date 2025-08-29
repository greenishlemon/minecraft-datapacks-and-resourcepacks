scoreboard objectives add surface trigger
scoreboard players enable @a surface
execute as @a[scores={surface=1}] at @s positioned over world_surface run tp @s ~ ~ ~
scoreboard players reset @a[scores={surface=1..}] surface