extends CanvasLayer
func _ready():
#	push_error("Ошибка(красный текст): ", x)
#	push_warning("Предупреждение(желтый текст): ", x)
#	print("Standart print")
#	print_rich("[bgcolor=red][color=green][b]Hello world![/b][/color][/bgcolor]")

	$windowsLable.text = "[p align=center][matrix]by RenaWayne[/matrix][/p]"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("tab"):
		$Inventory.visible = !$Inventory.visible
		print($Inventory.visible)
	pass

