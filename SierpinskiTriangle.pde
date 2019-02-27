public void setup()
{
  size(400,400);
  background(255);
}
public void draw()
{
  noFill();
  strokeWeight(5);
  stroke(255,25.5, 25.5);
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 40)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
    //triangle(x, y, len/2, y, x+len/4, y-len/2);
    //triangle(x+len/2, y, len, y, ((3*len)/4), y-len/2);
    //triangle(x+len/4, y-len/2, ((3*len)/4), y-len/2, len/2, y-len);
  }
}
