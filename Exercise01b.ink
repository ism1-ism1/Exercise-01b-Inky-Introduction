/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west. 
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. {not east_tunnel_lit: It is very dark, you can't see anything.} {east_tunnel_lit: You see the piles of coins being guarded by the wolf still. It growls as you approach.}
* {torch_pickup} [Light torch] -> east_tunnel_lit
+ {east_tunnel_lit}{pet_snake} [Call for help] -> snake_help
+ {east_tunnel_lit} [Swing your torch at the wolf]-> wolf_attack
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. {not west_tunnel_thrown_stick: You are able to see a white snake resting upon a rock ahead of you.}
+ [Look around] -> look_around
* {torch_pickup} [Throw torch] -> west_tunnel_thrown_stick
+ {not west_tunnel_thrown_stick} [Approach the snake] -> west_tunnel_approach_snake
+ [Go back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints of off the tousands of coins in the room.
+ [Pick up some of the coins] -> pickup_coins
+ [Go back] -> cave_mouth
-> END

== pickup_coins ==
You start gathering the coins into your pockets, but suddenly a wild wolf appears. It growls at you and doesn't seem to want you to take any coins.
+ {pet_snake} [Call for help] -> snake_help
+ [Swing your torch at the wolf]-> wolf_attack
+ [Run away] -> cave_mouth
-> END

== wolf_attack ==
The wolf ignores your attempted attack and charges at you. It bites into your neck, killing you instantly. Bad Ending Achieved.
-> END

== snake_help ==
Your yelp for assistance was heard as you see the snake from earlier slither forward and charges at the wolf. The snake sinks its fangs into the wolf and injects it with a poison that kills the wolf quickly. You quickly loot the coins and thank your new friend as you exit the cave with new found riches. Good Ending Achieved.
-> END

== west_tunnel_thrown_stick ==
You throw the stick at the snake. The snake gets scared and slithers away.
+ [Look around] -> look_around
+ [Return to the diverging paths] -> cave_mouth
-> END

== look_around ==
Searching around the west tunnel results in nothing being discovered.
+ [Go back] -> west_tunnel
+ [Return to the diverging paths] -> cave_mouth
-> END

== west_tunnel_approach_snake ==
You walk towards the snake. {not pet_again: The snake looks up at you but doesn't attack or show any hostilites.} {pet_snake: The snake looks up at you cutely.}
* [Try to pet the snake] -> pet_snake
+ {pet_again} [Pet the snake again] -> pet_again
+ [Go back] -> west_tunnel
+ [Return to the diverging paths] -> cave_mouth
-> END

== pet_snake ==
You reach out slowly to pet the snake. You gently rub the top of the snake's head and it seems to enjoy it. This snake appears to have gained an afinity towards you.
+ [Pet the snake again] -> pet_again
+ [Go back] -> west_tunnel
+ [Return to the diverging paths] -> cave_mouth
-> END

== pet_again ==
You gently pet the snake's head again. It enjoys your affection.
+ [Pet the snake again] -> pet_again
+ [Go back] -> west_tunnel
+ [Return to the diverging paths] -> cave_mouth
-> END
