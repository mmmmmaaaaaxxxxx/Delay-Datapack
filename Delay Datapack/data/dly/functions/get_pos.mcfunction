tp @s ~ ~ ~ ~ ~
data modify storage temp:local indices set from entity @s Rotation
data modify storage temp:local new_command.rotation0 set from storage temp:local indices[0]
data modify storage temp:local new_command.rotation1 set from storage temp:local indices[1]
data modify storage temp:local indices set from entity @s Pos
data modify storage temp:local new_command.pos0 set from storage temp:local indices[0]
data modify storage temp:local new_command.pos1 set from storage temp:local indices[1]
data modify storage temp:local new_command.pos2 set from storage temp:local indices[2]
kill