public void setup()
{
  size(500,500);
  background(0);

}

public void draw()
{
  sierpinski(0,height,width);
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len)
{
  fill(255,255,255);
  if (len<15) {
    triangle(x,y,x+len,y,x+len/2,y-len);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
