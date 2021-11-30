//your variable declarations here
Spaceship bob= new Spaceship();
Star [] sue;
public void setup() 
{
  frameRate(30);
  size(400, 400);
  background(0);
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
