extends CanvasLayer


@onready var counter = $Counter

func _ready():
	pass

func _physics_process(delta):
	counter.text = str(GlobalSignals.enemiesleft)

