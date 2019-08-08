extends Control

var username = ""
var password = ""
var loginapi = "http://junho.id/loginapi.php"
var address = ""
var response = ""
var json_response = ""

onready var Username_node = $"CenterContainer/VBoxContainer2/VBoxContainer/Username"
onready var Password_node = $"CenterContainer/VBoxContainer2/VBoxContainer/Password"
onready var Response_node = $"CenterContainer/VBoxContainer2/Response"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	if result == HTTPRequest.RESULT_SUCCESS:
		print("result = " + str(result))
		response = body.get_string_from_utf8()
		var json = JSON.parse(response)
		print(json)
		if not(json.result is Dictionary):
			Response_node.set_text("Username atau password salah.")
			return

		Response_node.set_text("Selamat datang, " + str(json.result["name"]))
		#Session.user_id = int(json.result["id"])

		Session.user = json.result
		Session.teacher_list = Server.teachers_1

		var login_timer = get_tree().create_timer(1)
		yield(login_timer,"timeout")
		get_tree().change_scene("res://scenes/Main.tscn")
	else:
		Response_node.set_text("Tidak dapat terhubung ke peladen. Tolong periksa koneksi Anda.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Login_pressed():
	 username = Username_node.text
	 password = Password_node.text
	 address = loginapi + str("?username=") + str(username) + "&password=" + str(password)
	 print(address)
	 var address1 = "http://www.mocky.io/v2/5185415ba171ea3a00704eed"

	 $HTTPRequest.request(address)
