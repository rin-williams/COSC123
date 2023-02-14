// Add your code for this task below
int x, y;

void setup() {
  size(400, 400);
}
void draw() {
  x = mouseX;
  y = mouseY;

  colorMode(RGB, 250, 250, 250);

  background(51,51,51);
  
  //head
  stroke(150);
  strokeWeight(5);
  noFill();
  circle(197+x/45,125+y/45,75);
  
  //body
  stroke(150);
  strokeWeight(5);
  noFill();
  bezier(15,35,x,y,400-x,400-y,300,375);
  bezier(400-15,35,x,y,400-x,400-y,100,375);
  


  // circles
  
  noStroke();
  
  //red
  fill(255, x, y, 100);
  circle(x, y, 150);
  //red inverted x,y
  fill(255, x, y, 100);
  circle(400-x, 400-y, 150);

  //blue inverted x
  fill(x, y, 255, 100);
  circle(400-x, y, 150);
  
  //blue inverted y
  fill(x, y, 255, 100);
  circle(x, 400-y, 150);
  
  //----

  textSize(15);
  fill(#ffffff);
  text("mouseX: "+mouseX, 15, 15);
  text("mouseY: "+mouseY, 15, 30);
  
  saveFrame("frames/####.png");
}
