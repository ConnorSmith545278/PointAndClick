class Salt{


  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean saltFallen = false;
  
  
  Salt(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    
  }
  
void show(){
  if(saltFallen == true){
    clickAble = false;
    posX = 1070;
    posY = 400;
  }
  
  
  asset = salt;
 image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY); 
}

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      saltFallen = true;
      Timer = Timer + 5;

       }
      }


}