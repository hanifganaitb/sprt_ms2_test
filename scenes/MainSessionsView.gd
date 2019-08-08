extends ScrollContainer
var ses_card = preload("res://scenes/pseudo/session_card.tscn")

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var i = 0
	if not (Session.user["id"] == null or Session.user["id"]==""):
		for session in Server.sessions:
			if int(session["student_id"]) == int(Session.user["id"]):
				i += 1
				var neo_session_card = ses_card.instance()
				neo_session_card.session_info = "Sesi " + str(i) + ": - Guru : " + str(_get_teacher_name_from_id(session["teacher_id"]))

				neo_session_card.date_info = session["date"] + " : " + str(session["time"])

				neo_session_card.status_ok = true if session["status"] == "ok" else false

				neo_session_card.session_id = session["id"]

				print(neo_session_card)

				$VBoxContainer.add_child(neo_session_card)
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
