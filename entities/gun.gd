extends Area2D



func _physics_process(_delta):
	# var enemies_in_range = get_overlapping_bodies()
	# if enemies_in_range.size() > 0:
	# 	var target_enemy = enemies_in_range.front()
	# 	look_at(target_enemy.global_position)
	look_at(get_global_mouse_position())
		
func shoot():
	const BULLET = preload("res://entities/bullet.tscn")
	var new_bullet = BULLET.instantiate()
	
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(new_bullet)
	
func _on_timer_timeout():
		shoot()
