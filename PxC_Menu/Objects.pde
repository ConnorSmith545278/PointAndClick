class Objects {
  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  
  Objects(PImage image_name, boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
  }
  
  void update(){
    imageMode(CENTER);
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  
  
  }
  
  void mousePressed(){
   if (mouseButton == LEFT && clickAble == true && 
   mouseX < posX+sizeX/2 && mouseX > posX-sizeX/2 &&
   mouseY < posY+sizeY/2 && mouseY > posY-sizeY/2){
   
   } 
  }
  
  
  
}
