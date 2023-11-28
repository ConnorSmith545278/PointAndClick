class Fire {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  

  Fire(PImage image_name, boolean click, float x, float y, float sx, float sy, boolean pVisible) {
    clickAble = click;
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
  }

  void show() {
    if (visible == true) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true && visible == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      visible = false;
      Timer = Timer + 5;
    }
  }
}
