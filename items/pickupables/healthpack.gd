extends Area2D

@onready var animationPlayer:AnimationPlayer = $AnimationPlayer


func _ready():
	animationPlayer.play("Floating")

func _on_body_entered(body:Node2D):
	if body.is_in_group("player"):
		body.heal()
		queue_free()
