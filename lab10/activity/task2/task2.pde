// Add your code for this task below

class HappyFace {
  int speedX;
  int speedY;
  float x;
  float y;
  float r;
  color fill;
  color outline;
  HappyFace() {
    this.r = 50;
    this.x = this.r;
    this.y = this.r;
    this.speedX = 0;
    this.speedY = 0;
    this.fill = color(230, 230, 38);
    // i hope this is orange...
    this.outline = color(178, 135, 43);
  }
  HappyFace(int x, int y, int r, color fill, color outline, int speedX, int speedY) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.fill = fill;
    this.outline = outline;
    this.speedX = speedX;
    this.speedY = speedY;
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
  void bounce() {
    if (this.x >= width-this.r || this.x <= this.r) {
      this.speedX = -this.speedX;
    }

    if (this.y >= height-this.r || this.y <= this.r) {
      this.speedY = -this.speedY;
    }
    this.x += this.speedX;
    this.y += this.speedY;
  }
}
HappyFace[] f = new HappyFace[3];

void setup() {
  size(400, 400);
  background(51);
  f[0] = new HappyFace(100,100,25,color(0,255,255),color(255,255,0),2,3);
  f[1] = new HappyFace(200,200,35,color(0,255,0),color(255,0,0),3,5);
  f[2] = new HappyFace(300,300,15,color(255,255,0),color(255,0,255),3,8);
  
}
void draw() {
  background(51);
  for (int i = 0; i < 3; i++){
    f[i].display();
    f[i].bounce();
  }
  //saveFrame("frames/###.png");
}
