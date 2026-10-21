extends Sprite2D


@export var speed: float = 240.0
func _ready() -> void:
	print("Jugador Preparado")


func _process(delta: float) -> void:
	#print("hola mundo")

#funcion sumar puntos
	if Input.is_action_just_pressed("jump"):
		sumar_punto()
var puntos: int = 0 # dato

func sumar_punto() -> void: #funcion
		puntos += 1 
		if puntos >= 5: #decision 
			print("Objetivo alcanzado")
