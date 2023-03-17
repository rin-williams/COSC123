// Add your code for this task below

void setup() {
  size(360, 310);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0);

  strokeWeight(1);
  for (int i = 0; i<360; i++) {
    stroke(i, 100, 100);
    line(mouseX+i, 0, mouseX+i, 100);
    
  }
  for (int i = 360; i>0; i--) {
    stroke(i, 100, 100);
    line(mouseX-i, 0, mouseX-i, 100);
    
  }
  
  for (int i = 0; i<360; i++) {
    stroke(i, 100, 100);
    if (mouseX+i<360){
    line(0, 110, mouseX+i, 310);
    }
    
  }
  for (int i = 360; i>0; i--) {
    stroke(i, 100, 100);
    line(0, 110, mouseX-i, 310);
    
  }
  
  //saveFrame("frames/###.png");

}
