final int W=64, H=64;         //tile width and height
PImage bk, player, platform1, platform2;

void setup(){
  size(512,512);
  bk = loadImage("background_0.png");      // 512 x 512
  player = loadImage("player_0.png");      // 64 x 64
  platform1 = loadImage("platform_13.png");// 64 x 64
  platform2 = loadImage("platform_14.png");// 64 x 64
}

void draw(){
  // set the background to background_0.png
  // draw the player image at (mouseX, 6*H) - i.e. your player should move with mouseX 
  // draw the platform at y = 7 * H
}