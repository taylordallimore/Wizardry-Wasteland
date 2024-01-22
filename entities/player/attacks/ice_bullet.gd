extends Area2D
var travelled_distance = 0
@onready var animation = $AnimatedSprite2D/AnimationPlayer

func _physics_process(delta):
	animation.play("ice")

	const SPEED = 600
	const RANGE = 4000

	var direction = Vector2.RIGHT.rotated(rotation) 
	position += direction * SPEED * delta

	travelled_distance += SPEED * delta
	if travelled_distance > RANGE:
		queue_free()

func _on_body_entered(body:Node2D):
	queue_free()
	if body.has_method("take_damage"):
		print("ice hit")
		body.take_damage()


func _ready():
	animation.play("ice")
