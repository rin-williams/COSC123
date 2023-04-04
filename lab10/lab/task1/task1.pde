// Don't change the code below.
// The code below will not work until you create Hero class in the 'classes' tab.

Hero h1, h2, h3;
void setup() {
  size(350, 200);
  //initialize her character
  h1 = new Hero(170, 100, 0.5); //x,y,scale
  h1.speedX = 0.5;
  h2 = new Hero();  //use default values
  h3 = new Hero(270, 120, 1.5, 1.5, .5, color(255, 168, 211), color(209, 11, 86));
}
void draw() {
  //instead of background(0), we use this tansparent rectangle to give the illusion of a trail for the objects!
  rectMode(CORNER);
  fill(0, 30);
  rect(0, 0, width, height);

  //move and display hero characters
  h1.move();
  h2.move();
  h3.move();
  h1.display();
  h2.display();
  h3.display();
  println(h1.speedX + " " + h1.x);
  
  //saveFrame("frames/####.png");
}
