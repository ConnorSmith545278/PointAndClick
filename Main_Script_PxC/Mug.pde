class Mug {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean mugTip;
  int mugTimer;
  boolean visible;
  boolean spillMug = false;
  boolean cleaned = false;



  Mug(boolean click, float x, float y, float sx, float sy) {
    clickAble = click;
    posX = x;
    posY = y;
    clickAble=click;
    sizeX = sx;
    sizeY = sy;
  }


  void show() {
      asset = mug_empty;
    
    
    if (pot.fillMug) {
      mug.asset = mug_filled;
    }
    
    if (spillMug) {
      asset = mug_spilled;
    }


    if (mugTip) {
      asset = mug_empty_rotated;
      mugTimer ++;
      if (mugTimer >= 30) {
        NPC_the_guy.posX = 500;
        NPC_the_guy.posY = 400;
      }
      if (mugTimer >=60) {
        asset = mug_empty;
        animation = false;
        mugTimer = 0;
        mugTip=false;
      }
    }
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT  && asset == mug_filled && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY && !animation) {
        if(!CatMeow.isPlaying()){
          CatMeow.play();
        }
        
      glassFall.play();
      clickAble = false;
      spillMug = true;
      
      
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, true,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
    
    if (mouseButton == LEFT  && asset == mug_empty && clickAble &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY && !animation) {
        if(!CatMeow.isPlaying()){
          CatMeow.play();
        }
         glassFall.play();
      mugTip = true;
      animation = true;
      
      
      
      
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
      Timer = Timer + 5;
    }
  }
}
