class Salt {
  boolean clickAble = true;
  float posX = 1123f;
  float posY = 164f;
  PImage asset;
  float size = 80f;
  boolean saltFallen = false;

  void show() {
    clickAble = true;
    if (saltFallen == true) {
      clickAble = false;
      posX = 1070;
      posY = 400;
    }


    asset = salt;
    image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+size/2)*scaleX && mouseX > (posX-size/2)*scaleX &&
      mouseY < (posY+size/2)*scaleY && mouseY > (posY-size/2)*scaleY) {
      if (!CatMeow.isPlaying()) {
        CatMeow.play();
      }
      glassFall.play();
      saltFallen = true;
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, true, timeStack.peek().pepperOff);
    }
  }
}
