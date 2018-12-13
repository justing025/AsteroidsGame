Spaceship bob = new Spaceship();
Star [] stars;
Asteroid [] ast; //your variable declarations here
public void setup() 
{
  size(1000,1000);
  background(0);
  stars = new Star[100];
    for(int i = 0; i < stars.length; i++)
    {
      stars[i] = new Star();
    }
   ast = new Asteroid[5];
      for(int j=0; j < ast.length; j++)
      {
        ast[j] = new Asteroid();
      }//your code here
}
public void draw() 
{

  background(0);
  for(int i=0; i<stars.length; i++)
  {
    stars[i].Show();
  }
  for(int j=0; j < ast.length; j++)
  {
    ast[j].show();
    ast[j].move();
  }
  bob.show();
  bob.move();
 
  //your code here
}
public void keyPressed()
{
  if (key == 'd')
  {
  	bob.accelerate(2);
  }
  if (key == 'a')
  {
  	bob.accelerate(-2);
  }
  if (key == 'w')
  {
    bob.turn(5);
  }
  if (key == 's')
  {
    bob.turn(-5);
  }
  if (key == 'f')
  {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*1000));
    bob.setY((int)(Math.random()*1000));
    bob.setPointDirection((int)(Math.random()*1000));
  }
}

