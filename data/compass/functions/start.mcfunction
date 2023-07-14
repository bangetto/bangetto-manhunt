execute store result score .countdown Time run scoreboard players get $bmh_countdown bmh_config
execute store result bossbar countdown max run scoreboard players get $bmh_countdown bmh_config
execute store result score @a[team=Runner] RemainingLives run scoreboard players get .lives manhunt-options
bossbar set countdown players @a
bossbar set countdown visible true
tellraw @a {"text":"Runners can now start!","color":"red","bold":true}
function compass:loop/countdown