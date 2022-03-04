Snake p1, p2;
int resolution=40;
int cols, rows;
char[][]mat;
void setup() {
  size(800, 800);
  cols=width/resolution;
  rows=height/resolution;
  p1=new Snake(#FF0000, 0, rows/2);
  p2=new Snake(#0000FF, cols-1, rows/2);
  mat=new char[rows][cols];
  mat[1][1]='F';
  mat[0][rows/2]='B';
  mat[cols-1][rows/2]='R';
}
void keyPressed() {
  // print(key);
  switch(key)
  {
  case 'w':
    p1.move(0,'B');
    break;
  case 'a':
    p1.move(2,'B');
    break;
  case 's':
    p1.move(1,'B');
    break;
  case 'd':
    p1.move(3,'B');
    break;
  }
    switch(keyCode)
  {
  case UP:
    p2.move(0,'R');
    break;
  case LEFT:
    p2.move(2,'R');
    break;
  case DOWN:
    p2.move(1,'R');
    break;
  case RIGHT:
    p2.move(3,'R');
    break;
  }
  
}
void draw() {
  for (int i = 0; i < cols; i++)
    for (int j = 0; j < rows; j++) {
      int x = i * resolution;
      int y = j * resolution;
      stroke(0);
      fill(255);
      
      switch(mat[i][j])
      {
      case 'F':
        fill(#FEFF00);
        break;
      case 'R':
        fill(#FF0000);
        break;
      case 'B':
        fill(#0000FF);
        break;
      default :
        fill(255);
      }
      rect(y, x, resolution, resolution);
    }
}
