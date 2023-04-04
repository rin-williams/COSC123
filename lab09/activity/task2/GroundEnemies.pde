class GroundEnemy{
  int x, y;
  PImage enemyImage;
  GroundEnemy(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void load() {
    imageMode(CENTER);
    enemyImage = loadImage("../platformer_abstract/PNG/Enemies/enemyWalking_1.png");
    image(enemyImage, this.x, this.y);
  }
  
}
