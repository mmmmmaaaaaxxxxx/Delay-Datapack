#We do a little ctrl + C, ctrl + V. Not sure how this works - good luck! ;)

data merge storage temp:local {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage temp:local in set from entity @s UUID

execute store result score 0= dly.math store result score 1= dly.math run data get storage temp:local in[0]
execute store result storage temp:local 0 int 1 run scoreboard players operation 0= dly.math %= #256 dly.constants
execute store result score 2= dly.math run scoreboard players operation 1= dly.math /= #256 dly.constants
execute store result storage temp:local 1 int 1 run scoreboard players operation 1= dly.math %= #256 dly.constants
execute store result score 3= dly.math run scoreboard players operation 2= dly.math /= #256 dly.constants
execute store result storage temp:local 2 int 1 run scoreboard players operation 2= dly.math %= #256 dly.constants
execute store result storage temp:local 3 int 1 run scoreboard players operation 3= dly.math /= #256 dly.constants

execute store result score 0= dly.math store result score 1= dly.math run data get storage temp:local in[1]
execute store result storage temp:local 4 int 1 run scoreboard players operation 0= dly.math %= #256 dly.constants
execute store result score 2= dly.math run scoreboard players operation 1= dly.math /= #256 dly.constants
execute store result storage temp:local 5 int 1 run scoreboard players operation 1= dly.math %= #256 dly.constants
execute store result score 3= dly.math run scoreboard players operation 2= dly.math /= #256 dly.constants
execute store result storage temp:local 6 int 1 run scoreboard players operation 2= dly.math %= #256 dly.constants
execute store result storage temp:local 7 int 1 run scoreboard players operation 3= dly.math /= #256 dly.constants

execute store result score 0= dly.math store result score 1= dly.math run data get storage temp:local in[2]
execute store result storage temp:local 8 int 1 run scoreboard players operation 0= dly.math %= #256 dly.constants
execute store result score 2= dly.math run scoreboard players operation 1= dly.math /= #256 dly.constants
execute store result storage temp:local 9 int 1 run scoreboard players operation 1= dly.math %= #256 dly.constants
execute store result score 3= dly.math run scoreboard players operation 2= dly.math /= #256 dly.constants
execute store result storage temp:local a int 1 run scoreboard players operation 2= dly.math %= #256 dly.constants
execute store result storage temp:local b int 1 run scoreboard players operation 3= dly.math /= #256 dly.constants

execute store result score 0= dly.math store result score 1= dly.math run data get storage temp:local in[3]
execute store result storage temp:local c int 1 run scoreboard players operation 0= dly.math %= #256 dly.constants
execute store result score 2= dly.math run scoreboard players operation 1= dly.math /= #256 dly.constants
execute store result storage temp:local d int 1 run scoreboard players operation 1= dly.math %= #256 dly.constants
execute store result score 3= dly.math run scoreboard players operation 2= dly.math /= #256 dly.constants
execute store result storage temp:local e int 1 run scoreboard players operation 2= dly.math %= #256 dly.constants
execute store result storage temp:local f int 1 run scoreboard players operation 3= dly.math /= #256 dly.constants

function dly:math/hex_get with storage temp:local
function dly:math/hex_concat with storage temp:local
