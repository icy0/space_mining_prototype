extends Node2D

@onready var camera = $"../RigidBody2D/Camera2D"
@export var speed_modifier: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	global_position = speed_modifier * camera.global_position
