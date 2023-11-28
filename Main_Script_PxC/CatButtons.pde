class CatButtons{
  float rightposX;
  float rightposY;
  float leftposX;
  float leftposY;
  float sizeX;
  float sizeY;
  int timeSinceLastClick = 100;
  
 
  void show(){
    if (timeSinceLastClick <= 100){
      timeSinceLastClick++;
    }
    leftposX = 50f;
    leftposY = 50f;
    rightposX = 1200f;
    rightposY = 50f;
    sizeX = 75f;
    sizeY = 75f;
    
    
    
    if(Cat.catPosition ==0){
      rectMode(CENTER);
      fill(255);
      rect(rightposX,rightposY,sizeX,sizeY);
    }
    
    if(Cat.catPosition ==1){
      rectMode(CENTER);
        fill(255);
      rect(rightposX,rightposY,sizeX,sizeY);
      rect(leftposX,leftposY,sizeX,sizeY);
    }
    
    if(Cat.catPosition ==2){
      rectMode(CENTER);
      fill(255);
      rect(leftposX,leftposY,sizeX,sizeY);
    }
    
    
  }
  
  
  
    void mouseClicked() {
    if (mouseButton == LEFT  && Cat.catPosition == 2 && timeSinceLastClick >= 100 &&
      mouseX < (leftposX+sizeX/2)*scaleX && mouseX > (leftposX-sizeX/2)*scaleX &&
      mouseY < (leftposY+sizeY/2)*scaleY && mouseY > (leftposY-sizeY/2)*scaleY) {
      timeSinceLastClick = 0;
      Cat.catPosition = 1;
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= 100 &&
      mouseX < (leftposX+sizeX/2)*scaleX && mouseX > (leftposX-sizeX/2)*scaleX &&
      mouseY < (leftposY+sizeY/2)*scaleY && mouseY > (leftposY-sizeY/2)*scaleY) { 
      timeSinceLastClick= 0;
      Cat.catPosition = 0;
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 0 && timeSinceLastClick >= 100 &&
      mouseX < (rightposX+sizeX/2)*scaleX && mouseX > (rightposX-sizeX/2)*scaleX &&
      mouseY < (rightposY+sizeY/2)*scaleY && mouseY > (rightposY-sizeY/2)*scaleY) {
      timeSinceLastClick= 0;
      Cat.catPosition = 1;
      Timer = Timer + 5;
    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= 100 &&
      mouseX < (rightposX+sizeX/2)*scaleX && mouseX > (rightposX-sizeX/2)*scaleX &&
      mouseY < (rightposY+sizeY/2)*scaleY && mouseY > (rightposY-sizeY/2)*scaleY) {
      timeSinceLastClick = 0;
      Cat.catPosition = 2;
      Timer = Timer + 5;
    }
    
  }
  
}
