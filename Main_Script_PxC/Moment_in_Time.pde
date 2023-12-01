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
//CreateMomentInTime(timeStack.peek().catLocation, timeStack.peek().beansSpilled, timeStack.peek().coffeeSpilled,
//    timeStack.peek().toasterTurnedoff, timeStack.peek().mouseCaught, timeStack.peek().saltOff, timeStack.peek().pepperOff);
