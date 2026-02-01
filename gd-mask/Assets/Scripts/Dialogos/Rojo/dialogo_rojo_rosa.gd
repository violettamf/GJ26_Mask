extends Node2D

const DIALOGO_ROSA = preload("uid://c8c1c13toyttq")
@onready var boton = $Boton
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	boton.pressed.connect(_dialogo)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _dialogo() -> void:
	DialogueManager.show_dialogue_balloon(DIALOGO_ROSA,"start")
