/*behaviour of fireworks
 particles go up and out, then come back down. */


Particle p;
void setup() {
  size(750, 750);
p = new Particle();
}

void draw() {
  p.display();
  p.move();
}


class Particle {
PVector loc, vel, acc;
float sz;
  Particle() {
    loc= new PVector(width/2, height*.1);
    vel = new PVector(random(-3.3), random(-4, 2));
    acc = new PVector(0, 0.1);
    sz = 10;
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

