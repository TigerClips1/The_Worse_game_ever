extends AudioStreamPlayer

@onready var credits = $"."

func _ready():
	_playing()
func _playing():
	if credits.playing:
		credits.play()
