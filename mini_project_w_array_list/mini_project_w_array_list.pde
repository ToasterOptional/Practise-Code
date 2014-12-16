ArrayList <Bouncer> bapples = new ArrayList <Bouncer> ();

void setup() {
  size (800, 800);
}

void draw() {
  background(0);
  bapples.add(new Bouncer(30));
  for (int i = 0; i < bapple.size (); i++) {
  Bouncer b= bapples.get(i);
  b.display();
  b.move();
  b.wallBounce();
  }

