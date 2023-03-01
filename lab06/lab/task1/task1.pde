PImage bg, hills, tiles, playerstand, platright, platleft, platcon,
  platbg, fenceright, fencecon, blocktop, blockcon, blockleft,
  blockright, blockbanner, flag, door, window, bannerlogo,
  bannercon, bannerend, doorcon, watertop;

final int W=64, H=64;
int speedX;

int floater = 0;
boolean goBack = true;

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
  imageMode(CORNER);
  image(bg, 0, 0);
  image(tiles, 0, 0);
  image(hills, 0, 0);

  int platval = 8;

  image(blocktop, 0+W, height-H-H-H-H-H-H-H);
  image(blocktop, 0+W+W, height-H-H-H-H-H-H);

  image(blocktop, 0+W+W+W+W+W, height-H-H-H-H-H-H-H);

  image(flag, 0+W+W+W+W+W/2, height-H-H-H-H-H-H-H);
  image(blocktop, 0+W+W+W+W, height-H-H-H-H-H-H);

  image(blockleft, 0+W, height-H-H);
  image(blockleft, 0+W, height-H-H-H);
  image(blockleft, 0+W, height-H-H-H-H);
  image(blockleft, 0+W, height-H-H-H-H-H);
  image(blockleft, 0+W, height-H-H-H-H-H-H);

  image(blockright, 0+W+W+W+W+W, height-H-H);
  image(blockright, 0+W+W+W+W+W, height-H-H-H);
  image(blockright, 0+W+W+W+W+W, height-H-H-H-H);
  image(blockright, 0+W+W+W+W+W, height-H-H-H-H-H);
  image(blockright, 0+W+W+W+W+W, height-H-H-H-H-H-H);

  image(blockcon, 0+W+W, height-H-H);
  image(blockcon, 0+W+W, height-H-H-H-H-H);
  image(blockcon, 0+W+W+W, height-H-H-H-H-H-H);
  image(blockcon, 0+W+W+W+W, height-H-H-H-H-H);
  image(blockcon, 0+W+W+W+W, height-H-H-H-H);
  image(blockcon, 0+W+W+W+W, height-H-H-H);
  image(blockcon, 0+W+W+W+W, height-H-H);
  image(blockcon, 0+W+W+W, height-H-H);
  image(blockcon, 0+W+W+W, height-H-H-H);
  image(blockcon, 0+W+W+W, height-H-H-H-H);
  image(blockcon, 0+W+W+W, height-H-H-H-H-H);
  image(blockcon, 0+W+W, height-H-H-H-H);
  image(blockcon, 0+W+W, height-H-H-H);

  image(blockbanner, 0+W+W+W, height-H-H-H-H-H-H-H);
  image(bannerend, 0+W+W+W, height-H-H-H-H-H-H);
  image(bannerlogo, 0+W, height-H-H-H-H-H-H-H/2);

  image(window, 0+W+W+W, height-H-H-H-H-H);
  image(door, 0+W+W, height-H-H-H);
  image(doorcon, 0+W+W, height-H-H);
  image(door, 0+W+W+W+W, height-H-H-H);
  image(doorcon, 0+W+W+W+W, height-H-H);



  for (int i = 0; i<platval+1; i++) {
    if (i<platval) {
      image(fencecon, 0+(i-1)*64, height-H-H/1.5);
      image(platcon, 0+i*64, height-H);
    }
    if (i==platval) {
      image(fenceright, 0+i*64-64, height-H-H/1.5);
      image(watertop, 0+i*64+60, height-H+20);
      image(watertop, 0+i*64+60+64, height-H+20);
      image(platright, 0+i*64, height-H);
    }
  }

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
  
  saveFrame("frames/###.png");
}
