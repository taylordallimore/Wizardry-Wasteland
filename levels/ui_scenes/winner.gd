extends Node2D



func _on_exit_pressed():
	get_tree().quit()



func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://levels/level2/biggerlevel_2.tscn")
	GlobalSignals.enemiesleft = 200
