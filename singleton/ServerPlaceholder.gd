extends Node

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var teacher_info_1 = {
			"id":1,"name":"Teach 1",
			"opentime": {
				"mon":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"tue":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"wed":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"thu":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"fri":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"sat":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"sun":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20] },
			"rating":4.86
			}
var teacher_info_2 = {
			"id":2,"name":"Teach 2",
			"opentime": {
				"mon":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"tue":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"wed":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"thu":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"fri":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"sat":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20],
				"sun":[7,6,8,9,10,11,12,13,14,15,16,17,18,19,20] },
			"rating":3.79
			}
var teacher_info_3 = {
			"id":3,"name":"Teach 3",
			"opentime": {
				"mon":[],
				"tue":[],
				"wed":[],
				"thu":[],
				"fri":[],
				"sat":[],
				"sun":[] },
			"rating":4.23
			}
var teachers_1 = [teacher_info_1, teacher_info_2, teacher_info_3]
var teachers_2 = [teacher_info_3]


var session_info_1 = {
	"id" : "12398dasd0912u3",
	"teacher_id":2,
	"student_id":1,
	"date":"10.08.2019",
	"time":[13,14],
	"status":"ok",
	"reason":"",
	"revision": 0
}
var session_info_2 = {
	"id" : "12398213d0912u3",
	"teacher_id":3,
	"student_id":1,
	"date":"11.08.2019",
	"time":[16,17],
	"status":"no",
	"reason":"Tiba-tiba dipanggil dosen",
	"revision": 0
}
var session_info_3 = {
	"id" : "12398213d0912o9",
	"teacher_id":1,
	"student_id":1,
	"date":"12.08.2019",
	"time":[17],
	"status":"pending",
	"reason":"Ada lab tambahan",
	"revision": 0
}
var sessions = [session_info_1,session_info_2, session_info_3, session_info_1, session_info_1, session_info_1, session_info_1, session_info_1, session_info_1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
