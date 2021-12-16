class Spaceship extends Floater{
  public Spaceship() {
    corners=3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0]= -8;
    xCorners[1]= 16;
    xCorners[2]= -8;
    yCorners[0]= -8;
    yCorners[1]= 0;
    yCorners[2]= 8;
    myColor= color(255,255,255);  myCenterX=200; myCenterY=200; myXspeed=0; 
    myYspeed=0; myPointDirection=1;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
 public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setX(double x) {
    myCenterX = x;
  }
 public void setY(double y) {
    myCenterY = y;
  
}

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }

}
