class Walker3 {
  float x;
  float y;
  float tx;
  float ty;
  
  int r;
  int g;
  int b;
  float a;
  
  Walker3() {
    //println("I am in the game");
 x = 10;
   y = 100;
   
   tx = 5;
   ty =1;
   
   r = int(random(255));
   g = int(random(255));
   b = int(random(255));
   a = 255;
  }
  
  void display() {
   stroke(#B1EA68);
   point(x,y);
   
   // change radius according to noise
   float r  = map(noise(tx),0,1,0,200);
   a = map(noise(ty),0,1,10,200);
   rect(x,y,r,r);;
  }
  
  void step() {
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
  }

}