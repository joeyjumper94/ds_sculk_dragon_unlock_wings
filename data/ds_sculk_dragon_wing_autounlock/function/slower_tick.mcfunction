#if this check passes, it means the scoreboard objective hasn't been set, so we set it.
execute unless score ds_sculk_dragon ds_sculk_dragon_wing_autounlock matches 0.. run scoreboard players set ds_sculk_dragon ds_sculk_dragon_wing_autounlock 1
#see config.mcfunction for configuration

#then we can update everyone based on the value of ds_sculk_dragon ds_sculk_dragon_wing_autounlock
scoreboard players operation @a ds_sculk_dragon_wing_autounlock = ds_sculk_dragon ds_sculk_dragon_wing_autounlock

#if you run /scoreboard players set ds_sculk_dragon ds_sculk_dragon_wing_autounlock 0, it will disable sculk dragon wings that didn't use a flight grant until the datapacks are reloaded or the server restarts/world reloads
