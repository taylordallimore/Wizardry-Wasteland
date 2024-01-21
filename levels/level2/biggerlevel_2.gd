extends Node2D

func _ready():
	for i in range(0):
		spawn_mob()


func spawn_mob():
	var new_mob = preload("res://entities/slime.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()

