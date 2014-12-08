BBall [] bapple = new BBall [100];

void setup() {
  size(650, 650);
  for (int i = 0; i < bapple.length; i ++) {
    bapple[i] = new BBall(random(5, 50), random(.5, 10));
  }
}

void draw(){
  background(0);
 for (int i = 0; i < bapple.length; i ++) {
   bapple[i].display();
   bapple[i].move();
   bapple[i].wallBounce();
//   for(int j = 0; j < bapple.length; j ++){
//     if(i!= j ) {
//       bapple[i].collideWith(bapple[i]);
     }
   }




