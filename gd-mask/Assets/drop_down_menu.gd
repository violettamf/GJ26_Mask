extends Control

@export var expand_time = 0.15

@export var toggle_button:Button
@export var collapse_control:Control
@export var collapsable_content:MarginContainer

func _ready() -> void:
	collapse_control.clip_contents = true
	toggle_button.toggled.connect(_on_button_toggled)

func _on_button_toggled(toggled_on:bool) -> void:
	if toggled_on:
		var tween = create_tween()
		tween.tween_property(collapse_control, "custom_minimum_size:y", collapsable_content.size.y, expand_time)
	else:
		var tween:Tween = create_tween()
		tween.tween_property(collapse_control, "custom_minimum_size:y", 0, expand_time)
