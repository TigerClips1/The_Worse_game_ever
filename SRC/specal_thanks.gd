extends Control

@export var next_level : PackedScene

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	await get_tree().create_timer(5).timeout
	_credit_move()

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_packed(next_level)
	
func _credit_move():
	if not next_level is PackedScene: return
	reload_scene()
