int r = 255;
int o = 0;
int x = 300;
int y= 200;
int rgb1 = 0;
int rgb2 = 100;
int rgb3 = 100;
void setup() {
  size(600, 400);
  background(0);
}

void draw() {

  noStroke();

  while (r > 0) {
    fill(0, 0, 255, o);

    circle(100+35, 200, r);
    r-= 10;
    o+= 1;
  }
  

  while (x < (300+360)) {
    
    colorMode(HSB, 360, 100, 100);
    stroke(rgb1, rgb2, rgb3);
    line(x, y-60, x, y+60);

    x++;
    rgb1++;
  }
  
}
