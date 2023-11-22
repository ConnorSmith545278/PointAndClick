class Clock {
  int time;
  int timer;
  int oneclock;
  int tenclock;
  int TimeSave_Player;
  

  void update() {
    //changed to time++ so we can easily change the value for TIME TRAVEL
    //clock
    time++; //60 times per second


    // /4 works better then either framecount or %4
    timer = time/40; // /10 to get per second, 40 so every 4 real seconds is 1 in game minute


    tenclock = timer/10;

    oneclock = timer % 10;


    if (tenclock >= 6) {
      time = 0;
      menuActive = 3;
    }
  }
  void show(){
    //visableclock
    //digits
    if (clockVisible == true) {
      textAlign(CENTER, CENTER);
      textSize(80);
      text("0 8 : ", width - 200, height - 50);
      text(oneclock, width-50, height-50);
      text(tenclock, width-100, height-50);

      //box around the digits
      rectMode(CENTER);
      noFill();
      strokeWeight(2);
      rect(width-150, height-50, 250, 80);
    } else if (clockVisible == false) {
      textAlign(CENTER, CENTER);
      textSize(250);
      text("0 8 : ", width / 2 - 145, height/ 2 );
      text(oneclock, width / 2 + 270 , height/ 2 );
      text(tenclock, width / 2 + 110, height/ 2 );

      //box around the digits
      rectMode(CENTER);
      noFill();
      strokeWeight(6);
      rect(width/ 2 , height/ 2 , 800, 256);
    }
  }
  
  //click on clock
  void mousePressed() {
    if (mouseX>width-275 && mouseX<width-25 &&
      mouseY<height - 10 && mouseY>height -90 &&
      mouseButton==LEFT && clockVisible == true) {
      clockVisible = false;
      TimeSave_Player = time;//safe time so we can reimplement this for easy TIME TRAVEL
      
    } else if (mouseX>width /2 - 400  && mouseX<width /2 + 400  &&
      mouseY<height/ 2 + 128  && mouseY>height/2 - 128  &&
      mouseButton==LEFT && clockVisible == false) {
      clockVisible = true;
    }
  }
}
