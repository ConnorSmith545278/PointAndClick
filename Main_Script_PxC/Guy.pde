class NPC {

  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int expression;


  NPC(float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }


  void show() {
    imageMode(CENTER);
    switch(expression) {
    case 0:
      asset = the_guy_transparent;
      break;
    case 1:
      asset = the_guy_different_expressions_angry;
      break;
    case 2:
      asset = the_guy_wants_coffee;
      break;
    case 3:
      asset = the_guy_panic_transparent;
      break;
    case 4:
      asset = the_guy_wantsegg;
      break;
    case 5:
      asset = the_guy_handsout_png;
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
}
