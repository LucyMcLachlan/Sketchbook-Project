//Lucy McLachlan

color black=#000000;
color white=#FFFFFF;
color lightBrown=#7C4E32;

void setup() {
  size(800, 600);
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
}

void draw() {
}
void mouseDragged() {
  if (mouseX>100 && mouseX<510 && mouseY>60 && mouseY<560 && pmouseX>100 && pmouseX<510 && pmouseY>60 && pmouseY<560) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
