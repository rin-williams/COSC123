// Add your code for this task below //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//

int size = 10;
int squareNumR = (width/size);
int squareNumD = (height/size);
int squareDrawnR=0;
int squareDrawnD=0;
int X, Y;

void setup() {
  X = 0;
  Y = 0;
  size(400, 400);
  background(0);

  noStroke();
  colorMode(HSB, 360, 100, 100);

  while (squareDrawnR < ((width/size) * (height/size) +80)) {
    if (X <= 400) {
      // border
      if (X>0){
        stroke(360,0,100);
        strokeWeight(0);
        fill(360, 0, X*Y/1000);
      }
      if(Y>0){
        stroke(360,0,100);
        strokeWeight(0);
        fill(360, 0, X*Y/1000);
      }
      
      if (X == 0 || X == 390 || Y == 0 || Y == 390) {
        noStroke();
        fill(360, 0, 0);
      }
      
      
      rect(X, Y, X+size, Y+size);
      X += size;
      
    } else if (X>400) {
      if (Y <= 400) {
        X = 0;
        Y += 10;
        rect(X, Y, X+size, Y+size);
      }
    }
    squareDrawnR++;
  }
}

// for loop version

//for (int i = 0; i < ((width/size) * (height/size) +80); i++) {
//  switch ((int) random(0, 5)) {
//  case 0:
//    fill(360, 0, 50);
//    break;
//  case 1:
//    fill(360, 0, 100);
//    break;
//  case 2:
//    fill(360, 0, 0);
//    break;
//  case 3:
//    fill(360, 0, 25);
//    break;
//  case 4:
//    fill(360, 0, 75);
//    break;
//  }

//  if (X <= 400) {
//    if (X == 0 || X == 390 || Y == 0 || Y == 390) {
//      fill(360, 0, 0);
//    }
//    rect(X, Y, X+size, Y+size);
//    X += size;
//  } else if (X>400) {
//    if (Y <= 400) {
//      X = 0;
//      Y += 10;
//      rect(X, Y, X+size, Y+size);
//    }
//  }
//}

// while loop version

//while (squareDrawnR < ((width/size) * (height/size) +80)) {
//  switch ((int) random(0, 5)) {
//  case 0:
//    fill(360, 0, 50);
//    break;
//  case 1:
//    fill(360, 0, 100);
//    break;
//  case 2:
//    fill(360, 0, 0);
//    break;
//  case 3:
//    fill(360, 0, 25);
//    break;
//  case 4:
//    fill(360, 0, 75);
//    break;
//  }

//  if (X <= 400) {
//    if (X == 0 || X == 390 || Y == 0 || Y == 390) {
//      fill(360, 0, 0);
//    }
//    rect(X, Y, X+size, Y+size);
//    X += size;
//  } else if (X>400) {
//    if (Y <= 400) {
//      X = 0;
//      Y += 10;
//      rect(X, Y, X+size, Y+size);
//    }
//  }

//  squareDrawnR++;
//}
