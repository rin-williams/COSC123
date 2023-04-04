class FlyingEnemy {
  int x, y;
  PImage enemyImage;
  
  FlyingEnemy(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void load() {
    imageMode(CENTER);
    enemyImage = loadImage("../platformer_abstract/PNG/Enemies/enemyFlying_1.png");
    image(enemyImage, this.x, this.y);
    
  }
}
