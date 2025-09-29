extends CharacterBody2D

const SPEED = 60

var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_d_right: RayCast2D = $RayCastDRight
@onready var ray_cast_d_left: RayCast2D = $RayCastDLeft

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	move_and_slide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * SPEED * delta
	
	if not ray_cast_d_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	if not ray_cast_d_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
