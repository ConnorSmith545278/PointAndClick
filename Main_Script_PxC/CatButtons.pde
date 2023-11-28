class CatButtons{
  float rightposX;
  float rightposY;
  float leftposX;
  float leftposY;
  float sizeX;
  float sizeY;
  int wait = 60;  
  int timeSinceLastClick = wait;

 
  void show(){
    if (timeSinceLastClick <= wait){
      timeSinceLastClick++;
    }
    leftposX = 50f;
    leftposY = 50f;
    rightposX = 1200f;
    rightposY = 50f;
    sizeX = 75f;
    sizeY = 75f;
    
    
    
    if(Cat.catPosition ==0 && timeSinceLastClick >= wait){
      rectMode(CENTER);
      fill(255);
      rect(rightposX*scaleX,rightposY*scaleY,sizeX*scaleX,sizeY*scaleY);
    }
    
    if(Cat.catPosition ==1 && timeSinceLastClick >= wait){
      rectMode(CENTER);
        fill(255);
      rect(rightposX*scaleX,rightposY*scaleY,sizeX*scaleX,sizeY*scaleY);
      rect(leftposX*scaleX,leftposY*scaleY,sizeX*scaleX,sizeY*scaleY);
    }
    
    if(Cat.catPosition ==2 && timeSinceLastClick >= wait){
      rectMode(CENTER);
      fill(255);
      rect(leftposX*scaleX,leftposY*scaleY,sizeX*scaleX,sizeY*scaleY);
    }
    
    
  }
  
  
  
    void mouseClicked() {
    if (mouseButton == LEFT  && Cat.catPosition == 2 && timeSinceLastClick >= wait &&
      mouseX < (leftposX+sizeX/2)*scaleX && mouseX > (leftposX-sizeX/2)*scaleX &&
      mouseY < (leftposY+sizeY/2)*scaleY && mouseY > (leftposY-sizeY/2)*scaleY) {
      timeSinceLastClick = 0;
      Cat.catPosition = 1;
      Timer = Timer + 5;
      CreateMomentInTime(1, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);

    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= wait &&
      mouseX < (leftposX+sizeX/2)*scaleX && mouseX > (leftposX-sizeX/2)*scaleX &&
      mouseY < (leftposY+sizeY/2)*scaleY && mouseY > (leftposY-sizeY/2)*scaleY) { 
      timeSinceLastClick= 0;
      Cat.catPosition = 0;
      Timer = Timer + 5;
      CreateMomentInTime(0, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);
      
    }
    if (mouseButton == LEFT  && Cat.catPosition == 0 && timeSinceLastClick >= wait &&
      mouseX < (rightposX+sizeX/2)*scaleX && mouseX > (rightposX-sizeX/2)*scaleX &&
      mouseY < (rightposY+sizeY/2)*scaleY && mouseY > (rightposY-sizeY/2)*scaleY) {
      timeSinceLastClick= 0;
      Cat.catPosition = 1;
      Timer = Timer + 5;
      CreateMomentInTime(1, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);
    }
    if (mouseButton == LEFT  && Cat.catPosition == 1 && timeSinceLastClick >= wait &&
      mouseX < (rightposX+sizeX/2)*scaleX && mouseX > (rightposX-sizeX/2)*scaleX &&
      mouseY < (rightposY+sizeY/2)*scaleY && mouseY > (rightposY-sizeY/2)*scaleY) {
      timeSinceLastClick = 0;
      Cat.catPosition = 2;
      Timer = Timer + 5;
      CreateMomentInTime(2, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);
    }
    
  }
  
}
