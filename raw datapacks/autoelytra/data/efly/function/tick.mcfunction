scoreboard objectives add fly trigger
scoreboard players enable @a fly
execute as @a[scores={fly=1},name=carrots5] run item replace entity @s weapon.offhand with firework_rocket[fireworks={flight_duration:3}]
execute as @a[scores={fly=1},name=!carrots5] run item replace entity @s weapon.offhand with firework_rocket
execute as @a[scores={fly=1}] run item replace entity @s armor.chest with elytra
scoreboard players reset @a[scores={fly=1..}] fly