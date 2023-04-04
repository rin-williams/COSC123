//REQ: create variables here for the location and color of the PLAY button
//...YOUR CODE GOES HERE...
int x2 = 100;
int y2 = 450;
int w2 = 90;
int h2 = 40;
int col2 = 51;
float scale = 0;

//REQ: put here any other variables required by your A9_Q1 animation
//...YOUR CODE GOES HERE...

void scene1() {
  A9_Q1();  //calling this function should draw the output of A9.Q1
  //REQ: In addition to A9.Q1, also draw HOME button on this scene
  //...YOUR CODE GOES HERE...
  drawButton(x2, y2, w2, h2, col2, "HOME");
}

void A9_Q1() {
  //REQ - Copy your code from Q1 in assignment A9 here (modify the code as needed, e.g. to fit the current sketch size)
  //...YOUR CODE GOES HERE...
  pushMatrix();
  colorMode(RGB,255,255,255);
  strokeWeight(1);
  translate(width/2, height/2);

  //Black supershape
  stroke(255,0,0);
  float a = 1, b = 1;
  float m1 = 2, m2 = 10;
  float n1 = 1.5, n2 = 1, n3 = 1;
  //Red supershape
  //REQ 2: call supershape again with a different set of values.
  scale = 1;
  stroke(255,0,0);
  supershape(1, 1, 88, 64, -20, 1, 1);

  stroke(255);
  scale = 9;
  supershape(a, b, m1, m2, n1, n2, n3);

  popMatrix();
}

//You may add extra functions here if needed.
void supershape(float a, float b, float m1, float m2, float n1, float n2, float n3) {
  /*REQ 1: Add a loop here.
   The loop variable is an angle "theta" that changes from 0 to 2*PI with a very small increment
   In each iteration of the loop, do the following:
   1) compute r using the formula given in the assignment
   2) compute x = r * cos(theta) and y = r * sin(theta)
   3) put a point at (x,y)
   */
  for (float theta = 0; theta < TWO_PI; theta += 0.001) {
    float first = pow(abs(cos(m1*theta/4)/a), n2);
    float second = pow(abs(sin(m2*theta/4)/b), n3);
    float third = pow(first+second, -1/n1);
    float r = third*max(m1, m2);

    float x = scale*r * cos(theta);
    float y = scale*r * sin(theta);
    strokeWeight(2);
    point(x, y);
  }
}
