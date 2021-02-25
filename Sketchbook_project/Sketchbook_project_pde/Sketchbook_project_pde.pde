
//color variables
color black=#000000;
color white=#FFFFFF;
color gray=#C8C8C8;
color lightBrown=#7C4E32;
color darkBrown= #5A2E19;
color purple= #5C4152;
color pink = #B4585D;
color peach= #D97F76;
color cream= #F7D0A9;
color blue= #A1C0AE;
color navy= #19404F;
color orange= #FDA100;
color green= #84AB7C;
color mint=#E2FDD8;
//variable for color selection
color selectedColor;

void setup() {
  size(800, 600);
  background(mint);
  //variable setup
  selectedColor = navy;
  //sketchpad
  //back of sketchpad
  fill(lightBrown);
  rect(-10, 50, 530, 520);
  //paper
  strokeWeight(1);
  fill(white);
  rect(100, 60, 410, 500);
  fill(white);
  rect(-10, 60, 100, 500);
  //paint pallete
  noStroke();
  fill(lightBrown);
  circle(650, 450, 200);
  fill(mint);
  circle(595, 420, 90);
}

void draw() {
  //color pallete colors
  paint(700, 400, 10, purple);
  paint(660, 380, 10, navy);
  paint(725, 440, 10, pink);
  paint(720, 480, 10, peach);
  paint(700, 510, 10, cream);
  paint(660, 525, 10, blue);
  paint(620, 520, 10, orange);
  paint (590,500,10,green);
}
void mouseDragged() {
  if (mouseX>100 && mouseX<510 && mouseY>60 && mouseY<560 && pmouseX>100 && pmouseX<510 && pmouseY>60 && pmouseY<560) {
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void tactileCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)<r) {
    stroke(white);
  } else {
    stroke(darkBrown);
  }
}

void circleButton(int x, int y, int r, color c) {
  if (dist(x, y, mouseX, mouseY)<r) {
    selectedColor = c;
  }
}

void paint(int x, int y, int r, color c) {
  tactileCircle(x, y, r*2);
  fill(c);
  circleButton(x, y, r, c);
  circle(x, y, r*2);
}
