# Task 1 - Happy Face Class Definition

Implement a class HappyFace:

- A HappyFace has position 'x', 'y', and radius 'r', all of float type.
- A HappyFace has fill color and outline color.
- Write a function display() that draws the face centered at (x,y).

  - The mouth is an arc with a diameter equal to '1.6\*r'.
  - The eyes are ellipses with dimensions 'r/2 \* r/4'
  - The outline’s thickness is 'r/20'

- Use the HappyFace class to create two different faces and display them on the sketch.
  - Use the dot operator to set the attributes. E.g.:
    - face1.x = width/2;
    - face1.y = height/2;
    - face1.r = width/4.
    - face1.fillColor = color(255,255,0);

_Hint: code for drawing 1 happy face in a non-OOP way:_

```
float x = 50, y = 50, r = 20;
fill(255,255,0);
stroke(255,155,0);
strokeWeight(r/20);
ellipse(x,y,2*r,2*r);
//face
arc(x,y,1.6*r,1.6*r,.1*PI,.9*PI); //mouth
ellipse(x+r/2,y-r/4,r/4,r/2);     //right eye
ellipse(x-r/2,y-r/4,r/4,r/2);     //left eye
```

Add code to move the faces and bounce them off the sketch edges

## Embed an animated gif of your drawing

Embed the animated gif you created here using markdown syntax: `![alt text of image](relative path to image)`
![task1](/activity/animations/task1.gif)
