Spaceship bob= new Spaceship();
Star [] sue;
  ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
  
public void setup() 
{
  frameRate(30);
  size(400, 400);
  background(0);
 
  for (int i=0; i<10; i++){
   rocks.add(new Asteroid());
  }
  sue = new Star[150];
  for (int i=0; i<sue.length; i++) {
    sue[i]= new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i<sue.length; i++)
    sue[i].show();
  bob.move();
  bob.show();
  for (int i=0; i<rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    double d= dist((float)bob.getX(),(float)bob.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    if(d<16)
    rocks.remove(i);
  }
}

public void keyPressed() {
  if (key == 'h') {
    for (int i=0; i<1; i++) {
      bob.setXspeed(0);
      bob.setYspeed(0);
      bob.setX((int)(Math.random()*400));
      bob.setY((int)(Math.random()*400));
    }
  }
  if (keyPressed) {
    if (key == 'a') {
      bob.turn(-5);
    }
    if (key == 'w') {
      bob.accelerate(0.04);
    }
    if (key == 'd') {
      bob.turn(5);
    }
    if (key == 's') {
      bob.accelerate(-0.04);
    }
  } 
}
