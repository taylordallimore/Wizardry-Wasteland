extends AnimatedSprite2D


@onready var anim = $AnimationPlayer

func _ready():
	anim.play("idle")