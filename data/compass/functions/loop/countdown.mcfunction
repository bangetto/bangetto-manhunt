execute store result bossbar countdown value run scoreboard players remove .countdown Time 1

execute if score .countdown Time matches 5.. run effect give @a[team=Hunter] blindness 2 0 true
execute if score .countdown Time matches 5.. run effect give @a[team=Hunter] slowness 2 255 true
execute if score .countdown Time matches 5.. run effect give @a[team=Hunter] mining_fatigue 2 255 true
execute if score .countdown Time matches 5.. run effect give @a[team=Hunter] weakness 2 255 true

execute unless score .countdown Time matches 1.. run bossbar set countdown visible false
execute unless score .countdown Time matches 1.. run tellraw @a {"text":"Hunters can now start!","color":"blue","bold":true}
execute unless score .countdown Time matches 1.. run function compass:load/give-compass
execute if score .countdown Time matches 1.. run schedule function compass:loop/countdown 1