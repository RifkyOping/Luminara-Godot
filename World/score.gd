extends CanvasLayer
@onready var labelCeri: Label = $ceri/Label
@onready var labelDiamond: Label = $diamond/Label

func tambahCeri():
	var poin = GlobalPoin.poinCeri
	poin += 1
	labelCeri.text = "x " + str(poin)
	GlobalPoin.poinCeri = poin
	
func tambah_Diamond():
	var poin = GlobalPoin.poinDiamond
	poin += 1
	labelDiamond.text = "x " + str(poin)
	GlobalPoin.poinDiamond = poin
# Called when the node enters the scene tree for the first time.

func  resetPoin():
	GlobalPoin.poinDiamond = 0;
	#labelDiamond.text = "x " + str(GlobalPoin.poinDiamond)
	GlobalPoin.poinCeri = 0
	#labelCeri.text = "x " + str(GlobalPoin.poinCeri)

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
