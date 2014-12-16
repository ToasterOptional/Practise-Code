//i wanna make a black hole of a bucket collecting water drops
//so i need to get a gravity ball class, and arraylist that
ArrayList <Bouncer> bapples = new ArrayList <Bouncer>();

void setup() {
  size (800, 800);
}

void draw() {
  background(0);
  bapples.add(new Bouncer());
  for (int i = 0; i < bapples.size(); i++) {
   Bouncer b= bapples.get(i);
  b.display();
  b.move();
  b.wallBounce();
  }
}

