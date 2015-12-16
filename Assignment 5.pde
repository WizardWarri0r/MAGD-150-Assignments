//Try and get to the fishing spot and catch the fish with WASD
Boat myboat;
Timer fishT;
Fishspot spot;
Fish fishy;
boolean state =true;
int x, y;
void setup() {
  size(1280, 800);
  myboat = new Boat();
  fishT = new Timer(4);
  spot =new Fishspot();
  fishy =new Fish();
}
void draw() {
  if (state ==true) {
    if (fishT.isFinished()) {
      x=int(random(80, 1200));
      y=int(random(40, 760));
    }
  }
  if (myboat.fishing(x, y)) {
    background(0, 0, 170);
    spot.display(x, y);
    myboat.display();
    myboat.move();
    fishy.reset();
  } else {
    state=false;
    background(#010150);
    fishy.display(); 
    fishy.update();
  }
}

class Fish {
  PImage img;
  int centX, centY, lineX, lineY;
  boolean Caught=false;
  Fish() {
    centX=1100;
    centY=600;
    lineX=600;
    lineY=400;
    img =loadImage("https://cloud.githubusercontent.com/assets/16229376/11827631/4f6b6cdc-a353-11e5-8337-8fd7b8e3250e.jpg");
  }
  void display() {
    image(img, centX, centY, 100, 100);
    strokeWeight(3);
    stroke(0);
    line(lineX, 0, lineX, lineY);
    stroke(125);
    line(lineX, lineY, lineX, lineY+10);
    line(lineX, lineY+10, lineX+5, lineY+5);
    if ((centX-lineX)<0 && (centY-lineY+30)<10)
      Caught=true;
  }
  void update() {
    centX-=3;
    if (Caught==false) {
      centY+= int(random(-10, 10));
    } else {
      centY=lineY-30;
      lineX-=3;
    }
    if (keyPressed) {
      if (key == 'w') {
        lineY = lineY - 5;
      } 
      if (Caught==false) {
        if (key == 'a') {
          lineX = lineX - 5;
        }
        if (key == 'd') {
          lineX = lineX + 5;
        }
      }
      if (key == 's') {
        lineY = lineY + 5;
      }
    }
    if (centX<10||centY<0) {
      stroke(0);
      strokeWeight(1);
      Caught=false;
      state=true;
    }
  }
  void reset() {
    centX=1100;
    centY=600;
    lineX=600;
    lineY=400;
  }
}

class Boat {
  int centerX, centerY, offset1, offset2, offset3;
  // constructor
  Boat() {
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offset3 = -40;
  }
  void display() {
    fill(255);
    beginShape(); //ship main body
    vertex(centerX+offset1, centerY+offset1);
    vertex(centerX, centerY+offset3);
    vertex(centerX+offset2, centerY+offset1);
    vertex(centerX+offset2, centerY+offset2);
    vertex(centerX+offset1, centerY+offset2);
    vertex(centerX+offset1, centerY+offset1);
    endShape();
    fill(#7EFFC2);
    beginShape(); 
    vertex(centerX+offset1+5, centerY+offset1+5);
    vertex(centerX, centerY+offset3+7);
    vertex(centerX+offset2-5, centerY+offset1+5);
    vertex(centerX+offset2-5, centerY+offset2-5);
    vertex(centerX+offset1+5, centerY+offset2-5);
    vertex(centerX+offset1+5, centerY+offset1+5);
    endShape();
    fill(#6D6F6E);
    rect(centerX-5, centerY+16, 10, 10);//motor
    fill(255);
    rect(centerX+3, centerY-15, 10, 10);
  }
  void move() {
    if (keyPressed) {
      if (key == 'w') {
        centerY = centerY - 5;
      } 
      if (key == 'a') {
        centerX = centerX - 5;
      }
      if (key == 'd') {
        centerX = centerX + 5;
      } 
      if (key == 's') {
        centerY = centerY + 5;
      }
    }
  }
  boolean fishing(int x, int y) {
    float distance = dist(centerX, centerY, x, y);
    if (distance<30) {
      return false;
    } else {
      return true;
    }
  }
}

class Fishspot {
  int r1, r2;
  Fishspot() {
    r1=80;
    r2=40;
  }
  void display(int x, int y) {
    fill(#010150);
    ellipse(x, y, r1, r2);
  }
}

class Timer {
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime) {
    totalTime = _totalTime;
  }
  // Start the Timer
  void start() {
    savedTime = minute();
  }
  boolean isFinished() {
    // check how much time has passed
    int passedTime = minute() - savedTime;
    if (passedTime%totalTime==0) {
      return true;
    } else {
      return false;
    }
  }
}
