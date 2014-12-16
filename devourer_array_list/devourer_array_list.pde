ArrayList<Bouncer> balls = new ArrayList<Bouncer >();
int maxBalls = 200;

void setup() {
  size(800, 600);
  textSize(50);
  background(0);
}

void draw() {
  //add a new BouncyBall using the .add() method
  balls.add(new Bouncer(30));
  background(0);
  fill(255, 0, 0);
  //use a for loop to go through all possible values for the index
  for (int i = 0; i < balls.size (); i++) {
    BouncyBall b = balls.get(i);    //declare a placeholder BouncyBall and assign it the BouncyBall that we get at the specified index
    //do whatever I want with BouncyBall b
    b.display();
    b.move();
    b.wallBounce();
  }
  fill(255);
  text(frameRate, 20, 50);
  //if there are more than 20 balls, remove the oldest one using .remove()
  if (balls.size() > maxBalls) {
    balls.remove(0);
  }
}

