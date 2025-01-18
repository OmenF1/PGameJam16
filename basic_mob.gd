extends CharacterBody2D


@onready var player = get_node("../Player")

var health = 100

func _ready():
	$HealthBar.value = health

func _process(delta):
	position = position.move_toward(player.position, delta * 100)


func _on_area_2d_area_entered(area: Area2D) -> void:
	health -= 50
	$HealthBar.value = health
	if (health == 0):
		queue_free()
