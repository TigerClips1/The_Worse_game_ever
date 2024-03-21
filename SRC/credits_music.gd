extends AudioStreamPlayer2D

@onready var credits_music = $"."

func _play_music():
	credits_music.play()
