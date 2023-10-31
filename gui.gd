extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	print($Inventory.visible)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$windowsLable.text = "Process"
	if Input.is_action_just_pressed("tab"):
		$Inventory.visible = !$Inventory.visible
		print($Inventory.visible)
	pass
