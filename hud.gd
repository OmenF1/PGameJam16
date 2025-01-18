extends CanvasLayer

@export var max_hp = 100
@export var hp  = 100
@export var mana = 100
@export var max_mana = 100
@export var xp = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$HUD/Health.max_value = max_hp
	$HUD/Health.value = hp
	$HUD/Mana.max_value = max_mana
	$HUD/Mana.value = mana
