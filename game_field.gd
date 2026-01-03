extends CanvasLayer

@export var arrowFall : PackedScene
@export var arrowSprite : Arrows

const pos : Dictionary = {
	0: Vector2(1022.0, 0), # Up
	1: Vector2(894.0, 0), # Left
	2: Vector2(1086.0, 0), # Right
	3: Vector2(958.0, 0) # Down
}
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		inst(0)
	if Input.is_action_just_pressed("ui_up"):
		inst(3)
	if Input.is_action_just_pressed("ui_left"):
		inst(1)
	if Input.is_action_just_pressed("ui_right"):
		inst(2)

func _on_arrow_boundary_area_entered(area : Area2D) -> void:
		if Input.is_action_pressed("down"):
			area.get_parent().queue_free()
		if Input.is_action_pressed("right"):
			area.get_parent().queue_free()
		if Input.is_action_pressed("left"):
			area.get_parent().queue_free()
		if Input.is_action_pressed("up"):
			area.get_parent().queue_free()

func inst(type : int) -> void:
	var arrow_scene = arrowFall.instantiate()
	arrow_scene.position = pos[type]
	arrow_scene.texture = arrowSprite.images[type]
	add_child(arrow_scene)
