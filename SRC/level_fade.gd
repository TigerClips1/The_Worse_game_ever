extends CanvasLayer

@onready var fade_player = $Fade_Player

func _fade_from_black():
	fade_player.play("Fade_from_black")
	await  fade_player.animation_finished

func _fade_to_black():
	fade_player.play("Fade")
	await  fade_player.animation_finished
