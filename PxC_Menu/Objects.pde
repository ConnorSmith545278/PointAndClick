class Objects {

  boolean clickAble;
  float posX;
  float posY;
  PImage hupelepup;
  float sizeX;
  float sizeY;

  Objects(PImage image_name, boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    hupelepup = image_name;
    sizeX = sx;
    sizeY = sy;
  }

  void update() {
    imageMode(CENTER);
    image(hupelepup, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    //image(the_guy_transparent, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mousePressed() {
    if (mouseButton == LEFT && clickAble == true &&
      mouseX < posX+sizeX/2 && mouseX > posX-sizeX/2 &&
      mouseY < posY+sizeY/2 && mouseY > posY-sizeY/2) {
    }
  }
}
