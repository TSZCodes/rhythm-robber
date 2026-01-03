extends Sprite2D

@export var fallSpeed : int
@export var arrows : Sprite2D
	
func _process(delta: float) -> void:
	arrows.position.y += fallSpeed * delta
