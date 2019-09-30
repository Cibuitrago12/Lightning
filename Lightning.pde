int num = (int)(Math.random() * 500);

int startX = 0;
int startY = num;
int endX = 0;
int endY = num;


void setup()
{
  size(500,500);
  background(0);
  strokeWeight(5);
}
void draw()
{
  int ranRed = (int)(Math.random() * 255);
  int ranGreen = (int)(Math.random() * 255);
  int ranBlue = (int)(Math.random() * 255);
  stroke(ranRed, ranGreen, ranBlue);

  
  while(endX < 500){
    int incrementX = (int)(Math.random() * 9);
    int incrementY = (int)(Math.random() * 18) - 9;

    endX += incrementX;
    endY += incrementY;

    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY; 

  }
}

void mousePressed()
{
  startX = 0;
  startY = num;
  endX = 0;
  endY = num;

}
