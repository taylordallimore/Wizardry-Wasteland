extends CanvasLayer


@onready var counter = get_node("Counter")

func _ready():
	pass

func _physics_process(delta):
	counter.text = str(GlobalSignals.enemiesleft)

