extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)


func _on_back_main_menu_pressed():
	get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")


func _on_next_pressed():
	get_tree().change_scene_to_file("res://Sceans/controller_control.tscn")
