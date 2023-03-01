float mapValX = 0;
float mapValY = 0;
void setup(){
  size(400,400);
  frameRate(30);
}

void draw(){
  background(51);
  translate(200,200);
  
  mapValX = map(mouseX, width/2, width, 0, width/4);
  mapValY = map(mouseY, height/2, height, 0, height/4);
   circle(mapValX,mapValY,50);
   
   
   saveFrame("frames/###.png");
  
}