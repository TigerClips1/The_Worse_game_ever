extends Control

func _ready():
	CreditsMusic.autoplay = true
	RenderingServer.set_default_clear_color(Color.BLACK)
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	await get_tree().create_timer(1).timeout
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	await get_tree().create_timer(5).timeout
	_credit_move()

func _credit_move():
	get_tree().paused = true
	await  LevelFade._fade_to_black()
	get_tree().paused = false
	get_tree().quit()
	LevelFade._fade_from_black()
