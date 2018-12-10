void setup(){//By Chase Brueggemann
  size(500,500);//Size of program
  background(0);//Background color
 
  ellipse(200, 200, 75, 75);//moon
  fill(255);
}

void draw() {
 stroke(255);
 strokeWeight(10);
  point(50,60);
  stroke(255);
 strokeWeight(10);
  point(300,40);
  stroke(255);
 strokeWeight(10);
  point(400,75);
  stroke(255);
 strokeWeight(10);
  point(65,400);//stars /\
  line(200, 300, 225, 325);//rocket\/
  strokeWeight(12.0);
  strokeCap(ROUND);
  line(200, 300, 225, 275);
  strokeWeight(12.0);
  strokeCap(ROUND);
  ellipse(310, 300, 30, 10);
  strokeWeight(5);
  rect(225, 275, 75, 50, 5, 5, 5, 5);
  rect(300, 290, 20, 20, 0, 5, 5, 0);
  fill(128);
  
  
  
}
