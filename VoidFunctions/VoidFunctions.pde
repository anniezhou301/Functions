void setup() {
  size(800, 600);
  background(0);
}
void draw() {
  blueSquare();
  drawCircle(mouseX,mouseY);
  eraseMarks(100);
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
//draws circle at mouse point
void drawCircle(float x, float y) {


    fill(255, 255, 255);
    ellipse(x, y, 30, 30);
//press b for blue
    if (keyPressed && key== 'b') {
    fill(0, 0, 255);
    ellipse(x, y, 30, 30);
  }
  //press r for red
  if (keyPressed && key== 'r') {
    fill(255, 0, 0);
    ellipse(x, y, 30, 30);
  }
  //press g for green
  if (keyPressed && key== 'g') {
    fill(0, 255, 0);
    ellipse(x,y, 30, 30);
  } 
}
//draws black when mouse is pressed
void eraseMarks(int diam){
  if( mousePressed){
    fill(0);
    ellipse(mouseX,mouseY,diam,diam);
  }
}