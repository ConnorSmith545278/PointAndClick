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
      image(asset, posX, posY, sizeX, sizeY);
      break;
    case 1:
      asset = the_guy_different_expressions_angry;
      image(asset, posX, posY, sizeX, sizeY);
      break;
    case 2:
      asset = the_guy_wants_coffee;
      image(asset, posX, posY, sizeX, sizeY);
      break;
    }
  }
}
