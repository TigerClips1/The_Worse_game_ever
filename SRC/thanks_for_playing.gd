extends Control
@onready var error = $ERROR
@onready var glitch = $Glitch

func _ready():
	CreditsMusic.stop()
	GltichNext.play()
	SPookey.autoplay = true
	RenderingServer.set_default_clear_color(Color.BLACK)
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(10).timeout
	_credit_move()

func _return():
	await  LevelFade._fade_to_black()
	call_deferred("_Back_main_menu")
	CreditsMusic.stop()
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	LevelFade._fade_from_black()

func _input(_event):
	exit_input()

func exit_input():
	if Input.is_action_just_released("Exit"):
		_return()

func _credit_move():
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	glitch.play("Cool_Dance")
	error.show()
	Addfile._del()
	glitch.stop()
	get_tree().quit()
	LevelFade._fade_from_black()
