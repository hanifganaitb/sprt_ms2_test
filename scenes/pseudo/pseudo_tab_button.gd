extends Button

signal switch_to_tab(tab_number);

export var tab_num : int = 0

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_PseudoTabButton_toggled(button_pressed: bool) -> void:
	if not button_pressed:
		return
	else:
		emit_signal("switch_to_tab", tab_num)
	pass # Replace with function body.


func _on_PseudoTabButton_pressed() -> void:
	emit_signal("switch_to_tab", tab_num)
	pass # Replace with function body.
