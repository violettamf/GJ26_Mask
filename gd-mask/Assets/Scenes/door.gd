extends Node2D

@export var can_open: bool = false
@export var facing_direction: Vector2 = Vector2.RIGHT

@onready var blocker := $Blocker
@onready var animation_player := $AnimationPlayer
@onready var interact_area := $InteractArea

var player_inside := false
var is_open := false

func _ready() -> void:
	facing_direction = facing_direction.normalized()
	blocker.process_mode = Node.PROCESS_MODE_DISABLED
	blocker.visible = false

func _process(_delta: float) -> void:
	if player_inside and Input.is_action_just_pressed("interact"):
		_try_open()

func _try_open() -> void:
	if is_open:
		return

	if can_open:
		is_open = true
		blocker.process_mode = Node.PROCESS_MODE_DISABLED
		blocker.visible = false
		animation_player.play("open")
	else:
		_enable_blocker()

func _enable_blocker() -> void:
	blocker.process_mode = Node.PROCESS_MODE_INHERIT
	blocker.visible = true

func _on_InteractArea_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		player_inside = true

func _on_InteractArea_body_exited(body: Node) -> void:
	if body.is_in_group("player"):
		player_inside = false
