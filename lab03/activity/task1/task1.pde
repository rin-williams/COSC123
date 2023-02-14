void setup() {
  // Add your code for this task below
  // ctrl R to run
  size(200, 300);

  colorMode(RGB);

  // head
  strokeWeight(4);
  stroke(134, 121, 68);
  fill(211, 191, 109);
  ellipse(100, 50, 50, 60);

  // body
  strokeWeight(2);
  fill(107, 191, 31);
  rect(75, 85, 50, 70);
  fill(255, 0, 255);
  triangle(85, 95, 115, 95, 100, 125);

  // s logo
  textSize(23);
  fill(255, 255, 255);
  text("S", 94, 113);

  // arms
  strokeWeight(3);
  stroke(94, 116, 74);
  line(72, 85, 35, 45);
  line(130, 90, 150, 135);
  line(88, 165, 65, 200);
  line(113, 165, 125, 200);

  // belt
  stroke(255, 255, 255);
  strokeWeight(5);
  strokeCap(ROUND);
  line(75, 135, 125, 135);
}
