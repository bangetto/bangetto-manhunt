tellraw @a {"text":"bangetto's Manhunt Datapack has loaded!"}
scoreboard objectives add player dummy
scoreboard objectives add bmh_config dummy
execute unless score $bmh_first bmh_config matches 1 run function bmh:firstlaunch
function bmh:menu/playerchecker

# Loop
schedule function compass:loop/locate 1
schedule function compass:loop-core 1