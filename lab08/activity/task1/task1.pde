

void setup() {
  size(300, 250);
}
void draw() {
  background(255);
  drawSpaceship(20, 30, 16*2, 0);   //tiny spaceship
  drawSpaceship(50, 50, 32*2, 0.4);  //small spaceship
  drawSpaceship(150, 30, 48*2, 0.8); //medium spaceship
  drawSpaceship(100, 100, 64*2, 1.0); //big spaceship
}
void drawSpaceship(int x, int y, int size, float brightness) {
  colorMode(RGB, 255, 255, 255);

  stroke(255*brightness, 0, 0);
  strokeWeight(size/20);
  strokeCap(SQUARE);
  line(x-size/5, y+size/2.5, x-size/5, y+size/5);
  line(x+size/5, y+size/2.5, x+size/5, y+size/5);
  
  stroke(0,255*brightness,0);
  strokeWeight(size/20);
  strokeCap(SQUARE);
  line(x-size/5,y+size/1.9,x+size/5,y+size/1.9);


  strokeWeight(2);
  stroke(0);
  fill(0, 0, 255*brightness);
  triangle(x, y, x-size/4, y+size/2, x+size/4, y+size/2);

  strokeWeight(2);
  stroke(0);
  fill(75*brightness, 75*brightness, 255*brightness);
  ellipseMode(CENTER);
  ellipse(x, y+size/3.1, size/6, size/4);
}
