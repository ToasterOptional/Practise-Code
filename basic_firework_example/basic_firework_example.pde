/*behaviour of fireworks
 particles go up and out, then come back down. */

ArrayList<Particle> allmyParticles = new ArrayList<Particle>();

void setup() {
  noStroke();
  size(750, 750);
  //naming p a new particle
}

void draw() {
  if (mousePressed) {
    allmyParticles.add(new Particle());
  }  
  background(0);
  for (int i = 0; i < allmyParticles.size (); i ++) {
    Particle currentOne= allmyParticles.get(i);
    currentOne.display();
    currentOne.move();
  }
}

  //the class with all it's properties
  class Particle {
    PVector loc, vel, acc;
    float sz;
 
    Particle() {
      loc= new PVector(width/2, height*.1);
      vel = new PVector(random(-3.3), random(-4, -2));
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


