extends CharacterBody2D

var speed = 200
var jump_force = 400
var health = 100

func _physics_process(delta):
    var direction = Vector2.ZERO

    if Input.is_action_pressed("ui_right"):
        direction.x += 1
    if Input.is_action_pressed("ui_left"):
        direction.x -= 1

    velocity = direction * speed
    move_and_slide()

func move(dir: Vector2):
    velocity = dir * speed
    move_and_slide()

func jump():
    velocity.y = -jump_force
    move_and_slide()

func take_damage(amount: int):
    health -= amount
    if health <= 0:
        die()

func die():
    queue_free()
