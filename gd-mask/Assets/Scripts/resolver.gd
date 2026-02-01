extends Node2D

var mascara

@onready var azul = $HBoxContainer/Azul
@onready var rojo = $HBoxContainer/Rojo
@onready var verde = $HBoxContainer/Verde
@onready var amarillo = $HBoxContainer/Amarillo
@onready var rosa = $HBoxContainer/Rosa

func _ready() -> void:
	azul.pressed.connect(_final_malo)
	rojo.pressed.connect(_final_malo)
	verde.pressed.connect(_final_malo)
	amarillo.pressed.connect(_final_bueno)
	rosa.pressed.connect(_final_malo)
	

func _final_malo() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Finales/final_malo.tscn")

func _final_bueno() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Finales/final_bueno.tscn")
