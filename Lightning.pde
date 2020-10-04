Die bob;
 void setup()
  {
    size(750,750);  
    noLoop();
  }
  void draw()
  {
    //your code here
    background(0);
    
    for(int x = 50; x < 500; x = x + 60){
    bob = new Die(x,1000);
    bob.show();
    bob.roll();
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    int number,myX,myY;
      Die(int x, int y) //constructor
      {
        //variable initializations here
        myX = x;
        myY = y;         
      }
      void roll()
      {
       number = ((int)(Math.random()*6)+1);
      }
      void show()
      {
        noStroke();
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        rect(myX, myY, 100, 100,7);
        if(number == 1){
         ellipse(20,20,20,20);
        }else if(number == 2){
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 3){
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 4){
          ellipse(20,40,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 5){
          ellipse(20,20,20,20);
          ellipse(30,20,20,20);
          ellipse(40,20,20,20);
          ellipse(50,20,20,20);
          ellipse(60,20,20,20);
        }else{
          ellipse(20,20,20,20);
          ellipse(30,20,20,20);
          ellipse(40,20,20,20);
          ellipse(50,20,20,20);
          ellipse(60,20,20,20);
          ellipse(70,20,20,20);
        }
      }
  }
