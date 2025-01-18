extends CharacterBody2D


@onready var player = get_node("../Player")

func _ready():
	pass

func _process(delta):
	position = position.move_toward(player.position, delta * 100)


func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()
