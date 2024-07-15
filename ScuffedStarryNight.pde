int imgCount = 5;
int imgSize = 500;

void setup() {
for (int i = 1; i <= imgCount; i++)
{
  PGraphics pg = createGraphics(imgSize, imgSize);
  pg.beginDraw();
  pg.background(0);

// Цветя
  for (int j = 0; j < 20; j++)
  {
    pg.fill(255, 255, 0, random(200, 255));
    pg.noStroke();
    float x = random(imgSize);
    float y = random(imgSize);
    float radius1 = random(15, 35);
    float radius2 = random(30, 70);
    int petals = int(random(5, 10));
    drawFlower(pg, x, y, radius1, radius2, petals);
  }

//Случайни линии
  for (int k = 0; k < 50; k++)
  {
    pg.stroke(255, 255, 0, random(200, 255));
    pg.strokeWeight(random(1, 5));
    float x1 = random(imgSize);
    float y1 = random(imgSize);
    float x2 = random(imgSize);
    float y2 = random(imgSize);
    pg.line(x1, y1, x2, y2);
  }

pg.endDraw();
pg.save("StarryNightOtLevche_" + i + ".png");
}
exit();
}

//Рисуване на цвете (The Chat helped with this one)
void drawFlower(PGraphics pg, float x, float y, float radius1, float radius2, int npoints)
{
float angle = TWO_PI / npoints;
float halfAngle = angle / 2.0;
pg.beginShape();
for (float a = 0; a < TWO_PI; a += angle)
{
  float sx = x + cos(a) * radius2;
  float sy = y + sin(a) * radius2;
  pg.vertex(sx, sy);
  sx = x + cos(a + halfAngle) * radius1;
  sy = y + sin(a + halfAngle) * radius1;
  pg.vertex(sx, sy);
}
pg.endShape(CLOSE);
}
