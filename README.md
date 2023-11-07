# Delay-Datapack
A library for Minecraft datapacks that adds a command similar to /schedule that maintains execution context

To use, set the time in the future you want your command to run with "/scoreboard players set delay dly.api <time in ticks>" then run "function dly:api/delay {function:"<your command>"}
