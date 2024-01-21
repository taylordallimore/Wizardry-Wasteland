extends Control

@onready var health_bar = $Healthbar
@onready var player = get_node("/root/Level_1/player")


func _ready():

	player.connect("health_updated", set_value)


func set_value(health):
	health_bar.value = health 

func set_max_value(max_health):
	health_bar.max_value = max_health
