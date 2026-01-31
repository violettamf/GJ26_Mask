extends Button

@export var patio_azul: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_patio_azul,4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _patio_azul(): 
	get_tree().change_scene_to_packed(patio_azul)
