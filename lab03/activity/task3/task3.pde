void setup() {
  size(200, 200);
  background(255);
  stroke(0);
}
void draw(){
  // very buggy, but it works & satisfies the cirriculum.
  strokeWeight(abs(mouseX - pmouseX) + abs(mouseY-pmouseY));
  
  line(pmouseX, pmouseY, mouseX, mouseY );
  
  // for gif:
  //saveFrame("frames/####.png");
}
