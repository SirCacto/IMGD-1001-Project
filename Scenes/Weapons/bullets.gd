extends CharacterBody2D
var pos: Vector2
var rota: float
var dir: float
var speed= 2000

func _ready():
	global_position=pos
	global_rotation=rota
func _physics_process(delta):
	velocity=Vector2(speed,0).rotated(dir)
	move_and_slide()

func _on_Bullet_body_entered(body):
	if body.name == "Enemy":  # or check group/class
		body.queue_free()     # deletes the enemy
	queue_free()              # deletes the bullet too
