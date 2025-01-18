extends Node2D

@export var mob_scene: PackedScene


func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Called when the mob spawn timer times out.
func _on_mob_spawn_timer_timeout() -> void:
	for i in range(5):
		var mob = mob_scene.instantiate()
		add_child(mob)
		mob.position = Vector2(randf_range(100, 800), randf_range(100, 600)) 
		
	# Restart the timer after spawning the mobs (if you want continuous spawning)
	$MobSpawnTimer.start()
