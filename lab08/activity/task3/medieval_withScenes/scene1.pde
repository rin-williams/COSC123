//this is the main game scene
void drawBackground() {
  background(loadImage("background_0.png"));
}
void drawPlayer() {
  image(loadImage("gameTile_15.png"), x, y);
}
void drawPlatform() {
  PImage tile13 = loadImage("gameTile_13.png");
  for (int col=0; col<6; col++)
    image(tile13, col*W, 7*H);
  image(loadImage("gameTile_14.png"), 6*W, 7*H);
}
void movePlayer() {
  x += speedX;
  y += speedY;
}
void jumpPlayer() {
  if (isJumping) {
    y= y + speedY;
    speedY = speedY + gravity;
    if (y >= 6*H) {
      speedY = 0;
      isJumping = false;
      y = 6*H;
    }
  }
}

void scene1() {
  //draw background -- REQ: move to a function called drawBackground()
  drawBackground();

  //draw player -- REQ: move to a function called drawPlayer()
  drawPlayer();

  //draw platform -- REQ: move to a function called drawPlatform()
  drawPlatform();

  //move player -- REQ: move to a function called movePlayer()
  movePlayer();

  //jumping  -- REQ: move to a function called jumpPlayer()
  jumpPlayer();
}
