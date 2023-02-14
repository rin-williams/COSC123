# Task 3 - Analogue Clock Part 2

Improve your analogue clock.

## Specifications

Repeat the previous task and make the following changes:

* Have a variable called seconds that is initialized to 0.
* For every new frame:
  - Increment seconds by 1.
  - Don’t increment the angle. Instead, compute it based on seconds. Use the following formula:
      *angle = (seconds * (PI/30)) - (PI/2)*
  - Then use theta as before to draw the seconds hand.

## Embed an animated gif of your drawing

Embed the animated gif you created here using markdown syntax: `![alt text of image](relative path to image)`

![task3 gif](../animations/task3.gif)