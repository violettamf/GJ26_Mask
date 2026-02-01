extends Node2D

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if Input.is_action_pressed("menu"):
		get_tree().change_scene_to_file("res://Assets/Scenes/Rojo/Mansion/mansion_rojo.tscn")
