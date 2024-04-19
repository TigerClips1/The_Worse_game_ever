extends Control

@onready var help_me = $"wining_Text/Help Me"

# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(50).timeout
	help_me.show()
	await  get_tree().create_timer(5).timeout
	help_me.hide()
	get_tree().quit()
	WalkingSoundEfx.stop()
	JumpSoundEfx.stop()
	DeathSound.stop()

func _input(_event):
	_give_input()
func _give_input():
	if Input.is_action_just_pressed("Enter"):
		_apply()

func _credits():
	get_tree().change_scene_to_file("res://Sceans/credits.tscn")

func _apply():
	call_deferred("_credits")
