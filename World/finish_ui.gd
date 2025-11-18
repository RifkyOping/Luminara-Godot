extends CanvasLayer
@onready var labelCeri1: Label = $ceri/Label
@onready var labelDiamond1: Label = $diamond/Label

func tambahCeri1():
	var poin = GlobalPoin.poinCeri
	labelCeri1.text = "x " + str(poin)
	poin += 1
	GlobalPoin.poinCeri = poin
	
func tambah_Diamond1():
	var poin = GlobalPoin.poinDiamond
	labelDiamond1.text = "x " + str(poin)
	poin += 1
	GlobalPoin.poinDiamond = poin
	
func  resetPoin1():
	GlobalPoin.poinDiamond = 0;
	GlobalPoin.poinCeri = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
