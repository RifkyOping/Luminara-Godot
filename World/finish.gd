extends Area2D
@onready var audio_stream_player_2: AudioStreamPlayer = $"../AudioStreamPlayer2"
@onready var finish: CanvasLayer = $"../finishUI"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		finish.visible = true
		audio_stream_player_2.play()
