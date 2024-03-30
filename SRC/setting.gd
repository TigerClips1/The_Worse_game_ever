extends Control

@onready var mute = $Mute/Mute_cantainer/Mute
@onready var back = $Back/Back_cantainer/Back
@onready var master = $Slider/Slider_Hitbox/Slider_Vbox/Master
@onready var music = $Slider/Slider_Hitbox/Slider_Vbox/Music
@onready var sound = $Slider/Slider_Hitbox/Slider_Vbox/Sound


func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	LevelFade._fade_from_black()
	mute.grab_focus()
	back.grab_focus()
	master.grab_focus()
	music.grab_focus()
	sound.grab_focus()



func _on_button_pressed():
	Click.play()
	var music_Bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_mute(music_Bus, not AudioServer.is_bus_mute(music_Bus))


func _on_button_pressed_back():
	Click.play()
	await LevelFade._fade_to_black()
	get_tree().change_scene_to_file("res://Sceans/main_menu.tscn")
	LevelFade._fade_from_black()
