PImage img;

void setup(){
  size(500,500);
  img = loadImage("../images/ysl.jpeg");
  imageMode(CENTER);
}

void draw(){
  background(0);
  translate(500/2,500/2);
  tint(255, 255/2);
  image(img,0,0);
  
  tint(255, 255);
  scale(0.5);
  image(img,0,0);
}
