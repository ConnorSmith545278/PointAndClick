class Clock{
int time;
int timer;
int oneclock;
int tenclock;
int TimeSave_Player;
  
  void update(){
    //changed to time++ so we can easily change the value for TIME TRAVEL
    //clock
    time++; //60 times per second
    println(time);
    
    // /4 works better then either framecount or %4
   timer = time/40; // /10 to get per second, 40 so every 4 real seconds is 1 in game second
    
    println(timer);

    tenclock = timer/10;
    println(tenclock);

    oneclock = timer % 10;
    println(oneclock);
    
    if (tenclock >= 6) {
      timer = 0;
      menuActive = 3;
    }
    
    //visableclock
    //digits
    textAlign(CENTER, CENTER);
    text(oneclock, width-50, height-50);
    text(tenclock, width-100, height-50);
    
    //box around the digits
    rectMode(CENTER);
    noFill();
    strokeWeight(2);
    rect(width-100, height-50, 150, 80);
    
  }
    //click on clock
    void mousePressed(){
      if (mouseX>width-140 && mouseX<width-60 &&
      mouseY<height+100 && mouseY>height-200 &&
      mouseButton==LEFT){
        TimeSave_Player = time;//safe time so we can reimplement this for easy TIME TRAVEL
      }
    }
  
  
  
}
