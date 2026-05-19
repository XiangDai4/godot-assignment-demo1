class_name Knight extends CharacterBody2D

@export var _speed : float = 50.0
@export var _jump_velocity : float = -200.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = _jump_velocity

	# Read the movement direction from the user.
	var direction := Input.get_axis("left", "right")
	if is_zero_approx(direction):
		# Stop gradually.
		velocity.x = move_toward(velocity.x, 0, _speed)
	else:
		# Move toward input direction with the speed _speed.
		velocity.x = direction * _speed

	move_and_slide()

func die() -> void:
	pass
