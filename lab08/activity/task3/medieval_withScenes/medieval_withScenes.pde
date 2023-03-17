/* TODO:
 1-Run the code (Ctrl+R) and observe the output.
 2-Familiarize yourself with how the code is divided into tabs.
 3-Implement the following two requirements
 REQ1: go to scene1 tab and implement the REQs in the comments there
 REQ2: add one more scene as described in the lecture notes.
 */

final int W=64, H=64;             //tile width and height
final int SPEED = 4;              //character speed: can only be 1,2,4,8,...(for alignmnet)
int speedX = 0;                   //+ve is right, -ve is left, 0 is not moving, can only be 1,2,4,8,..
int row;                          // for drawing
float x=5*W, y=6*H;               // character initially at 5th tile
float speedY = 0, gravity = 0.2;  // for jumping
boolean isJumping = false;
boolean inScene0 = true;

void setup() {
  frameRate(30);
  size(512, 512);
}

void draw() {
  if (inScene0) { //<>//
    scene0(); //<>// //<>//
  }else{ //<>//
    scene1();
    keyPressed();
    keyReleased();}
  println(keyCode);
  //saveFrame("frames/####.png");
}
