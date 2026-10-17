Bacteria[] colony;
void setup()
{
  size(600,600);
  frameRate(120);
  colony = new Bacteria[50];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
}

class Bacteria
{
  int myX, myY;
  int myColor;
  int mySize;
  Bacteria()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*10)+5;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk()
  {
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
    if(myX < 0) myX = 600;
    if(myX > 600) myX = 0;
    if(myY < 0) myY = 600;
    if(myY > 600) myY = 0;
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
