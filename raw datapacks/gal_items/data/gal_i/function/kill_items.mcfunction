# take em out
kill @e[type=item]

# tell everyone about your crimes
tellraw @a ["[",{"bold":true,"color":"green","hover_event":{"action":"show_text","value":[{"text":"greenishlemon's anti-lag"}]},"text":"GAL"},"] ",{"color":"aqua","text":"All loose items have been killed!"}]

# shedule warning again
schedule function gal_i:warning_message 390s
