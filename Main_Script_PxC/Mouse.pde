class Mouse{
 
  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;  
  boolean visible = false;
  boolean mouseDead = false;
  
  
  Mouse(boolean click, float x, float y, float sx, float sy){
    clickAble = click;
    posX = x;
    posY = y;
    clickAble=click;
    sizeX = sx;
    sizeY = sy;
  }
  
 void show(){
   
   if(Timer == 5 && !mouseDead){
     asset = mouse_left;
     clickAble = true;
     visible = true;
     image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
     posX = 350;
     posY = 435;

}
if(Timer == 25 && !mouseDead){
     asset = mouse_right;
     clickAble = true;
     visible = true;
     posX = 750;
     posY = 435;
     image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
}
if(Timer == 50 && !mouseDead){
     asset = mouse_middle;
     clickAble = true;
     visible = true;
     posX = 550;
     posY = 435;
     image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
}
      
     

 }
void mouseClicked(){
if (mouseButton == LEFT  && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      Timer = Timer + 5;
      mouseDead = true;
    }
}
}
