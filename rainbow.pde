void setup()
{
size(500, 500);
colorMode(HSB, 360, 255, 255);
}

void draw()
{
background(250);

float hueStep = 360.0 / width;

for (int x = 0; x < width; x++)
{
  float hue = x * hueStep;
  float saturation = 255;
  float brightness = 255;

  fill(color(hue, saturation, brightness));
  noStroke();
  rect(x, 0, 1, height);
}
}
