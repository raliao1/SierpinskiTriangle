public void setup()
{
  size(500, 500);
}
public void draw()
{
  sierpinski(2, 480, 460);
}
public void sierpinski(int x, int y, int len) 
{
  int randColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  if(len <= 20){
    fill(randColor);
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else{
    fill(randColor);
    sierpinski(x, y, len/2);
    fill(randColor);
    sierpinski(x + len/2, y, len/2);
    fill(randColor);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
