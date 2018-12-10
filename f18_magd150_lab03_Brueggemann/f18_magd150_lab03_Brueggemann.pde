  int red; 
  int green;
  int blue;
  float w = 25;
  float h =25;
  float deltaMouseX;
  float deltaMouseY;
  float O=1.5;
  float k=2.5;
  
  int a=max(0,255);
  int b=min(255,0);
  float c=constrain(mouseX,0,255);
void setup(){
size(500, 500);

surface.setResizable(true);

 
background(255);
}
void draw(){
  if(mouseX == pmouseX){
  fill(a,b,c);
  }else {
  println("width: " + width); 
  println("height: " + height);
  pushStyle(); 
  red = (red + 1) % 256;
  green = (green + 5) % 256;
  blue = (blue + 2) % 256;
  background(red,green,blue);
  popStyle();
  w = (w + 1) % (height / 1.5);
  h = (h + 1) % (height / 1.5);
  
  ellipse(250,250,w,h);
  red = (red + 2) % 256;
  green = (green + 6) % 256;
  blue = (blue + 3) % 256;
  fill(red,green,blue);
  }
  if(mouseY==pmouseY){
    fill(a,b,c);
  }else{
    println("width: " + width); 
  println("height: " + height);
  pushStyle(); 
  red = (red + 1) % 256;
  green = (green + 5) % 256;
  blue = (blue + 2) % 256;
  background(red,green,blue);
  popStyle();
  w = (w + 1) % (height / 1.5);
  h = (h + 1) % (height / 1.5);
  
  ellipse(250,250,w,h);
  red = (red + 2) % 256;
  green = (green + 6) % 256;
  blue = (blue + 3) % 256;
  fill(red,green,blue);
  }
  
  
}
