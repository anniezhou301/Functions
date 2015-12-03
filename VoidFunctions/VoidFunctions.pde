void setup() {
  size(800, 600);
  background(0);
}
void draw() {
  blueSquare();
  drawCircle();
  eraseMarks(70);
}

void drawRandomCircle() {
  noStroke();
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(random(0, width), random(0, height), 50, 50);
}
void drawCircleAt() {
  ellipse(mouseX, mouseY, 50, 50);
}

void blueSquare() {
  noStroke();
  fill(0, 0, 255);
  rect(width/2-25, height/2-25, 50, 50);
}

void drawCircle() {


    fill(255, 255, 255);
    ellipse(mouseX, mouseY, 30, 30);

    if (keyPressed && key== 'b') {
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 30, 30);
  }
  if (keyPressed && key== 'r') {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 30, 30);
  }
  if (keyPressed && key== 'g') {
    fill(0, 255, 0);
    ellipse(mouseX, mouseY, 30, 30);
  } 
}

void eraseMarks(int diam){
  if( mousePressed){
    fill(0);
    ellipse(mouseX,mouseY,diam,diam);
  }
}