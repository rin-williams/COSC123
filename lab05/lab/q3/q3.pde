int scaleBy = 0;
int rotateBy = 0;
int dissolveBy = 0;
int textScale = 0;
void setup() {
  size(400,400);
  frameRate(30);
}

void draw(){
  dissolveBy += 1;
  scaleBy += 1;
  rotateBy += 2;
  
  translate(400/2,400/2);
  background(0);
  rotate(radians(rotateBy));
  
  pushMatrix();
  
  rotate(PI/3);
  stroke(0,0,255,255-dissolveBy);
  strokeWeight(5);
  noFill();
  rectMode(CENTER);
  rect(0,0,200+scaleBy,200+scaleBy);
  
  rotate(PI/3);
  stroke(0,0,255,255-dissolveBy);
  strokeWeight(5);
  noFill();
  rectMode(CENTER);
  rect(0,0,200+scaleBy,200+scaleBy);
  
  rotate(PI/3);
  stroke(0,0,255,255-dissolveBy);
  strokeWeight(5);
  noFill();
  rectMode(CENTER);
  rect(0,0,200+scaleBy,200+scaleBy);
  
  popMatrix();
  
  stroke(0,0,255,255-dissolveBy);
  fill(255,255,255,255-dissolveBy);
  circle(0,0,75+scaleBy);
  
  stroke(0,0,125,255-dissolveBy);
  noFill();
  circle(0,0,82+scaleBy);

  pushMatrix();
  textSize(25+scaleBy/3);
  text("UBC",-24-scaleBy/3,8+scaleBy/6);
  popMatrix();
  
  //saveFrame("frames/####.png");
}
