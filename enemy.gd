extends Node2D

@onready var sprite_2d = $Sprite2D

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_2d_right_down = $RayCast2DRightDown
@onready var ray_cast_2d_left_down = $RayCast2DLeftDown
@onready var ray_cast_2d_right = $RayCast2DRight



@export var direction=1
@export var speed = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#print(ray_cast_2d_right_down.is_colliding())
	if ray_cast_2d_right_down.is_colliding()==false:
		direction=-1
		sprite_2d.flip_h=true
	if ray_cast_2d_left_down.is_colliding()==false:
		direction=1
		sprite_2d.flip_h=false

	
	position.x+=direction * delta * speed
	
	
	pass
