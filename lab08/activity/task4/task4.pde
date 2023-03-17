PImage ship, laser, meteor; //<>// //<>// //<>// //<>// //<>// //<>// //<>//
int shipX = 200;
int speedX = 5;
int shipY = 350;
int H = 50, W = 50;
int bulletSpeed = 10;

boolean showBullet = false;
boolean isAlreadyFired = false;
int bulletX = 0;
int bulletY = 300;

boolean showBullet2 = false;
boolean isAlreadyFired2 = false;
int bulletX2 = 0;
int bulletY2 = 300;

int enemyX = (int)random(400);
int enemyY = 0;

boolean diagonal = false;
boolean noise = false;
boolean sine = false;
boolean isSpawned = false;
boolean dirRight = true;

float sinAmp = 50;
float sinFreq = 0.03;

int enemyXNew = (int)random(400);

int hitboxX, hitboxY;
int bulletHitboxX, bulletHitboxY;
int bulletHitboxX2, bulletHitboxY2;



float colliding;
float colliding2;

int score = 0;

void setup() {
  frameRate(30);
  size(400, 400);
  laser = loadImage("laserProjectile.png");
  ship = loadImage("ship.png");
  meteor = loadImage("meteor.png");
  randomizePath(); //<>//
}
void draw() {
  
  background(51);
  moveBullets();
  moveEnemies(); 
  detectCollisions();
  moveSpaceship();
  textAlign(CENTER);
  text(score, 200,200);

  
  //saveFrame("frames/####.png");
  println(keyCode + " " + colliding + " " + colliding2);
}
void detectCollisions() {
  colliding = dist(hitboxX, hitboxY, bulletHitboxX, bulletHitboxY);
  colliding2 = dist(hitboxX, hitboxY, bulletHitboxX2, bulletHitboxY2);
  if (colliding <= 40 || colliding2 <= 40) {
    textAlign(CENTER);
    resetPath();
  }
}    

void moveEnemies() {
  if (diagonal) {  
    if (dirRight == true) {
      enemyX += 1;
    } else {
      enemyX -= 1;
    }
    enemyY += 3;
  }
  if (sine) {
    enemyY += 2;
    enemyX = enemyXNew + (int)(sin(enemyY * sinFreq)*sinAmp);
  }
  if (noise) {
    enemyY += 3;
    enemyX = enemyXNew + (int)random(-10, 10);
  }


  if (enemyX >430 || enemyX < -30 || enemyY > 430) {
    resetPath();
  }


  drawEnemies(enemyX, enemyY);
}
void resetPath(){
  if (diagonal) {
      enemyX = (int)random(400);
      enemyY = -25;
      switch((int) random(0, 2)) {
      case 0:
        dirRight = true;
        break;
      case 1:
        dirRight = false;
        break;
      }
      diagonal = false;
      randomizePath();
    }
    // sine version
    if (sine) {
      enemyXNew = (int)random(400);
      enemyY = -25;
      sine = false;
      randomizePath();
    }

    if (noise) {
      enemyXNew = (int)random(400);
      enemyY = -25;
      noise = false;
      randomizePath();
    }
    score++;
}

void randomizePath() {
  switch ((int)random(0, 3)) {
  case 0:
    diagonal = true;
    break;
  case 1:
    sine = true;
    break;
  case 2:
    noise = true;
    break;
  }
}

void drawHitbox(int x, int y) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  rectMode(CENTER);
  rect(x, y, W, H);
  hitboxX = x;
  hitboxY = y;
}
void drawBulletHitbox(int x, int y) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(2);
  rectMode(CENTER);
  rect(x, y, W/4, H/1.5);
  bulletHitboxX = x;
  bulletHitboxY = y;
}

void drawEnemies(int x, int y) {
  imageMode(CENTER);
  image(meteor, x, y, W, H);
  drawHitbox(x, y);
}

void keyPressed() {
  if (keyCode == LEFT) {
    if (shipX > 0 && shipX <= 400) {
      shipX -= speedX;
    }
  }
  if (keyCode == RIGHT) {
    if (shipX >= 0 && shipX < 400) {
      shipX += speedX;
    }
  }
  if (keyCode == 32) {
    // first bullet
    if (showBullet == true && !isAlreadyFired) {
      isAlreadyFired = true;
    }
    if (showBullet == false) {
      bulletX = shipX;
      bulletY = shipY-20;
      showBullet = true;
    }
    // second bullet
    if (showBullet2 == true && !isAlreadyFired2) {
      isAlreadyFired2 = true;
    }
    if (showBullet2 == false && bulletY < 300) {
      bulletX2 = shipX;
      bulletY2 = shipY-20;
      showBullet2 = true;
    }
  }
}
void keyReleased() {
}


void moveBullets() {
  // first bullet
  if (showBullet == true) {
    drawBullets(bulletX, bulletY);
    bulletY -= bulletSpeed;
    
    bulletHitboxY = bulletY;
    bulletHitboxX = bulletX;
  }
  if (bulletY < 0 || (colliding <= 40 || colliding2 <= 40)) {
    showBullet = false;
    isAlreadyFired = false;
  }
  
  

  // second bullet
  if (showBullet2 == true) {
    drawBullets(bulletX2, bulletY2);
    bulletY2 -= bulletSpeed;
    
    bulletHitboxY2 = bulletY2;
    bulletHitboxX2 = bulletX2;

  }
  if (bulletY2 < 0 || (colliding <= 40 || colliding2 <= 40)) {
    showBullet2 = false;
    isAlreadyFired2 = false;
    
  }
}
void drawBullets(int x, int y) {
  imageMode(CENTER);
  image(laser, x, y);
  drawBulletHitbox(x, y);
}


void moveSpaceship() {
  shipX = mouseX;
  drawSpaceShip(shipX, shipY);
}
void drawSpaceShip(int x, int y) {
  imageMode(CENTER);
  image(ship, x, y, H, W);
}
