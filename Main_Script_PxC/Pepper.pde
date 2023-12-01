class Pepper {

  boolean pepperFallen = false;
  boolean clickAble = true;
  float posX = 1033f;
  float posY = 137f;
  PImage asset = pepper;
  float size = 80F;

  void show() {
    clickAble = true;
    if (pepperFallen) {
      clickAble = false;
      posX = 1130;
      posY = 400;
    }

    image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble &&
      mouseX < (posX+size/2)*scaleX && mouseX > (posX-size/2)*scaleX &&
      mouseY < (posY+size/2)*scaleY && mouseY > (posY-size/2)*scaleY && !animation) {
      if (!CatMeow.isPlaying()) {
        CatMeow.play();
      }
      glassFall.play();
      pepperFallen = true;
      Timer = Timer + 5;
      CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
        timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, true);
    }
  }
}
