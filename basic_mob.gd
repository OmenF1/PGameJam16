extends RigidBody2D


@onready var player = get_node("../Player")

func _ready():
	pass
	
func _process(delta):
	position = position.move_toward(player.position, delta * 100)
