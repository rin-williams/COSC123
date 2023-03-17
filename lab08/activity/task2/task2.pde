void setup() {
  // Add your code for this task below
  // ctrl R to run
  size(400, 400);
  //c1 for outlines,
  //c2 for fills.
  //using HSB colors
  drawSuperHero(100, 100, 0.5, 255, 150);
  drawSuperHero(200, 200, 1, 255, 360);
  drawSuperHero(400, 400, 0.25, 360, 150);
}
void draw(){
  println("mouseX: " +mouseX + " mouseY: " +mouseY);
  
}

void drawSuperHero(int x, int y, float scale, color c1, color c2) {

  colorMode(HSB, 360, 100, 100);
  
  
  pushMatrix();
  translate(x-100,y-100);
  scale(scale);
  
  // head
  strokeWeight(4);
  stroke(c1, 100, 100);
  fill(c2, 100, 100);
  
  ellipse(100, 50, 50, 60);

  // body
  strokeWeight(2);
  fill(c2, 100, 100);
  rect(75, 85, 50, 70);
  fill(c2, 100, 100);
  triangle(85, 95, 115, 95, 100, 125);

  // s logo
  textSize(23);
  fill(255, 255, 255);
  text("S", 94, 113);

  // arms
  strokeWeight(3);
  stroke(c1, 100, 100);
  line(72, 85, 35, 45);
  line(130, 90, 150, 135);
  line(88, 165, 65, 200);
  line(113, 165, 125, 200);

  // belt
  stroke(c1,100, 100);
  strokeWeight(5);
  strokeCap(ROUND);
  line(75, 135, 125, 135);

  popMatrix();
}
