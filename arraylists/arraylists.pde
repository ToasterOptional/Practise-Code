ArrayList <Bouncer> balls= new ArrayList<Bouncer>();

void setup() {
  size(800, 800);
}


void draw() {
  background(0);
  balls.add(new Bouncer(30));
  for (int i=0; i< balls.size(); i ++ ) {
    Bouncer b= balls.get(i);

    b.display();
    b.move();
    b.wallBounce();
  }
}


