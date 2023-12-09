extends Sprite2D

# Move a Sprite2D node from it's starting location to the right end of the screen.
# Once it reaches the right side of the screen and is a full 1 width past the right edge of the viewport,
#	then the Sprite2D node is reset to it's starting position and the process starts over.

const SPEED = 5

func _physics_process(delta):
	# Get the current position
	var position = self.position

	# Calculate the new position
	position.x += SPEED + delta

	# Check if the sprite has reached the right side of the screen
	# Add `texture.get_width()` to the `get_viewport().size.x` value so that the sprite waits
	#	to wrap back to the left until the sprite has COMPLETELY gone off the right side of the
	#	viewport.
	if position.x > (get_viewport().size.x + texture.get_width()):
		# Reset the position to the left side of the screen
		position.x = 0

	# Move the sprite to the new position
	self.position = position


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
