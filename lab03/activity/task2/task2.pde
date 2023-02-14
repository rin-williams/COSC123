void setup() {
  // Add your code for this task below
  // ctrl R to run
  size(300, 300);
  colorMode(RGB);
  
}
void draw(){
  float mouseXOffset = mouseX-100;
  float mouseYOffset = mouseY-100;
  background(51);

  // s logo
  textSize(23);
  fill(255, 255, 255);
  text("S", mouseXOffset+94, mouseYOffset+113);

  // arms
  strokeWeight(3);
  stroke(94, 116, 74);
  line(mouseXOffset+72, mouseYOffset+85, mouseXOffset+35, mouseYOffset+45);
  line(mouseXOffset+130, mouseYOffset+90, mouseXOffset+150, mouseYOffset+135);
  line(mouseXOffset+88, mouseYOffset+165, mouseXOffset+65, mouseYOffset+200);
  line(mouseXOffset+113, mouseYOffset+165, mouseXOffset+125, mouseYOffset+200);

  // belt
  stroke(255, 255, 255);
  strokeWeight(5);
  strokeCap(ROUND);
  line(mouseXOffset+75, mouseYOffset+135, mouseXOffset+125, mouseYOffset+135);
  
  // for gif: 
  //saveFrame("frames/####.png");
}
