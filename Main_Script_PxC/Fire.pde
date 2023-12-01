class Fire {

  float posX = 220f;
  float posY = 275f;
  PImage asset;
  float size = 65;
  boolean visible = false;


  void show() {
    asset = fireanim;

    //changed it to Timer to make it shorter and more accurate also changed it to >= so a second if is not necessary
    if (Timer >= 25 && rag.clickAble && !animation && pan.asset == pan_eggs) {
      NPC_the_guy.expression = 3;
      NPC_the_guy.posX=400;
      NPC_the_guy.posY=360;
      rag.onFire = true;
      imageMode(CENTER);
      image(asset, posX*scaleX, posY*scaleY, size*scaleX, size*scaleY);
      if (Timer >= 30) {
        Menumanager.gameOverType = 0;
        Menumanager.menu = 3;
      }
    }
  }
}
