void setup()
{
size(800, 800);
noStroke();
}

void draw()
{
background(255);
fill(0);

float centerX = width / 2;
float centerY = height / 2;

float distanceToCenter = dist(mouseX, mouseY, centerX, centerY);

float radius = map(distanceToCenter, 0, dist(0, 0, centerX, centerY), 100, 25);

int numCircles = 6;
float angleStep = TWO_PI / numCircles;

for (int i = 0; i < numCircles; i++)
{
  float angle = i * angleStep + frameCount * 0.02;
  float x = mouseX + cos(angle) * radius;
  float y = mouseY + sin(angle) * radius;
  stroke(0);
  line(mouseX, mouseY, x, y);

  noStroke();
  fill(0);
  ellipse(x, y, 50, 50);

  float smallRadius = 50;

  float smallX = x + cos(angle + HALF_PI) * smallRadius;
  float smallY = y + sin(angle + HALF_PI) * smallRadius;

  stroke(0);
  line(x, y, smallX, smallY);

  noStroke();
  fill(0);
  ellipse(smallX, smallY, 20, 20);
}
}

void mousePressed()
{
save("output.png");
}
