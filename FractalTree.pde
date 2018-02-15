private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	line(320,380,320+cos(60)*100,480-sin(60));  //will add later 
  line(320,380,320-cos(60)*100,480-sin(60));
} 
public void drawBranches(int x,int y, float bLength, float angle) 
{
  //if(bLength<=10);
  {
    //line(x,y,x+cos(angle)*bLength,y-sin(angle)*bLength);
    //line(x,y,x-cos(angle)*bLength,y-sin(angle)*bLength);
  }
  {
    //line(x,y,x+cos(angle)*bLength-40,y-sin(angle)*bLength-50);
    //line(x,y,x-cos(angle)*bLength-40,y-sin(angle)*bLength-50);
  }
}