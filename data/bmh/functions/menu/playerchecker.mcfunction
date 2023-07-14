tellraw @a[tag=debug] [{"text": "[Debug] ","color": "yellow","bold": true},{"text": "PlayerChecker Start","bold": false,"color": "white"}]
execute if entity @a run scoreboard players set $bmh player 1
execute if score $bmh player matches 1 run execute as @a run function bmh:menu/main
execute if score $bmh player matches 0 run schedule function bmh:menu/playerchecker 4s
tellraw @a[tag=debug] [{"text": "[Debug] ","color": "yellow","bold": true},{"text": "PlayerChecker End","bold": false,"color": "white"}]