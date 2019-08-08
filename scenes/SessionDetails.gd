extends ScrollContainer

export var session_id : String = ""
var current_session_details;
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var time_details_node = $"VBoxContainer/TimeDetails"
onready var stud_details_node = $"VBoxContainer/StudDetails"
onready var teach_details_node = $"VBoxContainer/TeachDetails"
onready var ses_details_node = $"VBoxContainer/SessionStatus"
onready var reason_node = $"VBoxContainer/Reason"
onready var change_day_button = $"VBoxContainer/Actions/CenterContainer/Ganti Hari"
onready var actions_node = $"VBoxContainer/Actions"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	session_id = Session.current_session_id
	_get_current_session_details_from_id(session_id)
	if not current_session_details == null:
		time_details_node.get_node("PseudoCard/MarginContainer/VBoxContainer/Tanggal").set_text("SESI TANGGAL " + str(current_session_details["date"]))
		time_details_node.get_node("PseudoCard/MarginContainer/VBoxContainer/Pukul").set_text("PUKUL " + str(current_session_details["time"]))

		stud_details_node.get_node("PseudoCard/MarginContainer/VBoxContainer/NamaMurid").set_text(Session.user["name"])

		teach_details_node.get_node("PseudoCard/MarginContainer/VBoxContainer/NamaGuru").set_text(_get_teacher_name_from_id(current_session_details["teacher_id"]))

		if current_session_details["status"] == "ok":
			ses_details_node.get_node("PseudoCard/MarginContainer/HBoxContainer/Icon/CenterContainer/Ok").visible = true
			ses_details_node.get_node("PseudoCard/MarginContainer/HBoxContainer/Icon/CenterContainer/No").visible = false
			reason_node.visible = false
			actions_node.visible = false
		else:
			ses_details_node.get_node("PseudoCard/MarginContainer/HBoxContainer/Icon/CenterContainer/Ok").visible = false
			ses_details_node.get_node("PseudoCard/MarginContainer/HBoxContainer/Icon/CenterContainer/No").visible = true
			reason_node.visible = false
			reason_node.get_node("PseudoCard/MarginContainer/Label").set_text(current_session_details["reason"])
			if current_session_details["status"] == "no":
				actions_node.visible = false



	pass # Replace with function body.

func _get_current_session_details_from_id(id):
	for session in Server.sessions:
		if session["id"] == session_id:
			current_session_details = session

func _get_teacher_name_from_id(id):
	id = int(id)
	for teacher in Session.teacher_list:
		if id == int(teacher["id"]):
			return teacher["name"]

	return "tidak ada guru"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
