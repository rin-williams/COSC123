// Add your code for this task below
int speedX = 3;
int speedY = 5;
HappyFace face1 = new HappyFace();
class HappyFace {
  float x;
  float y;
  float r;
  color fill;
  color outline;
  HappyFace() {
    this.x = width/2;
    this.y = height/2;
    this.r = width/4;
  }
  HappyFace(int x, int y, int r, color fill, color outline) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.fill = fill;
    this.outline = outline;
  }
  void display() {
    fill(fill);
    stroke(outline);
    strokeWeight(this.r/20);
    ellipse(this.x, this.y, 2*this.r, 2*this.r);
    //face
    arc(this.x, this.y, 1.6*this.r, 1.6*this.r, .1*PI, .9*PI); //mouth
    ellipse(this.x+this.r/2, this.y-this.r/4, this.r/4, this.r/2);     //right eye
    ellipse(this.x-this.r/2, this.y-this.r/4, this.r/4, this.r/2);     //left eye
  }
}
void setup() {
  size(400, 400);
  background(51);

  face1.x = width/2;
  face1.y = height/2;
  face1.r = width/6;
  face1.fill = color(255, 255, 0);
  face1.display();
}
void draw() {
  background(51);

  if (face1.x >= width-face1.r || face1.x <= face1.r) {
    speedX = -speedX;
  }

  if (face1.y >= height-face1.r || face1.y <= face1.r) {
    speedY = -speedY;
  }
  face1.x += speedX;
  face1.y += speedY;

  face1.display();
  
  //saveFrame("frames/###.png");
}
