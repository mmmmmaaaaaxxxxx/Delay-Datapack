$data modify storage temp:local new_command set value {entity_exists: 0b, function: "$(function)", dimension: "minecraft:overworld"}
#hex generate sets entity_exists to 1 if it succeeds, the logic is that there is no entity in the execution context unless "if entity @s" is true
execute if entity @s run function dly:math/hex_generate
execute summon marker run function dly:get_pos
execute store result storage temp:local new_command.when_to_run int 1 run scoreboard players operation delay dly.api += globaltime delaycmd
#This is the only way I could find to get the dimension context without hardcoding. it hopes that someone is in that dimension
data modify storage temp:local new_command.dimension set from entity @p Dimension

scoreboard players add queue_length delaycmd 1

#now that I have the command object, I need to put it at the correct place in the queue
#when this loop stops, i should be the index where the new command goes in the queue
scoreboard players set keep_going dly.math 1
execute store result score i-1 dly.math run scoreboard players operation i dly.math = queue_length delaycmd 
execute store result storage temp:local iteration.next int 1 run scoreboard players remove i-1 dly.math 1
execute if data storage dly:queue command_queue[0] run function dly:queue_placement/searchloop with storage temp:local iteration
function dly:queue_placement/insert with storage temp:local iteration
#incase this is the soonest command
execute store result score next_cmd delaycmd run data get storage dly:queue command_queue[0].when_to_run