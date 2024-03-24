extends Label

@export var next_level : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuMusic.stop()
	CreditsMusic.play()
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	await get_tree().create_timer(5).timeout
	_credit_move()

func _input(_event):
	exit_input()

func _Back_main_menu():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
func _return():
	await  LevelFade._fade_to_black()
	call_deferred("_Back_main_menu")
	CreditsMusic.stop()
	MenuMusic.play()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	LevelFade._fade_from_black()
	
func exit_input():
	if Input.is_action_just_released("Exit"):
		_return()

func reload_scene():
	call_deferred("_change_Credits")
	
func _change_Credits():
	if is_inside_tree():
		get_tree().change_scene_to_packed(next_level)
		
func _credit_move():
	if not next_level is PackedScene: return
	await  LevelFade._fade_to_black()
	reload_scene()
	LevelFade._fade_from_black()
