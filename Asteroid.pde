class Asteroid extends Floater{
  double w;
  public Asteroid() {
    w=Math.random()*4-2;
    corners=6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0]= -11;
    xCorners[1]= 7;
    xCorners[2]= 13;
    yCorners[0]= -8;
    yCorners[1]= -8;
    yCorners[2]= 0;
    xCorners[3]= 6;
    yCorners[3]= 10;
    xCorners[4]= -11;
    yCorners[4]= 8;
    xCorners[5]= -5;
    yCorners[5]= 0;
    myColor= color(152,155,155);  myCenterX=Math.random()*400; myCenterY=Math.random()*400; myXspeed=Math.random()-.5; 
    myYspeed=Math.random()-.5; myPointDirection=1;
  }
  public void move(){
    turn(w);
    super.move();
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
