extends CharacterBody2D

var health = 10

@onready var anim = $AnimationPlayer
@onready var player = get_node("/root/Level_1/player")

func _physics_process(delta):
	anim.play("idle")
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 20
	move_and_slide()

func take_damage():
	health -= 1
	if health <= 0:
		queue_free()
		player.score += 1

func deal_damage():
	player.damage(5)
