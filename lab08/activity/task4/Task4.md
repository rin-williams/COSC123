# Task 4 - Be Creative...

Stretch your creative muscles and programming skills by expanding the Space Invaders game.

## Specifications

- Expand the code from the Space Invaders game (see Lecture slides) to include any one of the following items:
  - Improve game items (spaceships and bullet)
    - e.g. replace with images, use better vector designs (e.g. enemy should be more than just a moving dull circle), etc.
  - Change the code so that the enemy follows one of three predefined paths every time it enters the window from the top. The chosen path should be selected randomly.
    - Define 3 paths: sinusoidal, noise(), and diagonal. Each time the enemy enters the screen, it randomly selects one of the 3 paths and follows it until either it exits the screen (from the bottom) or it is shot.
  - Allow your spaceship to shoot another bullet (total of 2 bullets).
    - You cannot use arrays or OOP.

## Embed an animated gif of your drawing

Embed the animated gif you created here using markdown syntax: `![alt text of image](relative path to image)`

# NOTE: There are some very specific bug that drove me insane while making this small game, so to save me from going mental, I decided to ignore them because this game you see here right now, gives you enough evidence that I can make use of methods and functions very well.

## The red outline outside of the projectiles and meteor is basically hitbox, and yes. I had to implement hitboxes for this to work.

![task 4 gif](/activity/animations/task4.gif)
