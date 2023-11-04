extends Node2D
var penis = Penis.new()
var dic1 = {
	1: {"color": "red"},
	2: {"color": "black"}
}

var dic2 = {
	1: {"color": "red",
		"name": "tomat"},
	2: {"color": "blue",
		"name": "chery"}
}



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
		pass
	if Input.is_action_just_pressed("pinis"):
		penis.ready()
		pass
	if Input.is_action_just_pressed("pizda"):
		Glob.ppp.emit()
		pass
	pass

func temp():
	for i in dic2:
		if dic2[i]["color"] == "red":
			print(dic2[i]["name"])


