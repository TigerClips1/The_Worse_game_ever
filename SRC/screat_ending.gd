extends Node2D

@onready var Glitch_BG = $Glich

func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	RenderingServer.set_default_clear_color(Color.BLACK)
	PlayGlitchBG()

func PlayGlitchBG():
	Glitch_BG.play("Gltich")
	await Glitch_BG.animation_finished
	Glitch_BG.play("RESET")
	await  Glitch_BG.animation_finished
