class Cheese{
  float posX = 360;
  float posY = 360;
  PImage asset = cheese;
  float sizeX = 75;
  float sizeY = 75;



void show(){
  if (Timer >= 55){
imageMode(CENTER);
image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

}






}
