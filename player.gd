extends CharacterBody2D

@export var attack_scene: PackedScene
@export var speed=150

var hp = 100
var max_hp = 100
var mana = 100
var max_mana = 100

var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		$AnimatedSprite2D.animation = "walk_left"
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		$AnimatedSprite2D.animation = "walk_right"
		velocity.x += 1
	if Input.is_action_pressed("move_up"):
		$AnimatedSprite2D.animation = "walk_backwards"
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		$AnimatedSprite2D.animation = "walk_forward"
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	
	move_and_collide(velocity * delta)
	position = position.clamp(Vector2.ZERO, screen_size)
	$Hud.hp = hp
	$Hud.mana = mana


func _on_test_attack_timer_timeout() -> void:
	var up = attack_scene.instantiate()
	up.direction = "up"
	up.position = global_position
	var down = attack_scene.instantiate()
	down.direction = "down"
	down.position = global_position
	var left = attack_scene.instantiate()
	left.direction = "left"
	left.position = global_position
	var right = attack_scene.instantiate()
	right.direction = "right"
	right.position = global_position
	get_parent().add_child(up)
	get_parent().add_child(down)
	get_parent().add_child(left)
	get_parent().add_child(right)
	
	$TestAttackTimer.start()
	
	
	
	
	
	
