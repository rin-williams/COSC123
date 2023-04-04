int scn = 0;     //this variable is used to track which scene is currently active
int btn_w = 100, btn_h = 40;  //width and height of each button 

void setup(){
  size(500,500);
  colorMode(HSB);
}
void draw(){
  //REQ: add code here to draw either scene0 (home screen) or scene1
  //...YOUR CODE GOES HERE...
  background(0);
  switch (scn){
    case 0: scene0(); break;
    case 1: scene1(); break;
  }
  //saveFrame("frames/###.png");
  
}
