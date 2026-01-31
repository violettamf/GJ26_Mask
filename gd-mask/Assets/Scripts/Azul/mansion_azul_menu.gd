extends Node2D

@onready var salon = $Salon
@onready var cocina = $Cocina
@onready var patio = $Patio
@onready var dormitorio = $Dormitorio
@onready var atico = $Atico
@onready var salir = $Salir

func _ready() -> void:
	salon.pressed.connect(_on_salon_pressed)
	cocina.pressed.connect(_on_cocina_pressed)
	patio.pressed.connect(_on_patio_pressed)
	dormitorio.pressed.connect(_on_dormitorio_pressed)
	atico.pressed.connect(_on_atico_pressed)
	salir.pressed.connect(_on_salir_pressed)

func _on_cocina_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Habitaciones/cocina_azul.tscn")

func _on_patio_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Habitaciones/patio_azul.tscn")

func _on_salon_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Habitaciones/salon_azul.tscn")

func _on_dormitorio_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Habitaciones/dormitorio_azul.tscn")

func _on_atico_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Habitaciones/atico_azul.tscn")

func _on_salir_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Menu.tscn")
