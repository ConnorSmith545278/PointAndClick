class Toaster {
  boolean visible;
  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean toaster_off = false;





  Toaster( boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    if (!toaster_off) {
      clickAble = true;
      asset = toaster_wtoast_on;
    }
    if (toaster_off) {
      clickAble = false;
      asset = toaster_wtoast_off;


    }
    imageMode(CENTER);
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      Timer = Timer + 5;
      toaster_off = true;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        true, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
