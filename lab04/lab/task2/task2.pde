// Add your code for this task below
int x, y;
void setup() {
  size(400, 400);
  frameRate(30);
}
void draw() {
  x = mouseX;
  y = mouseY;
  background(0);

pushMatrix();
  textSize(15);
  fill(#ffffff);
  text("mouseX: "+mouseX, 15, 15);
  text("mouseY: "+mouseY, 15, 30);

  //planet
  stroke(0, 0, 255);
  strokeWeight(1);
  fill(0, 0, 255, 50);
  circle(250, 250, 150);
  
  translate(250,250);
  rotate(PI/4);
  noFill();
  arc(0,0,35,275,-PI/1.21,PI/1.21);
  arc(0,0,25,225,-PI/1.29,PI/1.29);
  noCursor();
  popMatrix();
  //----
  
  //spaceship
  pushMatrix();
  translate(x-200, y-200);
  stroke(255);
  strokeWeight(2);

  colorMode(RGB, 255, 255, 255);
  fill(255, 255, 255, 100);

  triangle(200, 165, 220, 210, 180, 210);
  ellipse(200, 195, 15, 25);

  strokeWeight(8);
  strokeCap(SQUARE);
  line(220, 211, 220, 185);
  line(180, 211, 180, 185);
  popMatrix();
  
  saveFrame("frames/####.png");
}
