extends Button

export(String, FILE, "*.tscn,*.scn") var next_scene = "res://scenes/Main.tscn";
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_BackButton_pressed() -> void:
	get_tree().change_scene(next_scene)
	pass # Replace with function body.
