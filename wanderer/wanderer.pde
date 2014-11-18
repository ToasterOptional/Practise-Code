float locx, locy;
float velx, vely;
float accx, accy;

int sz=50;

void setup() {
  size(700, 700);
  background(20);
colorMode(HSB, 360,100,100,100);
strokeWeight(0.3);
  //initialize location variables
  locx= width/2;
  locy= height/2;

  //initialize velecotiy
  velx= random(-1, 3);
  vely = random(-4, 3);

  //initialize acc
//  accx = 0.1;
//  accy=0.2;
}

void draw() {

  velx += accx;
  vely += accy;

  locx+= velx;
  locy+= vely;
 
 fill(frameCount%360, 100,100, 50);
 
  ellipse(locx, locy, sz, sz);

  if (locx- sz/2 > width) {
    locx = -sz/2;
  }
  if (locx + sz/2 < 0) {
    locx = width + sz/2;
  }
  if (locy - sz/2 > height) {
    locy= -sz/2;
  }
  if (locy + sz/2 < 0) {
    locy= height +sz/2;
  }
}

void mousePressed(){
    accx = random(0.1,1);
  accy=random(0.2,2);
}
