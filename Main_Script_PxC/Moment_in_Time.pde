class MomentInTime {
  int Cat_location;
  boolean beans_spilled;
  boolean coffee_spilled; 
  boolean toaster_turned_off;
  boolean mouse_caught;
  boolean salt_off;
  boolean pepper_off;
  

}

  void CreateMomentInTime(int cl, boolean bs, boolean cs, boolean tt, boolean mc, boolean so, boolean po) {
    MomentInTime newTime = new MomentInTime();
    newTime.Cat_location = cl;
    newTime.beans_spilled = bs;
    newTime.coffee_spilled =cs;
    newTime.toaster_turned_off = tt;
    newTime.mouse_caught = mc;
    newTime.salt_off = so;
    newTime.pepper_off = po;
    timeStack.push(newTime);
  }
  
 // CreateMomentInTime(timeStack.peek().Cat_location, timeStack.peek().beans_spilled, timeStack.peek().coffee_spilled, timeStack.peek().toaster_turned_off,timeStack.peek().mouse_caught,timeStack.peek().salt_off,timeStack.peek().pepper_off);
