PImage img;
int scaleBy = 0;
int opacityBy = 0;
int rotateBy = 0;

void setup() {
  size(500, 500);
  img = loadImage("../images/ysl.jpeg");
  imageMode(CENTER);
  scale(1);
  frameRate(30);
}

void draw() {
  scaleBy += 5;
  opacityBy += 3;
  rotateBy += 3;

  background(0);

  translate(500/2, 500/2);
  tint(255, 255-opacityBy);
  rotate(radians(rotateBy));
  if (scaleBy<500) {
    image(img, 0, 0, 500-scaleBy, 500-scaleBy);
  }
  saveFrame("frames/####.png");
}
