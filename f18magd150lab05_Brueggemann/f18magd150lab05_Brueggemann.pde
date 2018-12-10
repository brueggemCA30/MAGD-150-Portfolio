color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
int rectX, rectY;      
int circleX, circleY;  
int rectSize = 90;     
int circleSize = 93;
boolean rectOver = false;
boolean circleOver = false;
color grassColor;
color hellColor;

void setup(){
  size(500,500);
  background(90,178,255);
  circleX = width/4+circleSize/2+10;
  circleY = height/4;
  rectX = width/4-rectSize-10;
  rectY = height/4-rectSize/2;
  ellipseMode(CENTER);
  rectColor = color(232,71,30);
  rectHighlight = color(51);
  circleColor = color(90,178,255);
  circleHighlight = color(204);
  baseColor = color(90,178,255);
  currentColor = baseColor;
  grassColor=color(68,232,12);
  hellColor=color(119,5,0);
}



void draw(){
  update(mouseX,mouseY);
  background(currentColor);
  pushStyle();
    fill(grassColor);
    rect(-1,400, 501,501);
    popStyle();
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(0);
  rect(rectX, rectY, rectSize, rectSize);
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
  pushStyle();
  fill(0);
  text("Overworld", circleX-30, circleY+30);
  popStyle();
  
  pushStyle();
  fill(0);
  text("Nether", rectX*2, rectY*2);
  popStyle();
  
  
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    grassColor= color(68,232,12);
    currentColor = circleColor;
    
    
  }
  if (rectOver) {
    grassColor=hellColor;
    currentColor = rectColor;
   
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
