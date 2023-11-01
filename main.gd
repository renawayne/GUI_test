extends Node2D

var dic = {
	"123": "111",
	"bb": null,
	"cc": "333",
	"123123": null,
	"renaeqwew": {
		"123123": null,
		"renaeqwew": "null"
	}
}
var dic2 = {"cc": null, "123": "321", "grena": 911, "bb": "opera"}

var arr = []
# Called when the node enters the scene tree for the first time.
func _ready():
#	print("dic: ", dic)
#	print("dic2: ", dic2)
#	print("dic2: ", dic2.keys())
	
	for i in dic.keys():
		print("key: ", i)
		
#		if dic2.get(i) or (dic2.get(i) == null):
		if dic2.find_key(i):
			print(dic2.get("dic2.get(i): ",i))
			print("--if 2: ", dic2[i])
			dic2[i] = dic[i]
			print("++if 2: ", dic2[i])
		else:
			print("not i in dic2: ", i, " value: ", dic[i])
	
	
	
	
#	dic2["rena"] = "name"
#	print(dic2.duplicate())
#	var y = dic.duplicate()
#	var x = dic.duplicate(true)
#	print(x, "\n", y)
	
#	print(dic.erase("aaa"))
#	dic["bb"] = 19
#	dic["bb"] = "19"
#	dic["bb"] = 19
#	dic["bb"] = Vector2.ZERO
#
#	print(dic.find_key(null))
#	print(dic.get("ping", "ERROR"))
#	print(dic, "\n", dic.size())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("exit"):
		get_tree().quit()
	pass
