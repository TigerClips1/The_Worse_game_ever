extends Control

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(5).timeout
	_credit_move()

func _credit_move():
	get_tree().quit()
