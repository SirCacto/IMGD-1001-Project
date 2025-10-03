extends CharacterBody2D

var gun_path=preload("res://Scenes/Weapons/gun.tscn")
var gun=gun_path.instantiate()


const SPEED = 180.0
const JUMP_VELOCITY = -375.0

var prev_frame_on_ground := false

@onready var animated_sprite = $AnimatedSprite2D
@onready var coyote_timer: Timer = $CoyoteTimer

func _ready():
	add_child(gun)  # put the gun in the scene



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		if (prev_frame_on_ground):
			coyote_timer.start()
			prev_frame_on_ground = false

	if is_on_floor():
		prev_frame_on_ground = true

	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() or not coyote_timer.is_stopped()):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("Run")
	else:
		animated_sprite.play("Jump")
	
	
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)


	gun.global_position=$Node2D.global_position

	move_and_slide()
