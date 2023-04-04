//REQ: create a Hero class with the specs mentioned in the assignment document.
class Hero {
  float x, y, speedX, speedY, scale;
  color torsoColor, beltColor;
  Hero() {
    this.x = width/2;
    this.y = height/2;
    this.speedX =1;
    this.speedY = 0;
    this.scale = 1;
    this.torsoColor=color(19, 0, 205);
    this.beltColor=color(0, 255, 255);
  }
  Hero(float x, float y, float scale) {
    this.x = x;
    this.y = y;
    this.scale = scale;
  }
  Hero(float x, float y, float speedX, float speedY, float scale, color torsoColor, color beltColor) {
    this.x = x;
    this.y = y;
    this.scale = scale;
    this.speedX = speedX;
    this.speedY = speedY;
    this.torsoColor = torsoColor;
    this.beltColor = beltColor;
  }

  void move() {
    if (this.x > width+100) {
      this.x = 0;
    }
    if (this.x < 0) {
      this.x = 350;
    }
    if (this.y > height+100) {
      this.y = 0;
    }
    if (this.y < 0) {
      this.y = 200;
    }
    this.x += speedX;
    this.y += speedY;
  }
  void display() {
    
    pushMatrix();
    scale(this.scale);
    ellipseMode(CENTER);
    //head
    fill(18, 255, 71);
    stroke(70, 135, 85);
    strokeWeight(2);
    ellipse(x, y-40, 30, 40);

    //body
    rectMode(CENTER);
    stroke(255);
    fill(this.torsoColor);
    rect(x, y+10, 40, 50);

    //belt
    stroke(beltColor);
    strokeWeight(5);
    strokeCap(SQUARE);
    line(x-20, y+20, x+20, y+20);
    strokeWeight(9);
    circle(x, y+20, 10);

    //hands
    stroke(0, 255, 0);
    strokeWeight(5);
    strokeCap(ROUND);
    line(x+32, y-17, x+54, y+18);
    line(x-32, y-13, x-64, y-55);
    line(x-12, y+44, x-34, y+73);
    line(x+9, y+44, x+30, y+73);
    popMatrix();
  }
}
