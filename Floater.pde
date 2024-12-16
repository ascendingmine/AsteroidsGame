class asteroid extends Floater{
  private double myTurnSpeed;
  public asteroid(){
    myTurnSpeed = (double)(Math.random()*8)+3;
    myColor = (255);
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*700);
    myPointDirection = (Math.random()*5);
    myXspeed = myYspeed = 3;
    
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
   
   xCorners[0] = -15;
   yCorners[0] = -2;
   xCorners[1] = 10;
   yCorners[1] = -10;
   xCorners[2] = 13;
   yCorners[2] = 0;
   xCorners[3] = 6;
   yCorners[3] = 10;
   xCorners[4] = -11;
   yCorners[4] = 8;
   xCorners[5] = -8;
   yCorners[5] = 0;
  }
  public void move(){
    turn(myTurnSpeed);
    super.move();
  }
  
  
}
