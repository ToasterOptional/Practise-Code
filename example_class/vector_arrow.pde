//declare a new object of the class called ExampleClass
ExampleClass exampleObject;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 100);
  exampleObject = new ExampleClass(50);      //initialize exampleObject
noStroke();
}

void draw() {
  background(320,60,40 , 100);
  //The following code calls the methods of exampleObject
  exampleObject.move();
  exampleObject.bounce();
  exampleObject.colorShift();
  //  exampleObject.colorFlash();
  exampleObject.display();
}

