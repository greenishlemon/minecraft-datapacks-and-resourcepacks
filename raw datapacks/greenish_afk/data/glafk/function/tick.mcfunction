scoreboard objectives add afk trigger
scoreboard objectives add afkToggle dummy

scoreboard players add @a[scores={afk=1..}] afkToggle 1

execute as @a[scores={afkToggle=1, afk=1}, team=!afk] run tellraw @a {"text":"","extra":[{"selector":"@s",color:"green"},{"text":" is now ",},{text:"AFK",color:"yellow"},{text:"!"}]}
execute as @a[scores={afkToggle=1, afk=1}, team=!afk] run team join afk

execute as @a[scores={afkToggle=2, afk=1}, team=afk] run tellraw @a {"text":"","extra":[{"selector":"@s",color:"green"},{"text":" is ",},{text:"back",color:"yellow"},{text:"!"}]}
execute as @a[scores={afkToggle=2, afk=1}, team=afk] run team leave @s
scoreboard players reset @a[scores={afkToggle=2, afk=1}] afkToggle

scoreboard players reset @a[scores={afk=1..}] afk
scoreboard players enable @a afk
