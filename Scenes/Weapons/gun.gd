extends CharacterBody2D
var bullet_path=preload("res://Scenes/Weapons/Bullets.tscn")



#Test Done




func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("shoot"): fire()
	
func _on_body_entered(body):
	queue_free()
	
	
	

	
func fire():
	var bullet=bullet_path.instantiate()
	bullet.dir=rotation
	bullet.pos=$Node2D.global_position
	bullet.rota=global_rotation
	get_parent().add_child(bullet)
