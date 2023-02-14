# Task 3 - More practice with mouse events

This code is is used to draw a continuous line:

```
void setup() {
  size(200, 200);
  background(255);
  stroke(0);}
void draw() {
  //... add code here ...
  line(pmouseX, pmouseY, mouseX, mouseY );
}
```

Copy the code above into a new PDE file called `task3.pde`. 

## Specifications

Modify the code so that the thickness of the line is controlled by the mouse speed.

Here are some hints:

- Mouse Speed is the distance the mouse travel per unit of time. 
- Therefore, speed can be computed in terms of the distance the mouse travels in each new frame.
- In other words, the difference between the current mouse position and previous one.
- Use abs() function to avoid negative values. 
- Don’t worry too much about having super accurate calculations. 

## Embed an animated gif of your drawing

Embed the animated gif you created here using markdown syntax: `![alt text of image](relative path to image)`


![task 3 gif](activity/animations/task3.gif)
