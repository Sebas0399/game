extends KinematicBody2D
const ACELERATION=70
const MAX_SPEDD=300
var JUMP_H=-900
const UP=Vector2(0,-1)
const gravity=40
onready var sprite=$Sprite
var motion=Vector2()
func _physics_process(delta):
	motion.y+=gravity
	var friction=true
	
	if Input.is_action_just_pressed("ui_accept"):
			motion.y=JUMP_H
			JUMP_H=JUMP_H+100
			$CanvasLayer/TextureProgress.value-=100
	else:
		friction=false
	if $CanvasLayer/TextureProgress.value==800:
		$CanvasLayer/TextureProgress/TextureRect4.visible=false
	elif $CanvasLayer/TextureProgress.value==0:
		$CanvasLayer/TextureProgress/TextureRect3.visible=false
	motion=move_and_slide(motion,UP)
					