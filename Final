//Use WASD to jump across the logs, and turtles; and to dodge the cars to get to the other side
//may be laggy
Frog myfrog;
Background myBG;
boolean alive=false;
boolean landed=false;
boolean landed2=false;
boolean won=false;
Log[] log =new Log[5];
Log[] log3 = new Log[5];
Log[] log5 = new Log[5];
Log[] log2 =new Log[5];
Log[] log4=new Log[5];
Log[] log6=new Log[5];
Car[] car=new Car[3];
Car[] car2=new Car[3];
Car[] car3=new Car[3];
Car[] car4=new Car[3];
Car[] car5=new Car[3];
Car[] car6=new Car[3];
Turtle[] turt=new Turtle[4];
Turtle[] turt2=new Turtle[4];
void setup() {
  size(1260, 800);
  background(0);
  myfrog = new Frog();
  myBG = new Background();
  for (int i=0; i<log.length; i++) {
    log[i]=new Log(1150, i*200, 50);
    log3[i]=new Log(1030, i*200, 50);
    log5[i]=new Log(790, i*200, 50);
    log2[i]=new Log(1090, i*200, -50);
    log4[i]=new Log(910, i*200, -50);
    log6[i]=new Log(670, i*200, -50);
  }
  for (int i=0; i<car.length; i++) {
    car[i]=new Car(490, i*300, 50);
    car2[i]=new Car(430, i*300+100, 50);
    car3[i]=new Car(370, i*300+200, 50);
    car4[i]=new Car(250, i*300, -50);
    car5[i]=new Car(190, i*300+100, -50);
    car6[i]=new Car(130, i*300+200, -50);
  }
  for (int i=0; i<turt.length; i++) {
    turt[i]=new Turtle(730, i*200+50);
    turt2[i]=new Turtle(850, i*200+50);
  }
}

void draw() {

  myBG.display();
  if (alive==true) {
    println(myfrog.y +" " + log[0].y +" " + log[1].y +" " + log[2].y +" " + log[3].y +" " + log[4].y );
    for (int i=0; i<log.length; i++) {
      log[i].display();
      log[i].update();
      log3[i].display();
      log3[i].update();
      log5[i].display();
      log5[i].update();
      log2[i].display();
      log2[i].update();
      log4[i].display();
      log4[i].update();
      log6[i].display();
      log6[i].update();

      if (log[i].y>800) {
        log[i].y=-100;
      }
      if (log3[i].y>800) {
        log3[i].y=-100;
      }
      if (log5[i].y>800) {
        log5[i].y=-100;
      }
      if (log2[i].y<-100) {
        log2[i].y=800;
      }
      if (log4[i].y<-100) {
        log4[i].y=800;
      }
      if (log6[i].y<-100) {
        log6[i].y=800;
      }
    }
    for (int i=0; i<car.length; i++) {
      car[i].display();
      car[i].update();
      car2[i].display();
      car2[i].update();
      car3[i].display();
      car3[i].update();
      car4[i].display();
      car4[i].update();
      car5[i].display();
      car5[i].update();
      car6[i].display();
      car6[i].update();
      if (car[i].y>800) {
        car[i].y=-100;
      }
      if (car2[i].y>800) {
        car2[i].y=-100;
      }
      if (car3[i].y>800) {
        car3[i].y=-100;
      }
      if (car4[i].y<-100) {
        car4[i].y=800;
      }
      if (car5[i].y<-100) {
        car5[i].y=800;
      }
      if (car6[i].y<-100) {
        car6[i].y=800;
      }
    }

    for (int i=0; i<turt.length; i++) {
      if (turt[i].up()) {
        turt[i].display();
        turt2[i].display();
      }
    }

    if (landed==true&&millis()%20==0) {
      myfrog.movement();
    }
    if (landed2==true&&millis()%20==0) {
      myfrog.movement2();
    }
    myfrog.display();
    myfrog.update();
  } else {
    if (keyPressed)
      if (key == ENTER)
        alive=true;
  }

  if (myfrog.x<1200&&myfrog.x>1140) {
    if ((myfrog.y>log[0].y&&myfrog.y<(log[0].y+100))) {
      landed=true;
    } else if ((myfrog.y>log[1].y&&myfrog.y<(log[1].y+100))) {
      landed=true;
    } else if ((myfrog.y>log[2].y&&myfrog.y<(log[2].y+100))) {
      landed=true;
    } else if ((myfrog.y>log[3].y&&myfrog.y<(log[3].y+100))) {
      landed=true;
    } else if ((myfrog.y>log[4].y&&myfrog.y<(log[4].y+100))) {
      landed=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>1020&&myfrog.x<1080) {
    if ((myfrog.y>log3[0].y&&myfrog.y<(log3[0].y+100))) {
      landed=true;
    } else if ((myfrog.y>log3[1].y&&myfrog.y<(log3[1].y+100))) {
      landed=true;
    } else if ((myfrog.y>log3[2].y&&myfrog.y<(log3[2].y+100))) {
      landed=true;
    } else if ((myfrog.y>log3[3].y&&myfrog.y<(log3[3].y+100))) {
      landed=true;
    } else if ((myfrog.y>log3[4].y&&myfrog.y<(log3[4].y+100))) {
      landed=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>780&&myfrog.x<840) {
    if ((myfrog.y>log5[0].y&&myfrog.y<(log5[0].y+100))) {
      landed=true;
    } else if ((myfrog.y>log5[1].y&&myfrog.y<(log5[1].y+100))) {
      landed=true;
    } else if ((myfrog.y>log5[2].y&&myfrog.y<(log5[2].y+100))) {
      landed=true;
    } else if ((myfrog.y>log5[3].y&&myfrog.y<(log5[3].y+100))) {
      landed=true;
    } else if ((myfrog.y>log5[4].y&&myfrog.y<(log5[4].y+100))) {
      landed=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else landed=false;

  if (myfrog.x>1080&&myfrog.x<1140) {
    if ((myfrog.y>log2[0].y&&myfrog.y<(log2[0].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log2[1].y&&myfrog.y<(log2[1].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log2[2].y&&myfrog.y<(log2[2].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log2[3].y&&myfrog.y<(log2[3].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log2[4].y&&myfrog.y<(log2[4].y+100))) {
      landed2=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>900&&myfrog.x<960) {
    if ((myfrog.y>log4[0].y&&myfrog.y<(log4[0].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log4[1].y&&myfrog.y<(log4[1].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log4[2].y&&myfrog.y<(log4[2].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log4[3].y&&myfrog.y<(log4[3].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log4[4].y&&myfrog.y<(log4[4].y+100))) {
      landed2=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>660&&myfrog.x<720) {
    if ((myfrog.y>log6[0].y&&myfrog.y<(log6[0].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log6[1].y&&myfrog.y<(log6[1].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log6[2].y&&myfrog.y<(log6[2].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log6[3].y&&myfrog.y<(log6[3].y+100))) {
      landed2=true;
    } else if ((myfrog.y>log6[4].y&&myfrog.y<(log6[4].y+100))) {
      landed2=true;
    } else {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else
    landed2=false;

  if (myfrog.x>480&&myfrog.x<540) {
    if (myfrog.y>car[0].y&&myfrog.y<(car[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car[1].y&&myfrog.y<(car[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car[2].y&&myfrog.y<(car[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>420&&myfrog.x<480) {
    if (myfrog.y>car2[0].y&&myfrog.y<(car2[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car2[1].y&&myfrog.y<(car2[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car2[2].y&&myfrog.y<(car2[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>360&&myfrog.x<420) {
    if (myfrog.y>car3[0].y&&myfrog.y<(car3[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car3[1].y&&myfrog.y<(car3[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car3[2].y&&myfrog.y<(car3[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>240&&myfrog.x<300) {
    if (myfrog.y>car4[0].y&&myfrog.y<(car4[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car4[1].y&&myfrog.y<(car4[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car4[2].y&&myfrog.y<(car4[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>180&&myfrog.x<240) {
    if (myfrog.y>car5[0].y&&myfrog.y<(car5[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car5[1].y&&myfrog.y<(car5[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car5[2].y&&myfrog.y<(car5[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } else if (myfrog.x>120&&myfrog.x<180) {
    if (myfrog.y>car6[0].y&&myfrog.y<(car6[0].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car6[1].y&&myfrog.y<(car6[1].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    } else if (myfrog.y>car6[2].y&&myfrog.y<(car6[2].y+50)) {
      alive=false;
      myfrog.x=1225;
      myfrog.y=425;
    }
  } 
  if (turt[1].up()) {
    if (myfrog.x>720&&myfrog.x<780) {
      if (myfrog.y>turt[0].y&&myfrog.y<(turt[0].y+100)) {
        alive=true;
      } else if (myfrog.y>turt[1].y&&myfrog.y<(turt[1].y+100)) {
        alive=true;
      } else if (myfrog.y>turt[2].y&&myfrog.y<(turt[2].y+100)) {
        alive=true;
      } else if (myfrog.y>turt[3].y&&myfrog.y<(turt[3].y+100)) {
        alive=true;
      } else {
        alive=false;
      }
    } else if (myfrog.x>840&&myfrog.x<900) {
      if (myfrog.y>turt2[0].y&&myfrog.y<(turt2[0].y+100)) {
        alive=true;
      } else if (myfrog.y>turt2[1].y&&myfrog.y<(turt2[1].y+100)) {
        alive=true;
      } else if (myfrog.y>turt2[2].y&&myfrog.y<(turt2[2].y+100)) {
        alive=true;
      } else if (myfrog.y>turt2[3].y&&myfrog.y<(turt2[3].y+100)) {
        alive=true;
      } else {
        alive=false;
      }
    }
  } else {if(myfrog.x>840&&myfrog.x<900){
  alive =false;
  } else if(myfrog.x>720&&myfrog.x<780){
    alive=false;
  }


  }
  if (myfrog.y>800||myfrog.y<0) {
    alive=false;
    myfrog.x=1225;
    myfrog.y=425;
  }
  if(myfrog.x<60){
    won=true;
  }
}

class Background {

  void display() {
    if(won==true){
      win();
    } else {if (alive==true) {
      maps();
    } else {
      gameover();
    }
  }
  }
  void maps() {
    stroke(0);
    fill(0, 255, 0);
    rect(0, 0, width, height);
    fill(0, 0, 255);
    rect(1020, 0, 180, height);
    rect(660, 0, 300, height);
    fill(125);
    rect(360, 0, 180, height);
    rect(120, 0, 180, height);
    stroke(255);
    line(420, 0, 420, height);
    line(480, 0, 480, height);
    line(180, 0, 180, height);
    line(240, 0, 240, height);
  }

  void gameover() {
    background(0);
    fill(255);

    textSize(100);
    text("GAMEOVER", 350, 200);
    textSize(30);
    text("Press Enter To Start", 490, 300);
  }
  
  void win(){
    background(0);
    fill(255);
    textSize(100);
    text("YOU WON",350,200);
  }
 
}

class Car {
  int x, y, d;
  Car(int x2, int y2, int d2) {
    x=x2;
    y=y2;
    d=d2;
  }
  void display() {
    fill(255, 0, 0);
    rect(x, y, 40, 50);
  }
  void update() {
    if (millis()%20==0)
      y+=d;
  }
}

class Frog {
  PImage img =loadImage("https://cloud.githubusercontent.com/assets/16229376/11827738/25e9c074-a354-11e5-891d-5d66e2ddd23a.png");

  int x= 1225;
  int y= 425;
  int count=0;
  boolean space=true;
  void display() {
    imageMode(CENTER);
    image(img, x, y, 50, 50);
  }
  void movement() {
    y+=50;
  }
  void movement2() {
    y-=50;
  }

  void update() {
    if (space==true) {
      if (keyPressed) {

        if (key=='a'&&x>25) {
          x-=60;
          space=false;
        }

        if (key=='d'&& x<1225) {
          x+=60;
          space=false;
        }

        if (key=='w'&&y>25) {
          y-=50;
          space=false;
        }

        if (key=='s'&&y<775) {
          y+=50;
          space=false;
        }
      }
    }
    if (space==false) {
      count+=1;
    }
    if (count%5==0)
      space=true;
  }
}

class Log {
  int x, y, d;
  Log(int x2, int y2, int d2) {
    x=x2;
    y=y2;
    d=d2;
  }
  void display() {
    fill(#8B4513);
    rect(x, y, 40, 100);
  }
  void update() {
    if (millis()%20==0)
      y+=d;
  }
}

class Turtle {
  int x, y;
  Turtle(int x2, int y2) {
    x=x2;
    y=y2;
  }

  void display() {
    fill(0, 255, 0);
    ellipseMode(CORNER);
    ellipse(x, y, 40, 50);
    ellipse(x, y+50, 40, 50);
  }
  boolean up() {
    if (second()%20<10) {
      return true;
    } else {
      return false;
    }
  }
}
