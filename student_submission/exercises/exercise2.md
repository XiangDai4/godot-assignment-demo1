# Exercise 2 - Health node

Switch to branch exercise-2.

In this branch, open the scene level01.tscn. This scene has the node called "Knight".
This node has a script called knight.gd attached to it. This script reads user's input and moves
the knight based on it and physics (collisions, gravity).

## Implementation

Implement the node Health. This node should track the current health amount a character has. The 
current health is stored as integer value. The Health node should define the following interface:
- `get_health() -> int`
  * returns the current health
- `set_health(amount : int) -> void`
  * sets the health to the amount 'amount'
- `take_damage(amount : int) -> void`
  * subtracts the 'amount' from current health
- `heal(amount : int) -> void`
  * adds the 'amount' to current health
	
There should also be a signal called health_changed, which is emitted every time the current 
health's value changes. The current health value is passed with the signal.

After the Health node is implemented, add it to the Knight. Subscribe to the health_changed signal.
Print "Current health: {current_health}" to the development console every time character's health
changes. For debugging, decrease Knight's health by one every time a key "X" is pressed down. Make
sure the correct health amount is printed to the consode every time the "X" key is pressed.

## Submitting

Implement your solution and push your changes to the same branch (exercise-2). Merge your solution
to main branch and push the merge as well (or create a pull request and accept that in GitHub).
Mark the commit (in main branch) that contains your solution with a tag "exerice-2-solution". Make
sure the tag is commited.
