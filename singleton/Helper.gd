extends Node

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _get_teacher_name_from_id(id):
	id = int(id)
	for teacher in Session.teacher_list:
		if id == int(teacher["id"]):
			return teacher["name"]

	return "tidak ada guru"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
