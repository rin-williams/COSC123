float Xb, Yb, r, speedX, speedY;    //ball location, size, and speed
float Xp, Yp, w, h;                 //paddle location, wdith and height

boolean isGameOver = false;         // when true, just draw the GameOver message and stop the animation loop to end the game
int score = 0;

void setup() {
  frameRate(30);
  size(400, 400);

  // initialize ball attributes
  Xb = random(r, width-r);
  Yb = 30;
  r = 15;
  speedX = int(random(2, 4));
  speedY = int(random(2, 4));

  // initialize paddle attributes
  w = 30;
  h = 8;
  Xp = width/2;
  Yp = height - h;

  // hide mouse cursor
  noCursor();
}

void draw() {
  background(0);

  if (!isGameOver) {              //play as long as it is not game over

    // DRAW game elements
    // draw Ball
    fill(255);
    noStroke();
    ellipse(Xb, Yb, 2*r, 2*r);
    // draw paddle
    stroke(0, 255, 0);
    strokeCap(ROUND);
    strokeWeight(h);
    line(Xp-w, Yp, Xp+w, Yp);
    // draw score
    fill(255, 0, 0);
    textAlign(LEFT);
    textSize(16);
    text("Score: " + score, 5, 15);

    // MOVE game elements
    // move Paddle
    Xp = mouseX;
    // move ball
    Xb += speedX;
    Yb += speedY;

    // CHECK for collisions
    // REQ1: Add code to bounce the ball off the two sides and the top edge
    if ((Xb <= 0+r || Xb >= width-r)) {
      speedX *= -1;
    }
    if (!(Yb> 0+r)) {
      speedY *= -1;
    }

    // REQ2: Add code to check if ball lands on the paddle. Here is the pseudo-code:
    // if the ball is at the bottom edge (hint: check Yb)
    //     if ball lands on paddle (hint: see the assignment on how to check this)
    //         increment score, bounce ball up, and increase speed by 10%
    //     else
    //         set isGameOver to true;
    boolean inRangeD = dist(Xp, Yp, Xb, Yp)< (w+r);
    if (Yb >= height-(3*h)) {
      if (inRangeD) {
        score++;
        speedY *= -1;
      } else {
        for (int i = 0; i< 50; i++) {
          Xb += speedX;
          Yb += speedY;
        }
        isGameOver= true;
      }
    }
  } else { // if game over
    //REQ3: Add code for putting the GameOver message and stoping the animation loop
    stroke(255, 255, 0);
    strokeWeight(5);
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(200, 200, 300, 100);

    noStroke();
    fill(255, 255, 0);
    textSize(50);
    text("GAME OVER!", 70, 215);
  }
  //saveFrame("frames/###.png");
}

//no other functions are required! (e.g. don't implement mousePressed, keyPressed, etc)
