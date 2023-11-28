class Clock {
  int time;
  int oneclock;
  int tenclock;
  int TimeSave_Player;
  int numberSizeX = 14;
  int numberSizeY = 46;
  int oneClock_posX = 1210;
  int tenClock_posX = 1190;
  int clockNumber_posY = 635;

  void update() {
    
    //time = time + deltaTime;
    //timer = time/4000;
    oneclock = Timer;

    if (tenclock >= 6) {
      Timer = 0;
      tenclock = 0;
    }
    if (Timer == 10){
      Timer = 0;
      tenclock ++;
    }
  }
  void show() {

    if (!menu_Clock.active) {
      image(clock, 1130*scaleX, 645*scaleY, 370*scaleX, 296*scaleY);
      switch(oneclock) {
      case 0:
        image(clock_zero, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 1:
        image(clock_one, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 2:
        image(clock_two, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 3:
        image(clock_three, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 4:
        image(clock_four, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 5:
        image(clock_five, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 6:
        image(clock_six, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 7:
        image(clock_seven, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 8:
        image(clock_eight, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 9:
        image(clock_nine, oneClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      }
      switch(tenclock) {
      case 0:
        image(clock_zero, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 1:
        image(clock_one, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 2:
        image(clock_two, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 3:
        image(clock_three, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 4:
        image(clock_four, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      case 5:
        image(clock_five, tenClock_posX, clockNumber_posY, numberSizeX, numberSizeY);
        break;
      }
    } else if (menu_Clock.active) {
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
}
