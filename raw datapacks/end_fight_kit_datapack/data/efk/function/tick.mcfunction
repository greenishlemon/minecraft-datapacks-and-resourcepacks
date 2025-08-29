# END FIGHT PRACTICE KIT DATAPACK
# by yours truly: greenishlemon :)

#================================================================

# welcome message
execute as @a[tag=!welcomed] run tellraw @s [{"text":"=========================","color":"green"},"\n\n",{"text":"END FIGHT PRACTICE KIT DATAPACK","color":"yellow"},"\n",{"text":"by greenishlemon :)","italic":true,"color":"aqua"},"\n\n",{"text":"=========================","color":"green"},"\n\n",{"text":"Use [","color":"dark_purple"},{"text":"/trigger chest_and_bed_kit","underlined":true,"color":"light_purple","click_event":{"action":"suggest_command","command":"/trigger chest_and_bed_kit"},"hover_event":{"action":"show_text","value":"Click to run the \"chest_and_bed_kit\" command."}},{"text":"] to get a bed and a chest containing items to keep in the overworld.\n\nUse [","color":"dark_purple"},{"text":"/trigger end_fight_kit","underlined":true,"color":"light_purple","click_event":{"action":"suggest_command","command":"/trigger end_fight_kit"},"hover_event":{"action":"show_text","value":"Click to run the \"end_fight_kit\" command."}},{"text":"] to get a fight kit to defeat the Ender Dragon.\n\nUse [","color":"dark_purple"},{"text":"/trigger tp_to_me","underlined":true,"color":"light_purple","click_event":{"action":"suggest_command","command":"/trigger tp_to_me"},"hover_event":{"action":"show_text","value":"Click to run the \"tp_to_me\" command."}},{"text":"] to teleport all other players to you (for multiplayer use).","color":"dark_purple"},"\n\n",{"text":"Have fun!","color":"aqua"},"\n\n",{"text":"=========================","color":"green"}]
execute as @a[tag=!welcomed] run tag @s add welcomed

#================================================================

scoreboard objectives add tp_to_me trigger
scoreboard players enable @a tp_to_me
#giving the player their stuff
execute as @a[scores={tp_to_me=1}] run tp @a @s
#reset code
scoreboard players reset @a[scores={tp_to_me=1..}] tp_to_me

#================================================================

# the chest and the bed for the portal room
#setup
scoreboard objectives add chest_and_bed_kit trigger
scoreboard players enable @a chest_and_bed_kit
#giving the player their stuff
execute as @a[scores={chest_and_bed_kit=1}] run give @s minecraft:green_bed
execute as @a[scores={chest_and_bed_kit=1}] run give @s chest[container=[{slot:11,item:{id:ender_pearl,count:16}},{slot:13,item:{id:carved_pumpkin,count:64}},{slot:15,item:{id:ender_eye,count:12}}],custom_name=[{"text":"END FIGHT KIT","italic":false,"color":"green"}],lore=[[{"text":"place this in the end portal room  :)","italic":false,"color":"dark_green"}]]]
#reset code
scoreboard players reset @a[scores={chest_and_bed_kit=1..}] chest_and_bed_kit

#================================================================

# the actual kit for the player
#setup
scoreboard objectives add end_fight_kit trigger
scoreboard players enable @a end_fight_kit
#giving the player their stuff
#hotbar and offhand
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.0 with diamond_sword[enchantments={looting:3,sharpness:5}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.1 with diamond_pickaxe[enchantments={efficiency:5}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.2 with diamond_axe[enchantments={efficiency:5,sharpness:5}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.3 with bow[enchantments={power:5}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.4 with stone 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.5 with ender_pearl 16
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.6 with golden_carrot 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.7 with arrow 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s hotbar.8 with totem_of_undying
execute as @a[scores={end_fight_kit=1}] run item replace entity @s weapon.offhand with shield[enchantments={unbreaking:3}]
#armor slots
execute as @a[scores={end_fight_kit=1}] run item replace entity @s armor.head with carved_pumpkin
execute as @a[scores={end_fight_kit=1}] run item replace entity @s armor.chest with diamond_chestplate[enchantments={protection:4,unbreaking:3}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s armor.legs with diamond_leggings[enchantments={protection:4,unbreaking:3}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s armor.feet with diamond_boots[enchantments={feather_falling:4,protection:4,unbreaking:3}]
#inventory
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.0 with firework_rocket 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.1 with firework_rocket 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.2 with arrow 64
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.3 with enchanted_book[stored_enchantments={mending:1,unbreaking:3}]
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.4 with anvil
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.5 with crafting_table
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.6 with oak_trapdoor
execute as @a[scores={end_fight_kit=1}] run item replace entity @s inventory.26 with stone 64
#reset code
scoreboard players reset @a[scores={end_fight_kit=1..}] end_fight_kit



# execute as @a[scores={end_fight_kit=1}] run item replace entity @s 