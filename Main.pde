int resolution=40;
int cols, rows;
void setup() {
  size(800, 800);
  cols=width/resolution;
  rows=height/resolution;
}
void draw() {
  for (int i = 0; i < cols; i++)
    for (int j = 0; j < rows; j++) {
      int x = i * resolution;
      int y = j * resolution;
      stroke(0);
      fill(255);
      rect(x, y, resolution, resolution);
    }
}
