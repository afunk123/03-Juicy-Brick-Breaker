extends Node2D

export var margin = Vector2(50,190)
export var index = Vector2(70,65)

export var margin2 = Vector2(125,110)
export var index2 = Vector2(70, 65)

export var margin3 = Vector2(205,60)
export var index3 = Vector2(100, 75)


func _ready():
	if Global.level < 0 or Global.level >= len(Levels.levels):
		Global.end_game(true)
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		var level = Levels.levels[Global.level]
		var layout = level["layout"]
		var Brick_Container = get_node_or_null("/root/Game/Brick_Container")
		Global.time = level["timer"]
		if Brick_Container != null:
			for rows in range(len(layout)):
				for cols in range(len(layout[rows])):
					if layout[rows][cols] > 0 and level["name"] == "Level 1: City Sites":
						var brick = level["brick_shape"].instance()
						brick.new_position = Vector2(margin.x + index.x*cols, margin.y + index.y*rows)
						brick.position = Vector2(brick.new_position.x,-100)
						brick.score = layout[rows][cols]
						Brick_Container.add_child(brick)
					if layout[rows][cols] > 0 and level["name"] == "Level 2: Extreme Eruption":
						var brick = level["brick_shape"].instance()
						brick.new_position = Vector2(margin2.x + index2.x*cols, margin2.y + index2.y*rows)
						brick.position = Vector2(brick.new_position.x,-100)
						brick.score = layout[rows][cols]
						Brick_Container.add_child(brick)
					if layout[rows][cols] > 0 and level["name"] == "Final Level: Snowy Serenade":
						var brick = level["brick_shape"].instance()
						brick.new_position = Vector2(margin3.x + index3.x*cols, margin3.y + index3.y*rows)
						brick.position = Vector2(brick.new_position.x,-100)
						brick.score = layout[rows][cols]
						Brick_Container.add_child(brick)
						if brick.get_child_count() == 0:
							var _win = get_tree().change_scene("res://UI/End_Game.tscn")
		var Instructions = get_node_or_null("/root/Game/UI/Instructions")
		if Instructions != null:
			Instructions.set_instructions(level["name"],level["instructions"])
		var music = get_node_or_null("/root/Game/Music")
		if music != null:
			music.stream = level["music"]
			music.playing = true 
		var background = get_node_or_null("/root/Game/Background")
		if background != null:
			background.texture = level["background"]
	
