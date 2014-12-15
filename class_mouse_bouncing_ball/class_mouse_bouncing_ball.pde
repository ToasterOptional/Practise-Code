class MouseBall {
  PVector loc, vel, acc;
  int sz;
  PVector mouse;
  float speed;

  MouseBall() {
    mouse.set(mouseX, mouseY);
    sz= 25;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    acc= new PVector(0, 0);
  }

  void display() {
   fill(#864D7D);
    mouse.set(mouseX, mouseY);  
    ellipse(mouse.x, mouse.y, sz, sz);
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }

//  void collideWith(MouseBall other) {
//    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
//      vel = PVector.sub(loc, other.loc);
//      vel.setMag(speed);
//    }
//  }
}  

