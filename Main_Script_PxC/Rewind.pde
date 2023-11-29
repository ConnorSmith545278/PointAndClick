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
     }      
    }
    
    Timer -= 5;
    timeStack.pop();
  }
}
