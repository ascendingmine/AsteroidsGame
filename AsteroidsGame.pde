Star[] stars = new Star[300];
Spaceship ship = new Spaceship();
ArrayList <asteroid> rock = new ArrayList <asteroid>();

public void setup() {
  size(1000,700);
  for(int i = 0; i < stars.length; i++)
     stars[i] = new Star();
  for(int j =0; j<20; j++)
    rock.add(j, new asteroid());  
} 


public void draw(){
  background(0);
  ship.show();
  ship.move();
   
  for(int i = 0; i < stars.length; i++)
    stars[i].show();
  
  for(int j = 0; j < rock.size(); j++){
    rock.get(j).show();
    rock.get(j).move();
    float d = (dist((float)rock.get(j).myCenterX, (float) rock.get(j).myCenterY, (float)ship.myCenterX, (float)ship.myCenterY)) ;
     if(d < 20) 
 rock.remove(j);
   }
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
   
 
