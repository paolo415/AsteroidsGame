class Star {
  private int myX, myY, myCr; 
  public Star() {
    myX=(int)(Math.random()*400) ;
    myY=(int)(Math.random()*400);
    myCr= color ((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  public void show() {
    noStroke();
    fill(myCr);
    ellipse(myX, myY, 4, 4);
  }
}
