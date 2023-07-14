tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   -  ","color": "gold","bold": true},{"translate":"bmh.name","fallback": "bangetto's Manhunt","color": "yellow","bold": true,"hoverEvent": {"action": "show_text","value": [{"text": "Manhunt","bold": true,"color": "yellow"},{"text": " is a game where the ","color": "white"},{"text": "Runner","color": "green"},{"text": " tries to beat the game while ","color": "white"},{"text": "Hunters","color": "red"},{"text": " try to hunt him down.\n\nThis is a ","color": "white"},{"text": "Very Customizable","bold": true},{"text": " version of that!","color": "white"}]},"clickEvent":{"action":"run_command","value":"/function bmh:menu/main"}},{"text": "  -\n\n\n","color": "gold","bold": true}]

#Debug
execute if score $bmh_debug bmh_config matches 0 run tellraw @s [{"text": ">  "},{"text": "Debug:","color": "gold","hoverEvent": {"action": "show_text","value": {"translate":"bmh.config.debug.tooltip","fallback": "This option is for devepolovers!!!","color": "red"}}},{"text": " [ ","color": "dark_red"},{"translate": "options.off","fallback":"OFF","color": "red","bold": true,"clickEvent": { "action": "run_command","value": "/function bmh:menu/configconfigdebug/on"}},{"text": " ]\n","color": "dark_red"}]
execute if score $bmh_debug bmh_config matches 1 run tellraw @s [{"text": ">  "},{"text": "Debug:","color": "gold","hoverEvent": {"action": "show_text","value": {"translate":"bmh.config.debug.tooltip","fallback": "This option is for devepolovers!!!","color": "red"}}},{"text": " [ ","color": "dark_green"},{"translate":"options.on","fallback": "ON","color": "green","bold": true,"clickEvent": { "action": "run_command","value": "/function bmh:menu/configdebug/off"}},{"text": " ]\n","color": "dark_green"}]

#Runners.
tellraw @s [{"text": "\n>  "},{"translate":"bmh.config.runner","fallback": "Runners:","color": "gold"},{"text": " [ ","color": "dark_aqua"},{"translate":"mco.template.button.select","fallback": "Select","color": "aqua","bold": true,"clickEvent": { "action": "run_command","value": "/function bmh:menu/configrunner/main"}},{"text": " ]\n","color": "dark_aqua"}]

#Hunters
tellraw @s [{"text": ">  "},{"translate":"bmh.config.hunter","fallback": "Hunters:","color": "gold"},{"text": " [ ","color": "dark_aqua"},{"translate":"mco.template.button.select","fallback": "Select","color": "aqua","bold": true,"clickEvent": { "action": "run_command","value": "/function bmh:menu/confighunter/main"}},{"text": " ]\n\n","color": "dark_aqua"}]

#Countdown
tellraw @s [{"text": ">  "},{"text": "Countdown: ","color": "gold","hoverEvent": {"action": "show_text","value": {"text":"Set the number of ticks (1/20th of a second) to wait before hunters can begin."}}},{"text": "[ ","color": "dark_gray"},{"score":{"name":"$bmh_countdown","objective":"bmh_config"},"color":"gray","underlined":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set $bmh_countdown bmh_config 200"},"bold":false,"hoverEvent": {"action": "show_text","value": {"text": "1 tick is 1/20 of a second"}}},{"text":" ticks ","color":"gray","hoverEvent": {"action": "show_text","value": {"text": "1 tick is 1/20 of a second"}}},{"text":"]\n","color":"dark_gray"}]

#Runners lives


#Start
tellraw @s [{"text": "\n     >","bold": true,"color": "dark_purple"},{"text": "  Start  ","color": "light_purple","clickEvent": { "action": "run_command","value": "/function compass:start"},"hoverEvent": {"action": "show_text","value": "Starts the game"}},{"text": "<\n\n","color": "dark_purple"}]