extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
	await get_tree().create_timer(10).timeout
	get_tree().quit()

