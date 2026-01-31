extends Node2D

@export var speed: float = 500.0
@export var acceleration: float = 2000.0
@export var stop_delay: float = 0.05

var direction: int = 0
var last_direction: int = 0
var stop_timer: float = 0.0
var velocity_x: float = 0.0

func _process(delta: float) -> void:
	process_input(delta)
	process_movement(delta)

# INPUT
func process_input(delta: float) -> void:
	direction = 0

	if Input.is_action_pressed("ui_left"):
		direction -= 1
	if Input.is_action_pressed("ui_right"):
		direction += 1

	if direction != 0:
		last_direction = direction
		stop_timer = stop_delay
	else:
		stop_timer = max(stop_timer - delta, 0)

# MOVEMENT
func process_movement(delta: float) -> void:
	var move_dir := direction

	if move_dir == 0 and stop_timer > 0:
		move_dir = last_direction

	var target_velocity := move_dir * speed
	velocity_x = move_toward(velocity_x, target_velocity, acceleration * delta)

	position.x += velocity_x * delta
