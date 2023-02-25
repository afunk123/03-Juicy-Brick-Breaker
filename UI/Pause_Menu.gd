extends Control

func _on_Restart_pressed():
	get_tree().paused = false
	Global.reset()
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Continue_pressed():
	var esc = InputEventKey.new()
	esc.scancode = 16777217
	esc.pressed = true
	Input.parse_input_event(esc)
