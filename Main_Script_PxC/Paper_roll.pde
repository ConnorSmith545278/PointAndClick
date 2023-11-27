class Paper_roll {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible;
  Paper_roll toDisplay;
  int Paperrollvar;
  
  


  Paper_roll(PImage image_name, boolean click, float x, float y, float sx, float sy, boolean pVisible) {
    clickAble = click;
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
  }

  void show() {
    if (visible == true) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
    
    if(Paperrollvar == 0){
      image(paper_roll_asset, posX, posY,sizeX,sizeY);
     posX = 1050;
     posY = 390;
     
    }
    if(Paperrollvar == 1){
      image(paper_roll_asset_rotate, posX, posY,sizeX,sizeY);
     posX = 920;
     posY = 570;
     if(countDown >=30&& Paperrollvar == 1){
       Paperrollvar = 2;
     }
    }
    if(Paperrollvar == 2){
     image(paper_roll_asset_rotate, posX, posY,sizeX,sizeY);
     Guy.posX = 650;
     Guy.posY = 200;
     guyExpressions = 1;
     if(countDown >=90 && Paperrollvar == 2){
       Paperrollvar = 3;
    }
    }
    if(Paperrollvar == 3){
     image(paper_roll_asset, posX, posY,sizeX,sizeY);
     guyExpressions = 2;
    }
  }
  

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true && visible == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      visible = false;
      Timer = Timer + 5;
      if (toDisplay != null) {
        toDisplay.visible = true;
      }
       }
      }
    }
  
