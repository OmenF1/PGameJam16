extends Node2D
@export var mob_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mob_spawn_timer_timeout() -> void:
	add_mobs(5)
	$MobSpawnTimer.start()

func add_mobs(amount: int) -> void:
	for i in amount:
		var mob  = mob_scene.instantiate()
		add_child(mob)
