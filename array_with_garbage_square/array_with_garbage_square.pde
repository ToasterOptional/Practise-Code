PImage underwater;
import java.awt.Rectangle;
// Declaring a global variable of type ArrayList
ArrayList particles;

// A "Rectangle" will suck up particles like a tray
Rectangle blackhole;

void setup() {
underwater= loadImage ( "underwater.jpg");
  size(500, 500);
  blackhole = new Rectangle(width/2-100, height/2+200, 200, 25);
  particles = new ArrayList();
  smooth();
}

void draw() {
  background(underwater);

  // Displaying the Rectangle
  noStroke();
  fill(#95C9D3);
  rect(blackhole.x, blackhole.y, blackhole.width, blackhole.height);

  // Add a new particle at mouse location
  particles.add(new Particle(mouseX, mouseY));

  // Loop through all Particles
  for (int i = particles.size () - 1; i >= 0; i-- ) {
    Particle p = (Particle) particles.get(i);
    p.run();
    p.gravity();
    p.display();

    // If the Rectangle contains the location of the Particle, stop the Particle from moving.
    if (blackhole.contains(p.x, p.y)) { 
      p.stop();
    }

    // If the particle is no longer needed, it is deleted from the list
    if (p.finished()) {
      particles.remove(i);
    }
  }
}

