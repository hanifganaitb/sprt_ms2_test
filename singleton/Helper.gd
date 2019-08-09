extends Node

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var days : PoolStringArray = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"]
var moenths : PoolStringArray = ["January", "February", "March", "April", "May", "June",
									"July", "August", "September", "October", "November", "December"]

class date:
	var day : int = 1
	var month : int = 1
	var year : int = 1

	func date_str_to_date(string:String):
		var date_str = string.rsplit(".")
		day = int(date_str[0])
		month = int(date_str[1])
		year = int(date_str[2])

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
