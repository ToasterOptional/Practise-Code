class Particle {
  float x, y, xspeed, yspeed, life;
//there are these float components

  // Make the Particle, this is what a particle contains
  Particle(float tempX, float tempY) {
    x = tempX;    //because later on x= xspeed and that's random, therefore its a temporary x
    y = tempY;      //same as ^
    xspeed = random(-1, 1);
    yspeed = random(-2, 0);
    life = 255; 
  }
  // Show things
  void display() {
    // Life is used to fade out the particle as well
    stroke(#1F0655, life);  //black outline for as long as life
    fill(#754B98, life);  //this colour for as long as life
    ellipse(x, y, 20, 20); //just the particle balls
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
    else return false;        //this checks if it's dead or not
  }
}

