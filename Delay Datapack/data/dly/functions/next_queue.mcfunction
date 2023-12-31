#Do the command with the correct context
$execute if score #00 dly.constants matches $(location_exists)$(entity_exists) run $(function)
$execute if score #01 dly.constants matches $(location_exists)$(entity_exists) as $(entity) run $(function)
$execute if score #10 dly.constants matches $(location_exists)$(entity_exists) positioned $(pos0) $(pos1) $(pos2) rotated $(rotation0) $(rotation1) run $(function)
$execute if score #11 dly.constants matches $(location_exists)$(entity_exists) as $(entity) positioned $(pos0) $(pos1) $(pos2) rotated $(rotation0) $(rotation1) run $(function)

scoreboard players remove queue_length delaycmd 1
#since i get the next command's run date as a score only when I have to instead of every tick, I can save resources by only checking score equivalencies
data remove storage dly:queue command_queue[0]
execute store result score next_cmd delaycmd run data get storage dly:queue command_queue[0].when_to_run
execute if score globaltime delaycmd >= next_cmd delaycmd run function dly:next_queue with storage dly:queue command_queue[0]
