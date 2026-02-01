extends Button

@export var atico_azul: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_atico_azul,4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _atico_azul(): 
	get_tree().change_scene_to_packed(atico_azul)
