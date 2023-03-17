void keyPressed() {
  //move right/left
  if (keyCode == RIGHT)            speedX = SPEED;
  else if (keyCode == LEFT)        speedX = -SPEED;
  //jump
  if (keyCode == ' ' && !isJumping) {
    isJumping = true;
    speedY = -5;
  }
  checkScenes();
}

void keyReleased() {
  if (keyCode == RIGHT || keyCode == LEFT){
    speedX = 0;
  }
  checkScenes();
}
//80 p
  //69 e
  //77 m
  
void checkScenes(){
  if (keyCode == 80 && inScene0){
    inScene0 = false;
  }if(keyCode == 69 && inScene0){
    exit();
  }if (keyCode == 77 && !inScene0){
    inScene0 = true;
  }
  
}
