Star[] stars = new Star[300];
Spaceship ship = new Spaceship();

public void setup() {
  size(1000,700);
  for(int i = 0; i < stars.length; i++)
     stars[i] = new Star();
}

public void draw(){
  background(0);
     ship.show();
  ship.move();
   
  for(int i = 0; i < stars.length; i++)
    stars[i].show();
  

   }
public void keyPressed(){
    if(key == 'w' || key == 'W')
      ship.accelerate(0.2);
    if(key == 's' || key == 's')
      ship.accelerate(-0.2);
    if(key == 'a' || key == 'A')
      ship.turn(-10);
    if(key == 'd' || key == 'D')
      ship.turn(10);
    if(key == 'h' || key == 'H')
      ship.hyperspace();  
}
   
 
