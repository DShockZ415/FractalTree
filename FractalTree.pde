private double fractionLength = .8; 
private int smallestBranch = 5; 
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
	//line(320,380,320+cos(60)*100,380-100);  //will add later 
  //line(320,380,320-cos(60)*100,380-100);
  drawBranches(320,380,100,3*PI/2);
}   
public void drawBranches(int x,int y, double bLength, double angle) 
{
  
  double angle1 = angle + 5*branchAngle;
  double angle2 = angle - 5*branchAngle;
  bLength = bLength * fractionLength;
  int endX1 = (int)(bLength*Math.cos(angle1) + x);
  int endY1 = (int)(bLength*Math.sin(angle1) + y);
  int endX2 = (int)(bLength*Math.cos(angle2) + x);
  int endY2 = (int)(bLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(bLength<smallestBranch)
  {
    line(320,480,320,380);  
  }
  else
  {
    drawBranches(endX1,endY1,(int)bLength/2,3*Math.PI/2);
    drawBranches(endX2,endY2,(int)bLength/2,3*Math.PI/2);
  }
}