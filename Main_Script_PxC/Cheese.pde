class Cheese{
  float posX = 250;
  float posY = 370;
  PImage asset = cheese;
  float sizeX = 75;
  float sizeY = 75;



void show(){
  if (Timer >= 55 || Clock1.hourOneClock >= 9){
imageMode(CENTER);
image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

}






}
