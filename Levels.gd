extends Node

var levels = [
	{
		"name":"Level 1: City Sites",
		"instructions":"Break all the Bricks",
		"multiplier":1.0,
		"timer":120,
		"layout":[
			[100,100,100,100,100,100,100,100]
			,[90,90,90,90,90,90,90,90]
			,[80,80,80,80,80,80,80,80]
			,[70,70,70,70,70,70,70,70]
			,[60,60,60,60,60,60,60,60]
			,[50,50,50,50,50,50,50,50]
			,[40,40,40,40,40,40,40,40]
			,[30,30,30,30,30,30,30,30]
		],
		"music":load("res://Assets/City Music.mp3"),
		"background":load("res://Assets/City Background.png"),
		"brick_shape":load("res://Brick/Brick.tscn")
	}
	,{
		"name":"Level 2: Extreme Eruption ",
		"instructions":"Keep on brickin'",
		"multiplier":1.2,
		"timer":100,
		"layout":[
			[0,100,100,100,100,100,100,0]
			,[100,90,90,90,90,90,90,100]
			,[100,80,80,100,80,100,80,100]
			,[100,70,70,70,70,70,70,100]
			,[100,60,100,60,60,100,60,100]
			,[100,50,50,100,100,50,50,100]
			,[100,40,40,40,40,40,40,100]
			,[0,100,100,100,100,100,100,0]
		],
		"music":load("res://Assets/Volcano Music.mp3"),
		"background":load("res://Assets/Volcano Background.png"),
		"brick_shape":load("res://Brick/Brick2.tscn")
	}
	,{
		"name":"Final Level: Snowy Serenade",
		"instructions":"Break them as quickly as you can!",
		"multiplier":2.0,
		"timer":120,
		"layout":[
			[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
			,[100,100,100,100,100,100,100,100]
		],
		"music":load("res://Assets/Snow Music.mp3"),
		"background":load("res://Assets/Snow Background.png"),
		"brick_shape":load("res://Brick/Brick3.tscn")
	}
]
