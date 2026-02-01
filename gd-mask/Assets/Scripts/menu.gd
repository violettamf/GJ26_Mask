extends Node2D

var mascara

@onready var resolver = $Resolver
@onready var azul = $HBoxContainer/Azul
@onready var rojo = $HBoxContainer/Rojo
@onready var verde = $HBoxContainer/Verde
@onready var amarillo = $HBoxContainer/Amarillo
@onready var rosa = $HBoxContainer/Rosa

func _ready() -> void:
	resolver.pressed.connect(_on_resolver_pressed)
	azul.pressed.connect(_on_azul_pressed)
	rojo.pressed.connect(_on_rojo_pressed)
	#verde.pressed.connect(_on_verde_pressed)
	#amarillo.pressed.connect(_on_amarillo_pressed)
	#rosa.pressed.connect(_on_rosa_pressed)
	

func _on_resolver_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Resolver.tscn")

func _on_azul_pressed() -> void:
	mascara = "azul"
	get_tree().change_scene_to_file("res://Assets/Scenes/Azul/Mansion/mansion_azul.tscn")

func _on_rojo_pressed() -> void:
	mascara = "rojo"
	get_tree().change_scene_to_file("res://Assets/Scenes/Rojo/Mansion/mansion_rojo.tscn")

func _on_verde_pressed() -> void:
	mascara = "verde"
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Mansion/mansion_azul.tscn")

func _on_amarillo_pressed() -> void:
	mascara = "amarillo"
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Mansion/mansion_azul.tscn")

func _on_rosa_pressed() -> void:
	mascara = "rosa"
	get_tree().change_scene_to_file("res://Assets/Scenes/Estancias/Mansion/mansion_azul.tscn")
