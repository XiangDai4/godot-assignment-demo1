# Exercise 1 - basic movement

Switch to branch exercise-1.

In this branch, open the scene move-test.tscn. This scene has the node called "PlayerCharacter".
This node has a script called mover.gd attached to it. In this script, user's input is read every
frame and a method "move" is called with parameters "input" and "delta". This method should move the
character. Implement the movement logic.

## The momement logic

The character should move based on the input direction and character's speed. For example:
- Character's speed is 10.0 and the left key is pressed exactly one second:
	-> the character moves left exactly 10 pixels
- Character's speed is 50.0 but no key is pressed:
	-> the characted doesn't move
- Character's speed is 20 and right key is pressed two seconds:
	-> the character moves right exactly 40 pixels
	
The movement code should manipulate character's global position directly, i.e. no physics should
be used.

## Submitting

Implement your solution and push your changes to the same branch (exercise-1). Merge your solution
to main branch and push the merge as well (or create a pull request and accept that in GitHub).
Mark the commit (in main branch) that contains your solution with a tag "exerice-1-solution". Make
sure the tag is commited.
