class Objects {   

  boolean clickAble;
  float posX;
  float posY;
  PImage hupelepup;
  float sizeX;
  float sizeY;
  boolean visible;
  Objects toDisplay;

  Objects(PImage image_name, boolean click, float x, float y, float sx, float sy, boolean pVisible) {
    clickAble = click;
    posX = x;
    posY = y;
    hupelepup = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
  }

  void update() {
    imageMode(CENTER);
    if(visible)
    image(hupelepup, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mousePressed() {
    if (mouseButton == LEFT && clickAble == true &&
      mouseX < posX+sizeX/2 && mouseX > posX-sizeX/2 &&
      mouseY < posY+sizeY/2 && mouseY > posY-sizeY/2) {
        println("click");
        clickAble = false;
        visible = false;
        if(toDisplay != null){
        toDisplay.clickAble = true;
        toDisplay.visible = true;
        }
    }
  }
}
