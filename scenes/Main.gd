extends Control

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

onready var tab_container_node = $"MarginContainer/TabContainer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_PseudoTabButton_switch_to_tab(tab_number) -> void:
	tab_container_node.current_tab = tab_number
	pass # Replace with function body.
