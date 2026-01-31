extends Button

@export var dormitorio_azul: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_dormitorio_azul,4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _dormitorio_azul(): 
	get_tree().change_scene_to_packed(dormitorio_azul)
	pressed.disconnect(_dormitorio_azul)
