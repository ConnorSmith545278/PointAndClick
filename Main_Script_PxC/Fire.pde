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
    
    //changed it to Timer to make it shorter and more accurate also changed it to >= so a second if is not necessary
    if (Timer >= 25 && rag.ragUp == true  && mug.mugActive == false && rag.ragActive == false && pan.asset == pan_eggs && coffee_Beans.coffeeActive == false) { 
      NPC_the_guy.expression = 3;
      NPC_the_guy.posX=400;
      NPC_the_guy.posY=360;
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
    }
  }
}
