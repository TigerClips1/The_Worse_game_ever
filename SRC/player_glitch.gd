extends CharacterBody2D

@export var movementData : _PlayerMovementData

var air_jump = false
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var just_wall_jump = false
var was_wall_normal = Vector2.ZERO
@onready var players_sprite_glitch = $Players_Sprite_glitch
@onready var death_glitch = $Death_Glitch
@onready var coyote_jump_timer_glitch = $Coyote_jump_Timer_glitch
@onready var wall_jump_timer_glich = $Wall_jump_Timer_Glich
#@onready var glich = $"../Glich"

func _physics_process(delta):
	Apply_Gravaty(delta)
	HandleWalljump()
	Handlejump()
	var input_axis = Input.get_axis("Left_arrow", "Right_arrow")
	Apply_Actlation(input_axis, delta)
	Handile_Air_acceleration(input_axis, delta)
	Apply_friction(input_axis, delta)
	Apply_air_resistance(input_axis, delta)
	var was_on_floor = is_on_floor()
	var was_on_Wall = is_on_wall_only()
	if was_on_Wall:
		was_wall_normal = get_wall_normal()
	move_and_slide()
	var just_left_ledge = was_on_floor and not is_on_floor() and velocity.y >= 0
	if just_left_ledge:
		coyote_jump_timer_glitch.start()
	just_wall_jump = false
	var just_on_Wall = was_on_Wall and not is_on_wall()
	if just_on_Wall:
		wall_jump_timer_glich.start()
	update_Anmation(input_axis)

func Apply_Gravaty(delta):
	if not is_on_floor():
		velocity.y += gravity * movementData.Gravity_scale * delta

func HandleWalljump():
	if not is_on_wall_only() and wall_jump_timer_glich.time_left <= 0.0: return
	var wall_normal = get_wall_normal()
	if wall_jump_timer_glich.time_left > 0.0:
		wall_normal = was_wall_normal
	if Input.is_action_just_released("Space"):
		velocity.x = wall_normal.x * movementData.speed
		velocity.y = movementData.jump_velocity
		just_wall_jump = true

func Handlejump():
	if is_on_floor(): air_jump = true
	if is_on_floor() or coyote_jump_timer_glitch.time_left > 0.0:
		if Input.is_action_just_pressed("Space"):
				velocity.y = movementData.jump_velocity
	elif not is_on_floor():
			if Input.is_action_just_pressed("Space") and  velocity.y < movementData.jump_velocity / 2:
				velocity.y = movementData.jump_velocity / 2
			if Input.is_action_just_pressed("Space") and air_jump and not just_wall_jump:
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
		players_sprite_glitch.flip_h = input_axis < 0
		players_sprite_glitch.play("walk")
	else:
		players_sprite_glitch.play("idle")

func reload_scene():
	call_deferred("_reload_scene")

func _reload_scene():
	if is_inside_tree():
		get_tree().reload_current_scene()

func _on_hazard_detector_area_entered(_area):
	get_tree().paused = true
	players_sprite_glitch.hide()
	Addfile._add_File3_GLITCH()
	Jumpscare.play()
	await death_glitch._play()
	death_glitch._restore()
	await  LevelFade._fade_to_black()
	reload_scene()
	LevelFade._fade_from_black()
	get_tree().paused = false
	Jumpscare.stop()
