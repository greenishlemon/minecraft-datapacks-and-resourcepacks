# tell everyone you are about to commit murder
tellraw @a ["[",{"bold":true,"color":"green","hover_event":{"action":"show_text","value":[{"text":"greenishlemon's anti-lag"}]},"text":"GAL"},"] ",{"color":"gold","text":"All loose items will be killed in 30 seconds!"}]

# schedule all item's public execution in 30 secs
schedule function gal_i:kill_items 30s
