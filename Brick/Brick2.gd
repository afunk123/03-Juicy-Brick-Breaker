extends StaticBody2D

var score = 0
var new_position = Vector2.ZERO
var dying = false
var time_fall = 0.5
var time_rotate = 0.8

var powerup_prob = 0.1

func _ready():
	randomize()
	position = new_position

func _physics_process(_delta):
	if dying and not $Fire_Ball.emitting:
		queue_free()

func hit(_ball):
	var brick_sound = get_node_or_null("/root/Game/Triangle_Brick")
	if brick_sound != null:
		brick_sound.play()
	die()

func die():
	dying = true
	collision_layer = 0
	Global.update_score(score)
	if not Global.feverish:
		Global.update_fever(score)
	get_parent().check_level()
	if randf() < powerup_prob:
		var Powerup_Container = get_node_or_null("/root/Game/Powerup_Container")
		if Powerup_Container != null:
			var Powerup = load("res://Powerups/Powerup.tscn")
			var powerup = Powerup.instance()
			powerup.position = position
			Powerup_Container.call_deferred("add_child", powerup)
	$Fire_Ball.emitting = true
	$Tween.interpolate_property(self, "position", position, Vector2(position.x, 1000), time_fall, Tween.TRANS_EXPO, Tween.EASE_IN)
	$Tween.interpolate_property(self, "rotation", rotation, -PI + randf()*2*PI, time_rotate, Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
	$Tween.interpolate_property($Brick, "modulate:a", 1.0, 0.0, time_rotate, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
