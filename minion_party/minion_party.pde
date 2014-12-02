PImage minionparty;
int count=5;

float[] theta = new float[count];
float[] spin = new float[count];

void setup() {
  size(800, 600); 
  minionparty = loadImage("minion party.jpg");
imageMode(CENTER);
  for (int i = 0; i < count; i++) {

    
    theta[i] = random(TWO_PI);
    spin[i] = random(-.01, .01);
  }
  noStroke();
//  fill(255, 200);
}

void draw() {

  background(#6F5C7C);
  for (int i = 0; i < count; i++) {
    //move snowflake
   
    //draw snowflake
    pushMatrix();

    rotate(theta[i]);
  
image(minionparty, width/2, height/2);
    popMatrix();
    //change horizontal acceleration

    //spin
    theta[i] += spin[i];
    //restart snowflake

    }
  }


