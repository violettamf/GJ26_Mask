extends Node2D

@export var vertical_only: bool = true
@export var vertical_nudge: float = -6.0  
@export var max_exit_nudge: float = 6.0   

@onready var area: Area2D = $Area2D
@onready var center: Node2D = $Center

var player: Node = null

func _on_Area2D_body_entered(body: Node) -> void:
	if not body.is_in_group("player"):
		return

	player = body

	#restrict horizontal movement
	if player.has_method("set_stairs_mode"):
		player.set_stairs_mode(true)

	#nudge upward
	player.position.y += vertical_nudge

func _on_Area2D_body_exited(body: Node) -> void:
	if body != player:
		return

	#smooth exit
	var distance_y: float = body.position.y - center.global_position.y
	var normalized: float = clamp(distance_y / area.shape.extents.y, -1.0, 1.0)
	body.position.y += max_exit_nudge * normalized

	#restore normal movement
	if player.has_method("set_stairs_mode"):
		player.set_stairs_mode(false)

	player = null
