//black or white fallacy
//click to change states
int pressed =0;
int img;
void setup() {
  size(1280, 800);
}
void draw() {
  background(255);
  fill(0);
  textSize(100);
  if (img==0) {
    text("There are two", 220, 100);
    text("kinds of people", 200, 200);
    fill(#2B190B);
    stroke(#2B190B);
    ellipse(640, 300, 100, 100);
    fill(205, 127, 50);
    stroke(205, 127, 50);
    triangle(580, 350, 700, 350, 640, 550);
    stroke(153, 101, 21);
    strokeWeight(10);
    line(640, 350, 695, 375);
    line(580, 350, 685, 400);
    line(590, 385, 675, 430);
    line(600, 420, 670, 460);
    line(615, 460, 660, 490);
    line(625, 495, 650, 515);
    line(635, 530, 645, 540);
    fill(0);
    text("Those who like chocolate", 30, 650);
  }
  if (img==1) {
    text("and", 550, 100);
    fill(243, 229, 171);
    strokeWeight(1);
    stroke(0);
    ellipse(640, 300, 100, 100);
    fill(205, 127, 50);
    stroke(205, 127, 50);
    triangle(580, 350, 700, 350, 640, 550);
    stroke(153, 101, 21);
    strokeWeight(10);
    line(640, 350, 695, 375);
    line(580, 350, 685, 400);
    line(590, 385, 675, 430);
    line(600, 420, 670, 460);
    line(615, 460, 660, 490);
    line(625, 495, 650, 515);
    line(635, 530, 645, 540);
    fill(0);
    text("Those who like vanilla", 100, 650);
  }
  if (img==2) {
    fill(#FF6961);
    stroke(#FF6961);
    ellipse(640, 300, 100, 100);
    fill(205, 127, 50);
    stroke(205, 127, 50);
    triangle(580, 350, 700, 350, 640, 550);
    stroke(153, 101, 21);
    strokeWeight(10);
    line(640, 350, 695, 375);
    line(580, 350, 685, 400);
    line(590, 385, 675, 430);
    line(600, 420, 670, 460);
    line(615, 460, 660, 490);
    line(625, 495, 650, 515);
    line(635, 530, 645, 540);
    fill(0);
  }
}
void mousePressed() {
  pressed+=1;
  img=(pressed%3);
}
