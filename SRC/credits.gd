extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)

func _input(_event):
	exit_input()

func _Back_main_menu():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
func _return():
	await  LevelFade._fade_to_black()
	call_deferred("_Back_main_menu")
	LevelFade._fade_from_black()
func exit_input():
	if Input.is_action_just_released("Exit"):
		_return()
