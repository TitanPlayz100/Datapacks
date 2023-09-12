#This uhc datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command

tellraw @a {"text":"\n\n\nThe UHC Datapack Has Been Installed","bold":false,"italic":false,"underlined":false,"color":"yellow","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a uhc on any world!\nMust be in creative mode to setup","color":"green"}]}}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a uhc on any world!\nMust be in creative mode to start","color":"green"}]}}
tellraw @a[gamemode=creative] {"text":"Uninstall all traces of UHC","color":"red","clickEvent":{"action":"run_command","value":"/function uhc:uninstall"}}
tellraw @a[gamemode=creative] [{"text":"\nWould you like to setup a new UHC:","bold":true,"italic":false,"underlined":false,"color":"green"},{"text":"   YES","color":"green","clickEvent":{"action":"run_command","value":"/function uhc:setup"}},{"text":"   NO","color":"red","clickEvent":{"action":"run_command","value":"/function uhc:clearchat"}}]

