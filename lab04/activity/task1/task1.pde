int x=300,y=200;

void setup(){
  size(300,200);
  
  stroke(0);
  strokeWeight(2);
  line(0,0,x,y);
  line(x,0,0,y);
  ellipseMode(CENTER);
  ellipse(x/2,y/2,x/1.75,y/1.75);
  rectMode(CENTER);
  rect(x/8,y/2,x/10,y/10);
  rect(x-x/8,y/2,x/10,y/10);

}
