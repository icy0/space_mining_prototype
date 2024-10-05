extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var max_linear_speed = 300
	var max_angular_speed = 15
	var boost_modifier = 5.0
	
	var directional_force = Vector2(0, 0)
	if Input.is_action_pressed("move_north"):
		directional_force += Vector2(0.0, -1.0)
	if Input.is_action_pressed("move_south"):
		directional_force += Vector2(0.0, 1.0)
	if Input.is_action_pressed("move_west"):
		# directional_force += Vector2(-1.0, 0.0)
		apply_torque(-max_angular_speed)
	if Input.is_action_pressed("move_east"):
		# directional_force += Vector2(1.0, 0.0)
		apply_torque(max_angular_speed)
	if Input.is_action_pressed("boost"):
		max_linear_speed *= boost_modifier
		
	apply_central_force(directional_force.normalized().rotated(rotation) * max_linear_speed * delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
