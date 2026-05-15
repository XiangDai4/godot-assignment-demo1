extends Sprite2D

var speed = randf_range(120, 220)
var float_speed = randf_range(1.0, 2.0)
var float_amount = randf_range(10, 25)

var start_y

func _ready():
	start_y = position.y

func _process(delta):
	position.x += speed * delta
	
	position.y = start_y + sin(Time.get_ticks_msec() * 0.001 * float_speed) * float_amount

	if position.x > 1300:
		position.x = -200