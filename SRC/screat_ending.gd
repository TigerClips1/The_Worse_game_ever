extends Node2D

@onready var glich = $Glich

# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	RenderingServer.set_default_clear_color(Color.BLACK)
	_Glitch()
	await get_tree().create_timer(5).timeout

func _Glitch():
	glich.play("Gltich")
	await glich.animation_finished
	glich.play("RESET")
	await  glich.animation_finished
