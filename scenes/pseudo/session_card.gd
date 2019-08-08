extends Control
#class_name session_card

export var session_id : String = ""
export var session_info : String = ""
export var date_info : String = ""
export var status_ok : bool = true

onready var session_info_node = $"PseudoCard/HBoxContainer/Info/VBoxContainer/Sesi"
onready var date_node = $"PseudoCard/HBoxContainer/Info/VBoxContainer/Tanggal"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if session_info == null or session_info == "":
		session_info_node.set_text("Info sesi mengalami masalah")
	else:
		session_info_node.set_text(session_info)
	if date_info == null or date_info == "":
		date_node.set_text("Tanggal sesi mengalami masalah")
	else:
		date_node.set_text(date_info)

	if status_ok:
		$"PseudoCard/HBoxContainer/Status/Ok".visible = true
		$"PseudoCard/HBoxContainer/Status/No".visible = false
	else:
		$"PseudoCard/HBoxContainer/Status/Ok".visible = false
		$"PseudoCard/HBoxContainer/Status/No".visible = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_PseudoCard_pressed() -> void:
	get_tree().change_scene("res://scenes/SessionDetails.tscn")
	Session.current_session_id = session_id
	pass # Replace with function body.
