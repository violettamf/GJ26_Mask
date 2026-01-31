extends Button

@export var salon_azul: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_habitacion)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _habitacion(): 
	get_tree().change_scene_to_packed(salon_azul)
	pressed.disconnect(_habitacion)
