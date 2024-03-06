extends Control

@onready var back = %Back

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	back.grab_focus()

func _on_back_pressed():
	await  LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")
	LevelFade._fade_from_black()
