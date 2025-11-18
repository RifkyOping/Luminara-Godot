extends Area2D

@onready var score: CanvasLayer = $"../../Score"
@onready var finish_ui: CanvasLayer = $"../../finishUI"

func spawn_feedback():
	var scene_to_spawn = preload("res://Pickups/Feedback/feedback.tscn")
	var new_scene_instance = scene_to_spawn.instantiate()
	get_tree().current_scene.add_child(new_scene_instance)  # Add the instance as a child of the current scene
	new_scene_instance.global_position = global_position


func _on_body_entered(body):
	score.tambahCeri()
	finish_ui.tambahCeri1()
	spawn_feedback()
	queue_free()
