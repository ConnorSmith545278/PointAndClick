class Mouse {

  int mouseLocation;
  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float size = 100f;
  boolean mouseDead = false;


  void show() {

    if (Timer == 5 && !mouseDead) {
      mouseLocation = 0;
      asset = mouse_left;
      clickAble = true;
      image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
      posX = 350;
      posY = 435;
    }
    if (Timer == 25 && !mouseDead) {
      mouseLocation = 2;
      asset = mouse_right;
      clickAble = true;
      posX = 1246;
      posY = 448;
      image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
    }
    if (Timer == 50 && !mouseDead) {
      mouseLocation = 1;
      asset = mouse_middle;
      clickAble = true;
      posX = 550;
      posY = 435;
      image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
    }
    if (Timer == 55 && !mouseDead) {
      mouseLocation = 1;
      asset = mouse_middle;
      clickAble = true;
      posX = Cheese.posX;
      posY = Cheese.posY;
      NPC_the_guy.expression = 3;
      image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
      Menumanager.gameOverType = 1;
      Menumanager.menu = 3;
    }
  }
  void mouseClicked() {
    if (mouseButton == LEFT  && clickAble && mouseLocation == Cat.catPosition &&
      mouseX < (posX+size/2)*scaleX && mouseX > (posX-size/2)*scaleX &&
      mouseY < (posY+size/2)*scaleY && mouseY > (posY-size/2)*scaleY && !animation) {
      if (!CatMeow.isPlaying()) {
        CatMeow.play();
      }
      Timer = Timer + 5;
      mouseDead = true;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, true, timeStack.peek().saltOff, timeStack.peek().pepperOff);
    }
  }
}
