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
       pot.pot_Timer = 0;
       mug.asset = mug_empty;
     }
     
     
    if (topElement.coffeeSpilled != secondElement.coffeeSpilled){
    
    
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
