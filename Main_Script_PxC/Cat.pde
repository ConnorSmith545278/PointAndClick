class Cat {

  float posX;
  float posY;
  PImage asset;
  float sizeX;
  float sizeY;
  int expression=0;
  int catPosition = 1;
  int jumpTime;

  Cat(float x, float y, float sx, float sy) {
    posX = x;
    posY = y;
    sizeX = sx;
    sizeY = sy;
  }

  void show() {
    switch(catPosition){
      case 0: //left
      jumpTime = 0;
      asset = the_cat_sitting_transparent;
      posX = 335f;
      posY = 220f;
      break;
      case 1://middel
      jumpTime = 0;
      asset = the_cat_sitting_transparent;
      posX = 640f;
      posY = 320f;
      break;
      case 2://right
      jumpTime = 0;
      asset = the_cat_sitting_transparent;
      posX = 970f;
      posY = 260f;
      break;
      
      case 3://jump 0 to 1
      jumpTime++;
      asset = the_cat_jumping_to_the_right;
      posX = 490;
      posY = 200;
      if (jumpTime >= 40){
      catPosition = 1;
      }
      break;
      case 4://jump 1 to 0
      jumpTime++;
      asset = the_cat_jumping_to_the_left;
      posX = 490;
      posY = 200;
      if (jumpTime >= 40){
      catPosition = 0;
      }
      break;
      case 5:// jump 1 to 2
      jumpTime++;
      asset = the_cat_jumping_to_the_right;
      posX = 805;
      posY = 200;
      if (jumpTime >= 40){
      catPosition = 2;
      }
      break;
      case 6:// jump 2 to 1
      jumpTime++;
      asset = the_cat_jumping_to_the_left;
      posX = 805;
      posY = 200;
      if (jumpTime >= 40){
      catPosition = 1;
      }
      break;
    }
    

    
    
    
    
    
    image(asset, posX*scaleX, posY*scaleY, sizeX*scaleX, sizeY*scaleY);
  }
  
  
  
  
  void mouseClicked(){
   if (expression == 0){
    expression = 1; 
   } else {
    expression = 0; 
   }
    
  }
}
