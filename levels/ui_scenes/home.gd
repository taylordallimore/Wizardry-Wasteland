extends Control



func _on_exit_pressed():
	get_tree().quit()

func _on_start_pressed():
	get_tree().change_scene_to_file("res://levels/level2/biggerlevel_2.tscn")

