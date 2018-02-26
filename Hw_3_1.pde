ArrayList<Walker> clones = new ArrayList<Walker>();
int numWalkers = 20;
ArrayList<Walker1> clones1 = new ArrayList<Walker1>();
int numWalker1 = 20;
ArrayList<Walker2> clones2 = new ArrayList<Walker2>();
int numWalker2 = 20;
ArrayList<Walker3> clones3 = new ArrayList<Walker3>();
int numWalker3 = 20;


void setup() {
  size(600, 600);
  background(0);
   for (int i = 0; i < numWalker3; i++) {
    Walker3 c = new Walker3();
    c.r = 0;
    c.g = 0;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones3.add(c);
  }
  for (int i = 0; i < numWalkers; i++) {
    Walker c = new Walker();
    c.r = 0;
    c.g = 0;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones.add(c);
  }
 for (int i = 0; i < numWalker1; i++) {
    Walker1 c = new Walker1();
    c.r = 0;
    c.g = 0;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones1.add(c);
  }
   for (int i = 0; i < numWalker2; i++) {
    Walker2 c = new Walker2();
    c.r = 0;
    c.g = 0;
    c.b = 0;
    
    c.x = int(random(width));
    c.y = int(random(height));
    clones2.add(c);
  }
}
void draw() {

  for (int i = 0; i < numWalkers; i++) {
    clones.get(i).step();
    clones.get(i).display();
  }
  for (int i = 0; i < numWalker1; i++) {
    clones1.get(i).step();
    clones1.get(i).display();
  }
   for (int i = 0; i < numWalker1; i++) {
    clones2.get(i).step();
    clones2.get(i).display();
  }
     for (int i = 0; i < numWalker3; i++) {
    clones3.get(i).step();
    clones3.get(i).display();
  }
}