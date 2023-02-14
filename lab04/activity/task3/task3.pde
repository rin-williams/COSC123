int radius = 150;
int x =200, y=200;
int r =55;
float theta;
int seconds;
void setup(){
  size(200,200);
  frameRate(1);
  seconds = 0;
  
  
}
void draw(){
  
  background(51);
  
  stroke(200,0,255);
  strokeWeight(5);
  fill(#ffffff);
  circle(x/2,y/2,radius);
  
  stroke(255,0,0);
  strokeWeight(2);
  
  translate(100,100);
  
  seconds++;
  theta = (seconds * (PI/30)) - (PI/2);
  line(0,0, r*cos((theta)),r*sin((theta)));
  
  translate(-100,-100);
  noStroke();
  
  textSize(12.5);
  fill(#000000);
  

  text(12, 95,40);
  text(3, 165,100);
  text(6, 95,170);
  text(9, 30,100);
  
  //saveFrame("frames/####.png");
  
}
