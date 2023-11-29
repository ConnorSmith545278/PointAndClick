class MomentInTime {
  int catLocation =1;
  boolean beansSpilled;
  boolean coffeeSpilled;
  boolean toasterTurnedoff;
  boolean mouseCaught;
  boolean saltOff;
  boolean pepperOff;

}

  void CreateMomentInTime(int cl, boolean bs, boolean cs, boolean tt, boolean mc, boolean so, boolean po) {
    MomentInTime newTime = new MomentInTime();
    newTime.catLocation = cl;
    newTime.beansSpilled = bs;
    newTime.coffeeSpilled =cs;
    newTime.toasterTurnedoff = tt;
    newTime.mouseCaught = mc;
    newTime.saltOff = so;
    newTime.pepperOff = po;
    timeStack.push(newTime);
  }
  
 // CreateMomentInTime(timeStack.peek().Cat_location, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);
