#this is for delays that dont have a position context that matters. You will probably run at @s with this. This is faster to run than delay.mcfunction
$data modify storage temp:local new_command set value {entity_exists: 0b, location_exists: 0b, function: "$(function)"}
execute if entity @s run function dly:math/hex_generate
execute store result storage temp:local new_command.when_to_run int 1 run scoreboard players operation delay dly.api += globaltime delaycmd

scoreboard players set keep_going dly.math 1
execute store result score i-1 dly.math run scoreboard players operation i dly.math = queue_length delaycmd 
execute store result storage temp:local iteration.next int 1 run scoreboard players remove i-1 dly.math 1
execute if data storage dly:queue command_queue[0] run function dly:queue_placement/searchloop with storage temp:local iteration
function dly:queue_placement/insert with storage temp:local iteration

execute store result score next_cmd delaycmd run data get storage dly:queue command_queue[0].when_to_run
scoreboard players add queue_length delaycmd 1