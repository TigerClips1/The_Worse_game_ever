extends CharacterBody2D

@export var movementData : _PlayerMovementData

var air_jump = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var hasKey = false
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var coyote_jump_timer = $Coyote_jump_Timer



func _physics_process(delta):
	Apply_Gravaty(delta)
	Handlejump()
	var input_axis = Input.get_axis("ui_left", "ui_right")
	Apply_Actlation(input_axis, delta)
	Handile_Air_acceleration(input_axis, delta)
	Apply_friction(input_axis, delta)
	Apply_air_resistance(input_axis, delta)
	update_Anmation(input_axis)
	var was_on_floor = is_on_floor()
	move_and_slide()
	var just_left_ledge = was_on_floor and not is_on_floor() and velocity.y >= 0
	if just_left_ledge:
		coyote_jump_timer.start()

func Apply_Gravaty(delta):
	if not is_on_floor():
		velocity.y += gravity * movementData.Gravity_scale * delta

# TODO add wall jump in anther update
#func HandleWalljump():
	#if not is_on_wall(): return
	#var wall_normal = get_wall_normal()
	#if Input.is_action_just_pressed("ui_accept") and wall_normal == Vector2.LEFT:
		#

func Handlejump():
	if is_on_floor(): air_jump = true
	if is_on_floor() or coyote_jump_timer.time_left > 0.0:
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = movementData.jump_velocity
	elif not is_on_floor():
		if Input.is_action_just_pressed("ui_accept") and  velocity.y < movementData.jump_velocity / 2:
			velocity.y = movementData.jump_velocity / 2
		if Input.is_action_just_pressed("ui_accept") and air_jump:
			velocity.y = movementData.jump_velocity * 0.8
			air_jump = false

func Apply_Actlation(input_axis, delta):
	if not is_on_floor(): return
	if input_axis != 0:
		velocity.x = move_toward(velocity.x, movementData.speed * input_axis, movementData.acceleration * delta)

func Handile_Air_acceleration(input_axis, delta):
	if is_on_floor(): return
	if input_axis != 0:
		velocity.x = move_toward(velocity.x, movementData.speed * input_axis, movementData.Air_acceleration * delta)

func Apply_friction(input_axis, delta):
	if input_axis == 0 and is_on_floor():
		velocity.x = move_toward(velocity.x, 0, movementData.friction * delta)

func Apply_air_resistance(input_axis, delta):
	if input_axis == 0 and not is_on_floor():
		velocity.x =  move_toward(velocity.x, 0, movementData.Air_resistance * delta)

func update_Anmation(input_axis):
	if input_axis != 0:
		animated_sprite_2d.flip_h = input_axis < 0
		animated_sprite_2d.play("walk")
	else:
		animated_sprite_2d.play("idle")

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/lost_screen.tscn")

func _on_hazard_detector_area_entered(_area):
	reload_scene()

func reload_scene_easter():
	call_deferred("_reload_scene_easter")

func _reload_scene_easter():
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Sceans/end_cheat.tscn")

func _on_hazard_easter_egg_area_entered(_area):
	reload_scene_easter()
	OS.shell_open("https://www.youtube.com/watch?v=EpX1_YJPGAY")
