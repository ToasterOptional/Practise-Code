//declare and initialize the GravityBall array
GravityBall[] g = new GravityBall[20];
//float[] numbers = new float[100];    //this is here for comparison

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  //for each individual spot in the array, declare a new GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i] = new GravityBall();
    //  numbers[i] = random(100);      //this is here for comparison
  }
}

void draw() {
  background(327, 7, 44);
  //go through the array, and call the methods I want on each GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
}

