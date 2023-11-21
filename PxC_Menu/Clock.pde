class Clock{
int time;
int timer;
int oneclock;
int tenclock;

  
  void update(){
    //clock
    time = (millis()/1000);
    println(time);
    
    // /4 works better then either framecount or %4
   timer = time/4;
    
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
    
  
  
  
}
