extends Sprite2D
 
@export var velocidad: float = 500.0
 
var izquierda_arriba := Vector2(336,76)
var derecha_arriba := Vector2(227,-233)
var derecha_abajo := Vector2(-238,-248)
var izquierda_abajo := Vector2(-326,89)


var estado: int = 0
 
func _ready() -> void:
	global_position = izquierda_arriba

func _process(delta: float) -> void:
	if estado == 0:
		global_position = global_position.move_toward(derecha_arriba, velocidad * delta)
		if global_position == derecha_arriba:
			estado = 1

	elif estado == 1:
		global_position = global_position.move_toward(derecha_abajo, velocidad * delta)
		if global_position == derecha_abajo:
			estado = 2

	elif estado == 2:
		global_position = global_position.move_toward(izquierda_abajo, velocidad * delta)
		if global_position == izquierda_abajo:
			estado = 3

	elif estado == 3:
		global_position = global_position.move_toward(izquierda_arriba, velocidad * delta)
		if global_position == izquierda_arriba:
			estado = 0
