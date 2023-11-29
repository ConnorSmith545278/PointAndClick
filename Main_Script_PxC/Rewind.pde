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
       coffee_Beans.Paperrollvar=0;
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
    rag.posX = 280;
    rag.posY = 263;
    
    }
     
     
     
    }
    
    Timer -= 5;
    if (Timer <= 20) {
     pan.cookTimer = 0; 
     NPC_the_guy.expression = 0;
    }
    timeStack.pop();
  }
}
