extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.DARK_BLUE)
	await get_tree().create_timer(5).timeout
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
	LevelFade._fade_from_black()