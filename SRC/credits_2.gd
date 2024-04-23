extends Label

@export var next_level : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
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
	CreditsMusic.autoplay = true
	await get_tree().create_timer(5).timeout
	credit_move()

func Chnage_Credit_scene():
	call_deferred("Change_Credits_scene")

func Change_Credits_scene():
	get_tree().change_scene_to_packed(next_level)

func Back_To_Menureturn():
	await  LevelFade._fade_to_black()
	call_deferred("_Back_main_menu")
	CreditsMusic.stop()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	LevelFade._fade_from_black()

func _input(_event):
	exit_input()

func exit_input():
	if Input.is_action_just_released("Exit"):
		Back_To_Menureturn

func credit_move():
	if not next_level is PackedScene: return
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	Chnage_Credit_scene()
	LevelFade._fade_from_black()
