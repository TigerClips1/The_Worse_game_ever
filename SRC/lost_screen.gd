extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)

func _input(_event):
	_apply_input()

func _start_over():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/Level1.tscn")
func _action():
	call_deferred("_start_over")
#
func _apply_input():
	if Input.is_action_just_released("Enter"):
		_action()
