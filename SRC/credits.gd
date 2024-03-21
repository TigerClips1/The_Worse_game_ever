extends Label

@export var next_level : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if (CreditsMusic.playing == false):
		CreditsMusic.play()
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
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	reload_scene()
	LevelFade._fade_from_black()
