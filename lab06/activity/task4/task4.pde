

float mapValX = 0;
float mapValY = 0;
void setup(){
  size(400,400);
  frameRate(30);
}

void draw(){
  background(51);
  
  rectMode(CENTER);
  stroke(255,0,0);
  strokeWeight(3);
  noFill();
  rect(200,200,200,200);
  
  noStroke();
  fill(255);
  mapValX = constrain(mouseX,100,300);
  mapValY = constrain(mouseY,100,300);
   circle(mapValX,mapValY,50);
   
   
   saveFrame("frames/###.png");
  
}