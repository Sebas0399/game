extends ParallaxBackground

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var v=0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.
func _process(delta):
	v-=100*delta
	set_scroll_offset(Vector2(v,0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
