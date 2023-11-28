class Pepper{

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  
  
  Pepper(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    
  }


void show(){
  asset = pepper;
 image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY); 
}

}
