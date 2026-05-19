# Exercise 3 - Character spawning

Switch to branch exercise-3.

In this branch, open the scene level01.tscn. This scene has the node called "Knight".
This node has a script called knight.gd attached to it. This script reads user's input and moves
the knight based on it and physics (collisions, gravity).

**Preconditions:**
- The exercise 2 (Health node) is implemented

## Implementation
The knight has an empty method called `die()`. This method should be called when the Knight
character's current health reaches zero (0). Implement this by checking the current health value in
the Knight's health_changed signal handler method.

**Spawn Point**. Create an empty Node2D node to your level and add it to the group "Spawn". To learn
more about Godot's groups, see the [documentation](https://docs.godotengine.org/en/stable/tutorials/scripting/groups.html).

**`Die()`**. Implement the `die()` method.

In the Knight, get the reference to the Spawn node. In the `die()` method, move the character to
Spawn node's global position. Reset the character's health to its initial value.

## Submitting

Implement your solution and push your changes to the same branch (exercise-3). Merge your solution
to main branch and push the merge as well (or create a pull request and accept that in GitHub).
Mark the commit (in main branch) that contains your solution with a tag "exerice-3-solution". Make
sure the tag is commited.
