# make the /trigger
scoreboard objectives add cancel-gamerule-reset trigger
# we only want to execute and reset script here, not enable like usual (actual /trigger command enabled in warn.mcfunction)

# run reset when activated
execute as @a[scores={cancel-gamerule-reset=1}] run schedule clear gamerule_reset:reset
execute as @a[scores={cancel-gamerule-reset=1}] run tellraw @a ["Gamerule reset has been ",{"text":"cancelled","color":"red"},"."]
execute as @a[scores={cancel-gamerule-reset=1}] run function gamerule_reset:restart_scripts

# normally we reset to re-enable the /trigger command, but here we don't want to
