//click 8 times to teleport
PImage img;
float turn=0;
boolean move=true;
boolean select=false;
boolean teleporting=false;
int x=0;
int count=0;
int CcenterX=-15;
int CcenterY=-15;
int CcenterX2=-15;
int CcenterY2=-15;
color c=color(125);
color p= color(160);
color s= color(180);
color d= color(0, 0, 255);
color n = color(0, 0, 0);
color ice = color(255);
color sand =color(244, 164, 96);
color grass=color(33, 237, 24);
color ground=color(139, 69, 19);
void setup() {
  size(1280, 800);
  img = loadImage("https://cloud.githubusercontent.com/assets/16229376/11827559/9d68171a-a352-11e5-8cbe-9f0ce76ca4d3.jpg");
  imageMode(CENTER);
  ellipseMode(CENTER);
}
void draw() {
  planet(p, s);
  stargate(c, p, s);
  teleport();
}
//locks in glyph
void mousePressed() {
  count+=1;
  move=false;
  select=true;
}
//draws that complete stargate
void stargate(color c, color p, color s) {
  glyph();
  dialer(p, s);
  steps(c);
}
//draws moving part of portal
void glyph() {
  pushMatrix();
  translate(width/2, height/2);
  rotate(turn);
  image(img, 0, 0, 400, 400);
  popMatrix();
  if (move==true) {
    turn+=.01;
  }
  if (select==true) {
    x++;
  }
}
//draws nonmoving part of portal
void dialer(color p, color s) {
  strokeWeight(70);
  noFill();
  stroke(p);
  arc(width/2, height/2, 500, 500, 0, PI);
  strokeWeight(1);
  fill(p);
  arc(width/2, height/2, 280, 280, 0, PI);
  strokeWeight(70);
  noFill();
  stroke(s);
  arc(width/2, height/2, 500, 500, PI+.1, TWO_PI-.1);
  strokeWeight(1);
  fill(s);
  arc(width/2, height/2, 280, 280, PI, TWO_PI);
  stroke(125);
  strokeWeight(40);
  noFill();
  ellipse(width/2, height/2, 420, 420);
  strokeWeight(10);
  ellipse(width/2, height/2, 280, 280);
  strokeWeight(1);
  stroke(0);
  fill(125);
  //outer triangle
  if (select==false) {
    beginShape();
    vertex(605, 173);
    vertex(640, 240);
    vertex(675, 173);
    vertex(660, 170);
    vertex(640, 220);
    vertex(620, 170);
    vertex(605, 173);
    endShape();
  } else if (select==true) {
    beginShape();
    vertex(605, 173+10);
    vertex(640, 240+10);
    vertex(675, 173+10);
    vertex(660, 170+10);
    vertex(640, 220+10);
    vertex(620, 170+10);
    vertex(605, 173+10);
    endShape();
    if (x==10) {
      select=false;
      move=true;
      x=0;
    }
  } 
  triangle(753, 200, 805, 240, 741, 270);
  triangle(527, 200, 475, 240, 539, 270);
  triangle(850, 304, 868, 368, 800, 360);
  triangle(430, 304, 412, 368, 480, 360);
  triangle(861, 465, 833, 526, 788, 467);
  triangle(419, 465, 447, 526, 492, 467);
  triangle(772, 588, 717, 617, 710, 550);
  triangle(508, 588, 563, 617, 570, 550);
  //inner triangle
  triangle(620, 170, 660, 170, 640, 220);
  triangle(764, 206, 798, 233, 748, 258);
  triangle(516, 206, 482, 233, 532, 258);
  triangle(855, 313, 867, 358, 813, 354);
  triangle(425, 313, 413, 358, 467, 354);
  triangle(858, 472, 838, 520, 803, 474);
  triangle(422, 472, 442, 520, 477, 474);
  triangle(765, 593, 725, 614, 718, 563);
  triangle(515, 593, 555, 614, 562, 563);
  //lights additional triangles for each glyph locked in.
  fill(#6F0000);
  if (count>=1)
    fill(#FF0000);
  triangle(770, 210, 792, 229, 754, 251);
  fill(#6F0000);
  if (count>=2)
    fill(#FF0000);
  triangle(857, 319, 865, 352, 823, 350);
  fill(#6F0000);
  if (count>=3)
    fill(#FF0000);
  triangle(856, 478, 841, 515, 810, 478);
  fill(#6F0000);
  if (count>=4)
    fill(#FF0000);
  triangle(424, 478, 439, 515, 470, 478);
  fill(#6F0000);
  if (count>=5)
    fill(#FF0000);
  triangle(423, 319, 415, 352, 457, 350);
  fill(#6F0000);
  if (count>=6)
    fill(#FF0000);
  triangle(510, 210, 488, 229, 526, 251);
  fill(#6F0000);
  if (count>=7) {
    fill(#FF0000);
    teleporting=true;
  }
  triangle(628, 170, 652, 170, 640, 210);
  triangle(761, 596, 730, 612, 724, 572);
  triangle(519, 596, 550, 612, 556, 572);
}
//draws steps leading to portal
void steps(color c) {
  fill(c);
  rect(580, 520, 120, 180);
  rect(580, 540, 120, 160);
  rect(580, 560, 120, 140);
  rect(580, 580, 120, 120);
  rect(580, 600, 120, 100);
  rect(580, 620, 120, 80);
  rect(580, 640, 120, 60);
  rect(580, 660, 120, 40);
  rect(580, 680, 120, 20);
}
//draws active portal and sets elments of new location
void teleport() {
  if (teleporting==true) {
    fill(#2EFFEC);
    stroke(#2EFFEC);
    strokeWeight(1);
    ellipse(width/2, height/2, 280, 280);
    if (count==8) {
      float rand1=random(0, 1);
      int rand2=round(random(.5, 4.5));
      s=lerpColor(d, n, rand1);
      if (rand2==1)
        p=grass;
      if (rand2==2)
        p=ice;
      if (rand2==3)
        p=sand;
      if (rand2==4)
        p=ground;
      count=0;
      teleporting =false;
    }
  }
}
//draws in new planet
void planet(color p, color s) {
  stroke(0);
  background(s);
  fill(p);
  rect(0, height/2, width, height/2);
  clouds();
}
void clouds() {
  if (count==8) {
    CcenterX=int(random(0, 1280));
    CcenterY=int(random(0, 150));
  }
  noStroke();
  fill(255);
  ellipse(CcenterX, CcenterY, 30, 30);
  ellipse(CcenterX+15, CcenterY, 30, 30);
  ellipse(CcenterX-15, CcenterY, 30, 30);
  ellipse(CcenterX, CcenterY+15, 30, 30);
  ellipse(CcenterX, CcenterY-15, 30, 30);
  ellipse(CcenterX-30, CcenterY, 30, 30);
  ellipse(CcenterX-15, CcenterY+15, 30, 30);
  ellipse(CcenterX-15, CcenterY-15, 30, 30);
  if (count==8) {
    CcenterX2=int(random(0, 1280));
    CcenterY2=int(random(0, 150));
  }
  noStroke();
  fill(255);
  ellipse(CcenterX2, CcenterY2, 30, 30);
  ellipse(CcenterX2+15, CcenterY2, 30, 30);
  ellipse(CcenterX2-15, CcenterY2, 30, 30);
  ellipse(CcenterX2, CcenterY2+15, 30, 30);
  ellipse(CcenterX2, CcenterY2-15, 30, 30);
  ellipse(CcenterX2-30, CcenterY2, 30, 30);
  ellipse(CcenterX2-15, CcenterY2+15, 30, 30);
  ellipse(CcenterX2-15, CcenterY2-15, 30, 30);
}
