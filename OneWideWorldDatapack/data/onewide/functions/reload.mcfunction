#This onewide datapack was created by shreyans
#email- spammablemail100@gmail.com

###initialize command

tellraw @a {"text":"\n\n\nThe One Wide World Has Been Installed","bold":false,"italic":false,"underlined":false,"color":"yellow","hoverEvent":{"action":"show_text","value":["",{"text":"Runs a onewide on any world!\nMust be in creative mode to setup/setup","color":"green"}]}}
tellraw @a {"text":"About the datapack","bold":true,"italic":false,"underlined":false,"color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"Makes the current world one wide north and south,, running through 0,0 \nMust be in creative mode to start","color":"green"}]}}
tellraw @a[gamemode=creative] {"text":"Uninstall","color":"red","clickEvent":{"action":"run_command","value":"/function onewide:uninstall"}}
tellraw @a[gamemode=creative] [{"text":"\nWhich mode would you like to play in:\n ","bold":false,"italic":false,"underlined":false,"color":"green"},{"text":"   One block wide world (You cannot reverse this)\n","color":"red","clickEvent":{"action":"run_command","value":"/function onewide:setup/setupone"}},{"text":"   Both modes\n","color":"gold","clickEvent":{"action":"run_command","value":"/function onewide:setup/setupboth"}},{"text":"   Limited to one axis only","color":"green","clickEvent":{"action":"run_command","value":"/function onewide:setup/setuptwo"}}]

function onewide:fill/filltwo