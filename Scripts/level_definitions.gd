extends Node

var current_level = 5

var level_1 = [
	[1,1,1,1,1]
]

var level_2 = [
	[1,1,1,1,1],
	[2,1,1,1,2],
	[1,1,2,1,1]
]

var level_3 = [
	[2,1,1,1,1,2],
	[3,1,1,1,2,3],
	[0,2,1,2,1,2]
]

var level_4 = [
	[1,1,0,0,1,1],
	[2,1,0,0,1,2],
	[3,1,0,0,1,3],
	[3,1,0,0,1,3],
	[1,1,0,0,1,1],
	[1,1,0,0,1,1]
]

var level_5 = [
	[5,5,5,5,5,5,5,5],
	[5,5,4,4,4,5,5,5],
	[0,0,5,5,5,3,0,0],
	[2,2,2,4,4,4,5,5],
	[1,1,1,1,1,1,1,1]
]

var levels = [level_1, level_2, level_3, level_4, level_5]

func get_current_level():
	#print(levels[0])
	return levels[current_level - 1]
