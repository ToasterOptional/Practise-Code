Bouncer[] bapple = new Bouncer[80];
void setup() {
  size(800, 600);
  colorMode(HSB, 360,100,100,100);
  noStroke();
  for (int i = 0; i < bapple.length; i++) {
    bapple[i] = new Bouncer(random(5, 50), random(.5, 10));
  }
}

void draw() {
  background(0);
    fill (125,60,90,60);
  for (int i = 0; i < bapple.length; i++) {
sd
    bapple[i].display();
    bapple[i].move();
    bapple[i].wallBounce();
    for (int j = 0; j < bapple.length; j++) {
      fill(random(146,360),60,90,60);
      if (i!=j) {

        bapple[i].collideWith(bapple[j]);
      
    }
    }
  }
}


