extends Area2D
@onready var score: CanvasLayer = $"../../Score"
@onready var finish_ui: CanvasLayer = $"../../finishUI"


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		score.tambah_Diamond()
		finish_ui.tambah_Diamond1()
		queue_free()
