extends Camera2D

var zoom_step = Vector2(0.5, 0.5)
var min_zoom = Vector2(1.0, 1.0)
var max_zoom = Vector2(6.0, 6.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("zoom_in"):
		set_zoom(get_zoom() + zoom_step)
	if Input.is_action_just_pressed("zoom_out"):
		set_zoom(get_zoom() - zoom_step)
	set_zoom(get_zoom().clamp(min_zoom, max_zoom))
