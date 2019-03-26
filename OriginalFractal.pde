
public void setup()
{
  size(800,800);
  noStroke();
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  fractal(400,400,300);
}
public void fractal(float x, float y, float size)
{
  if (size <= 5)
  {
    rect(x,y,size,size);
  }
  else
  {
    rect(x,y,size,size);
    fill(239,20,20);
    fractal(x,y-size*2/3,size/3);
    fractal(x+size*2/3,y,size/3);
    fractal(x,y+size*2/3,size/3);
    fractal(x-size*2/3,y,size/3);
  }
}