class_name Mover extends Node2D

## The speed of the character (pixels / second)
@export var _speed : float = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input: Vector2 = read_input()
	move(input, delta)

## Reads the user input (movement direction and strength).
func read_input() -> Vector2:
	return Input.get_vector("left", "right", "up", "down")
	

## Moves the character by modifying its position in the world coordinates based on the input,
## delta (the time since the previous frame) and _speed.
func move(input : Vector2, delta : float) -> void:
	pass
