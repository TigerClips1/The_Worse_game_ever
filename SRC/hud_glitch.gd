extends Control


@onready var glitch = $Glitch
@onready var count = $GLitch_HUD/HUDS_GLITCHS/Count
@onready var glitch_2 = $Glitch2

var Keyss_glich = 0

func _ready():
	_glitch_Play()

func _glitch_Play():
	glitch.play("Key_Glitch")

func _number_play():
	glitch_2.play("Label_Glitch")

# Called when the node enters the scene tree for the first time.
func _keyss():
	count.text = str(Keyss_glich)

func _on_gltch_key_glitch_key_cellected():
	_number_play()
	Keyss_glich += 1
	_keyss()


func _on_glitch_box_glitch_key_count():
	if Keyss_glich != 15 and Keyss_glich != 12 and Keyss_glich != 10:
		get_tree().change_scene_to_file("res://Sceans/Video.tscn")
	elif Keyss_glich == 15 and Keyss_glich == 12 and Keyss_glich == 10:
		print("Level Done")
