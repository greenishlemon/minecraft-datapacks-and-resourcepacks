# tell everyone you are about to commit murder
tellraw @a ["[",{"text":"GAL","bold":true,"color":"green"},"] ",{"text":"All loose items will be killed in 30 seconds!","color":"gold"}]

# schedule all item's public execution in 30 secs
schedule function gal_i:kill_items 30s
