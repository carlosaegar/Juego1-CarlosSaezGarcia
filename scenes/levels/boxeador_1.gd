extends Sprite2D
@export var velocidad :float = 200.0

func _process(delta: float) -> void:
	var direccionx := Input.get_axis("mover_izq","mover_drc")
	var direcciony := Input.get_axis("mover_ar","mover_ab")
	position.x += direccionx * velocidad * delta
	position.y += direcciony * velocidad * delta
	
