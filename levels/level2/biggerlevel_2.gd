extends Node2D
var mob_num = 0
var current_mob = 0

func _ready():
	spawn_big_mob()


func spawn_mob():
	var new_mob = preload("res://entities/slime/slime.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)

func spawn_mob2():
	var new_mob = preload("res://entities/slime/slime2.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)

func spawn_big_mob():
	var new_mob = preload("res://entities/slime/slime3.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	print(mob_num)
	if mob_num < 50:
		if current_mob == 0:
			spawn_mob()
			mob_num += 1
			current_mob = 1
		else:
			spawn_mob2()
			mob_num += 1
			current_mob = 0

