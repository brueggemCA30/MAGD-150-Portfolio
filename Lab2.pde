float circleX;
float circleY;
float circleA;
float circleB;
float X;
float Y;
boolean press;
boolean on;
float r= random(10,490);
int i;

void setup(){
  size(500,500);
  background(255);
  X=250;
  Y=250;
  circleA=X-25;
  circleB=Y-25;
  
  circleX= X+25;
  circleY=Y+25;
}

void draw(){    
  
for (int i = 0; i < 10; i++){
   r = r + 20;
   pushStyle();
  fill(232,201,126);
  stroke(255);
  ellipse(r, 150, 80,80 );
  popStyle();
 }
 if(on){
  background(255);
    pushStyle();
   fill(232,182,110);
   ellipse(circleX,circleY,260,260);  
   popStyle();
   pushStyle();
   fill(255,219,41);
   ellipse(circleX,circleY,250,250);
   popStyle();
}else if(press){
  background(255);
    pushStyle();
   fill(232,182,110);
   ellipse(circleA,circleB,260,260);  
   popStyle();
   pushStyle();
   fill(255,219,41);
   ellipse(circleA,circleB,250,250);
   popStyle();
}else {
  background(255);
  pushStyle();
   fill(232,182,110);
   ellipse(250,250,260,260);  
   popStyle();
   pushStyle();
   fill(255,219,41);
   ellipse(250,250,250,250);
   popStyle();
 }
}

void mousePressed(){
  if(on){
    on=false;
  }else{
    on = true;
  }
}

 void keyPressed() {
   
   if(press){
    press=false;
  }else{
    press= true;
  
 }
 }
 
