//click to fire arrow and hit target
float center;
float forward;
float side;
float targetX=1270;
float targetY=400;
float strength;
String points="0";
String pow;
boolean fired=false;
boolean set=false;
void setup() {
  size(1280, 800);
}
void draw() {
  if (fired==true) {
    forward+=5;
    side+=strength;
  }
  if (fired==false) {
    side=0;
    center=mouseY;
    forward=0;
    if (set==false) {
      wind();
      set=true;
    }
  }
  pow=str(int(strength*10));
  background(0, 255, 0); 
  arrow();
  bow();
  target();
  hit();
  textSize(20);
  fill(0);
  text("Wind: "+pow, 40, 40);
  text("Score: "+points, 180, 40);
}
void mousePressed() {
  fired = !fired;
  points="0";
}
//draws bow
void bow() {
  strokeWeight(3);
  stroke(0);
  line(50, mouseY+70, 50, mouseY-70);
  strokeWeight(10);
  stroke(#806517);
  noFill();
  arc(50, mouseY, 60, 140, 3*PI/2, 5*PI/2);
}

//draws arrow
void arrow() {
  strokeWeight(5);
  stroke(#806517);
  line(30+forward, center+side, 100+forward, center+side);
  strokeWeight(1);
  stroke(0);
  fill(255);
  triangle(100+forward, center+10+side, 100+forward, center-10+side, 110+forward, center+side);
  fill(0);
  triangle(28+forward, center-3+side, 40+forward, center-3+side, 25+forward, center-10+side);
  triangle(28+forward, center+3+side, 40+forward, center+3+side, 25+forward, center+10+side);
}
//draw target
void target() {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(targetX, targetY, 16, 130);
  fill(0, 0, 255);
  rect(targetX, targetY, 16, 80);
  fill(255, 0, 0);
  rect(targetX, targetY, 16, 40);
  fill(#FFF703);
  rect(targetX, targetY, 16, 10);
}
void wind() {
  strength=random(-1.5, 1.5);
}
//determins if arrow hits target and gives points
void hit() {
  if (forward==1170) {
    set=false;
    if ((center+side)>(targetY-15)&&(center+side)<(targetY+15)) {
      points="20";
      side-=strength;
      forward-=5;
    } else if ((center+side)>(targetY-20)&&(center+side)<(targetY+20)) {
      points="15";
      side-=strength;
      forward-=5;
    } else if ((center+side)>(targetY-40)&&(center+side)<(targetY+40)) {
      points="10";
      side-=strength;
      forward-=5;
    } else if ((center+side)>(targetY-65)&&(center+side)<(targetY+65)) {
      forward-=5;
      side-=strength;
      points="5";
    }
  }
}
