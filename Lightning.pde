int startX = ((int) (Math.random()*300)+30);
int startY = 150;
int endX = 0;
int endY = 150;
int X = 100;
int Y = 0;
void setup(){
  size(1920,1080);
  background(256);
  strokeWeight(10);
  frameRate(45);  
}
  
void draw(){

  //lightning
   stroke(246,246,0);
   while (endX>1920);
  {
    endX = startX + ((int) (Math.random()*20)-10);
    endY = startY + ((int) (Math.random()*70)-10);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
  }
   noStroke();
  //car
   fill(0);
   rect(Y,780,300,300);
   fill(255,255,153);
   rect(X,780,250,150);
   X = X + 15;
   Y = Y + 15;
   
  //tires
  fill(150);
  ellipse(X+20,950,70,70);
  ellipse(X+200,950,70,70);
  fill(0);
  ellipse (X+20,950,40,40);
  ellipse (X+200,950,40,40);

  noStroke();
   //Clouds
  fill (207,207,207);
  rect(0,0,1800,120);
  ellipse(0,0,1000,450);
  ellipse(1000,0,1000,400);
  ellipse(1500,0,600,400);
  ellipse(500,0,500,450);
  ellipse(1400,0,500,500);
  ellipse(1000,0,800,550);

  //Sun
  fill(246,246,24);
  ellipse (1900,0,500,500);
  
  //road
  fill(133);
  rect(0,1000,1920,600);
  
  
}

void mousePressed(){
  startX = ((int) (Math.random()*300));
  startY = 150;
  endX = 0;
  endY = 150;
  background(0);
  X = 100;
  Y = 0;
}
