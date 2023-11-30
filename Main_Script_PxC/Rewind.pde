class Rewind {




  void update() {
    println("Rewind");
    if (timeStack.size() >= 2) {
      MomentInTime topElement = timeStack.peek();
      MomentInTime secondElement = (timeStack.elementAt(timeStack.size() - 2));
      
      //Cat position
      if (topElement.catLocation != secondElement.catLocation) {
        println("move cat");
        switch(secondElement.catLocation) {
        case 0:
          Cat.catPosition = 0;
          break;
        case 1:
          Cat.catPosition = 1;
          break;
        case 2:
          Cat.catPosition = 2;
          break;
        }
      }
     
     if (topElement.beansSpilled != secondElement.beansSpilled){  
       coffee_Beans.clickAble = true;
       coffee_Beans.visible = true;
       pot.fillMug = false; 
     }
     
     
    if (topElement.coffeeSpilled != secondElement.coffeeSpilled){
    mug.asset = mug_filled;
    pot.fillMug = true;
    rag.visible = true;
    rag.clickAble = true;
    rag.ragUp = true;
    mug.cleaned = false;
    mug.clickAble=true;
    rag.posX = 205;
    rag.posY = 260;
    NPC_the_guy.expression = 0;
    }
     
     
     if (topElement.mouseCaught != secondElement.mouseCaught){
      Mouse.mouseDead = true;      
     }
     
     
     if (topElement.pepperOff != secondElement.pepperOff){
     Pepper.pepperFallen = false;
     Pepper.posX = 1090;
     Pepper.posY = 160;
    }
 
    
     if (topElement.saltOff != secondElement.saltOff){
     Salt.saltFallen = false;
     Salt.posX =1040;
     Salt.posY = 137;
    } 
    
    if (topElement.toasterTurnedoff != secondElement.toasterTurnedoff){
    toaster.toaster_off = false;
    }  
    
    }
 
 
    
    
    Timer -= 5;
    if (Timer <= 55){
 NPC_the_guy.expression = 0;
 NPC_the_guy.posX = NPC_the_guy.startPosX;
 NPC_the_guy.posY = NPC_the_guy.startPosY;
 NPC_the_guy.NPCTimer = 0;
 }
 
 if (Timer == 60){
 NPC_the_guy.expression = 7;
 }
    timeStack.pop();
  }
}
