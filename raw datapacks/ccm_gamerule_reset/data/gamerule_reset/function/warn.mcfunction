schedule function gamerule_reset:reset 30s
scoreboard players enable @a cancel-gamerule-reset
tellraw @a ["All gamerules will be reset in ",{"text":"30 seconds","color":"yellow"},".  Click ",{"text":"[here]","color":"aqua","click_event":{"action":"run_command","command":"/trigger cancel-gamerule-reset"},"hover_event":{"action":"show_text","value":"click to cancel the gamerule reset"}}," to cancel."]
