extends Area2D

@onready var bulletype = "fire";
@onready var fireimg = $Marker2D/fireball
@onready var iceimg = $Marker2D/iceball
@onready var timer = $Timer

func _physics_process(_delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)

		
func shoot():
	const BULLET = preload("res://entities/player/attacks/bullet.tscn")
	const ICE_BULLET = preload("res://entities/player/attacks/ice_bullet.tscn")
	var new_bullet

	if bulletype == "fire":
		new_bullet = BULLET.instantiate()
		timer.wait_time = 1
		fireimg.visible = true
		iceimg.visible = false
	else:
		new_bullet = ICE_BULLET.instantiate()
		timer.wait_time = 0.6
		iceimg.visible = true
		fireimg.visible = false
	
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)
	
func _on_timer_timeout():
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		shoot()

func _input(_ev):
	if Input.is_key_pressed(KEY_E):
		if bulletype == "fire":
			bulletype = "ice"
		else:
			bulletype = "fire"
