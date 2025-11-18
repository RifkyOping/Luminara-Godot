extends Area2D
@onready var score: CanvasLayer = $"../../Score"
@onready var player: Player = $"../../Player"
@onready var game_over_screen: CanvasLayer = $"../../gameOverScreen"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		game_over_screen.visible = true
		score.visible = false
		player.can_move = false
