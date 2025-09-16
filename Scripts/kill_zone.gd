extends Area2D

@onready var timer: Timer = $Timer
# @onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	print ("You died!")
	Engine.time_scale = .5
	# animation_player.play("Death")
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
