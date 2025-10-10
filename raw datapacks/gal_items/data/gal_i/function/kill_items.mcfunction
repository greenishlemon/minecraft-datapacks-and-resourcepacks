# take em out
kill @e[type=item]

# tell everyone about your crimes
tellraw @a ["[",{"text":"GAL","bold":true,"color":"green"},"] ",{"text":"All loose items have been killed! ","color":"aqua"}]

# shedule warning again
schedule function gal_i:warning_message 390s
