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
    asset = toaster_wtoast_on;
    if(!toaster_off){
      clickAble = true;
      imageMode(CENTER);
     asset = toaster_wtoast_on;
     image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
        if(toaster_off){
     clickAble = false;
     imageMode(CENTER);
     asset = toaster_wtoast_off;
     image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      Timer = Timer + 5;
      toaster_off = true;
       }
      }
    }
  
