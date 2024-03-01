extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")

# TODO video Godot 4 Tutorial - Heart Platformer P10 - Start Menu 8:05
