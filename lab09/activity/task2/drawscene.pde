void drawScene() {
  imageMode(CORNER);
  image(bg, 0, 0);
  image(tiles, 0, 0);
  image(hills, 0, 0);
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
  int platval = 8;
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
}
