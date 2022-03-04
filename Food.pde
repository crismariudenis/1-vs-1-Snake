class Food
{
  int x=(int)random(rows);
  int y=(int)random(cols);

  Food()
  {
    while (mat[x][y]!=' ')
    {
      x=(int)random(rows);
      y=(int)random(cols);
    }
    mat[x][y]='F';
  }
}
