extends Node2D

var active_timer = 0

#@onready var player = $Guy_man
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(Input.is_action_just_pressed("attack")):
		active_timer=25
	
	if(active_timer>0):
		self.visible=true
		active_timer-=60*delta
	else:
		self.visible=false
	#position.x=player.position.x
	#position.y=player.position.y
	pass
