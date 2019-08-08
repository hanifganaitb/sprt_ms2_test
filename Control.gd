extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var username = ""
var password = ""
var loginapi = "http://junho.id/loginapi.php"
var address = ""
var response = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	$CenterContainer/VBoxContainer/Username.FOCUS_ALL
	pass # Replace with function body.

func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	print("result = " + str(result))
	response = body.get_string_from_utf8()
	var json = JSON.parse(body.get_string_from_utf8())
	#print(json)
	#response = str(json.result)
	print(response)
	$CenterContainer/VBoxContainer/RichTextLabel.set_text(response)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Login_pressed():
	 username = $CenterContainer/VBoxContainer/Username.text
	 password = $CenterContainer/VBoxContainer/Password.text
	 address = loginapi + str("?username=") + str(username) + "&password=" + str(password)
	 print(address)
	 var address1 = "http://www.mocky.io/v2/5185415ba171ea3a00704eed"

	 $HTTPRequest.request(address)
