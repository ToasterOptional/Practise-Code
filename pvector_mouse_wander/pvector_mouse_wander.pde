PVector loc, vel, acc;
//float sz = random(40,60);
void setup() {
  size(800, 600);
  loc= new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc= new PVector();
  vel.mult(5);
  strokeWeight(0.3);
  colorMode(HSB,360, 100,100,100); 
}

void draw() {
  vel.add(acc);
  loc.add(vel);
 vel.set(mouseX,mouseY);
// vel.normalize();      //mouse position relative to (0,0) 
 float sz = random(40,60);
 fill(frameCount%360,100,100,50);
  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x-sz/2>width ) {
    loc.x= -sz/2;
  }
  if (loc.x +sz/2<0) {
    loc.x= width + sz/2;
  }

  if (loc.y-sz/2 > height) {
    loc.y = -sz/2;
  }
  if (loc.y+sz/2 < 0) {
    loc.y = height + sz/2;
  }
}

