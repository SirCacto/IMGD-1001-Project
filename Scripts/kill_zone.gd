extends Area2D


var player_path=preload("res://Scenes/Player/player.tscn")
var player=player_path.instantiate()

@onready var timer: Timer = $Timer
# @onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print ("You died!")
		Engine.time_scale = .5
		# animation_player.play("Death")
		timer.start()
	elif body.name =="SpacePlayer":
		print ("You died!")
		Engine.time_scale = .5
		# animation_player.play("Death")
		timer.start()



func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
