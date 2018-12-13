class Asteroid extends Floater {
	private int rotationspeed;
	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY = y;} 
	public int getY() {return (int)myCenterY;}
	public void setDirectionX(double x) {myDirectionX = x;}
	public double getDirectionX() {return myDirectionX;}
	public void setDirectionY(double y) {myDirectionY = y;}
	public double getDirectionY() {return myDirectionY;}
	public void setPointDirection(int degrees) {myPointDirection = degrees;}  
	public double getPointDirection() {return myPointDirection;}
	public Asteroid()
	{
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 15;
		yCorners[0] = 15;
		xCorners[1] = 15;
		yCorners[1] = -15;
		xCorners[2] = -15;
		yCorners[2] = 15;
		xCorners[3] = -15;
		yCorners[3] = -15;
		myColor = color(255,0,255);
		myCenterX = ((int)(Math.random()*1001));
		myCenterY = ((int)(Math.random()*1001));
		myDirectionX=((int)(Math.random()*10)-5);
		myDirectionY=((int)(Math.random()*10)-5);
		myPointDirection = ((int)(Math.random()*360));
		rotationspeed = ((int)(Math.random()*3));

	}
	public void move()
	{
	turn(rotationspeed);
	super.move();
	}
	
}