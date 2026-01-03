extends Node2D

@export_category("Arrows")
@export var arrow_left : Sprite2D
@export var arrow_up : Sprite2D
@export var arrow_down : Sprite2D
@export var arrow_right : Sprite2D

@export var highlighted : ArrowHighlight
@export var idle : ArrowIdle

func _process(_delta: float) -> void:
	if Input.is_action_pressed("down"):
		arrow_down.texture = highlighted.images[0]
	if Input.is_action_just_released("down"):
		arrow_down.texture = idle.images[0]
	if Input.is_action_pressed("right"):
		arrow_right.texture = highlighted.images[2]
	if Input.is_action_just_released("right"):
		arrow_right.texture = idle.images[2]
	if Input.is_action_pressed("left"):
		arrow_left.texture = highlighted.images[1]
	if Input.is_action_just_released("left"):
		arrow_left.texture = idle.images[1]
	if Input.is_action_pressed("up"):
		arrow_up.texture = highlighted.images[3]
	if Input.is_action_just_released("up"):
		arrow_up.texture = idle.images[3]
