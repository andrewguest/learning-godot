# Nodes notes
---

## Node2D
### Notes:
  * 
### Description:
This is the parent Node of all other Nodes in a 2D project. Every other 2D Node inherits from this Node.

---

## TextureRect
### Notes:
  * 
### Description:
User interface Node used for displaying a texture.

---

## Rigidbody2D
### Notes:
  * Uses Godot's physics engine to move.
  * Cannot be controlled directly.
  * Needs a collision shape.
### Description:
A 2D physics body that is moved by Godot's physics simulation. This type of Node **cannot** be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.) and the physics simulation will calculate the resulting movement, rotation, collision reaction, and affect other physics bodies in this Nodes path.

### Methods:

### Signals:
* `body_entered(body: Node)`
  * `body`: The `Node`, if it exists in the tree, of the other `PhysicsBody2D` or `TileMap`.
  * Emitted when a collision with another `PhysicsBody2D` or `TileMap` occurs. Requires `contact_monitor` to be set to `true` and `max_contacts_reported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s.

* `body_exited(body: Node)`
  * `body`: The `Node`, if it exists in the tree, of the `PhysicsBody2D` or `TileMap`.
  * Emitted when the collision with another `PhysicsBody2D` or `TileMap` ends. Requires `contact_monitor` to be set to `true` and `max_contacts_reported` to be set high enough to detect all the collisions. `TileMap`s are detected if the `TileSet` has Collision `Shape2D`s. 

* `body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int)`
  * Emitted when one of this RigidBody2D's `Shape2D`s collides with another `PhysicsBody2D` or `TileMap`'s `Shape2D`s.

* `body_shape_exited(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int)`
  * Emitted when the collision between one of this RigidBody2D's `Shape2D`s and another `PhysicsBody2D` or `TileMap`'s `Shape2D`s ends.

* `sleeping_state_changed()`
  * Emitted when the physics engine changes the body's sleeping state.
