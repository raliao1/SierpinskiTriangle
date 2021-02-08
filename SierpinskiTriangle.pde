public void setup()
{
  size(500, 500);
}
public void draw()
{
  sierpinski(20, 480, 460);
}
public void sierpinski(int x, int y, int len) 
{
  int ranColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  if(len <= 20){
    fill(ranColor);
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else{
    fill(ranColor);
    sierpinski(x, y, len/2);
    fill(ranColor);
    sierpinski(x + len/2, y, len/2);
    fill(ranColor);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
