extends Node

var levels = [
	{
		"name":"Level 1: City Sites",
		"instructions":"Break all the Bricks",
		"multiplier":1.0,
		"timer":120,
		"layout":[
			 [00, 00, 00, 00, 00, 00, 80, 80, 80, 00]
			,[00, 00, 00, 00, 00, 00, 70, 70, 70, 00, 00, 00, 00, 00]
			,[60, 60, 60, 00, 00, 00, 60, 60, 60, 00, 00, 60, 60, 60]
			,[50, 50, 50, 00, 00, 00, 50, 50, 50, 00, 00, 50, 50, 50]
			,[40, 40, 40, 40, 40, 40, 40, 40, 40, 00, 00, 40, 40, 40]
			,[30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30]
			
		],
		"music":load("res://Assets/City Music.mp3"),
		"background":load("res://Assets/City Background.png"),
		"brick_shape":load("res://Brick/Brick.tscn")
	}
	,{
		"name":"Level 2: Extreme Eruption",
		"instructions":"Escape before time runs out!",
		"multiplier":1.2,
		"timer":100,
		"layout":[
			 [00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
			,[00, 00, 00, 00, 00 ,80, 80, 00, 00, 00, 00, 00]
			,[00, 00, 00, 00, 70, 70, 70, 70, 00, 00, 00, 00]
			,[00, 00, 00, 60, 60, 60, 60, 60, 60, 00, 00, 00]
			,[00, 00, 50, 50, 50, 50, 50, 50, 50, 50, 00, 00]
			,[00, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 00]
			,[30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30]
		],
		"music":load("res://Assets/Volcano Music.mp3"),
		"background":load("res://Assets/Volcano Background.png"),
		"brick_shape":load("res://Brick/Brick2.tscn")
	}
	,{
		"name":"Final Level: Snowy Serenade",
		"instructions":"Enjoy this serene night",
		"multiplier":2.0,
		"timer":120,
		"layout":[
			 [000, 000, 000, 000, 000, 000, 000]
			,[000, 100, 000, 100, 000, 100, 000]
			,[000, 000, 100, 100, 100, 000, 000]
			,[000, 100, 100, 100, 100, 100, 000]
			,[000, 000, 100, 100, 100, 000, 000]
			,[000, 100, 000, 100, 000, 100, 000]
			,[000, 000, 000, 000, 000, 000, 000]
		],
		"music":load("res://Assets/Snow Music.mp3"),
		"background":load("res://Assets/Snow Background.png"),
		"brick_shape":load("res://Brick/Brick3.tscn")
	}
]
