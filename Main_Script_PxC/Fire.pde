class Fire {

  boolean clickAble;
  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  boolean visible = false;
  

  Fire(PImage image_name, boolean click, float x, float y, float sx, float sy, boolean pVisible) {
    clickAble = click;
    posX = x;
    posY = y;
    asset = image_name;
    sizeX = sx;
    sizeY = sy;
    visible = pVisible;
  }

  void show() {
    asset = fireanim;
    
    if (Clock1.tenclock == 2 && rag.ragUp == true && Clock1.oneclock == 0 && mug.mugActive == false && rag.ragActive == false && pan.Cooking == true && coffee_Beans.coffeeActive == false){
      visible = true;
      NPC_the_guy.expression = 3;
      NPC_the_guy.posX=400;
      NPC_the_guy.posY=360;
    }
      if (Clock1.tenclock == 2 && rag.ragUp == true && Clock1.oneclock == 5 && mug.mugActive == false 
      && rag.ragActive == false && pan.Cooking == true && coffee_Beans.coffeeActive == false){
      visible = true;
      NPC_the_guy.posX=400;
      NPC_the_guy.posY=360;
      NPC_the_guy.expression = 0;

      
    }
    if(rag.ragUp == false){
      visible = false;
      NPC_the_guy.expression = 0;
      NPC_the_guy.posX=400;
      NPC_the_guy.posY=360;
    }
   
    
    if (visible == true) {
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }

  void mouseClicked() {
    if (mouseButton == LEFT && clickAble == true && visible == true &&
      mouseX < (posX+sizeX/2)*scaleX && mouseX > (posX-sizeX/2)*scaleX &&
      mouseY < (posY+sizeY/2)*scaleY && mouseY > (posY-sizeY/2)*scaleY) {
      clickAble = false;
      visible = false;
      Timer = Timer + 5;
    }
  }
}
