final int W=64, H=64;         //tile width and height
PImage bk, player, platform1, platform2;
int speedX = 0;
int speedY = 0;
String keyState = "";

void setup() {
  size(512, 512);
  bk = loadImage("../images/background_0.png");      // 512 x 512
  player = loadImage("../images/player_0.png");      // 64 x 64
  platform1 = loadImage("../images/platform_13.png");// 64 x 64
  platform2 = loadImage("../images/platform_14.png");// 64 x 64
  
  frameRate(30);
}

void draw() {
  // set the background to background_0.png
  image(bk, 0, 0);
  // draw the player image at (mouseX, 6*H) - i.e. your player should move with mouseX
  image(player, speedX, 6*H+speedY);
  // draw the platform at y = 7 * H
  for (int i = 0; i < 7; i++) {
    if (i<6) {
      image(platform1, 0+i*64, 7 * H);
    }
    if (i == 6) {
      image(platform2, 0+i*64, 7 * H);
    }
  }
  
  textSize(15);
  fill(#000000);
  text(keyState, 15,15);
  
  //saveFrame("frames/####.png");
}
void keyPressed(){
  if (keyCode == 37){ speedX -= 8;}
  if (keyCode == 39){ speedX += 8;}
  if (keyCode == 32){ speedY = -15;}
  keyState = "key is being pressed, keyCode: "+keyCode;
  
  
}
void keyReleased(){
  keyState = "keyReleased";
  if (keyCode == 32){ speedY = 0;}
}
