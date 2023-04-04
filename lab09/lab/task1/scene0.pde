//REQ: create variables here for the location and color of the PLAY button
//...YOUR CODE GOES HERE...
int x = 500/2;
int y = 325;
int w = 90;
int h = 40;
int col = 51;
  
void scene0(){  //home screen
  //REQ: Write code to draw a welcome message followed by PLAY button. 
  //     Remember that we have a function to draw buttons, i.e. drawButton()

  //...YOUR CODE GOES HERE...
  textAlign(CENTER);
  textSize(50);
  text("Welcome :3",width/2,height/2);
  textSize(25);
  text("Press the button below to get started",width/2,height/2 + 30);
  drawButton(x,y,w,h,col,"PLAY");
}
