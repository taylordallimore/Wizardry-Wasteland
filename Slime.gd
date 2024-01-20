extends CharacterBody2D

@onready var anim = $AnimationPlayer
@onready var player = get_node("/root/Level_1/player")

func _physics_process(delta):
	anim.play("idle")
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 50.0
	move_and_slide()
