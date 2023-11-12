#I just wrote this and even I barely understand how it works
#I guess this block stops the loop if there is no next entry or if the current one is the highest

$execute store result score keep_going dly.math run function dly:queue_placement/valcheck with storage dly:queue command_queue[$(next)]
execute if score keep_going dly.math matches 0 run return 0
scoreboard players remove i dly.math 1
execute if score i dly.math matches 0 run return 0
execute store result storage temp:local iteration.next int 1 run scoreboard players remove i-1 dly.math 1
function dly:queue_placement/searchloop with storage temp:local iteration
#maybe can make more efficient in future with append and checking for successes in reading nonexistent data?