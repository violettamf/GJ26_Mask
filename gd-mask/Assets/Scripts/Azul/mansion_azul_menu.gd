extends Node2D

@onready var salon = $Salon
@onready var cocina = $Cocina
@onready var patio = $Patio
@onready var dormitorio = $Dormitorio
@onready var comedor = $Comedor
@onready var atico = $Atico

func _ready() -> void:
	patio.pressed.connect(_on_patio_pressed)
	dormitorio.pressed.connect(_on_dormitorio_pressed)
	atico.pressed.connect(_on_atico_pressed)

func _on_patio_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Azul/Habitaciones/patio_azul.tscn")

func _on_dormitorio_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Azul/Habitaciones/dormitorio_azul.tscn")

func _on_atico_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Azul/Habitaciones/atico_azul.tscn")
