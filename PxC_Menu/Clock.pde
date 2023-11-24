class Clock {
  int time;
  int timer;
  int oneclock;
  int tenclock;
  int TimeSave_Player;



  void update() {


    time = time + deltaTime;
    timer = time/4000;
    tenclock = timer/10;
    oneclock = timer % 10;

    if (tenclock >= 6) {
      time = 0;
      menuActive = 3;
    }
  }
  void show() {

    if (clockVisible) {
      image(clock, width - 150, height - 75, 370, 296 );
      switch(oneclock) {
      case 0:
        image(clock_zero, width - 85, height - 85, 28, 46);
        break;
      case 1:
        image(clock_one, width - 85, height - 85, 28, 46);
        break;
      case 2:
        image(clock_two, width - 85, height - 85, 28, 46);
        break;
      case 3:
        image(clock_three, width - 85, height - 85, 28, 46);
        break;
      case 4:
        image(clock_four, width - 85, height - 85, 28, 46);
        break;
      case 5:
        image(clock_five, width - 85, height - 85, 28, 46);
        break;
      case 6:
        image(clock_six, width - 85, height - 85, 28, 46);
        break;
      case 7:
        image(clock_seven, width - 85, height - 85, 28, 46);
        break;
      case 8:
        image(clock_eight, width - 85, height - 85, 28, 46);
        break;
      case 9:
        image(clock_nine, width - 85, height - 85, 28, 46);
        break;
      }
      switch(tenclock) {
      case 0:
        image(clock_zero, width - 140, height - 85, 28, 46);
        break;
      case 1:
        image(clock_one, width - 140, height - 85, 28, 46);
        break;
      case 2:
        image(clock_two, width - 140, height - 85, 28, 46);
        break;
      case 3:
        image(clock_three, width - 140, height - 85, 28, 46);
        break;
      case 4:
        image(clock_four, width - 140, height - 85, 28, 46);
        break;
      case 5:
        image(clock_five, width - 140, height - 85, 28, 46);
        break;
      }
    } else if (!clockVisible) {
      image(clock, width/2-300, height/2-240, 600, 480 );
      switch(oneclock) {
      case 0:
        image(clock_zero, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 1:
        image(clock_one, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 2:
        image(clock_two, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 3:
        image(clock_three, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 4:
        image(clock_four, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 5:
        image(clock_five, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 6:
        image(clock_six, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 7:
        image(clock_seven, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 8:
        image(clock_eight, width/2 + 85, height/2 - 55, 47, 80);
        break;
      case 9:
        image(clock_nine, width/2 + 85, height/2 - 55, 47, 80);
        break;
      }
      switch(tenclock) {
      case 0:
        image(clock_zero, width/2, height/2 - 55, 47, 80);
        break;
      case 1:
        image(clock_one, width/2, height/2 - 55, 47, 80);
        break;
      case 2:
        image(clock_two, width/2, height/2 - 55, 47, 80);
        break;
      case 3:
        image(clock_three, width/2, height/2 - 55, 47, 80);
        break;
      case 4:
        image(clock_four, width/2, height/2 - 55, 47, 80);
        break;
      case 5:
        image(clock_five, width/2, height/2 - 55, 47, 80);
        break;
      }
    }
  }


  //click on clock
  void mousePressed() {
    if (mouseX>width-300 && mouseX<width-5 &&
      mouseY<height - 5 && mouseY>height -145 &&
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
