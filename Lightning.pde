void setup()
{
  size(300, 300);
  strokeWeight(5);
  background(2, 36, 122);
  frameRate(5);
}

int startX = mouseX;
int startY = 0;
int endX = mouseX;
int endY = 0;

void draw()
{
  background(2, 36, 122);
  stroke((int)((Math.random()*155)+100), (int)((Math.random()*155)+100), (int)((Math.random()*155)+100));
  while (endX <= 300) {
    endY = startY + (int)(Math.random()*16);
    endX = startX + (int)((Math.random()*33)-16);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    
  }
  fill(134, 158, 176);
  noStroke();
  ellipse(30,20,90,60);
  ellipse(200,10,60,60);
  ellipse(120,20,140,70);
  ellipse(260,10,100,50);
}
void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endX = mouseX;
  endY = 0;
}
