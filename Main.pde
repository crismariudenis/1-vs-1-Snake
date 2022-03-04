Snake p1, p2;
Food f;
int resolution=40;
int cols, rows;
char gameEnded=' ';
char[][]mat;
int dir1=0, dir2=3;
void setup() {
  size(800, 800);
  cols=width/resolution;
  rows=height/resolution;
  mat=new char[rows][cols];
  p1=new Snake(#FF0000, 1, 1);
  p2=new Snake(#0000FF, rows-2, cols-2);
  for (int i=0; i<rows; i++)
    for (int j=0; j<cols; j++)
      mat[i][j]=' ';
  mat[1][1]='B';
  mat[rows-2][cols-2]='R';
  f=new Food();
  frameRate(8);
}
void keyPressed() {
  // print(key);
  switch(key)
  {
  case 'w':
    dir1=0;
    break;
  case 'a':
    dir1=2;
    break;
  case 's':
    dir1=3;
    break;
  case 'd':
    dir1=1;
    break;
  }
  switch(keyCode)
  {
  case UP:
    dir2=0;
    break;
  case LEFT:
    dir2=2;
    break;
  case DOWN:
    dir2=3;
    break;
  case RIGHT:
    dir2=1;
    break;
  }
}
void draw() {
  p2.move(dir2, 'R');
  p1.move(dir1, 'B');
  if (gameEnded!=' ')
  {
    println(gameEnded, "loses");
    textSize(128);
    String S="";
    if(gameEnded=='R'){
      S="Blue wins";
      fill(p2.c);
    }
     if(gameEnded=='B'){
      S="Red wins";
      fill(p1.c);
    }  
    text(S,100,100);
    noLoop();
  } else
    for (int i = 0; i < rows; i++)
      for (int j = 0; j < cols; j++) {
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
