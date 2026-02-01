extends Node2D

const DIALOGO_AZUL = preload("uid://dsv4l51jh70c1")
@onready var boton = $Boton
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	boton.pressed.connect(_dialogo)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _dialogo() -> void:
	DialogueManager.show_dialogue_balloon(DIALOGO_AZUL,"start")
