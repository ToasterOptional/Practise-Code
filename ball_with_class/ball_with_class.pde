

Ball bob;    //declare a new object of the Ball class

void setup() {
  size(800, 800);
  bob = new Ball();    //initialize our new ball called b
}

void draw() {
  background(0);
  bob.move();
  bob.bounce();
  bob.display();
}



