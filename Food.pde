class Food
{
  int x=(int)random(rows);
  int y=(int)random(cols);

  Food()
  {
    while (x==-1 || mat[x][y]!=' ')
    {
      x=(int)random(rows);
      y=(int)random(cols);
    }
    mat[x][y]='F';
  }
}
