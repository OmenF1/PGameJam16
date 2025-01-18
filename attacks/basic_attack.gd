extends CharacterBody2D
var screen_size
@export var direction = "left"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	match direction:
		"left":
			velocity.x -= 1
		"right":
			velocity.x += 1
		"up":
			velocity.y += 1
		"down":
			velocity.y -= 1
	velocity = velocity.normalized() * 50
	move_and_collide(velocity * delta)


func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()
