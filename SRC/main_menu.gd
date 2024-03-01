extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Sceans/Level1.tscn")

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Sceans/credits.tscn")

func _on_control_pressed():
	get_tree().change_scene_to_file("res://Sceans/Game_control_screen.tscn")


func _on_quit_pressed():
	get_tree().quit()
