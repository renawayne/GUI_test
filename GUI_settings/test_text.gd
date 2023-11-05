extends RichTextEffect
class_name RichTextMatrix

var bbcode = "matrix"

func _init():
	resource_name = "RichTextMatrix"
	
func _process_custom_fx(char_fx : CharFXTransform) -> bool:
#	var clear_time = char_fx.env.get("clean", 2.0)
#	var dirty_time = char_fx.env.get("dirty", 1.0)
#	var text_span = char_fx.env.get("span", 50)
#	char_fx.color = Color(0, 255, 0, 1) #изменить цвет и прозрачность
#	char_fx.elapsed_time #Отсчет времени с начало запуска
#	char_fx.env #кортеж переменных
#	char_fx.font #RID 
#	char_fx.glyph_count = randi_range(1, 1000)
#	char_fx.glyph_flags = randi_range(1, 1000)
#	char_fx.glyph_index = int(sin(char_fx.elapsed_time * 1)*20)
#	char_fx.offset = char_fx.elapsed_time * Vector2i(0, 10)
#	char_fx.offset = char_fx.relative_index * Vector2i(0, 20)
	var x = sin((char_fx.relative_index + 0) * char_fx.elapsed_time) * 2
	
	char_fx.offset = Vector2i(0, x + 10)
#	var x = sin(char_fx.elapsed_time * 10) * 10
#	var x = char_fx.glyph_index
#	print(x)
#	char_fx = 
#	char_fx.offset = Vector2i(0, x)
#	char_fx.outline = false
#	print(char_fx.relative_index)
#	print(sin(char_fx.elapsed_time * 1))
#	print("glyph_count: ", char_fx.glyph_count, " | glyph_flags: ", char_fx.glyph_flags, " | glyph_index:  ", char_fx.glyph_index)
	char_fx.color = Color(x*20, x-20, x+10, 1) #изменить цвет и прозрачность
	return true





#func _process_custom_fx(char_fx: CharFXTransform) -> bool:
#	var range_2 = char_fx.env.get("x", 1)
#	char_fx.range = sin(char_fx.get_range() * Vector2i(1, 1))
#	char_fx.get_range()
#	var speed = char_fx.env.get("freq", 5.0)
#	var span = char_fx.env.get("span", 10.0)
#	var alpha = sin(char_fx.elapsed_time * speed) * 0.5 + 0.5
#	var alpha2 = sin(char_fx.elapsed_time * speed) * 1.5 + 0.5
#	var alpha3 = sin(char_fx.elapsed_time * speed) * 2.5 + 1.5
#	char_fx.get_range() = char_fx.color.r = alpha
#	char_fx.color.g = alpha2
#	char_fx.color.b = alpha3
#	char_fx.color.a = alpha
#	return true
