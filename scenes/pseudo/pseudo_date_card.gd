extends TextureButton

export var date_offset : int = 1
var neo_date : String = ""
var current_session_details = {"date":"10.08.2019"}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#_get_current_session_details_from_id(Session.current_session_id)
	var now_date = Helper.date.new()
	now_date.date_str_to_date(current_session_details["date"])
	print("date",now_date.day," month",now_date.month," year",now_date.year)
	neo_date = str(now_date.day+date_offset)+" "+str(Helper.moenths[now_date.month-1])+" "+str(now_date.year)
	$Label.set_text("Tanggal " + neo_date)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _get_current_session_details_from_id(id):
	for session in Server.sessions:
		if session["id"] == id:
			current_session_details = session