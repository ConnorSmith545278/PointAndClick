class Menu {



  void update() {
    fill(255);
    rectMode(CENTER);
    strokeWeight(5);
    rect(width/2, height*0.25, 300, 100);
    fill(0);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("Play", width/2, height*0.25);

    fill(255);
    rectMode(CENTER);
    strokeWeight(5);
    rect(width/2, height*0.5, 300, 100);
    fill(0);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("Settings", width/2, height*0.5);

    fill(255);
    rectMode(CENTER);
    strokeWeight(5);
    rect(width/2, height*0.75, 300, 100);
    fill(0);
    textSize(80);
    textAlign(CENTER, CENTER);
    text("Exit", width/2, height*0.75);
  }
}
