
 
void setup(){
  size(500,500);//Size of program
  background(130,205,255);//Background color
  
}

void draw() {
 pushStyle();
 fill(#4E311B);
  triangle(0,500,80,300,160,500);//mountains
  triangle(170,500,250,300,330,500);
 triangle(340,500,420,300,500,500);
 popStyle();
 
  pushStyle();
  noStroke();
  fill(HSB, 100, 100, 100);
  arc(50, 55, 80, 80, PI+QUARTER_PI, TWO_PI);
  arc(50, 55, 80, 80, 0, PI+QUARTER_PI, OPEN);
  popStyle();
  pushStyle();
  noStroke();
  fill(130,50,160);
  arc(200, 200, 80, 80, PI+QUARTER_PI, TWO_PI);
  arc(200, 200, 80, 80, 0, PI+QUARTER_PI, OPEN);
  popStyle();
  pushStyle();
  noStroke();
  fill(212,255,88);
  arc(450, 100, 80, 80, PI+QUARTER_PI, TWO_PI);
  arc(450, 100, 80, 80, 0, PI+QUARTER_PI, OPEN);
  popStyle();
  
  pushStyle();
 noFill();
 bezier(50,94,128,168,9,133,47,209);
 bezier(200,239,126,319,280,249,201,351);
 bezier(450,139,517,244,381,129,445,272);
 popStyle();
}
