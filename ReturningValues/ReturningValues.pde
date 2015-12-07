float angle = 0;

  float x = 0;
void setup(){
  size(800,600);
  frameRate(200);
}
void draw(){
  fill(0);
  angle += radians(1);
  float y = sin(angle)*300 + height/2;
  x+=8;
  y+=randomNumber();
  if(sizeLimit()){
    x=0;
  }
  ellipse(x, y, major(mouseX,mouseY),minor(mouseX,mouseY));
  text(desc(),150,120);
  text(pytha(3,4),150,150);
  
}
String desc(){
  return "Length of Hypotenuse";
}
float major(float a, float b){
  return a%4+b%3;
}
float minor(float a, float b){
  return (a+b)/15;
}

float randomNumber(){
  return random(0,20);
}

boolean sizeLimit(){
  return x>width;
}

float pytha(float a, float b){
  float hyplength = Math.sqrt(a);
  return hyplength;
}