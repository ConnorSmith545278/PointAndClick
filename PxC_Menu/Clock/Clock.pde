int time;
int timer = 0;
int clock;
int tenclock;

void setup(){
 
}

void draw(){
  time = (millis()/1000);
 println(time);
 if (frameCount % 240 ==0){
   timer++;
  }
  println(timer);
  
  tenclock = timer/10;
     println(tenclock);
  
  clock = timer % 10;
 
   println(clock);
 if(tenclock >= 6){
   timer = 0;
 }
}
