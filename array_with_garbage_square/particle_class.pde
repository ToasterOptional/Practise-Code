class Particle {
  float x;
  float y;
  float xspeed;
  float yspeed;
  float life;

  // Make the Particle
  Particle(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    xspeed = random(-1, 1);
    yspeed = random(-2, 0);
    life = 255;
  }
  // Show
  void display() {
    // Life is used to fade out the particle as well
    stroke(0, life);
    fill(#B26899, life);
    ellipse(x, y, 20, 20);
  }

  // Move
  void run() {
    x = x + xspeed;
    y = y + yspeed;
  }

  // Fall down
  void gravity() {
    yspeed += 0.1;
  }

  // Stop moving
  void stop() {
    xspeed = 0;
    yspeed = 0;
  }

  // Ready for deletion
  boolean finished() {
    // The Particle has a "life" variable which decreases.
    // When it reaches 0 the Particle can be removed from the ArrayList.
    life -= 2.0; 
    if (life < 0) return true;
    else return false;
  }
}

