class ExampleClass {
  PVector loc, vel, acc; 
  float sz;
  float hue, sat, bright, alpha;
  float theta;

  ExampleClass(float tempsz) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    acc = new PVector();
    hue = 200;
    sat = 100;
    bright = 100;
    alpha = 70;
    theta = vel.heading();
  }

  void display() {
    theta = vel.heading();
    fill(hue, sat, bright, alpha);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    triangle(-sz/2, -sz/2, sz, 0, -sz/2, sz/2);
    popMatrix();
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.x > width || loc.x < 0) {
      vel.x *= -1;
    } 
    if (loc.y > height || loc.y < 0) {
      vel.y *= -1;
    }
  }

  void colorShift() {
    hue++;
    if (hue > 360) {
      hue = 0;
    }
  }
  
  void colorFlash(){
    hue = random(360);
  }
}

