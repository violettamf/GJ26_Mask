extends Node2D

@onready var volver = $Volver
func _ready() -> void:
	volver.pressed.connect(_volver)

func _volver() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Azul/Mansion/mansion_azul.tscn")
