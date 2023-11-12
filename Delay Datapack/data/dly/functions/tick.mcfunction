#if the time matches the run date of the object with the nearest run date run the command

scoreboard players add globaltime delaycmd 1
execute if score globaltime delaycmd >= next_cmd delaycmd run function dly:next_queue with storage dly:queue command_queue[0]