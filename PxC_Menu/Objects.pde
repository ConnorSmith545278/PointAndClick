class Objects {   

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  Objects toDisplay;


  Objects(PImage image_name, boolean click, float x, float y, float sx, float sy, boolean pVisible) {
    clickAble = click;
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
  }

  void update() {
    
    imageMode(CENTER);
    
    if(visible == true){
       image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
      }
    
    
    
    
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true && visible == true &&
      mouseX < posX+sizeX/2 && mouseX > posX-sizeX/2 &&
      mouseY < posY+sizeY/2 && mouseY > posY-sizeY/2) {
        clickAble = false;
        visible = false;
        println("hi");
        if(toDisplay != null){
        toDisplay.visible = true;
        }
    

    }
  }
}
