extends Node

@onready var enemiesleft = 200


func _physics_process(_delta):
		if enemiesleft == 0:
			get_tree().change_scene_to_file("res://levels/ui_scenes/winner.tscn")


