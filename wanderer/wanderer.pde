float locx, locy;
float velx, vely;
float accx, accy;

int sz=50;

void setup() {
  size(700, 700);
strokeWeight(.5);
  //initialize location variables
  locx= width/2;
  locy= height/2;

  //initialize velecotiy
  velx= random(-1, 1);
  vely = random(-1, 1);

  //initialize acc
  accx = 0;
  accy=0;
}

void draw() {
  velx += accx;
  vely += accy;

  locx+= velx;
  locy+= vely;

  ellipse(locx, locy, sz, sz);


}


