PImage bg, hills, tiles, playerstand, platright, platleft, platcon,
  platbg, fenceright, fencecon, blocktop, blockcon, blockleft,
  blockright, blockbanner, flag, door, window, bannerlogo,
  bannercon, bannerend, doorcon, watertop;

final int W=64, H=64;
int speedX;

int floater = 0;
boolean goBack = true;

int count = 0;

String keyState = "";
void setup(){
  
  frameRate(30);
  size(640, 480);
  
  bg = loadImage("../platformer_abstract/PNG/Backgrounds/set2_background.png");
  hills = loadImage("../platformer_abstract/PNG/Backgrounds/set2_hills.png");
  tiles = loadImage("../platformer_abstract/PNG/Backgrounds/set2_tiles.png");

  watertop= loadImage("../platformer_abstract/PNG/Other/fluidBlue_top.png");

  blocktop = loadImage("../platformer_medieval/PNG/medievalTile_019.png");
  blockbanner = loadImage("../platformer_medieval/PNG/medievalTile_094.png");
  bannercon = loadImage("../platformer_medieval/PNG/medievalTile_045.png");
  bannerlogo = loadImage("../platformer_medieval/PNG/medievalTile_122.png");
  window = loadImage("../platformer_medieval/PNG/medievalTile_053.png");
  door = loadImage("../platformer_medieval/PNG/medievalTile_080.png");
  doorcon = loadImage("../platformer_medieval/PNG/medievalTile_104.png");
  flag = loadImage("../platformer_medieval/PNG/medievalTile_212.png");
  blockcon = loadImage("../platformer_medieval/PNG/medievalTile_065.png");
  blockleft = loadImage("../platformer_medieval/PNG/medievalTile_066.png");
  blockright = loadImage("../platformer_medieval/PNG/medievalTile_068.png");
  bannerend = loadImage("../platformer_medieval/PNG/medievalTile_142.png");


  fenceright = loadImage("../platformer_abstract/PNG/Other/fenceRight.png");
  fencecon = loadImage("../platformer_abstract/PNG/Other/fenceMid.png");

  playerstand = loadImage("../platformer_abstract/PNG/Players/Player Blue/playerBlue_stand.png");

  // sizes are 64
  platbg = loadImage("../platformer_abstract/PNG/Tiles/Blue tiles/tileBlue_03.png");
  platcon = loadImage("../platformer_abstract/PNG/Tiles/Blue tiles/tileBlue_05.png");
  platleft =loadImage("../platformer_abstract/PNG/Tiles/Blue tiles/tileBlue_04.png");
  platright = loadImage("../platformer_abstract/PNG/Tiles/Blue tiles/tileBlue_06.png");
}
void draw() {
  drawScene();
  
  // floating player
  int speedFloater = 1;
  int heightLim = 20;
  if (!goBack) {
    if (floater >= heightLim) {
      goBack = true;
    }
    floater+= speedFloater;
  }
  if (goBack) {
    if (floater<=0) {
      goBack = false;
    }
    floater-= speedFloater;
  }

  pushMatrix();
  translate(mouseX-32, height-(2*H)-floater);
  image(playerstand, 0, 0);
  popMatrix();
  
  FlyingEnemy en1 = new FlyingEnemy(600,200);
  FlyingEnemy en2 = new FlyingEnemy(550,50);
  FlyingEnemy en3 = new FlyingEnemy(575,150);
  FlyingEnemy en4 = new FlyingEnemy(500,175);
  FlyingEnemy en5 = new FlyingEnemy(475,25);
  en1.load();
  en2.load();
  en3.load();
  en4.load();
  en5.load();
  
  GroundEnemy en6 = new GroundEnemy(550,400);
  GroundEnemy en7 = new GroundEnemy(445,400);
  GroundEnemy en8 = new GroundEnemy(500,400);
  en6.load();
  en7.load();
  en8.load();
  saveFrame("frames/###.png");
}
