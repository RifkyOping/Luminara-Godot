extends Area2D
@onready var game_over_screen: CanvasLayer = $"../gameOverScreen"
@onready var score: CanvasLayer = $"../Score"




func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		game_over_screen.visible = true
		score.visible = false
		#get_tree().reload_current_scene()
