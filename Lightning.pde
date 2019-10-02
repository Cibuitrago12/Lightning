
int startX = 60;
int startY = 270;
int endX = 60;
int endY = 270;


void setup()
{
  size(500,500);
  background(0);
  strokeWeight(5);
  textSize(32);
  text("Stock Market Simulator", 70, 30);
  textSize(17);
  text("Click to Start a Company", 140, 50);
  textSize(16);
  text("Stock", 0, 270);
  text("Value", 0, 290);
  fill(255);
  stroke(153);
  rect(60, 100, 420, 340);
}
void draw()
{
  
  
  int ranRed = (int)(Math.random() * 255);
  int ranGreen = (int)(Math.random() * 255);
  int ranBlue = (int)(Math.random() * 255);
  stroke(ranRed, ranGreen, ranBlue);

  
  while(endX < 473){
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
   startX = 60;
   startY = 270;
   endX = 60;
   endY = 270;

}