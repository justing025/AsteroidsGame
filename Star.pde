class Star //note that this class does NOT extend Floater
{
  private int x, y;
  public Star()
  {
  	x = (int)(Math.random()*1000);
  	y = (int)(Math.random()*1000);
  }
  public void Show()
  {
  	color(255,255,0);
  	ellipse(x,y,5,5);
  }//your code here
}
