class Button {
  float posX;
  float posY;
  float sizeX;
  float sizeY;
  PImage asset;
  String text;

  Button(String txt, float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
    text = txt;
  }

  void show() {
    noFill();
    rectMode(CENTER);
    strokeWeight(5);
    rect(posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    fill(0);
    textSize(80);
    textAlign(CENTER, CENTER);
    text(text, posX*scaleX, posY*scaleY);
  }

  void mouseClicked() {
    if (mouseX > (posX-sizeX/2)*scaleX && mouseX < (posX+sizeX/2)*scaleX
      && mouseY > (posY-sizeY/2)*scaleY && mouseY < (posY+sizeY/2)*scaleY
      && mouseButton ==LEFT) {
      menuActive = 0;
    }
  }
}
